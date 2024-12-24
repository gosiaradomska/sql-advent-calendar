SELECT 
    recipient_type, 
    SUM(weight_kg) AS total_weight,
    SUM(weight_kg)/(SELECT SUM(weight_kg) FROM gifts) AS weight_percentage
FROM gifts
GROUP BY recipient_type;
