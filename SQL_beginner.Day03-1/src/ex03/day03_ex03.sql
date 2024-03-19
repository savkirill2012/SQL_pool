WITH male_d AS (
        SELECT pizzeria_id, COUNT(pizzeria_id) AS m_num
        FROM person_visits AS pv
        JOIN person AS p ON p.id = pv.person_id
        WHERE gender = 'male'
        GROUP BY pizzeria_id),
    female_d AS (  
        SELECT pizzeria_id, COUNT(pizzeria_id) AS f_num
        FROM person_visits AS pv
        JOIN person AS p ON p.id = pv.person_id
        WHERE gender = 'female'
        GROUP BY pizzeria_id),
    res_d AS (
        SELECT female_d.pizzeria_id
        FROM female_d
        JOIN male_d ON female_d.pizzeria_id = male_d.pizzeria_id
        WHERE male_d.m_num <> female_d.f_num)

SELECT name AS pizzeria_name
FROM pizzeria AS piz
RIGHT JOIN res_d ON res_d.pizzeria_id = piz.id
ORDER BY 1; 
