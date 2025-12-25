# Clauses

USE sakila;

# 1 - SELECT-

SELECT*FROM actor;

SELECT actor_id,first_name FROM actor;

#2 - From

SELECT * FROM film;

# 3 - WHERE-

SELECT * FROM film WHERE rental_rate > 3;

#4 - DISTINCT - (remove duplicate values)

SELECT DISTINCT rating FROM film;

#5 - ORDER BY - ASC - desc

SELECT title, release_year FROM film ORDER BY title DESC;

# 6 - LIMIT
SELECT title FROM film LIMIT 5;

SELECT title , length FROM FILM ORDER BY length DESC LIMIT 10;

# 7 - GROUP BY 

SELECT rating , COUNT(*)AS Total_Count
FROM film GROUP BY rating;

# 9 - ALIAS - AS

SELECT MAX(length) AS Max_length FROM film;

#10 - JOIN

SELECT s.store_id , a.address ,a.location FROM store s JOIN address a ON s. address_id = a.address_id;

#- ON keyword

#- IN - Kayword

SELECT title , rating FROM film WHERE rating IN ("PG","G");

# - BETWEEN-
SELECT title, rental_rate FROM film WHERE rental_rate BETWEEN 2 AND 4;

# LIKE - A% , %A , %A%

SELECT first_name FROM actor
WHERE first_name LIKE"%LI%";

SELECT first_name FROM actor
WHERE first_name LIKE"%A";

SELECT first_name FROM actor
WHERE first_name LIKE"A%";

# IS NULL

SELECT customer_id , return_date FROM rental
WHERE return_date IS NULL;
#COUNT()
#SUM()
#AVG()

SELECT AVG(rental_rate)AS avg_rate FROM film;

#MIN()
#MAX()

#CASE- (IF ELSE)

SELECT title,
CASE WHEN rental_rate > 4 THEN "Expensive"
ELSE"Affordable"END AS price_category FROM film;

#SUBQUERY

SELECT title , rental_rate
FROM film
WHERE rental_rate>
(SELECT AVG(rental_rate)AS avg_rate FROM film);




 
 
