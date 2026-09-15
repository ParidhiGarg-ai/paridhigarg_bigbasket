-- A
select product_id, status, sum(amount_inr) as total_revenue,
case 
     when sum(amount_inr) >= 3000 then 'high'
	 when sum(amount_inr) >= 1000 then 'medium'
	 else 'low'
end as order_type
from orders 
where status = 'Delivered'
group by product_id, status;

-- used case when to allot labels to delivered orders acc to the total revenue. 

--B
select p.category, 
strftime("%Y-%m" , o.order_date) as order_month,
count(o.order_id) as total_orders,
sum(amount_inr) as total_revenue, 
round(avg(amount_inr),1) as average_revenue
from products as p inner join orders as o 
on p.product_id = o.product_id
where o.status = 'Delivered'
group by p.category, order_month
order by p.category asc, order_month asc;
-- a monthy by category report


--	C

with category_revenue as (
    select
        p.category,
        sum(o.amount_inr) as total_revenue
    from orders as o inner join products as p
        on o.product_id = p.product_id
    group by p.category
)
-- first calulating category revenue
select
    cr.category,
    cr.total_revenue,
    ct.target_revenue_inr,
    (ct.target_revenue_inr - cr.total_revenue) as variance,
    ((cr.total_revenue - ct.target_revenue_inr) * 100.0) / ct.target_revenue_inr as percentage_variance,
    case
        when cr.total_revenue >= ct.target_revenue_inr then 'Above Target'
        when ((cr.total_revenue - ct.target_revenue_inr) * 100.0) / ct.target_revenue_inr >= -15 then 'Below Target - Watch'
        else 'Below Target - Critical'
    end as target_status
from category_revenue as cr
join category_targets as ct
    on cr.category = ct.category;

	
	-- a derived-fields query that joins your category-level total revenue to the category_targets table and computes variance = target_revenue_inr - total_revenue and percentage_variance



