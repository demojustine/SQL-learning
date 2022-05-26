-- Ch5 - EP01 - aggregate functions 聚合函数
-- max() min() avg() sum() count()

use sql_invoicing;
select max(invoice_total) as highest,
	min(invoice_total) as lowest,
    avg(invoice_total) as total,
    sum(invoice_total * 1.1) as total,
   -- count(invoice_total) as number_of_invoices,
   -- count(payment_date) as count_of_payments,
    count(*) as total_records,
    count(distinct client_id) as total_clients
from invoices
where invoice_date > '2019-07-01';

-- exercise

-- first half of 2019
select 
	   'first half of 2019' as date_range,
	   sum(invoice_total) as total_sales,
       sum(payment_total) as total_payments,
       (sum(invoice_total) - sum(payment_total)) as what_we_expect
from invoices
where invoice_date between '2019-01-01' and  '2019-06-30'
union
-- second half of 2019
select 	   
       'second half of 2019' as date_range,
	   sum(invoice_total) as total_sales,
       sum(payment_total) as total_payments,
       (sum(invoice_total) - sum(payment_total)) as what_we_expect
from invoices
where invoice_date > '2019-07-01'
union
-- total 2019
select 	   
       'total' as date_range,
	   sum(invoice_total) as total_sales,
       sum(payment_total) as total_payments,
       (sum(invoice_total) - sum(payment_total)) as what_we_expect
from invoices