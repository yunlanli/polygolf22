#!/bin/sh

# generate results directory
base_dir="g1_results"

for map in "g4/n" "g3/baseball";
do
	suffix=`echo $map | sed s@/@_@g`
	python_fn="tournament_rerun_$suffix.py"

	echo "create results directory \"$base_dir/$suffix\" for map \"$map\"..."
	mkdir -p $base_dir/$suffix
done

seed_entropy="206877182951751619128817595840757235598"

python tournament_rerun_g4_n.py --result_dir $base_dir/g4_n -s $seed_entropy -t 1 -v
python tournament_rerun_g3_baseball.py --result_dir $base_dir/g3_baseball -s $seed_entropy -t 2 -v