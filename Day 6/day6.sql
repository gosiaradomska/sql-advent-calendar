SELECT tracking.bear_id, bear_name, SUM(distance_km) AS total_distance_traveled
FROM tracking
LEFT JOIN polar_bears
ON tracking.bear_id = polar_bears.bear_id
WHERE date BETWEEN '2024-12-01' AND '2024-12-31'
GROUP BY tracking.bear_id
ORDER BY SUM(distance_km) DESC
LIMIT 3;
