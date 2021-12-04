# -*- coding: utf-8 -*-
"""
Created on Fri Apr 16 09:46:59 2021

@author: User
"""

import pandas as pd
import matplotlib.pyplot as plt 
import numpy as np
import seaborn as sns

animals = pd.read_csv("F:/DataSets/animal_category.csv")


animals.columns
animals.shape
# drop emp_name column
animals.drop(['Animals'],axis =1,inplace=True)
animals.dtypes

##### Create dummy variables on categorcal columns

animals_dummy = pd.get_dummies(animals)
