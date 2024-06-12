# Streaming_Services_Analysis

“Which Streaming Service Is Right For You?”

by Joshua Turk, Malek Kheirddin, Karesse Lockard, Brian Morrissey

Purpose:

We set out to engineer a database that will help users evaluate four of the major streaming service platforms: Netflix, Amazon Prime, Hulu, and Disney+. Users of the Database can evaluate these platforms using Plotly to answer the following questions:
    •What is the genre breakdown of each platform?
    •Which platform has the most/least content?
    •What are the ratings of the shows in each platform?
    •Ultimately, which one is right for me?


User Instructions:

All Database Files are located in the Resouces Folder: Load the data into PostgresSQL using the Postgres_Schema.sql file. Populate the three tables created by the schema using these .csv files: Combined_cleaned_data.csv, Ratings_Summary.csv, Durations_Summary.csv. Tables can be created in any order, but pay attention to the notes in the schema file. 

Use the Plotly visuals in the Jupyiter notebook Combined_Analysis_File.ipynb to evaluate each platform by toggling between the four services.
Make sure to have these modules installed prior to runing the notebook:

pip install psycopg2

pip install jupysql 

I do not believe the next package is necessary, but if you are running an older version of SQLAlchemy you may need it. If you get an error after installing the above two packages, try running this one and the code should work:

pip install ipython-sql

Data Processing:

The ETL workflow can be summarized with the diagram below:

![alt text](/Images/ETL.png)


Postgres was selected as our database over a noSQL database because of its ease of use, and the clean user interface of PGAdmin. The data stored in SQL is displayed in Jupyter Notebook using Pandas DataFrames and PLotly, which is an additional library that allows users to toggle data views. These three tools (SQL, Pandas, Plotly) allowed us to easily conntect multiple data platforms and engineer an analytical framework that can be explanded upon for deep analysis in the future.

![Combined Streaming Dataset](/Images/Combined%20Dataset.png)


![Ratings Summary](/Images/Ratings.png)


![Durations Summary](/Images/duration.png)



Below are examples of Plotly visuals for the Ratings evaluation. The user can select a different streaming service to see what platforms have the most TV shows by content rating. Plotly visuals like the one below were created to evaluate genre, content durating (no. of seasons), and content production decade as well.

![Plotly - TV Show Content Ratings by Platform](/Images/Plotly%20Ratings%20.png)




Ethical Considerations:

The datasets used were sourced from Kaggle (links below) and represent a snapshot in time for the four streaming services. The streaming services were not preferentially selected for evaluation to favor any streaming service over another. Streaming services included in this analysis were based on the data that was made available in a comparable format. Some of the streaming services have more content than others and this may be reflected in the final summary tables. The datasets contain content ratings that vary by service. For easier viewing, we organized these ratings into four general categories shown below. It is ultimately the user's responsibility to determine the approriateness of the content they select for the viewing audiance.

    Kids    ['PG', 'TV-PG', '7+', 'TV-Y7', 'TV-Y7-FV'] 
    Teens   ['13+', 'PG-13', 'TV-14', '16+']
    Adults  ['R', 'NC-17', '18+', 'TV-MA', 'UR', 'UNRATED']
    All Ages ['G', 'TV-G', 'TV-Y', 'ALL', 'ALL AGES']




Sources for Datasets used to create this Database:

https://www.kaggle.com/datasets/shivamb/netflix-shows
https://www.kaggle.com/datasets/shivamb/hulu-movies-and-tv-shows
https://www.kaggle.com/datasets/shivamb/disney-movies-and-tv-shows
https://www.kaggle.com/datasets/shivamb/amazon-prime-movies-and-tv-shows
