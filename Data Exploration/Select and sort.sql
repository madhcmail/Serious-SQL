 -- Show only the language_id and name columns from the language table

select
  language_id,
  name
from
  dvd_rentals.language;


-- Limit Output Rows
-- Show the first 10 rows from the actor tables

select
  *
from
  dvd_rentals.actor
LIMIT
  10;

-- Sorting Query Results

-- What are the first 5 values in the country column from the country table by alphabetical order?

Select
  country
from
  dvd_rentals.country
order by
  country
limit
  5;

-- What are the 5 lowest total_sales values in the sales_by_film_category table?

SELECT total_sales FROM dvd_rentals.sales_by_film_category ORDER BY 1 LIMT 5;

-- What are the first 5 values in reverse alphabetical order in the country column from the country table?

SELECT country FROM dvd_rentals.country ORDER BY country DESC LIMIT 5;

-- Which category had the lowest total_sales value according to the sales_by_film_category table? What was the total_sales value?

SELECT category, total_sales FROM dvd_rentals.sales_by_film_category ORDER BY total_sales limit 1;

-- What was the latest payment_date of all dvd rentals in the payment table?

SELECT payment_date FROM dvd_rentals.payment ORDER BY payment_date DESC LIMIT 1;

-- Which customer_id had the latest rental_date for inventory_id = 1 and 2?
-- What happens if you remove that LIMIT 8 in the query below?
  
select
  customer_id,
  inventory_id,
  rental_date
from
  dvd_rentals.rental
order by
inventory_id, rental_date desc limit 8;

-- In the dvd_rentals.sales_by_film_category table, which category has the highest total_sales?
select category, total_sales from dvd_rentals.sales_by_film_category order by total_sales desc limit 5;

