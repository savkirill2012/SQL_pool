SELECT DISTINCT pv.visit_date AS missing_date
FROM person_visits AS pv
    LEFT JOIN (SELECT visit_date, 
                        person_id 
                FROM person_visits
                WHERE person_id = 1 OR person_id = 2) AS p ON p.visit_date = pv.visit_date
WHERE p.visit_date IS NULL
ORDER BY 1;