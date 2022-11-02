-- Melihat 3 produk yang paling sering dibeli oleh pelanggan.
SELECT name
FROM products
WHERE id IN (SELECT sq.product_id
             FROM (SELECT oi.product_id, count(oi.id) AS user_count
                   FROM order_items AS oi
                   GROUP BY oi.product_id
                   ORDER BY user_count desc LIMIT 3) sq);
