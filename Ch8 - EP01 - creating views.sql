-- Ch8 - EP01 - creating views
use sql_invoicing;

create view sales_by_client as
select 
	c.client_id,
    c.name,
    sum(invoice_total) as total_sales
from clients c
join invoices i using (client_id)
group by client_id, name;

select *
from sales_by_client
where total_sales>500;

-- exercise
-- create a view to see the balance for each client
create view clients_balance as
select c.client_id, c.name, sum(invoice_total-payment_total) as balance
from clients c
join invoices i using (client_id)
group by client_id,name;

select *
from sales_by_client