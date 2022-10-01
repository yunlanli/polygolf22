#!/bin/sh

file_to_copy="tournament_rerun_base.py"

for map in "g4/n" "g3/baseball" "g4/jump" "g2/mwc_swirly" "g4/chevuoi" "g9/rhino_karma" "g8/risk_map" "g2/tournament" "g1/tournament" "g3/g3_tournament" "g5/tourney" "g7/g7_final" "default/checkers2" "2021_maps/g7/complex2" "2021_maps/g2/spider_par6";
do
	suffix=`echo $map | sed s@/@_@g`
	map_config_fn="g1_maps_rerun_$suffix.json"
	duplicated_fn="tournament_rerun_$suffix.py"

	echo "duplicating $duplicated_fn..."
	echo "generating map config json: $map_config_fn..."

	cat $file_to_copy | sed "s/######/$map_config_fn/" > $duplicated_fn
	echo "{\"default\":[\"maps/$map.json\"]}" > $map_config_fn
	echo
done