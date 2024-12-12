WITH CTE_resolutions AS (
    SELECT 
        friend_name, 
        COUNT(resolution) AS all_resolutions,
        SUM(is_completed) AS completed_resolutions,
        SUM(is_completed)/COUNT(resolution)*100 AS succes_percentage
    FROM resolutions
    GROUP BY friend_name
    )

SELECT *, 
    CASE
        WHEN succes_percentage > 75 THEN 'Green'
        WHEN succes_percentage < 50 THEN 'Red'
        ELSE 'Yellow'
    END AS success_category
FROM CTE_resolutions;
