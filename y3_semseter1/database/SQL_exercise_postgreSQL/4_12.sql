select count(ordert.order_id) as total_orders
from ordert
where ordert.order_date BETWEEN '2020-01-10 00:00:00' AND '2020-01-15 23:59:59'