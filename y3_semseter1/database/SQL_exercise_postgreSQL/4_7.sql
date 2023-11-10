select product.product_id, product.product_description
from product join order_line on product.product_id = order_line.product_id
group by product.product_id
ORDER BY SUM(order_line.ordered_quantity) DESC
LIMIT 1