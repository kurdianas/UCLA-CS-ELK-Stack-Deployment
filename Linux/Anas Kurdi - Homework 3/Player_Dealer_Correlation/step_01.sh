#!/bin/sh

#step_01.sh >> Create required direcories and notes files

cd /home/sysadmin/Desktop/Homework
mkdir Lucky_Duck_Investigations
cd Lucky_Duck_Investigations
mkdir Roulette_Loss_Investigation
cd Roulette_Loss_Investigation
mkdir Player_Analysis Dealer_Analysis Player_Dealer_Correlation
cd Player_Analysis
touch Notes_Player_Analysis
cd ..
cd Dealer_Analysis
touch Notes_Dealer_Analysis
cd ..
cd Player_Dealer_Correlation
touch Notes_Player_Dealer_Correlation

echo ">>>>> Step 1 is Done <<<<<"
