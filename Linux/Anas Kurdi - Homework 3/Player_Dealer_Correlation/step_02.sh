#!/bin/sh

#step_02.sh >> Download the Investigations files and move the files to the directories

cd /home/sysadmin/Desktop/Homework

wget "https://tinyurl.com/3-HW-setup-evidence" && chmod +x ./3-HW-setup-evidence && ./3-HW-setup-evidence

cd /home/sysadmin/Desktop/Homework/Dealer_Schedules_0310

mv 0310_Dealer_schedule 0312_Dealer_schedule 0315_Dealer_schedule /home/sysadmin/Desktop/Homework/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Dealer_Analysis/
cd ..
cd Roulette_Player_WinLoss_0310

mv 0310_win_loss_player_data 0312_win_loss_player_data 0315_win_loss_player_data /home/sysadmin/Desktop/Homework/Lucky_Duck_Investigations/Roulette_Loss_Investigation/Player_Analysis

echo ">>>>> Step 2 is Done <<<<<"
