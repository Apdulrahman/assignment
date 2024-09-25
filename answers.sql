-- question 1.1
INSERT INTO patients 
(first_name, last_name, date_of_birth, gender, language)
VALUES ('John', 'Doe', '1980-11-15', 'Male', 'English');
-- question 2.1
UPDATE patients
SET language = 'Spanish'
WHERE first_name = 'John' AND last_name = 'Doe'
LIMIT 1;

-- question 3.1

SELECT *
FROM information_schema.KEY_COLUMN_USAGE
WHERE REFERENCED_TABLE_NAME = 'patients';

DELETE FROM admissions
WHERE patient_id = 10;

DELETE FROM discharges
WHERE patient_id = 10;

DELETE FROM ed_visits
WHERE patient_id = 10;

DELETE FROM visits
WHERE patient_id = 10;
DELETE FROM patients
WHERE patient_id = 10;


-- 4

SELECT provider_id, 
       COALESCE(email_address,first_name,last_name, 'N/A') AS email
FROM providers;
--  5
SELECT *
FROM providers
WHERE provider_specialty = 'pediatrics'
  AND (phone_number IS NULL OR email_address IS NULL);