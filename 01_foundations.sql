select  customer_id, name, city
from customers
where city =  "Mumbai"; 
-- USING SELET/WHERE to find customers from Mumbai Only

select distinct category
from products;
 -- USING DISTINCT to find unique values of category

select *
from orders
order by amount_inr desc, rating DESC
limit 5 ;
-- providing details of orders of 5 highest paying customers using order by and limit. By chance there is a tie in amount_inr, sort by rating.

select count(order_id) as total_orders, sum(amount_inr) as total_amount
from orders;
-- Using Alias function to rename ouur aggregated columns

select order_id, payment_mode
from orders
where payment_mode in('Wallet' , 'Credit Card');
-- order_id where payment_mode can be either of the two using in()

select order_id, amount_inr
from orders
where  amount_inr  between 20 and 40 ;
--display only those orders using where  BETWEEN

select order_id, amount_inr
from orders
where  amount_inr  not between 20 and 40 ;
--display only those orders using where not BETWEEN

select order_id, customer_id, payment_mode, status, rating
from orders
where rating is null;
 -- finding details of orders for which rating is null using where clause.


