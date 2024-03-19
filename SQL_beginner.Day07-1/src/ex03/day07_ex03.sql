WITH vis_d AS (
    SELECT name
    FROM pizzeria AS piz LEFT JOIN person_visits AS pv
                            ON pv.pizzeria_id = piz.id),
    order_d AS (
    SELECT name
    FROM menu AS m LEFT JOIN pizzeria AS piz 
                            ON m.pizzeria_id = piz.id
                         JOIN person_order AS po 
                            ON po.menu_id = m.id)

SELECT name,
        COUNT(*) AS total_count
FROM (
    SELECT *
    FROM order_d 
    UNION ALL
    SELECT *
    FROM vis_d) AS tmp
GROUP BY name
ORDER BY 2 DESC, 1;