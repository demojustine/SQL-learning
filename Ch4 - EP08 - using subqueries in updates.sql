-- Ch4 - EP08 - using subqueries in updates
use invoicing;
update invoices
set
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where client_id = (
	select client_id
    from clients 
    where name = 'Myworks');
    
update invoices
set
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where client_id in (
	select client_id
    from clients 
    where state in ('CA','NY'));
    
update invoices
set
	payment_total = invoice_total * 0.5,
    payment_date = due_date
where payment_date is null;

-- excersie 
use sql_store;
update orders
set
	comments = 'Gold customer'
where customer_id in (

select customer_id
from customers_2
where points > 3000)

