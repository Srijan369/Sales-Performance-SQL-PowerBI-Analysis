
SELECT 
    c.customer_unique_id,
    o.order_id,
    o.order_purchase_timestamp
FROM customers c
JOIN orders o
ON c.customer_id = o.customer_id;


SELECT 
    o.order_id,
    oi.product_id,
    oi.price
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id;


SELECT 
    o.order_id,
    p.product_category_name,
    oi.price
FROM orders o
JOIN order_items oi
ON o.order_id = oi.order_id
JOIN products p
ON oi.product_id = p.product_id;


SELECT 
    c.customer_unique_id,
    o.order_id,
    p.product_category_name,
    oi.price,
    pay.payment_value
FROM customers c
JOIN orders o ON c.customer_id = o.customer_id
JOIN order_items oi ON o.order_id = oi.order_id
JOIN products p ON oi.product_id = p.product_id
JOIN payments pay ON o.order_id = pay.order_id;
