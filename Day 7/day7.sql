SELECT vendor_name, SUM(quantity_sold*price_per_unit) AS total_revenue
FROM sales
LEFT JOIN vendors
ON sales.vendor_id = vendors.vendor_id
GROUP BY vendors.vendor_id, vendor_name
ORDER BY total_revenue DESC
LIMIT 2;
