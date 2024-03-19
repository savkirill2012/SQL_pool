WITH pep_piz AS (
    SELECT name 
    FROM person AS p 
    JOIN person_order AS po ON p.id = po.person_id
    JOIN menu AS m ON po.menu_id = m.id 
    WHERE gender = 'female' 
        AND pizza_name = 'pepperoni pizza'
), mush_piz AS (
    SELECT name 
    FROM person AS p 
    JOIN person_order AS po ON p.id = po.person_id
    JOIN menu AS m ON po.menu_id = m.id 
    WHERE gender = 'female' 
        AND pizza_name = 'mushroom pizza'
)

SELECT name 
FROM pep_piz
UNION 
SELECT name 
FROM mush_piz
ORDER BY 1;