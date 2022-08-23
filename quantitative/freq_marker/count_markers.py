#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Thu Jul 28 14:23:28 2022

@author: sitel
"""

import pandas as pd
import csv

#count modal markers in co-occurrence
df = pd.read_csv('curated_onlymodal.csv') #input file from qualitative analysis, sheet called markers-both
# print(df)
df2 = df.apply(pd.value_counts)
# print(df2)
df2['all_cooc'] = df2.sum(axis=1) #add a column to input file for the sum of the markers. axis=1 for sum along the columns
df2.to_csv('count_markers_modal.csv')

# df2.head()

#count tot markers
with open('corpus_nohisp_annota.tot_markers', 'r') as f: #open file obtained with the script tot.markers and read it
    file2 = csv.writer (open('corpus_nohisp_annota_tot_markers.csv', 'w', newline=''), delimiter=',') #open in writing a file to count the total of the markers in the corpus
    file2.writerow(['M1_tot','M2_tot','M3_tot','M4_tot','M5_tot','M6_tot','M7_tot'])
    for line in f:
        if line[0] == '#':
               pass
        else:
            line = line[:-1]
            lemmi = line.split(',', -1)
            # print(line)
            file2.writerow(lemmi)
            # file2.close()
        

df_tot = pd.read_csv('corpus_nohisp_annota_tot_markers_v2.csv', quoting=csv.QUOTE_NONE) #warning: there is an issue here: the file created in the previous loop is not read as csv. so I need to re-import it as a csv, name it and re-run the script
# print(df_tot)

        
df_tot2 = df_tot.apply(pd.value_counts)
# df_tot2 = df_tot.value_counts()
df_tot2['all_corpus'] = df_tot2.sum(axis=1)
# print(df_tot2)
df_tot2.to_csv('count_tot_markers_modal.csv')

#join dataframes
df_final = df2.join(df_tot2)
# print(df_final)

# df_final = csv.writer(open('rel_freq_prequal.csv', 'w')) 
# df_final = df2['all_cooc'], df_tot2['all_corpus']
# print(df_final)
df_final['rel_freq'] = df2['all_cooc']/df_tot2['all_corpus'] #calc relative frequencies
# print(df_final)
df_final.to_csv('rel_freq_modal.csv')
