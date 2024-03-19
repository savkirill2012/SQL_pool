DROP FUNCTION fnc_trg_person_delete_audit();
DROP FUNCTION fnc_trg_person_insert_audit();
DROP FUNCTION fnc_trg_person_update_audit();
DROP TRIGGER trg_person_delete_audit ON person;
DROP TRIGGER trg_person_update_audit ON person;
DROP TRIGGER trg_person_insert_audit ON person;
TRUNCATE person_audit;

CREATE FUNCTION fnc_trg_person_audit() RETURNS TRIGGER AS $trg_person_audit$
    BEGIN
        IF (TG_OP = 'DELETE') THEN
            INSERT INTO person_audit SELECT now(), 'D', OLD.*;
            RETURN OLD;
        ELSIF (TG_OP = 'UPDATE') THEN 
            INSERT INTO person_audit SELECT now(), 'U', NEW.*;
            RETURN NEW;
        ELSIF (TG_OP = 'INSERT') THEN
            INSERT INTO person_audit SELECT now(), 'I', NEW.*;
            RETURN NEW;
        END IF;
    END;
$trg_person_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_audit
AFTER DELETE OR INSERT OR UPDATE ON person
    FOR EACH ROW EXECUTE PROCEDURE fnc_trg_person_audit();


