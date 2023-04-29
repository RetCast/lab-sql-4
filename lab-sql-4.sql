USE sakila;

# 1. Get film ratings.
SELECT DISTINCT(rating) FROM film;

# 2. Get release years.
SELECT DISTINCT(release_year) FROM film;

# 3. Get all films with ARMAGEDDON in the title.
SELECT title
FROM film
WHERE title LIKE '%ARMAGEDDON%';

# 4. Get all films with APOLLO in the title
SELECT title 
FROM film
WHERE title LIKE '%APOLLO%';

# 5. Get all films which title ends with APOLLO.
SELECT title 
FROM film
WHERE title  '%APOLLO';

# 6. Get all films with word DATE in the title.
SELECT title 
FROM film
WHERE title REGEXP 'DATE';

# 7. Get 10 films with the longest title
SELECT title, LENGTH(title) AS Length_of_title FROM film
ORDER BY LENGTH(title) DESC;

# 8. Get 10 films with the longest title
SELECT title, `length`
FROM film
ORDER BY `length` DESC
LIMIT 10;

# 9. How many films include Behind the Scenes content?
SELECT COUNT(title)
FROM film
WHERE special_features REGEXP 'behind the scenes';

# 10. List films ordered by release year and title in alphabetical order.
SELECT title, release_year
FROM film
ORDER BY release_year ASC, title ASC;

