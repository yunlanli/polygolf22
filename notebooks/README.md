# Description

This folder stores the ipython notebooks that analyzes the tournament results and geneates graphs for the project report.

# Run the notebooks

1. step 1: place [Joe's tournament results file][1] into `notebooks/data/raw/polygolf22_tournament_results` folder

	Note that the original `results_1_1.csv` has corrupted data. I've cleaned it in advance and put a copy into the folder already, so no need to copy this file.

2. step 2: place the [results of reruning selected maps on selected skill levels on M1][2] into `notebooks/data/raw/rerun_g1_mac_m1` folder

3. step 3: generate a single csv file each containing Joe's results from all groups and containing our M1 rerun results respectively:

	Simply run the the following command from your shell:
	```shell
	# in repository root, run
	scripts/merge_tournament_results.sh
	scripts/merge_tournament_m1_results.sh
	```

	Once it completes, you should be able to see a file named `tournament_results.csv` and `tournament_g1_m1_rerun_reuslts.csv` under the folder `notebooks/data/cleaned`.

4. step 4: transform the values in `tournament_results.csv` and `tournament_g1_m1_rerun_results.csv` into appropriate data types for analysis

	Simply open the ipython notebook `notebooks/format_tournament_results.ipynb` and run it. Once it completes, you should see a file named `tournament_results_short_formatted.csv` and `tournament_m1_results_short_formatted` in the folder `notebooks/data/cleaned`.

5. step 5: run `notebooks/tournament_result_analysis.ipynb` to analyze **Joe's unaltered tournament data** and generate graphs for the report
6. step 6: run `notebooks/tournament_m1_result_analysis.ipynb` to analyze **Joe's tournament data + our M1 rerun data** and generate graphs for the report


[1]: https://drive.google.com/drive/folders/10b7T7UGWuo8yCnHL-aiZ-cGznotIeU7B?usp=sharing
[2]: https://www.dropbox.com/sh/gdrycrrjo1aklt3/AAALYsHOgHGaXUWvRxvG2aFla?dl=0