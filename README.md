# ETL-Project

## Project Name: Amazon versus Goodreads Book Ratings
## Project Objective: Allow user to easily compare book ratings across review sources by book title

Project Sources: CSV: Book list from Kaggle: top_100_books.csv. File reflects book titles, author, ratings, # of ratings, and pricing information. Non-relevant data will be cleaned. API: Goodreads API (for rating data). API will be used to pull titles, authors, ratings, data, etc.

Project Steps:
Create tables in postgres (Table will include book title, author, and reader rating detail).
Convert Kaggle .csv into pandas df. Clean to have data that will match the SQL table. Filter to allow ranking of books based on rating scores.
Run API to gather information based on book titles in .csv and put in DF.
Establish postgres connection and add data into previously created tables.
Type of Database: Relational database

Final Tables to be Used: Kaggle .csv table: top_100_books.csv (Amazon), Goodreads API: Goodreads API (API Method: book.review_counts)
