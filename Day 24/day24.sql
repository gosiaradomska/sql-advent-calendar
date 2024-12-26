SELECT d1.delivery_date, SUM(d1.gifts_delivered) AS cumulative_sum
FROM deliveries d1
JOIN deliveries d2
ON d1.delivery_date >= d2.delivery_date
GROUP BY d1.delivery_date;
