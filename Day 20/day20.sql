SELECT DISTINCT vendor_name
FROM item_prices ip
LEFT JOIN vendors v
ON ip.vendor_id = v.vendor_id
WHERE price_usd < 10;
