-- Ch6 - EP02 - subqueries
-- find products thate are more expensice thn lettuce (id=3)
use sql_store;

select * 
from products
where unit_price > (
	select unit_price
    from products
    where product_id =3
);

-- exercise
-- in sql_hr database
-- find employees whoses ear more than average
use sql_hr;

select * 
from employees
where salary > (
	select avg(salary) as average
    from employees
)
