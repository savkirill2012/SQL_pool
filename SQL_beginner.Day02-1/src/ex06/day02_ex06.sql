WITH tmp_data AS (
    SELECT p.name AS name_p,
            po.menu_id 
    FROM person_order AS po
    JOIN person AS p ON po.person_id = p.id
    WHERE name IN ('Denis', 'Anna'))
SELECT m.pizza_name,
    piz.name
FROM menu AS m
JOIN pizzeria AS piz ON m.pizzeria_id = piz.id
JOIN tmp_data AS tmp ON m.id = tmp.menu_id 
WHERE name_p IN ('Denis', 'Anna')
ORDER BY 1, 2;