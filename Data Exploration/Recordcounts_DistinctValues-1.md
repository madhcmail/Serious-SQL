## Record Counts
> 1.How many rows are there in the film_list table?
```
select count(*) AS row_count from dvd_rentals.film_list;
```
## Show Unique columns
> 2.What are the unique values for the rating column in the film table?

```
select DISTINCT(rating) from dvd_rentals.film_list;
```
> 2.1 Count of Unique Values: How many unique category values are there in the film_list table?

```
SELECT COUNT (DISTINCT category) AS unique_count_category from dvd_rentals.film_list;
```

## GROUP BY
> 3.What is the frequency of values in the rating column in the film_list table?
```
select rating, count(*) AS frequency from dvd_rentals.film_list GROUP By rating;

select rating, count(*) AS frequency from dvd_rentals.film_list GROUP By rating ORDER By frequency;
```
> 3.1 Adding a Percentage column to above output
```
SELECT
  rating,
  COUNT(*) as frequency,
  COUNT(*) :: numeric / SUM(COUNT(*)) OVER() AS percentage
from dvd_rentals.film_list
GROUP BY rating
ORDER BY frequency ;
```
>3.2 Counts For Multiple Column Combinations:-
What are the 5 most frequent rating and category combinations in the film_list table?
```
SELECT
  rating,
  category,
  count(*) AS frequency
from dvd_rentals.film_list
GROUP BY rating, category
ORDER By frequency DESC
limit 5 ;
```
>3.3 Using Positional Numbers Instead of Column Names. But it is always good to explicitly mention the columns. If incase the group by has 20+ coluns then ideal way is to use ORDINAL else mention explicitly.
```
SELECT
  rating,
  category,
  count(*) AS frequency
from dvd_rentals.film_list
GROUP BY 1, 2
ORDER By 3 DESC
limit 5;
```