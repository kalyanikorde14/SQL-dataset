USE Sakila;

#1 Find the total number of films.
SELECT COUNT(*) AS total_films FROM film;

#2 List all unique movie rating 
SELECT DISTINCT rating FROM film;

#3 Find the average rental rate of all film.
SELECT AVG(rental_rate) AS avg_rental_rate FROM film;

#4 Count how many films have a rental rate greater than 3
SELECT COUNT(*) AS film_count FROM film WHERE rental_rate >3;

#5 Find the maximum and minimum film length
SELECT MAX(length) AS max_length, MIN(length) AS min_length FROM film;

#6 List all customers whose first name start with 'A'
SELECT first_name,last_name FROM customer WHERE first_name LIKE 'A%';

#7 Count total number of customers
SELECT COUNT(*) AS Total_customers from customer;

#8 Find how many films belong to each rating
SELECT rating, COUNT(*) AS total_film FROM film GROUP BY rating;

#9 List films with rental duration more than the average rental duration
SELECT MONTH(rental_date) AS month, COUNT(*) AS total_rentals FROM rental GROUP BY month

#10 Find average payment amount.
SELECT AVG(amount) AS avg_payment FROM payment;

#11 List customers who have made more than 30 payments.
SELECT customer_id, COUNT(*)AS payment_count FROM payment GROUP BY customer_id HAVING payment_count > 30

#12 List the customers who have made more than 30 payments
SELECT customer_id, COUNT(*) AS Payment_count FROM payment GROUP BY customer_id HAVING payment_count > 30;

USE sakila;

#12 List the customers who have made more than 30 payments
SELECT customer_id, COUNT(*) AS Payment_count FROM payment GROUP BY customer_id HAVING payment_count > 30;

#13 Find total payments made by each customers
SELECT customer_id, SUM(amount) AS total_paid FROM PAYMENT GROUP BY customer_id;

#14 List top 5 customers based on total payment amount
SELECT customer_id, SUM(amount) AS total_paid FROM payment GROUP BY customer_id ORDER BY total_paid DESC LIMIT 5;

#15 Find films that have replacement cost higher than avg replacement cost

#16 Count number of rental done each month
SELECT MONTH(rental_date) AS month,COUNT(*) AS total_rentals FROM rental GROUP BY month;

#17 Find customers who never made a payment
SELECT MAX(amount) AS highest_payment From payment;

#18 list films with length between 90 and 120 minute
SELECT title, length FROM film WHERE length BETWEEN 90 AND 120;

#19 Find the number of payment done by each staff members
SELECT staff_id, COUNT(*) AS total_payment FROM payment GROUP BY staff_id;




 