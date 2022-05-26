-- ch3 ep 05 compound join conditions
use sql_store;

select *
from order_items oi
join order_item_notes oin on oi.order_id = oin.order_Id and oi.product_id = oin.product_id

