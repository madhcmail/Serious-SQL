> What is the name of the category with the highest category_id in the dvd_rentals.category table?

`
select
  category_id,
  name
from
  dvd_rentals.category
order by
  category_id desc
limit
  1;
`

