-- Ch4 - EP06 - update a single row
use sql_invoicing;

update invoices
set payment_total = 10, payment_date = '2019-03-01'
where invoice_id = 1;

update invoices
set payment_total = default, payment_date = null
where invoice_id = 1;

update invoices
set 
	payment_total = invoice_total * 0.5 ,
	payment_date = due_date
where invoice_id = 3;