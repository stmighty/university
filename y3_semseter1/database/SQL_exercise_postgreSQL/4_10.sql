select product.product_id, product.product_description, product.product_finish
from product
WHERE product.product_finish::text LIKE '%White%'