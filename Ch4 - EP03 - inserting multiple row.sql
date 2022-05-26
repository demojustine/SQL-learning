-- Ch4 - EP03 - inserting multiple row
insert into shippers (name)
values ('shipper1'),
	('shipper2'),
    ('shipper3');

-- exercise
-- + three rows in the products table
insert into products (name, quantity_in_stock, unit_price)
values ('product1', 10, 1.95),
	('product2', 15, 3.4),
    ('product3', 4, 5.7)