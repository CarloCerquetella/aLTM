# -*- coding: utf-8 -*-
"""
Created on Tue Oct 11 16:55:31 2022

@author: gontier
"""

import os
import pathlib
import pickle
from sklearn.metrics import confusion_matrix
import seaborn as sn
import pandas as pd
import matplotlib.pyplot as plt
import numpy as np
half_page_width = 4.0
from scipy.constants import golden
import scipy.io

classes     = ["NA","VLA","LA","MA","HA"]

results = np.zeros((5,5))

path = pathlib.Path(os.getcwd(),"res")
for i in range(22):
    res = open(os.path.join(path,"results_training_testing_"+str(i+1)), 'rb')

    obj = pickle.load(res)

    y_pred = obj[3]
    y_true = obj[4]

    cf_matrix = confusion_matrix(y_true, y_pred,normalize='true')
    results = results + cf_matrix


df_cm = pd.DataFrame(results/22, index = [i for i in classes],
                          columns = [i for i in classes])
fig = plt.figure(figsize=(half_page_width, half_page_width / golden))
sn.heatmap(df_cm, annot=True)
plt.savefig('results_training_testing.png')

scipy.io.savemat('results_training_testing.mat', {'results': results/22})
    



     
     