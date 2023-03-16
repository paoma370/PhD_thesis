#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Mon Oct 31 12:20:30 2022

@author: sitel
"""

################TO CREATE A SAMPLE OF 551 SENTENCES (10% OF THE CORPUS) FOR CALCULATING CO-OCCURRENCE RATE OF TYPES OF MODALITY######################
################SAME SCRIPT FOR A SAMPLE OF 87 SENTENCES WITH CO-OCCURRENCE################################

import pandas as pd

df = pd.read_csv('/home/sitel/Documents/corpus_nohisp_annota_one_marker.csv', header=None, sep='\t') # no header
print(df)

sample = df.sample(n = 551) #same script but with n = 87 for sample of sentences with co-occurrence

sample.to_csv('/home/sitel/Documents/sample_for_modalities.csv', header=None, sep='\t')
