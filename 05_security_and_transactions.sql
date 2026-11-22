
-- Crownfield Eye Hospital
-- File: 05_security_and_transactions.sql
-- Part D: Database security and transaction testing

USE crowmfieldeyehospital;


-- TASK 1: CREATE FOUR DATABASE ROLES

CREATE ROLE IF NOT EXISTS
    'hospital_admin',
    'doctor',
    'receptionist',
    'auditor';


-- TASK 2: ASSIGN ROLE PERMISSIONS

-- Hospital administrator: full database access.
GRANT ALL PRIVILEGES
ON crowmfieldeyehospital.*
TO 'hospital_admin';

-- Doctor: view records and manage clinical information.
GRANT SELECT
ON crowmfieldeyehospital.*
TO 'doctor';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.appointment
TO 'doctor';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.diagnosis
TO 'doctor';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.prescription
TO 'doctor';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.prescriptionitem
TO 'doctor';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.followup
TO 'doctor';

-- Receptionist: manage patient and appointment information.
GRANT SELECT
ON crowmfieldeyehospital.*
TO 'receptionist';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.patient
TO 'receptionist';

GRANT INSERT, UPDATE
ON crowmfieldeyehospital.appointment
TO 'receptionist';

-- Auditor: read-only access.
GRANT SELECT
ON crowmfieldeyehospital.*
TO 'auditor';


-- TASK 3: VERIFY ROLE PERMISSIONS

SHOW GRANTS FOR 'hospital_admin';
SHOW GRANTS FOR 'doctor';
SHOW GRANTS FOR 'receptionist';
SHOW GRANTS FOR 'auditor';


-- TASK 4: DEMONSTRATE PASSWORD HASHING

-- SHA-256 hashing demonstration.
-- Production password storage should use a dedicated
-- salted password-hashing method such as Argon2id or bcrypt.

SELECT
    'HospitalUser123!' AS OriginalPassword,
    SHA2('HospitalUser123!', 256) AS HashedPassword;


-- TASK 5: TRANSACTION AND ROLLBACK TEST

-- Insert a temporary record, check it, then cancel it.

START TRANSACTION;

INSERT INTO patient
    (PatientID, PatientName, Postcode)
VALUES
    ('OP998', 'Transaction Test', 'E1 6AN');

SELECT *
FROM patient
WHERE PatientID = 'OP998';

ROLLBACK;

-- This final query should return no records.
SELECT *
FROM patient
WHERE PatientID = 'OP998';
