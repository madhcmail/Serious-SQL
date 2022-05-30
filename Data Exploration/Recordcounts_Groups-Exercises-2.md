## Exercises - dvd_rentals schema
>1.Which actor_id has the most number of unique film_id records in the dvd_rentals.film_actor table?
```
SELECT
  actor_id,
  COUNT(DISTINCT film_id) AS unique_film_id_count
from dvd_rentals.film_actor
GROUP BY actor_id
ORDER BY unique_film_id_count DESC
LIMIT 1;
```
>2.How many distinct fid values are there for the 3rd most common price value in the dvd_rentals.nicer_but_slower_film_list table?
```
SELECT
  price,
  COUNT(DISTINCT fid)
from dvd_rentals.nicer_but_slower_film_list
GROUP BY 1
ORDER BY 2 DESC
LIMIT 3 OFFSET 2;
```
>3.How many unique country_id values exist in the dvd_rentals.city table?
```
select COUNT(DISTINCT country_id) AS unique_countries from dvd_rentals.city;
```
>4.What percentage of overall total_sales does the Sports category make up in the dvd_rentals.sales_by_film_category table?
```
SELECT
  category,
  total_sales,
  ROUND (
    100 * total_sales :: numeric / SUM(total_sales) OVER(),
    2
  ) AS percentage
from
  dvd_rentals.sales_by_film_category;
```
>5.What percentage of unique fid values are in the Children category in the dvd_rentals.film_list table?
```
select
  category,
  ROUND (
    100 * COUNT(DISTINCT fid) :: numeric / SUM(COUNT(DISTINCT fid)) over(),
    2
  ) AS percentage
from
  dvd_rentals.film_list
  GROUP BY
  category;
  ```