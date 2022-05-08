#!/bin/sh

#step_04.sh >> Dealer Analysis

cd ..

cd Dealer_Analysis

cat 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule

#Times (Hours), Dates and AM/PM were provided by Notes_Player_Analysis file

grep '05' 0310* | awk '{print $1, $2, $5, $6}' | grep AM >> Dealers_working_during_losses
 
grep '08' 0310* | awk '{print $1, $2, $5, $6}' | grep AM >> Dealers_working_during_losses
 
grep '02' 0310* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses

grep '08' 0310* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses
 
grep '11' 0310* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses
 
grep '05' 0312* | awk '{print $1, $2, $5, $6}' | grep AM >> Dealers_working_during_losses
 
grep '08' 0312* | awk '{print $1, $2, $5, $6}' | grep AM >> Dealers_working_during_losses
 
grep '02' 0312* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses
 
grep '08' 0312* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses
 
grep '11' 0312* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses

grep '05' 0315* | awk '{print $1, $2, $5, $6}' | grep AM >> Dealers_working_during_losses
 
grep '08' 0315* | awk '{print $1, $2, $5, $6}' | grep AM >> Dealers_working_during_losses
 
grep '02' 0315* | awk '{print $1, $2, $5, $6}' | grep PM >> Dealers_working_during_losses

cat Dealers_working_during_losses

awk -F" " '{print "The suspected Dealer is: ",$3,$4}' Dealers_working_during_losses | head -1 > Notes_Dealer_Analysis

#From the last result
$d = "Billy"

echo "Times count when the dealer Billy Jones worked during the major losses was:" >> Notes_Dealer_Analysis

grep -o $d Dealers_working_during_losses | wc -w >> Notes_Dealer_Analysis
