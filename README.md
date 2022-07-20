# PhD_thesis
This repository contains all my work for my PhD thesis "Co-occurrence of modal markers in Latin: a quantitative and qualitative analysis". My Phd thesis is part of the wider project "WoPoss. A world of possibilities. Modal pathways over an extra-long period of time: the diachrony of modality in the Latin language", funded by the Swiss National Science Foundation (SNSF n° 176778) for the period spanning from February 2019 to January 2023, and hosted at the University of Neuchâtel, Institut des sciences du langage (ISLa). 

## Notes about **SOURCE FILES**
- Sallust contains Bellum Iugurtinum; Bellum Catilinae; but also Orationes and Epistulae (not part of the corpus, delete those texts from processing)
- Cicero's Philippicae also contains Pro Milone, Pro Marcello, Pro Ligario, Pro rege Deiotaro. These are not part of the corpus, delete them before text processing

## Notes about **TXT FILES**
- histo_all contains also Bellum Hispanicum, which takes it up to 132k tokens. This probably unbalances the corpus. none of the co-occurrences extracted from this work is modal. probably take it out for the final version of the corpus
- histo_nohisp.txt < txt_files is the file with historiographic texts without Bellum Hispanicum

## Notes about **TXT FILES**
As can be seen from the name of the output files, all the outputs for quantitative analysis were obtained on the corpus **_without_** the Bellum Hispanicum.

## Notes about **TXT FILES**
- extract_sentences_old.py is missing the calculation of percentage in the stats output file
- extract_sentences_old2.py still checks on "dubio" and "certo" as lemmas. This leads to falso co-occurrences with the verb "certo, -are". The adverbial forms of the two adjectives are lemmatised under the lemma of the adjective
