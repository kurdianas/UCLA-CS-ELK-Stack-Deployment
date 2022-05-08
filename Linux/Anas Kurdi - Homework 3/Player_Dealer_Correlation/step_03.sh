#!/bin/sh

# Step_03.sh >> Correlating the Evidence

cd Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis

grep - 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data > Roulette_Losses

cat Roulette_Losses

awk -F"_|-|data:" '{print $1,$6}' Roulette_Losses > Notes_Player_Analysis

awk '{for(x=1;x<=NF;x++) print "Times is the most occurrence count for:",$x}' Roulette_Losses | sort | uniq -c | sort -nr | head -1 >> Notes_Player_Analysis

#From the last result

$p='Mylie'

echo "Total times count for" $p "is:" >> Notes_Player_Analysis

grep -o $p Roulette_Losses | wc -w >> Notes_Player_Analysis

echo " >>>>> Step 3 is Done <<<<<"
