--verification results (count) = 
-- products :31
--customers: 50
--category_targets: 6
--                status         count
--orders :Cancelled	42
--              Delivered	    434
--              Pending	    24

select count(*)
from products ; 

select count(*)
from customers ; 

select count(*)
from category_targets ;

select status, count(*)
from orders
group by status;