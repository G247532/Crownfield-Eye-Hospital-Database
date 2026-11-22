
-- Crownfield Eye Hospital
-- File: 03_individual_queries.sql
-- Part C: Individual SQL tasks

USE crowmfieldeyehospital;

-- QUERY 1: Aggregate function, GROUP BY and HAVING
-- Counts appointments for each clinician.

SELECT
    c.ClinicianName,
    COUNT(a.AppointmentID) AS TotalAppointments
FROM clinican c
INNER JOIN appointment a
    ON c.ClinicianID = a.ClinicianID
GROUP BY c.ClinicianID, c.ClinicianName
HAVING COUNT(a.AppointmentID) >= 1;


-- QUERY 2: INNER JOIN across multiple tables
-- Displays patients, appointments, clinicians and clinics.

SELECT
    p.PatientName,
    a.AppointmentDate,
    a.AppointmentTime,
    c.ClinicianName,
    cl.ClinicName
FROM appointment a
INNER JOIN patient p
    ON a.PatientID = p.PatientID
INNER JOIN clinican c
    ON a.ClinicianID = c.ClinicianID
INNER JOIN clinic cl
    ON a.ClinicID = cl.ClinicID;


-- QUERY 3: LEFT JOIN
-- Finds appointments without a recorded follow-up.

SELECT
    a.AppointmentID,
    a.AppointmentDate,
    f.FollowUpID,
    f.Status
FROM appointment a
LEFT JOIN followup f
    ON a.AppointmentID = f.AppointmentID
WHERE f.FollowUpID IS NULL;


-- QUERY 4: Subquery
-- Finds patients who have had more than one appointment.

SELECT
    PatientID,
    PatientName
FROM patient
WHERE PatientID IN (
    SELECT PatientID
    FROM appointment
    GROUP BY PatientID
    HAVING COUNT(*) > 1
);
