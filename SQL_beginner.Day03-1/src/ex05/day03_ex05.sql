
SELECT piz.name AS pizzeria_name
FROM person_visits AS pv
LEFT JOIN person_order AS po ON po.order_date = pv.visit_date 
                    AND pv.person_id = po.person_id
JOIN person AS p ON pv.person_id = p.id
JOIN pizzeria AS piz ON pv.pizzeria_id = piz.id
WHERE p.name = 'Andrey' AND po.order_date IS NULL;