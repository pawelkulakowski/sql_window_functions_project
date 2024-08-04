
--creating database movie rental
CREATE DATABASE movie_rental;
USE movie_rental;

-- creating table 'customer'
CREATE TABLE customer (
	id INT NOT NULL PRIMARY KEY,
	first_name VARCHAR (20),
	last_name VARCHAR (30),
	join_date DATE,
	country VARCHAR (30)
	);

-- creating table 'review'
CREATE TABLE review (
	id INT NOT NULL PRIMARY KEY,
	rating INT,
	customer_id INT,
	movie_id INT
	);

-- creating table 'movie'
CREATE TABLE movie (
	id INT NOT NULL PRIMARY KEY,
	title VARCHAR(40),
	release_year INT,
	genre VARCHAR(30),
	editor_rating INT
	);

-- creating table 'single_rental'
CREATE TABLE single_rental (
	id INT NOT NULL PRIMARY KEY,
	rental_date DATE,
	rental_period INT,
	plaform VARCHAR(20),
	customer_id INT,
	movie_id INT,
	payment_date DATE,
	payment_amount INT
	);

-- creating table 'giftcard'
CREATE TABLE giftcard (
	id INT NOT NULL PRIMARY KEY,
	amount_worth INT,
	customer_id INT,
	payment_date DATE,
	payment_amount INT
	);

-- creating table 'subscription'
CREATE TABLE subscription (
	id INT NOT NULL PRIMARY KEY,
	length INT,
	start_date DATE,
	platform VARCHAR(20),
	payment_date DATE,
	payment_amount INT,
	customer_id INT
	);

-- inserting data to 'customer' table
INSERT INTO customer VALUES 
	(1, 'Eric', 'Rivera', '2015-10-24', 'USA'),
	(2, 'Brandon', 'Thomas', '2015-07-05', 'USA'),
	(3, 'Ryan', 'Young', '2015-09-15', 'USA'),
	(4, 'Janet', 'Simmons', '2015-08-20', 'Scotland'),
	(5, 'Jeffrey', 'Washington', '2015-03-04', 'Scotland'),
	(6, 'Kathryn', 'Reed', '2015-02-15', 'Australia'),
	(7, 'Catherine', 'Coleman', '2015-04-05', 'Australia');
	
-- inserting data to 'review' table
INSERT INTO review VALUES
	(1, 7, 2, 1),
	(2, 8, 6, 1),
	(3, 10, 1, 2),
	(4, 10, 2, 2),
	(5, 8, 3, 2),
	(6, 9, 1, 2),
	(7, 9, 3, 3),
	(8, 9, 7, 3),
	(9, 8, 2, 3),
	(10, 6, 5, 3),
	(11, 3, 5, 4),
	(12, 3, 3, 4),
	(13, 5, 6, 4),
	(14, 1, 2, 4),
	(15, 1, 1, 5),
	(16, 1, 3, 5),
	(17, 3, 4, 5),
	(18, 2, 7, 5);

-- inserting data to 'movie' table
INSERT INTO movie VALUES
	(1, 'Avatar', 2009, 'fantasy', 8),
	(2, 'Titanic', 1997, 'drama', 10),
	(3, 'Godfather', 1972, 'drama', 8),
	(4, 'Showgirls', 1995, 'documentary', 3),
	(5, 'Plan 9 From Outer Space', 1959, 'fantasy', 2);


-- inserting data to 'movie' table
INSERT INTO single_rental VALUES 
	(1, '2016-04-09', 1, 'desktop', 2, 4, '2016-04-16', 6),
	(2, '2016-04-05', 1, 'mobile', 6, 3, '2016-04-11', 8),
	(3, '2016-03-25', 1, 'tablet', 4, 2, '2016-03-30', 9),
	(4,	'2016-02-09', 1, 'desktop',	5, 1, '2016-02-12', 8),
	(5,	'2016-03-15', 1, 'mobile', 4, 3, '2016-03-22', 6),
	(6,	'2016-04-11', 1, 'tablet', 5, 5, '2016-04-17', 9),
	(7,	'2016-01-07', 1, 'desktop', 5, 5, '2016-01-13', 9),
	(8,	'2016-04-09', 1, 'mobile', 6, 3, '2016-04-16', 6),
	(9,	'2016-04-27', 1, 'tablet', 2, 1, '2016-04-30', 6),
	(10, '2016-03-21', 3, 'desktop', 5,	4, '2016-03-24', 21),
	(11, '2016-02-10', 3, 'mobile', 5, 4, '2016-02-15',	15),
	(12, '2016-03-20', 3, 'tablet', 7, 4, '2016-03-27',	12),
	(13, '2016-04-13', 3, 'desktop', 2,	1, '2016-04-18', 18),
	(14, '2016-03-08', 3, 'desktop', 7,	2, '2016-03-14', 24),
	(15, '2016-02-20', 7, 'mobile',	4, 2, '2016-02-23',	28),
	(16, '2016-04-21', 7, 'mobile',	1, 5, '2016-04-26',	28),
	(17, '2016-03-26', 7, 'mobile',	1, 5, '2016-04-01',	49),
	(18, '2016-04-10', 7, 'tablet',	3, 1, '2016-04-17', 28),
	(19, '2016-01-06', 7, 'desktop', 1,	5, '2016-01-11', 49),
	(20, '2016-01-12', 7, 'desktop', 5,	3, '2016-01-16', 21),
	(21, '2016-04-03', 7, 'desktop', 5,	4, '2016-04-08', 63);

-- inserting data to 'giftcard' table
INSERT INTO giftcard VALUES
	(1,	30,	5,	'2016-03-23', 15),
	(2,	30,	6,	'2016-03-21', 15),
	(3,	30,	5,	'2016-04-07', 17),
	(4,	50,	1,	'2016-03-22', 33),
	(5,	50,	4,	'2016-02-22', 36),
	(6,	100, 4,	'2016-02-09', 99),
	(7,	100, 1,	'2016-03-14', 73),
	(8,	100, 2,	'2016-02-11', 83),
	(9,	100, 1,	'2016-04-07', 78);

-- inserting data to 'subsription' table
INSERT INTO subscription VALUES
	(1,	7, '2016-07-15', 'desktop',	'2016-07-16', 49, 1),
	(2,	7, '2016-06-09', 'desktop', '2016-06-10', 49, 2),
	(3,	7, '2016-07-17', 'desktop',	'2016-07-20', 35, 3),
	(4,	30, '2016-06-28', 'tablet',	'2016-07-20', 210, 4),
	(5,	30, '2016-08-28', 'mobile',	'2016-08-31', 240, 5),
	(6,	30, '2016-06-21', 'desktop', '2016-06-23', 180, 6),
	(7,	30, '2016-05-23', 'mobile',	'2016-05-25', 240, 7),
	(8,	180, '2016-05-07', 'mobile', '2016-05-08', 1440, 1),
	(9,	180, '2016-08-18', 'desktop', '2016-08-21',	1440, 2),
	(10, 180, '2016-07-28', 'tablet', '2016-07-29',	1260, 3);

-- show each gift card purchased: id, amount_worth and the total number of all gift cards purchased

SELECT
	id,
    amount_worth,
	COUNT(id) OVER()
FROM
	giftcard;

-- show each subscription: id, length, start_date, payment_amount and the total amount paid for all subscriptions ever

SELECT
	id,
    length,
    start_date,
    payment_amount,
    SUM(payment_amount) OVER()
FROM
	subscription;


-- show each single rental: id, rental_period, payment_amount, the average amount paid from all the single rentals ever and the ratio of the two last columns

SELECT
	id,
    rental_period,
    payment_amount,
    AVG(payment_amount) OVER(),
    payment_amount / AVG(payment_amount) OVER()
FROM
	single_rental;

-- for each movie, show its title, editor_rating, genre and the average editor_rating of all movies of the same genre

SELECT
	title,
    editor_rating,
    genre,
    AVG(editor_rating) OVER(PARTITION BY genre)
FROM
	movie;

-- for each distinctive movie, show the title, the average customer rating for that movie (as the avg_movie_rating column), the average customer rating for the entire genre (as the avg_genre_rating column), and the average customer rating for all movies (as the avg_rating column)

SELECT DISTINCT
	title,
    AVG(rating) OVER(PARTITION BY movie.id) AS avg_movie_rating,
    AVG(rating) OVER(PARTITION BY genre) AS avg_genre_rating,
    AVG(rating) OVER() AS avg_rating
FROM
    movie
LEFT JOIN
    review
ON
    movie.id = review.movie_id;

-- show: 1/ distinctive amount_worth values of giftcards, 2/count of the number of giftcards with this value that were ever purchased (shown as count_1), 3/count of all giftcards ever purchased (shown as count_2), 4/show the percentage that the respective giftcard type constitutes in relation to all gift cards. Show the last column rounded to integer values and name it percentage.

SELECT DISTINCT
	amount_worth,
    COUNT(id) OVER(PARTITION BY amount_worth) as count_1,
    COUNT(id) OVER() as count_2,
    ROUND(100 * COUNT(id) OVER(PARTITION BY amount_worth) / CAST(COUNT(id) OVER() AS Decimal)) AS percentage
FROM
	giftcard;

-- for each customer, show the following information: first_name, last_name, the average payment_amount from single rentals by that customer and the average payment_amount from single rentals by any customer from the same country

SELECT DISTINCT
	first_name,
    last_name,
    AVG(payment_amount) OVER(PARTITION BY customer.id),
    AVG(payment_amount) OVER(PARTITION BY customer.country)
FROM
	customer
LEFT JOIN
	single_rental
ON
	customer.id = single_rental.customer_id;

-- for each movie, show the following information: title, release_year, editor_rating and the rank based on editor_rating. The movie with the highest editor_rating should have rank = 1. The same rank values are possible for multiple rows, but don't leave gaps in numbering

SELECT
	title,
    release_year,
    editor_rating,
    DENSE_RANK() OVER(ORDER BY editor_rating DESC)
FROM
	movie;

-- rank single_rental in accordance with the price paid for them. For each single_rental, show the movie title, rental_period, payment_amount and the rank. Multiple single_rentals can share the same rank, the highest amount should have rank = 1 and gaps in numbering are allowed, too

SELECT
	title,
    rental_period,
    payment_amount,
    RANK() OVER(ORDER BY payment_amount DESC)
FROM
	single_rental
LEFT JOIN
	movie
ON
	single_rental.movie_id = movie.id;

-- show the first and last name of the customer who bought the second most recent giftcard along with the date when the payment took place. Assume that an individual rank is assigned for each giftcard purchase

WITH ranking AS (
SELECT
	first_name,
    last_name,
    payment_date,
    ROW_NUMBER() OVER(ORDER BY payment_date DESC)
FROM
	giftcard
LEFT JOIN
	customer
ON
	giftcard.customer_id = customer.id)

SELECT
	first_name,
    last_name,
    payment_date
FROM
	ranking
WHERE 
	row_number = 2;

-- for each single rental, show the rental_date, the title of the movie rented, its genre, the payment_amount and the rank of the rental in terms of the price paid (the most expensive rental should have rank = 1). The ranking should be created separately for each movie genre. Allow the same rank for multiple rows and allow gaps in numbering too

SELECT
	rental_date,
    title,
    genre,
    payment_amount,
    RANK() OVER(PARTITION BY genre ORDER BY payment_amount DESC)
FROM
	single_rental
LEFT JOIN
	movie
ON
	single_rental.movie_id = movie.id;

-- for each single rental, show the id, rental_date, payment_amount and the running total of payment_amounts of all rentals from the oldest one (in terms of rental_date) until the current row

SELECT
	id,
    rental_date,
    payment_amount,
    SUM(payment_amount) OVER(ORDER BY rental_date ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW)
FROM
	single_rental;

-- for each single rental, show its id, rental_date, platform, payment_date, payment_amount and the average payment amount calculated by taking into account the previous two rows, the current row and the next two rows when sorted by the payment_date

SELECT
	id,
    rental_date,
    platform,
    payment_date,
    payment_amount,
    AVG(payment_amount) OVER(ORDER BY payment_date ROWS BETWEEN 2 PRECEDING AND 2 FOLLOWING)
FROM
	single_rental;

-- for each subscription, show the following columns: id, length, platform, payment_date, payment_amount and the future cashflows calculated as the total money from all subscriptions starting from the beginning of the payment_date of the current row (i.e. include any other payments on the very same date) until the very end

SELECT
	id,
    length,
    platform,
    payment_date,
    payment_amount,
    SUM(payment_amount) OVER(ORDER BY payment_date RANGE BETWEEN CURRENT ROW AND UNBOUNDED FOLLOWING)
FROM
	subscription;

-- for each single rental, show the following information: rental_date, title of the movie rented, genre of the movie, payment_amount and the highest payment_amount for any movie in the same genre rented from the first day up to the current rental_date. Show the last column as highest_amount

SELECT
  rental_date,
  title,
  genre,
  payment_amount,
  MAX(payment_amount) OVER(
    PARTITION BY genre
    ORDER BY rental_date
    ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW
  ) AS highest_amount
FROM movie
JOIN single_rental
  ON single_rental.movie_id = movie.id;

-- for each giftcard, show its amount_worth, payment_amount and two more columns: the payment_amount of the first and last giftcards purchased in terms of the payment_date

SELECT
	amount_worth,
    payment_amount,
    FIRST_VALUE(payment_amount) OVER(ORDER BY payment_date),
    LAST_VALUE(payment_amount) OVER(ORDER BY payment_date ROWS BETWEEN UNBOUNDED PRECEDING AND UNBOUNDED FOLLOWING)
FROM
	giftcard;

-- for each single rental, show the following columns: id, payment_date, payment_amount, the payment_amount of the previous single_rental in terms of the payment_date and the difference between the last two values

SELECT
	id,
    payment_date,
    payment_amount,
    LAG(payment_amount) OVER(ORDER BY payment_date),
    payment_amount - LAG(payment_amount) OVER(ORDER BY payment_date)
FROM
	single_rental;

-- for each rental date, show the rental_date, the sum of payment amounts (column name payment_amounts) from single_rental on that day, the sum of payment_amounts on the previous day and the difference between these two values

WITH temporary AS (
  SELECT
    rental_date,
    SUM(payment_amount) AS payment_amounts
  FROM single_rental
  GROUP BY rental_date;
)

SELECT
  rental_date,
  payment_amounts,
  LAG(payment_amounts) OVER(ORDER BY rental_date),
  payment_amounts - LAG(payment_amounts) OVER(ORDER BY rental_date) AS difference
FROM temporary;

-- for each customer, show the following information: first_name, last_name, the sum of payments (AS sum_of_payments) for all single rentals and the sum of payments of the median customer in terms of the sum of payments (since there are 7 customers, pick the 4th customer as the median)

WITH temporary AS (SELECT
	first_name,
    last_name,
    SUM(payment_amount) AS sum_of_payments
FROM
	customer
INNER JOIN
	single_rental
ON
	customer.id = single_rental.customer_id
GROUP BY
	first_name, last_name
ORDER BY
	sum_of_payments)
    
SELECT
	first_name,
    last_name,
    sum_of_payments,
    NTH_value(sum_of_payments, 4) OVER()
FROM
	temporary;

-- for each movie, show its title, genre, editor_rating and its rank based on editor_rating for all the movies in the same genre

SELECT
	title,
    genre,
    editor_rating,
    RANK() OVER(PARTITION BY genre ORDER BY editor_rating DESC )
FROM
	movie;

-- for each review, show the following information: its id, title of the movie, the rating and the previous rating given by any customer to the same movie when sorted by the id of the reviews

SELECT
	review.id,
    movie.title,
    rating,
    LAG(rating) OVER(PARTITION BY movie.title ORDER BY review.id)
    
FROM
	review
INNER JOIN
	movie
ON
	review.movie_id = movie.id;

-- for each movie, show the following information: title, genre, average user rating for that movie and its rank in the respective genre based on that average rating in descending order (so that the best movies will be shown first)

SELECT
	movie.title,
    movie.genre,
    AVG(review.rating),
    RANK() OVER(PARTITION BY movie.genre ORDER BY AVG(review.rating) DESC)
    
FROM
	movie
INNER JOIN
	review
ON
	movie.id = review.movie_id
GROUP BY
	movie.title, movie.genre;

-- for each platform, show the following columns: platform, sum of subscription payments for that platform and its rank based on that sum (the platform with the highest sum should get the rank of 1)

SELECT
	platform,
    SUM(payment_amount),
    RANK() OVER(ORDER BY SUM(payment_amount) DESC)
FROM
	subscription
GROUP BY
	platform;

-- divide subscriptions into three groups (buckets) based on the payment_amount. Group the rows based on those buckets. Show the following columns: bucket, minimal payment_amount in that bucket and maximal payment_amount in that bucket

WITH temporary AS (SELECT
	payment_amount,
	NTILE(3) OVER(ORDER BY payment_amount) AS bucket
FROM
	subscription)
    
SELECT
	bucket,
    MIN(payment_amount),
    MAX(payment_amount)
FROM
	temporary
GROUP BY
	bucket;
