CREATE SEQUENCE seq_person_discounts START 1;
ALTER TABLE person_discounts ALTER COLUMN id SET default nextval('seq_person_discounts');
SELECT setval('seq_person_discounts', (select count(*) + 1 from person_discounts));
