SELECT *
FROM (
    SELECT p.name,
            COUNT(*) AS count_of_visits
    FROM person_visits AS pv RIGHT JOIN person AS p
                                    ON p.id = pv.person_id
    GROUP BY p.name) AS tmp
WHERE count_of_visits > 3