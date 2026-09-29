#! /bin/bash
total=0

IFS=':' read -ra repertoire <<< "$PATH"

for repertoire in "${repertoire[@]}"
do
if [ -d "$repertoire" ]; then

compteur=0

for  fichier in "$repertoire"/*
do

if [ -x "$fichier" ]; then
((compteur++))
fi
done
echo "Le repertoire $repertoire continet $compteur fichiers exectuables."
((total+=compteur))
fi
done
echo "Nombre total de fichiers executables trouves : $total"

