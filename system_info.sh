#!/bin/bash
oputput="system_info.txt"
echo "====HOSTNAME====">"$output"
hostname >>"$output"
echo "====IP ADDRESS===" >>"$output"
ip addr show >> "$output"
echo "==== CURRENT USER ====" >>"$output"
whoami >> "$output"
echo "==== DISKS ===" >>"output"
lsblk -h >>"$output"
echo"==== INSTALLED PROGRAMS ====">>"$output"
dpkg -l >> "$output"
echo"==== Network connections====" >>"$output"
netstat -tuln >>"$output"
echo "==== Ping google====" >>"$output"
ping -c 3 google.com >> "$output"

echo "informations systeme enregistrees dans $output"

