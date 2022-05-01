#!/bin/bash



cat NIH_drugs.txt | while read line
do
	# First we retrieve the drug ID form the TTD File
	drug_id=$(grep -e $line TTD_target_download.txt | cut -f 1)
	
	# Grep for the drug ID in the TTD to get its target
	target_name=$(grep -e "$drug_id\tFUNCTION" TTD_target_download.txt)
	
	# Save into csv to import into python
	#echo "$line,$target_name\n" >> "drug_targets.csv" 
	echo "$line\t\t$target_name\n"

done;

