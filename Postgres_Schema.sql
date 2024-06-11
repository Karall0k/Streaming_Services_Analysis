-- Drop table if exists--
DROP TABLE Combined_Streaming_Dataset;
-- Drop table if exists--
DROP TABLE "Ratings Summary";

--Create main table--
Create Table Combined_Streaming_Dataset (
 	show_id VARCHAR(10) NOT NULL,
	type VARCHAR(10),
	title VARCHAR(200) NOT NULL,
	country VARCHAR(1000),
	date_added DATE,
	release_year INT NOT NULL,
	rating VARCHAR(10),
	duration VARCHAR(15),
	genre VARCHAR(200) NOT NULL,
	streaming_service VARCHAR(10) NOT NULL,
	PRIMARY KEY (show_id,streaming_service)
);
--view table--
Select * FROM Combined_Streaming_Dataset;

--Create summary table--
Create Table Ratings_Summary (
 	" " VARCHAR(10) NOT NULL,
	Netflix dec NOT NULL,
	Hulu dec NOT NULL,
	Amazon dec NOT NULL,
	Disney dec NOT NULL
);
-- Import Ratings_Summary.csv data before running this code--
Alter Table Ratings_Summary
RENAME COLUMN " " to "Rating Category";

Select * FROM Ratings_Summary;