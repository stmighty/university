select customer.customer_id, customer.customer_name, count(ordert.order_id) as number_of_orders
from customer join ordert on customer.customer_id = ordert.customer_id
group by customer.customer_id
order by count(ordert.order_id) desc