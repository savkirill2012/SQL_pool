SELECT
    (SELECT name FROM person WHERE id = po.person_id) AS name,
    (SELECT CASE 
                WHEN name = 'Denis' THEN 'true'
                ELSE 'false'
            END
    FROM person
    WHERE id = po.person_id) AS check_name
FROM person_order po 
WHERE (po.menu_id = 13 OR po.menu_id = 14 OR po.menu_id = 18) AND po.order_date = '2022-01-07';

