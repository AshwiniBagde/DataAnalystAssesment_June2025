____________Customers Table____________

create table customers(
Order_ID varchar primary key,
Order_Date date,
CustomerName varchar,
State varchar,
City varchar
)

copy customers from 'D:/E-commerce Sales/customers.csv' DELIMITER ',' csv header

select * from customers


_______________Products Table________________

create table products(
Order_ID varchar,
Amount int,
Profit int,
Quantity int,
Category varchar,
Sub_Category varchar,
PaymentMode varchar
)

copy products from 'D:/E-commerce Sales/products.csv' DELIMITER ',' csv header

select * from products


_______________SQL Queries______________

___total amount gererated
select sum(amount) from products

___total amount grouped by category
select category, sum(amount) from products 
group by category

___total profit groped by category
select category, sum(profit) from products 
group by category

___  Electronics items with amount greater than 1500

select Order_id, amount, quantity, category from products
where category = 'Electronics' and amount > 1500

___InnerJoin___

select c.order_id, customername, state, amount,category from products p
inner join customers c
on c.order_id = p.order_id
order by amount DESC

___Distinct Payment mode

select distinct(paymentmode) from products







