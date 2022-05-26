-- Ch4 - EP05 - creating a copy of a table
use sql_store;
create table orders_archived as
select *  from orders;
-- click table on right mouse => truncate table
insert into orders_archived ()
select *
from orders
where order_date < '2019-01-01';

-- exercise
use sql_invoicing;
-- my
create table invoices_archived as
select *
from invoices i
join clients c 
	using (client_id)
where i.payment_date is not null;
-- teachers
create table invoices_archived2 as
select i.invoice_id,i.number,c.name as client,
	i.invoice_total,i.payment_total,i.invoice_date,
    i.payment_date,i.due_date
from invoices i
join clients c 
	using (client_id)
where i.payment_date is not null