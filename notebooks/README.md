# Description

This folder stores the ipython notebooks that analyzes the tournament results and geneates graphs for the project report.

# Run the notebooks

1. step 1: place [Joe's tournament results file][1] into `notebooks/data/raw/polygolf22_tournament_results` folder

	Note that the original `results_1_1.csv` has corrupted data. I've cleaned it in advance and put a copy into the folder already, so no need to copy this file.

2. step 2: generate a single csv file containing results from all groups

	Simply run the the following command from your shell:
	```shell
	# in repository root, run
	scripts/merge_tournament_results.sh
	```

	Once it completes, you should be able to see a file named `tournament_results.csv` under the folder `notebooks/data/cleaned`.

3. step 3: transform the values in `tournament_results.csv` into appropriate data types for analysis

	Simply open the ipython notebook `notebooks/format_tournament_results.ipynb` and run it. Once it completes, you should see a file named `tournament_results_short_formatted.csv` in the folder `notebooks/data/cleaned`.

4. last step: run `notebooks/tournament_result_analysis.ipynb` to analyze the data and generate graphs for the report


[1]: https://drive.google.com/drive/folders/10b7T7UGWuo8yCnHL-aiZ-cGznotIeU7B?usp=sharing