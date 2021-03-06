import pandas as pd

amazon_top_100_df = pd.read_csv("top_100_books_amazon.csv", encoding='latin1')
amazon_top_100_df = amazon_top_100_df.drop(columns=['rank2', 'type2', 'price2'])    
amazon_top_100_df.columns = ['AMZN_RANK', 'TITLE', 'AUTHOR', 'AMZN_RATING', 'AMZN_REVIEW_COUNT']

# several cells are blank, replaced nan with empty strings in TITLE and AUTHOR
amazon_top_100_df[['TITLE', 'AUTHOR']] = amazon_top_100_df[['TITLE', 'AUTHOR']].fillna("")

# run strip() on all text fields
def trim_if_string(x):
    if isinstance(x, str):
        return x.strip()
    else:
        return x
    
amazon_top_100_df = amazon_top_100_df.applymap(trim_if_string)
