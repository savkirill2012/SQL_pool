SELECT p.name ,
        p.rating
FROM pizzeria AS p
    LEFT JOIN person_visits AS pv ON pv.pizzeria_id = p.id
WHERE pv.person_id IS NULL;