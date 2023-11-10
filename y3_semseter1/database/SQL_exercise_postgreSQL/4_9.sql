select distinct on (customer.customer_id) customer.customer_id, customer.customer_name
from customer join ordert on customer.customer_id = ordert.customer_id
WHERE ordert.order_date BETWEEN '2020-01-10 00:00:00' AND '2020-01-15 23:59:59'
group by customer.customer_id