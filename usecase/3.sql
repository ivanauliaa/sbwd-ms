-- Melihat Kategori barang yang paling banyak barangnya.
SELECT name
FROM categories
WHERE id IN (SELECT sq.category_id
             FROM (SELECT p.category_id, COUNT(p.id) product_count
                   FROM products p
                   GROUP BY p.category_id
                   ORDER BY product_count DESC LIMIT 1) sq);