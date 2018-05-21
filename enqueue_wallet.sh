#!/bin/bash

echo -n "Amount: "; read amount
echo -n "Description: "; read des
echo -e "$amount\t\t$(date +%x)\t$des"
echo -e "$amount\t\t$(date +%x)\t$des" >> "wallet.txt"
echo -"\nLast 5 movements:"
tail -5 "wallet.txt"
sleep 5
echo -e "\n\n"
./wallet.awk wallet.txt --monthly
