import os

def get_meta_data():
    meta_data = {
        'NEWS_DIR': os.environ['NEWS_DIR'],
        'SAVE_DIR': os.environ['SAVE_DIR'], # intermeidate step and output
        'LOG_DIR': os.environ['LOG_DIR'],
        'RESULTS_DIR': os.environ['RESULTS_DIR']
    }

    return meta_data
