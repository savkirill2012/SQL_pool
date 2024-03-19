WITH tmp_date AS (
    SELECT gs::date AS date_t 
    FROM generate_series('2022-01-01'::timestamp, '2022-01-10'::timestamp, '1 day') as gs)
SELECT date_t AS missing_date
FROM tmp_date 
LEFT JOIN (
    SELECT visit_date, person_id 
    FROM person_visits
    WHERE person_id = 1 OR person_id = 2) AS p 
ON p.visit_date = tmp_date.date_t
WHERE p.visit_date IS NULL;