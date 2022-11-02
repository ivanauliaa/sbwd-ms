-- Nominal rata-rata transaksi yang dilakukan oleh pelanggan dalam 1 bulan terakhir.
SELECT avg(total_price), MONTH(created_at)
FROM orders
GROUP BY MONTH(created_at)
