-- Ch4 - EP07 - update multiple row
update invoices
set
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where client_id in (3,4);

-- write a sql statement to
-- give any customers born before 1990
-- 50 extra points 

use sql_store;
create table customers_2 as
select *  from customers;
update customers_2
set
	points = points + 50
where birth_date < '1990-01-01'