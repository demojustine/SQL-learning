-- Ch4 - EP09 - deleting rows 
use sql_invoicing;
delete from invoices
where invoice_id = (
select *
 from clients
 where name = 'Myworks'
 )