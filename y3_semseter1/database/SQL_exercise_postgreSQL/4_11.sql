select customer.customer_id, customer.customer_name
from customer LEFT JOIN ordert ON customer.customer_id = ordert.customer_id
group by customer.customer_id 
having count(ordert.order_id) = 0