-- 1 pelanggan membeli 3 barang yang berbeda.
INSERT INTO orders (id, total_price, customer_id) VALUES(256, 13500, 3);
INSERT INTO order_items (id, quantity, order_id, product_id) VALUES(361, 1, 256, 1);
INSERT INTO order_items (id, quantity, order_id, product_id) VALUES(362, 1, 256, 2);
INSERT INTO order_items (id, quantity, order_id, product_id) VALUES(363, 1, 256, 3);