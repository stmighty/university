select customer.postal_code, count(customer.customer_id) as customer_numbers
from customer
group by customer.postal_code
having count(customer.customer_id) > 1
order by count(customer.customer_id) desc