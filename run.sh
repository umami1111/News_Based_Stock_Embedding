# ! update following env vars first!
export NEWS_DIR=news
export SAVE_DIR=save
export LOG_DIR=logs
export RESULTS_DIR=results

conda activate st
# train sentence embeddings, increase batch size if you have more vram
python main.py run-sentence-embedding --batch_size 1000

conda deactivate
conda activate tf
# train word embeddings
#python main.py run-word-embedding

# start backtest, run year by year to avoid memory error
python main.py run-backtest --min_n 2 --max_n 2
python main.py run-backtest --min_n 3 --max_n 3
python main.py run-backtest --min_n 4 --max_n 4
python main.py run-backtest --min_n 5 --max_n 5
python main.py run-backtest --min_n 6 --max_n 6
python main.py run-backtest --min_n 7 --max_n 7
python main.py run-prediction-summary --min_n 2 --max_n 7 --n 5

