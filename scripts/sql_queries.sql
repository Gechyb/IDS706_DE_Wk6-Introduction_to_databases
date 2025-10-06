--  Fetch the first 10 rows of data from the table
SELECT *
FROM university_rankings
LIMIT 10;

-- Add another row into the table
INSERT INTO university_rankings(institution, country, world_rank, score, year)
VALUES ("Duke Tech", "USA", 350, 60.5, 2014);

-- Retrieve the record we just created,
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


SELECT * 
FROM university_rankings
WHERE score < 45 and year = 2015

