WITH vis_d AS (
    SELECT name,
            COUNT(*),
            'visit' AS action_type
    FROM pizzeria AS piz LEFT JOIN person_visits AS pv
                            ON pv.pizzeria_id = piz.id
    GROUP BY name
    ORDER BY 2 DESC
    LIMIT 3),
    order_d AS (
    SELECT name,
            COUNT(*),
            'order' AS action_type
    FROM menu AS m LEFT JOIN pizzeria AS piz 
                            ON m.pizzeria_id = piz.id
                         JOIN person_order AS po 
                            ON po.menu_id = m.id
    GROUP BY name
    ORDER BY 2 DESC
    LIMIT 3)

SELECT *
FROM order_d 
UNION 
SELECT * 
FROM vis_d
ORDER BY 3, 2 DESC;