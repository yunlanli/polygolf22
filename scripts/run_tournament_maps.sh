#!/bin/sh

base_dir="g1_results"

# generate results directory
for map in	"g3/g3_tournament"			\
			"2021_maps/g2/spider_par6"	\
			"g4/jump"					\
			"g8/risk_map" 				\
			"g1/tournament"				\
			"g4/n"						\
			"g7/g7_final"				\
			"g4/chevuoi"				\
			"2021_maps/g7/complex2"		\
			"g2/mwc_swirly"				\
			"g5/tourney"				\
			"default/checkers2"			\
			"g9/rhino_karma";
do
	suffix=`echo $map | sed s@/@_@g`

	echo "create results directory \"$base_dir/$suffix\" for map \"$map\"..."
	mkdir -p $base_dir/$suffix
done

seed_entropy="206877182951751619128817595840757235598"


# run group 1 player on each map
for map in		"g4/jump"					\
			"g8/risk_map" 				\
			"g3/g3_tournament"\
			"2021_maps/g2/spider_par6"						;
do
	suffix=`echo $map | sed s@/@_@g`
	python_fn="tournament_rerun_$suffix.py"

	echo "running player 1 on map \"$map\" using python file \"$python_fn\"..."
	python "tournament_rerun_$suffix.py" --result_dir "$base_dir/$suffix" -s $seed_entropy -v
	echo
done
