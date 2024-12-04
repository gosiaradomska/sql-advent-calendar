SELECT region, AVG(snowfall_inches)
FROM ski_resorts
LEFT JOIN snowfall
ON ski_resorts.resort_id = snowfall.resort_id
GROUP BY region
ORDER BY AVG(snowfall_inches) DESC;
