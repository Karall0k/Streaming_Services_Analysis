-- Drop table if exists--
DROP TABLE "Combined Streaming Dataset";

Create Table "Combined Streaming Dataset" (
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

Select * FROM "Combined Streaming Dataset";