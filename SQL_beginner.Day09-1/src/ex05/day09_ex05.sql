DROP FUNCTION fnc_persons_female();
DROP FUNCTION fnc_persons_male();

CREATE FUNCTION fnc_persons(gen varchar DEFAULT 'female') RETURNS TABLE (id bigint, name varchar, age integer, gender varchar, address varchar) AS $$
    SELECT * FROM person WHERE gender = gen; 
$$ LANGUAGE sql;