SELECT name 
FROM person AS p
JOIN person_order AS po ON p.id = po.person_id
JOIN menu AS m ON po.menu_id = m.id 
WHERE gender = 'male' 
        AND address IN ('Moscow', 'Samara') 
        AND pizza_name IN ('pepperoni pizza', 'mushroom pizza')
ORDER BY 1 DESC;