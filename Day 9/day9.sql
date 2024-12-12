WITH rankedDishes AS (
SELECT 
    dish_name, event_name, calories/weight_g AS calorie_density,
    RANK() OVER(PARTITION BY events.event_id ORDER BY calories/weight_g DESC) AS ranking
FROM menu
LEFT JOIN events
ON menu.event_id = events.event_id)

SELECT dish_name, event_name, calorie_density
FROM rankedDishes
WHERE ranking <= 3;
