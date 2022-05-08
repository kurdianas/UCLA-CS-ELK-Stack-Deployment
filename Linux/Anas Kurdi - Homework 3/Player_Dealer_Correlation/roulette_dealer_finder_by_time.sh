#!/bin/sh

# roulette_dealer_finder_by_time.sh

# roulette_dealer_finder_by_time.sh >> To compare the results from the Player Analysis with the Dealer Analysis for the future losses

# The awk command below has 3 arguments to insert as following: the first part of the file name which is the date then the time in hours only then AM or PM >>> 0310 05 AM

# The arguments can be found after processing the player schedules

awk -v hour="$2" -v ap="$3" '($0 ~ ("^"hour)) && (tolower($2) == tolower(ap)) {print $1, $2, $5, $6}' "$1"*

