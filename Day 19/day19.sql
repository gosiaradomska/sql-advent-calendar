SELECT bear_name, MAX(food_weight_kg) AS biggest_meal_kg
FROM meal_log
LEFT JOIN polar_bears
ON meal_log.bear_id = polar_bears.bear_id
WHERE date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY bear_name
ORDER BY biggest_meal_kg DESC;
