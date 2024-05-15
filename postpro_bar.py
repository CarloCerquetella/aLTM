# -*- coding: utf-8 -*-
"""
Created on Tue Jun 20 14:45:38 2023

@author: CAG329
"""

# Packages ###################################################################

import os
import pathlib
import pickle
import matplotlib.pyplot as plt
import numpy as np
import scipy.io

# Parameters #################################################################

classes     = ["NA","VLA","LA","MA","HA"]

names = [
         "results_training_NA_HA_testing_",
         ]

path = pathlib.Path(os.getcwd(),"res")
half_page_width = 4.0
barWidth = 0.25

# Plots #######################################################################

for name in names:
    classif = np.zeros((5,2,22)) # ground truth x results x experiments
   
    for i in range(22):
        res = open(os.path.join(path,name + str(i+1)), 'rb')
        obj = pickle.load(res)    
        y_pred_val = obj[2]
        y_true_val = obj[3]
        y_pred_test = obj[4]
        y_true_test = obj[5]   
    
            
        classif[0,0,i] = sum(1 for (idx,j) in enumerate(y_pred_val) if y_pred_val[idx] == 0 and y_true_val[idx] == 0)/sum(1 for (idx,j) in enumerate(y_true_val) if y_true_val[idx] == 0)
        classif[0,1,i] = sum(1 for (idx,j) in enumerate(y_pred_val) if y_pred_val[idx] == 4 and y_true_val[idx] == 0)/sum(1 for (idx,j) in enumerate(y_true_val) if y_true_val[idx] == 0)
                
        classif[1,0,i] = sum(1 for (idx,j) in enumerate(y_pred_test) if y_pred_test[idx] == 0 and y_true_test[idx] == 1)/sum(1 for (idx,j) in enumerate(y_true_test) if y_true_test[idx] == 1)
        classif[1,1,i] = sum(1 for (idx,j) in enumerate(y_pred_test) if y_pred_test[idx] == 4 and y_true_test[idx] == 1)/sum(1 for (idx,j) in enumerate(y_true_test) if y_true_test[idx] == 1)
                
        classif[2,0,i] = sum(1 for (idx,j) in enumerate(y_pred_test) if y_pred_test[idx] == 0 and y_true_test[idx] == 2)/sum(1 for (idx,j) in enumerate(y_true_test) if y_true_test[idx] == 2)
        classif[2,1,i] = sum(1 for (idx,j) in enumerate(y_pred_test) if y_pred_test[idx] == 4 and y_true_test[idx] == 2)/sum(1 for (idx,j) in enumerate(y_true_test) if y_true_test[idx] == 2)
                
        classif[3,0,i] = sum(1 for (idx,j) in enumerate(y_pred_test) if y_pred_test[idx] == 0 and y_true_test[idx] == 3)/sum(1 for (idx,j) in enumerate(y_true_test) if y_true_test[idx] == 3)
        classif[3,1,i] = sum(1 for (idx,j) in enumerate(y_pred_test) if y_pred_test[idx] == 4 and y_true_test[idx] == 3)/sum(1 for (idx,j) in enumerate(y_true_test) if y_true_test[idx] == 3)      
        
        classif[4,0,i] = sum(1 for (idx,j) in enumerate(y_pred_val) if y_pred_val[idx] == 0 and y_true_val[idx] == 4)/sum(1 for (idx,j) in enumerate(y_true_val) if y_true_val[idx] == 4)
        classif[4,1,i] = sum(1 for (idx,j) in enumerate(y_pred_val) if y_pred_val[idx] == 4 and y_true_val[idx] == 4)/sum(1 for (idx,j) in enumerate(y_true_val) if y_true_val[idx] == 4)  


    fig, axes = plt.subplots(1)
    x = np.array([0,0.75,1.5,2.25,3.00])

    y = [np.mean(classif[0,1,:]),np.mean(classif[1,1,:]),np.mean(classif[2,1,:]),np.mean(classif[3,1,:]),np.mean(classif[4,1,:])]
    y_std = [np.std(classif[0,1,:]),np.std(classif[1,1,:]),np.std(classif[2,1,:]),np.std(classif[3,1,:]),np.std(classif[4,1,:])] 
    axes.bar(x,y,yerr = y_std/np.sqrt(22), width = barWidth)
    plt.xticks([r + barWidth/2 for r in x],
    ['NA', 'VLA', 'LA', 'MA', 'HA'])
    axes.set_title('Training on NA and HA')
    axes.set_xlabel('Ground-truth')
    axes.set_ylabel('Proportion classified as HA')
   

    
    plt.tight_layout()
    plt.savefig(name+'.png',dpi = 300)
    scipy.io.savemat(name+'.mat', {'classif': classif})