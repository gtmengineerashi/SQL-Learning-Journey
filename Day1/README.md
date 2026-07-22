# Day 1
SELECT id,title FROM movies
WHERE id=6;

SELECT title,year FROM movies
WHERE year BETWEEN 2000 AND 2010;

SELECT title,year FROM movies
WHERE year NOT BETWEEN 2000 AND 2010;

SELECT title,year FROM movies
WHERE year<=2003;

SELECT title FROM movies
WHERE title LIKE "%Toy Story%";

SELECT title,director FROM movies
WHERE director NOT LIKE "John Lasseter";

SELECT DISTINCT director FROM movies
ORDER BY director;

SELECT title,year FROM movies
ORDER BY year DESC
LIMIT 4;

SELECT title,year FROM movies
ORDER BY year ASC
LIMIT 5 OFFSET 5;
