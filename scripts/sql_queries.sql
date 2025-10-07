/* Peforming CRUD (Create, Read, Update and Delete) operations */
--  Fetch the first 10 rows of data from the table
SELECT *
FROM university_rankings
LIMIT 10;

-- The list of all the column names.
PRAGMA table_info(university_rankings);

-- Add another row into the table and data type
INSERT INTO university_rankings(institution, country, world_rank, score, year)
VALUES ("Duke Tech", "USA", 350, 60.5, 2014);

-- Retrieve the record we just created
SELECT * 
FROM university_rankings
WHERE institution = "Duke Tech";

--  How many universities from Japan show up in the global top 200 in 2013?
SELECT COUNT(*) AS japan_universities_in_top200
FROM university_rankings
WHERE year = 2013 
    AND country = "Japan" 
    AND world_rank <= 200;

-- Increase its University of Oxford in 2014 score by +1.2 points 
UPDATE university_rankings
SET score = score + 1.2
WHERE institution = "University of Oxford";

-- See the updated scores in University of Oxford
SELECT score
FROM university_rankings
WHERE institution = "University of Oxford";

-- Removing universities with a score below 45 in 2015
DELETE FROM university_rankings
WHERE year = 2015 AND score < 45;

-- To see how many rows after removal
SELECT COUNT(*)
FROM university_rankings;


/* Peforming basic analysis after CRUD step*/


/* Perform basic analysis such as determining the
total number of rows in the dataset, and calculating 
maximum, minimum, or sum values of different columns. */

/* Dataset Size & Scope */
-- Calculating the number of rows I have in the table 
SELECT COUNT(*)
FROM university_rankings;

-- Unique instituitions in the table
SELECT DISTINCT institution
FROM university_rankings;

/* Ranking analysis */
-- Instituiton that has the highest rank in the United 
SELECT institution, world_rank
FROM university_rankings
ORDER BY world_rank ASC
LIMIT 1;

-- Average world rank across all universities
SELECT AVG(world_rank) as world
FROM university_rankings;

/* Scores & Quality Metrics */
-- The highest total score across all universities
SELECT country, SUM(score) AS total_score 
FROM university_rankings 
GROUP BY country 
ORDER BY total_score DESC;

-- What is maximum, minimum, and average score?
SELECT MIN(score) as min_score, 
    MAX(score) as max_score, 
    AVG(score) as avg_socore
FROM university_rankings;

/* Yearly trends */
-- The average score and total scores per year
SELECT year, AVG(score) as avg_score, SUM(score) as total_score
FROM university_rankings
GROUP BY year; 

-- Number of universities ranked each year
SELECT year, COUNT(*) as ranking_universities
FROM university_rankings
GROUP BY year;

/* Top 20 instituion based on quality of education */
SELECT institution, quality_of_education
FROM university_rankings
ORDER BY quality_of_education DESC 
LIMIT 20;