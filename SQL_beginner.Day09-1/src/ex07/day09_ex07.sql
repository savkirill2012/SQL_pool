CREATE FUNCTION func_minimum(arr real[]) RETURNS real AS $$
    DECLARE 
        r real; 
        x real; 
    BEGIN 
        r = arr[1];
        FOREACH x IN ARRAY $1
        LOOP
            IF x < r THEN 
                r := x;
            END IF;
        END LOOP;
        RETURN r;
    END;
$$ LANGUAGE plpgsql;