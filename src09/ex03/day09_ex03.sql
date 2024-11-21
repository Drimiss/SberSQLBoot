DROP TRIGGER IF EXISTS trg_person_insert_audit on person;
DROP TRIGGER IF EXISTS trg_person_update_audit on person;
DROP TRIGGER IF EXISTS trg_person_delete_audit on person;

DROP FUNCTION IF EXISTS trg_person_update_audit();
DROP FUNCTION IF EXISTS trg_person_insert_audit();
DROP FUNCTION IF EXISTS trg_person_delete_audit();

 TRUNCATE TABLE person_audit;

CREATE OR REPLACE FUNCTION fnc_trg_person_audit()
RETURNS TRIGGER as $person_audit$
BEGIN
IF (TG_OP = 'INSERT')   THEN
        INSERT INTO person_audit
        SELECT current_timestamp, 'I', new.id, new.name, new.age, new.gender, new.address;
    ELSEIF (TG_OP = 'UPDATE') THEN
        INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)--changing table
            VALUES(current_timestamp, 'U', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    ELSEIF (TG_OP = 'DELETE') THEN
        INSERT INTO person_audit(created, type_event, row_id, name, age, gender, address)--changing table
            VALUES(current_timestamp, 'D', OLD.id, OLD.name, OLD.age, OLD.gender, OLD.address);
    END IF;
    RETURN NULL;
END;
$person_audit$ LANGUAGE plpgsql;

CREATE TRIGGER trg_person_audit 
AFTER INSERT or UPDATE or DELETE
ON person 
FOR EACH ROW EXECUTE FUNCTION fnc_trg_person_audit();

INSERT INTO person(id, name, age, gender, address)  
VALUES (10,'Damir', 22, 'male', 'Irkutsk');
UPDATE person SET name = 'Bulat' WHERE id = 10;
UPDATE person SET name = 'Damir' WHERE id = 10;
DELETE FROM person WHERE id = 10;
