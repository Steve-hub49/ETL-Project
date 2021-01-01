-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- Link to schema: https://app.quickdatabasediagrams.com/#/d/VTvAXj
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.

-- Modify this code to update the DB schema diagram.
-- To reset the sample schema, replace everything with
-- two dots ('..' - without quotes).

CREATE TABLE "top_100_books" (
    "rank2" INT   NOT NULL,
    "book2" VARCHAR   NOT NULL,
    "author2" VARCHAR   NOT NULL,
    "ratings2" INT   NOT NULL,
    "reviews2" INT   NOT NULL,
    "type2" VARCHAR   NOT NULL,
    "price2" INT   NOT NULL,
    CONSTRAINT "pk_top_100_books" PRIMARY KEY (
        "book2"
     )
);

CREATE TABLE "goodreads" (
    "Book_ID" INT   NOT NULL,
    "Title" VARCHAR   NOT NULL,
    "Author" VARCHAR   NOT NULL,
    "Author_I-f" VARCHAR   NOT NULL,
    "Additional_Authors" VARCHAR   NOT NULL,
    "ISBN" INT   NOT NULL,
    "ISBN13" INT   NOT NULL,
    "My_Rating" INT   NOT NULL,
    "Average_Rating" INT   NOT NULL,
    "Publisher" VARCHAR   NOT NULL,
    "Binding" VARCHAR   NOT NULL,
    "Number_of_Pages" INT   NOT NULL,
    "Year_Published" INT   NOT NULL,
    "Original_Publication_Year" INT   NOT NULL,
    "Date_Read" INT   NOT NULL,
    "Date_Added" INT   NOT NULL,
    "Bookshelves" VARCHAR   NOT NULL,
    "Bookshelves_with_positions" VARCHAR   NOT NULL,
    "Exclusive_Shelf" VARCHAR   NOT NULL,
    "My_Review" INT   NOT NULL,
    "Spoiler" VARCHAR   NOT NULL,
    "Private_Notes" VARCHAR   NOT NULL,
    "Read_Count" INT   NOT NULL,
    "Recommended_For" VARCHAR   NOT NULL,
    "Recommended_By" VARCHAR   NOT NULL,
    "Owned_Copies" VARCHAR   NOT NULL,
    "Original_Purhcase_Date" VARCHAR   NOT NULL,
    "Original_Purhcase_Location" VARCHAR   NOT NULL,
    "Condition" VARCHAR   NOT NULL,
    "Condition_Description" VARCHAR   NOT NULL,
    "BCID" VARCHAR   NOT NULL
);

ALTER TABLE "goodreads" ADD CONSTRAINT "fk_goodreads_Title" FOREIGN KEY("Title")
REFERENCES "top_100_books" ("book2");

