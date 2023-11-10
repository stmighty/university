select sum(order_line.ordered_quantity * product.standard_price) as total_payment
from order_line join product on order_line.product_id = product.product_id
where order_line.order_id = 3