#!/bin/sh

data_dir="notebooks/data"
tournament_results_dir="$data_dir/raw/polygolf22_tournament_results"
out_fn="$data_dir/cleaned/tournament_results.csv"

csv_header_fields="trial,seed,player_names,map,skills,scores,player_states,distances_from_target,distance_source_to_target,start,target,penalties,timeout_count,error_count,winner_list,total_time_sorted,landing_history,ending_history"

echo ">>  Script to merge tournament results into a single .csv file"
echo ">>"
echo ">>  raw tournament results dir:	$tournament_results_dir"
echo ">>  merged output file path: 		$out_fn"
echo ">>"

# write csv header
echo $csv_header_fields > $out_fn
echo

# merge each tournament results file
for file in $tournament_results_dir/*;
do
	echo "merging $(basename $file) into $(basename $out_fn)..."

	group=$(echo $file | sed -r "s/^.*_([[:digit:]]+)_.*$/\1/")
	if [ "$group" == "10" ]; then
		echo "  -> replacing 'Group 5' in $file wtih 'Group 10'..."
		cat $file | sed -n "2,\$p" | sed  "s/'Group\ 5'/'Group\ 10'/g" >> $out_fn
	else
		cat $file | sed -n "2,\$p" >> $out_fn
	fi
done

echo
echo ">> Merged!"