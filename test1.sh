#!/bin/bash

list=extract.txt
if [[ "$list" == "extract.txt" ]];
then 
    echo "Fichier supprime" && rm extract.txt;
fi
if [[ "$list" == "No such file or directory" ]];
then
    echo "Fichier cree" && touch extract.txt;
fi
#if [[ "$list" == "extract2.txt" ]]; then echo "file exists"; else echo "file not here"; fi
