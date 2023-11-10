select product.product_id, product.product_description
from order_line join product on order_line.product_id = product.product_id
group by product.product_id
order by count(order_line.order_id) desc
limit 2