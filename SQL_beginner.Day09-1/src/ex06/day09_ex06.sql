CREATE FUNCTION fnc_person_visits_and_eats_on_date(pperson varchar DEFAULT 'Dmitriy', pprice integer DEFAULT 500, pdate TIMESTAMP DEFAULT '2022-01-08') RETURNS TABLE (name varchar) AS $$
    BEGIN 
       RETURN QUERY SELECT piz.name
        FROM person_visits AS pv JOIN person AS p
                                    ON p.id = pv.person_id
                                JOIN menu AS m 
                                    ON m.pizzeria_id = pv.pizzeria_id
                                JOIN pizzeria AS piz
                                    ON piz.id = m.pizzeria_id
        WHERE p.name = pperson AND m.price < pprice AND pv.visit_date = pdate;
    END;
$$ LANGUAGE plpgsql;