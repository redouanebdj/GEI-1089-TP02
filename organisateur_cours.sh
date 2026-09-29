#! /bin/bash
echo "Combien de cours voules-vous organiser?"
read nombre_cours
echo "Dans quel repertoire voulez-vous creeer les cours? "
echo "Appuyez sur Entree pour utiliser le repertoire actuel."
read repertoire

if [ -z "$repertoire" ]; then 

repertoire="."
fi

if [ ! -d "$repertoire" ]; then
echo "Erreur : le repertoire n'existe pas."
exit 1
fi
for ((i=1; i<nombre_cours; i++))
do
echo "Entrez le nom du cours $i:"
read nom_cours
mkdir -p "$repertoire/$nom_cours/traveaux-pratiques"
done
echo "Entrez le nom du cours $i:"

