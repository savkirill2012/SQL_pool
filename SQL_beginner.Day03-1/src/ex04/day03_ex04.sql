WITH male_d AS (
        SELECT m.pizzeria_id
        FROM menu AS m
        JOIN person_order AS po ON po.menu_id = m.id
        JOIN person AS p ON p.id = po.person_id
        WHERE gender = 'male'),
    female_d AS (  
        SELECT m.pizzeria_id
        FROM menu AS m
        JOIN person_order AS po ON po.menu_id = m.id
        JOIN person AS p ON p.id = po.person_id
        WHERE gender = 'female')

SELECT name 
FROM pizzeria
WHERE id IN (
            SELECT pizzeria_id
            FROM male_d
            WHERE pizzeria_id NOT IN (
                                    SELECT pizzeria_id
                                    FROM female_d)
            UNION ALL
            SELECT pizzeria_id
            FROM female_d
            WHERE pizzeria_id NOT IN (
                                    SELECT pizzeria_id
                                    FROM male_d))
ORDER BY 1;