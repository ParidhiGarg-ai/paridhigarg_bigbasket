--A
select p.category, count (*) as total_count, sum(o.amount_inr) as total_category_revenue, round(avg(o.amount_inr),0)as average_revene
from orders as o inner join products as p 
on  o.product_id = p.product_id
where o.status = 'Delivered' 
group by p.category 
having total_category_revenue > 10000; 

--used inner join to join products and orders, used group by and having to filter out the aggregated columns

--B

select o.product_id,p.product_name, count(o.order_id) as total_orders
from products as p left join orders as o 
on  p.product_id = o.product_id
group by o.product_id, p.product_name
order by total_orders asc;

--used left join to join product and orders and then found out count of orders for each product, used order by to rearrange it whole






