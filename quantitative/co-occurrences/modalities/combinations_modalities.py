#!/usr/bin/env python3
# -*- coding: utf-8 -*-
"""
Created on Fri Jul 29 17:27:46 2022

@author: sitel
"""

import csv
import pandas as pd

##########################################################################################
#
#  import file with cooccurrences of both modal and not modal markers (from qualitative analysis file) and find all combinations
#
######################################################################################

with open('modalities.csv') as file:
    next(file) #skip first line (M1 and M2)
    markers = [list(filter(None, row)) for row in csv.reader(file)]
    # print(markers)

#find all possible combinations (this is for triples, quadruples): es ABC -> AB,AC,BC

    combinations = []
    for row in markers:
        for i,n1 in enumerate(row):
            for n2 in row[i+1:]:
                combinations.append((n1,n2))
                # print(combinations)
                # f.writerow(combinations)

file.close()

# save combinations to a new file

with open('combinations_modalities.csv', 'w') as f:
    write = csv.writer(f)
    write.writerows(combinations)
    

# build matrix from output file combinations and save it to file matrix_both. NB. produces BASE MATRIX, use it just to check if the Orange output is right

df = pd.read_csv('combinations_modalities.csv', names=['mod1', 'mod2'])
# print(df)

s = df.groupby(['mod1', 'mod2']).size()
# print(s)

m = s.unstack()
# print(m)

m.columns.name = None
m.index.name = None
m = m.fillna(0)
print(m)

m.to_csv('basematrix_modalities.csv', index=True)
