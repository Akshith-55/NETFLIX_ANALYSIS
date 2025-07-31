-- 1) Count the number of Movies vs TV Shows
select type, count(*) as count from netflix.netflix_titles
group by type;

-- 2) List all movies released in a specific year (e.g., 2021)
SELECT 
    *
FROM
    netflix.netflix_titles
WHERE
    release_year = 2021;

-- 3)Find the top 4 countries with the most content on Netflix
SELECT country, count(*) as total_content
from netflix.netflix_titles
WHERE country IS NOT NULL
group by country
ORDER BY total_content DESC
LIMIT 4;

-- 5. Identify the longest movie
SELECT 
    type, title, duration
FROM
    netflix.netflix_titles
WHERE
    type = 'Movie'
ORDER BY duration DESC
LIMIT 1;

-- 6. Find content added in the last 7 years
select * from netflix.netflix_titles
where STR_TO_DATE(date_added, '%M %d, %Y') >= DATE_SUB(CURDATE(), INTERVAL 7 YEAR);

-- 7. Find all the movies/TV shows by director 'Toshiya Shinohara'!
SELECT 
    title, type, director
FROM
    netflix.netflix_titles
WHERE
    director LIKE '%Toshiya Shinohara%';

-- 8. List all TV shows with more than 3 seasons
SELECT 
    type, title, duration
FROM
    netflix.netflix_titles
WHERE
    type = 'TV Show' AND duration > 3;

-- 9.Find each year and the average numbers of content release in India on netflix. 
SELECT 
    AVG(content_count) AS avg_cont_per_yr
FROM
    (SELECT 
        release_year, COUNT(*) AS content_count
    FROM
        netflix.netflix_titles
    WHERE
        country LIKE '%India%'
    GROUP BY release_year) AS yearly_count;

-- 10 return top 5 year with highest avg content release!
SELECT 
    release_year, COUNT(*) AS content_count
FROM
    netflix.netflix_titles
GROUP BY release_year
ORDER BY content_count
LIMIT 5;

-- 11. List all movies that are documentaries
SELECT 
    *
FROM
    netflix.netflix_titles
WHERE
    type = 'Movie'
        AND listed_in = 'Documentaries';

-- 12. Find all content without a director
SELECT 
    *
FROM
    netflix.netflix_titles
WHERE
    director IS NULL OR TRIM(director) = '';

-- 13. Find how many movies actor 'Salman Khan' appeared in last 10 years!
SELECT title, release_year, cast
FROM netflix.netflix_titles
WHERE 
    type = 'Movie'
    AND cast LIKE '%Luna Wedler%'
    AND release_year >= YEAR(CURDATE()) - 10;

-- 14.
-- Categorize the content based on the presence of the keywords 'kill' and 'violence' in 
-- the description field. Label content containing these keywords as 'Bad' and all other 
-- content as 'Good'. Count how many items fall into each category.
SELECT 
    CASE
        WHEN LOWER(description) LIKE '%kill%' OR LOWER(description) LIKE '%violence%' THEN 'Bad'
        ELSE 'Good'
    END AS content_label,
    COUNT(*) AS total_items
FROM netflix.netflix_titles
GROUP BY content_label;

-- 15. Count number of movies and TV shows separately
WITH content_type_counts AS (
    SELECT 
        type,
        COUNT(*) AS total
    FROM 
        netflix.netflix_titles
    GROUP BY 
        type
)
SELECT * FROM content_type_counts;

-- 16. Find the top 5 years when the most Netflix content for Movies or TV Shows was released.
WITH yearly_counts AS (
    SELECT 
        release_year,
        COUNT(*) AS total_releases
    FROM 
       netflix.netflix_titles
    WHERE 
        release_year IS NOT NULL
    GROUP BY 
        release_year
)

SELECT *
FROM yearly_counts
ORDER BY total_releases DESC
LIMIT 5;
