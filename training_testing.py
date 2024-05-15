# -*- coding: utf-8 -*-
"""
Created on Sat Mar 12 19:05:43 2022

@author: gontier
"""

# Packages ###################################################################

import pandas as pd
import torch
from torch import nn
import numpy as np
import os
from torch.utils.data import Dataset
import pathlib
from torchvision import models
import random
import pickle

# Parameters #################################################################

file_names = ['CC30-0406-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC30-0502-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC30-0509-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC30-0518-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC31-0404-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC31-0429-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC31-0507-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC31-0514-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC32-0419-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC32-0504-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC32-0511-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC32-0521-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC28-1217-01112Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC09-0906-01113Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC09-1001-01133Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC09-1024-0181Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC27-1203-01113Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC27-1210-01113Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC27-1214-01113Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC28-1128-01113Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC28-1206-01114Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx',
 'CC28-1212-01113Time-Bin-ZScoredFRPerCell_AllSessIn200ms.xlsx']
                     
# Lag: previous times used for prediction
N                   = 25
learning_rate       = 0.01
nb_epoch            = 400
split_train_test    = 0.7
batch_size          = 150
weight_decay        = 0.0025
dropout_prob        = 0.1
nb_conflict         = 5

torch.manual_seed(1234)
np.random.seed(31)
random.seed(32) 
torch.cuda.manual_seed_all(33)
torch.backends.cudnn.deterministic = True
torch.backends.cudnn.benchmark = False

# Data reading ##############################################################

classes     = ["1","2","3","4","5"]

file_name = file_names[int(os.environ['SLURM_ARRAY_TASK_ID'])-1] 
path = pathlib.Path(os.getcwd(),"..","0_data","5_conditions",file_name)

class CustomDataset(Dataset):
    def __init__(self, recordings, labels):
        self.labels = labels
        self.recordings = recordings
    def __len__(self):
        return len(self.labels)
    def __getitem__(self, idx):
        label = self.labels[idx]
        recording = self.recordings[idx]
        sample = {"Input": recording, "Class": label}
        return sample
    
n_categories = len(classes)

outputs     = []
inputs      = []

df = pd.read_excel(path)
df = df.dropna()
shape = df.shape[1]//nb_conflict
n_cell = shape - 2

# Loop over time
for i in range(round(df.shape[0]/N)):

    for conflict in range(nb_conflict):
        
        lines = np.array(df.iloc[(i*N):((i+1)*N),(shape*conflict+2):(shape*conflict + 2 + n_cell)])
        if lines.shape == (N,n_cell):
            inputs.append(lines)
            if conflict == 0:
                outputs.append("1")
            elif conflict == 1:
                outputs.append("2")
            elif conflict == 2:
                outputs.append("3")
            elif conflict == 3:
                outputs.append("4") 
            elif conflict == 4:
                outputs.append("5")

            
        
# create Pandas DataFrame
recordings_labels_df = pd.DataFrame({'Recordings': inputs, 'Labels': outputs})
# define data set object
dataset = CustomDataset(recordings_labels_df['Recordings'], recordings_labels_df['Labels'])    

n_samples = len(dataset)
n_samples_train = int(split_train_test*n_samples)
n_samples_test = n_samples - n_samples_train

train_dataset, val_dataset = torch.utils.data.random_split(dataset, [n_samples_train, n_samples_test],
    generator=torch.Generator().manual_seed(42))          
        
chance_level = max([(outputs == np.repeat('1',len(outputs))).sum()/len(outputs),
                   (outputs == np.repeat('2',len(outputs))).sum()/len(outputs),
                   (outputs == np.repeat('3',len(outputs))).sum()/len(outputs),
                   (outputs == np.repeat('4',len(outputs))).sum()/len(outputs)])

# Creates the training and validation sets ###################################

train_loader = torch.utils.data.DataLoader(
    train_dataset, batch_size=batch_size, shuffle=True,
    generator=torch.Generator().manual_seed(44)
)

val_loader = torch.utils.data.DataLoader(
    val_dataset, batch_size=batch_size, shuffle=True,
    generator=torch.Generator().manual_seed(44)
)

# Creates the NN #############################################################

class MyResNet(nn.Module):

    def __init__(self, in_channels=1):
        super(MyResNet, self).__init__()

        # bring resnet
        self.model = models.resnet18()

        # original definition of the first layer on the renset class
        # self.conv1 = nn.Conv2d(3, 64, kernel_size=7, stride=2, padding=3, bias=False)
        
        # your case
        self.model.conv1 = nn.Conv2d(in_channels, 64, kernel_size=7, stride=2, padding=3, bias=False)

    def forward(self, x):
        return self.model(x)

net = MyResNet()
#net = add_dropout.add_dropout(net)

net.fc = nn.Sequential(
    nn.Dropout(dropout_prob)
)

criterion = nn.CrossEntropyLoss()
optimizer = torch.optim.Adam(net.parameters(), lr=learning_rate, weight_decay=weight_decay)

# PyTorch parameters #########################################################

is_cuda = torch.cuda.is_available()

if is_cuda:
    device = torch.device("cuda")
    print("GPU is available")
else:
    device = torch.device("cpu")
    print("GPU not available, CPU used")
    
net.to(device)

# Training ###################################################################

train_accuracy_values = []
val_accuracy_values = []

for epoch in range(nb_epoch):  # loop over the dataset multiple times
    
    for i, data in enumerate(train_loader, 0):
        
        # get the inputs; data is a list of [inputs, labels]
        inputs, labels = data['Input'].to(device), data['Class']
        target = []
        for j in range(len(labels)):
            target.append(classes.index(labels[j]))

        # zero the parameter gradients
        optimizer.zero_grad()

        # forward + backward + optimize
        outputs = net(inputs.unsqueeze(1).float())
               
        loss = criterion(outputs, torch.from_numpy(np.array(target)).long().to(device))
        loss.backward()
        optimizer.step()

        
# Confusion matrix ##############################################################
net.eval()
with torch.no_grad():
    y_pred = []
    y_true = []
    # iterate over test data
    for data in val_loader:
        inputs, labels = data['Input'].to(device), data['Class']
        target = []
        for j in range(len(labels)):
            target.append(classes.index(labels[j]))
    
        outputs = net(inputs.unsqueeze(1).float())
    
        _, predicted = torch.max(outputs.data, 1)
        y_pred.extend(predicted.cpu().data.numpy()) # Save Prediction
        
        y_true.extend(target) # Save Truth


###################################################################
        
name = 'results_training_testing_' + os.environ['SLURM_ARRAY_TASK_ID']
res = open(name, 'wb')
pickle.dump([train_accuracy_values,val_accuracy_values,chance_level,y_pred,y_true], res)
res.close()
    

    

