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



