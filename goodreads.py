import requests 
from api_keys import goodreads_api_key, goodreads_user_id

HTTP_STATUS_OK = 200

def get_json(url):
    response = requests.get(url) 
    if response.status_code == HTTP_STATUS_OK:
        # Some endpoints returned xml instead of json with a status code of 200 resulting in a JSONError
        response_json = response.json()
        return response_json
    else: 
        print(response)


# https://www.goodreads.com/book/show.json?key={goodreads_api_key}&isbns=0596009208,0596517742
def book_review_counts(isbn):
    base_url_book_review_counts = "https://www.goodreads.com/book/review_counts.json"
    query_url_book_review_counts = f"{base_url_book_review_counts}?key={goodreads_api_key}&isbns={isbn}"   
    review_counts_json = get_json(query_url_book_review_counts)
    review_counts = review_counts_json['books'][0]
    return review_counts
