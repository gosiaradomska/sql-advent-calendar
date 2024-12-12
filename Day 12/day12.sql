WITH figurines_snow_globe AS (
    SELECT globe_name, COUNT(figurine_id) AS figurines_number, material
    FROM figurines
    LEFT JOIN snow_globes
    ON figurines.globe_id = snow_globes.globe_id
    GROUP BY snow_globes.globe_id, globe_name
),
globes_ranking AS (
    SELECT RANK() OVER(ORDER BY figurines_number DESC) AS rank, *
    FROM figurines_snow_globe)
    
SELECT *
FROM globes_ranking
WHERE rank <= 3;
