
-- Crownfield Eye Hospital
-- File: 04_procedure_and_trigger.sql
-- Part C: Stored procedure and trigger

USE crowmfieldeyehospital;


-- TASK 5: STORED PROCEDURE
-- Retrieves appointments for a selected patient.

DROP PROCEDURE IF EXISTS GetPatientAppointments;

DELIMITER $$

CREATE PROCEDURE GetPatientAppointments(
    IN selectedPatientID VARCHAR(10)
)
BEGIN
    SELECT *
    FROM appointment
    WHERE PatientID = selectedPatientID;
END $$

DELIMITER ;


-- Test the stored procedure using patient OP001.
CALL GetPatientAppointments('OP001');


-- TASK 6: TRIGGER
-- Prevents a follow-up date from being earlier than
-- the original appointment date.

DROP TRIGGER IF EXISTS CheckFollowUpDate;

DELIMITER $$

CREATE TRIGGER CheckFollowUpDate
BEFORE INSERT ON followup
FOR EACH ROW
BEGIN
    DECLARE originalDate DATE;

    SELECT AppointmentDate
    INTO originalDate
    FROM appointment
    WHERE AppointmentID = NEW.AppointmentID;

    IF NEW.DueDate < originalDate THEN
        SIGNAL SQLSTATE '45000'
        SET MESSAGE_TEXT =
        'Follow-up date cannot be before appointment date';
    END IF;
END $$

DELIMITER ;
