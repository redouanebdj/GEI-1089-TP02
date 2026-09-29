
#! /bin/bash 
while [ $# -gt 0 ]
do 

case "$1" in
-h|--help)
echo "Utilisation:"
echo "./options.sh -h"
echo "./options.sh -l chemin"
echo "./options -t chemin"
;;

-l|--list) 
chemin="$2"
echo "option list detected"
ls "$chemin";
shift
;;
-t|--touch) 
chemin="$2"
touch "$chemin"
echo "option touch detcted"
shift
;;
*)
echo "Attention ! parametre inconnu ignore: $1"
;;
esac
shift 
done 

