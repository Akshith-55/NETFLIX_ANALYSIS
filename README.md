#  Netflix Data Analysis (SQL)

This project explores global Netflix content using SQL. It uncovers insights such as the most active countries, top genres, yearly trends, and actor/director statistics.



## Dataset

- **Source**: [Netflix Movies and TV Shows – Kaggle]((https://www.kaggle.com/datasets/shivamb/netflix-shows?resource=download))
- **Format**: Excel (`netflix_titles.xlsx`)



## Tools Used

- MySQL (SQL)
- Excel (for dataset import)
- MySQL Workbench


## Key Insights

- USA and India are top content producers
- 2019 was the peak year for releases
- Dramas and Documentaries are the most common genres
- Many records have missing directors but rich cast data



## Sample SQL Queries

 mysql
-- Count of Movies vs TV Shows
SELECT type, COUNT(*) FROM netflix.netflix_titles GROUP BY type;

-- Top 4 countries by content
SELECT country, COUNT(*) AS total FROM netflix.netflix_titles
WHERE country IS NOT NULL
GROUP BY country ORDER BY total DESC LIMIT 4;
