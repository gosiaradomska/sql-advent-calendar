WITH children_number AS (
    SELECT name, COUNT(*) AS number_of_children
    FROM parent_child_relationships
    LEFT JOIN family_members
    ON parent_child_relationships.parent_id = family_members.member_id
    GROUP BY parent_id
    ),
parents_ranking AS (
    SELECT 
        name, 
        number_of_children, 
        RANK() OVER(ORDER BY number_of_children DESC) AS parent_rank
    FROM children_number
    )

SELECT * 
FROM parents_ranking
WHERE parent_rank <= 3;
