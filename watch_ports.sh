#! /bin/bash


IFS=$'\n'

enable_alert=0

usage () {

echo "utilisation : $0 [OPTIONS]"
echo " -h, --help afficher l'aide"
echo " -a, --alert Activer les alerts"
}

while [ $# -gt 0 ]
do
case "$1" in
"-h"|"--help")
usage 
exit 0
;;

"-a"|"--alert")
enable_alert=1
shift
;;

*)
echo "erreur parametre inconnu $1!"
exit 1
;;
esac 
done

