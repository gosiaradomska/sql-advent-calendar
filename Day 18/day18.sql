WITH average_ratings AS (
    SELECT activity_name, AVG(rating) AS average_rating
    FROM activity_ratings ar
    LEFT JOIN activities a
    ON ar.activity_id = a.activity_id
    GROUP BY activity_name
),
average_rating_ranks AS (
    SELECT 
        RANK() OVER(ORDER BY average_rating DESC) AS activity_rank, 
        activity_name, 
        average_rating
    FROM average_ratings
)

SELECT * 
FROM average_rating_ranks
WHERE activity_rank <= 2; 
