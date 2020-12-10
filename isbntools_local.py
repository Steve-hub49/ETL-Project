import warnings
from isbntools.app import isbn_from_words    #, meta

def isbn_from_row(row):
    title = row["TITLE"]
    author = row["AUTHOR"]
    if not isinstance(title, str) or not isinstance(author, str):
        warning_text = f"Non-string value in title, author: {title}, {author}"
        warnings.warn(warning_text)
        title = str(title)
        author = str(author)

    search_tuple = (title, author)
    search_string = " ".join(search_tuple)

    isbn = isbn_from_words(search_string)
    return isbn