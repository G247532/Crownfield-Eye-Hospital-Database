
-- Crownfield Eye Hospital Database
-- File: 01_schema.sql

CREATE DATABASE IF NOT EXISTS crowmfieldeyehospital;
USE crowmfieldeyehospital;

-- 1. Patient
CREATE TABLE patient (
    PatientID VARCHAR(10) NOT NULL,
    PatientName VARCHAR(100) NOT NULL,
    Postcode VARCHAR(10) NOT NULL,
    PRIMARY KEY (PatientID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 2. Clinic
CREATE TABLE clinic (
    ClinicID VARCHAR(10) NOT NULL,
    ClinicName VARCHAR(100) NOT NULL,
    ClinicAddress VARCHAR(150) NOT NULL,
    PRIMARY KEY (ClinicID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 3. Clinican
CREATE TABLE clinican (
    ClinicianID VARCHAR(10) NOT NULL,
    ClinicianName VARCHAR(100) NOT NULL,
    Specialty VARCHAR(100) NOT NULL,
    PRIMARY KEY (ClinicianID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 4. Diagnosis
CREATE TABLE diagnosis (
    DiagnosisID VARCHAR(10) NOT NULL,
    DiagnosisName VARCHAR(100) NOT NULL,
    PRIMARY KEY (DiagnosisID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 5. Medicine
CREATE TABLE medicine (
    MedicineID VARCHAR(10) NOT NULL,
    MedicineName VARCHAR(100) NOT NULL,
    PRIMARY KEY (MedicineID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 6. Appointment
CREATE TABLE appointment (
    AppointmentID VARCHAR(10) NOT NULL,
    PatientID VARCHAR(10) NOT NULL,
    ClinicianID VARCHAR(10) NOT NULL,
    ClinicID VARCHAR(10) NOT NULL,
    AppointmentDate DATE NOT NULL,
    AppointmentTime TIME NOT NULL,
    Notes TEXT,
    PRIMARY KEY (AppointmentID),
    KEY fk_appointment_patient_idx (PatientID),
    KEY fk_appointment_patient_idx1 (ClinicianID),
    KEY fk_appointment_clinic_idx (ClinicID),
    CONSTRAINT fk_appointment_clinic
        FOREIGN KEY (ClinicID) REFERENCES clinic (ClinicID),
    CONSTRAINT fk_appointment_clinician
        FOREIGN KEY (ClinicianID) REFERENCES clinican (ClinicianID),
    CONSTRAINT fk_appointment_patient
        FOREIGN KEY (PatientID) REFERENCES patient (PatientID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 7. AppointmentDiagnosis
CREATE TABLE appointmentdiagnosis (
    AppointmentID VARCHAR(10) NOT NULL,
    DiagnosisID VARCHAR(10) NOT NULL,
    PRIMARY KEY (AppointmentID, DiagnosisID),
    KEY fk_appointmentdiagnosis_diagnosis_idx (DiagnosisID),
    CONSTRAINT fk_appointmentdiagnosis_appointment
        FOREIGN KEY (AppointmentID) REFERENCES appointment (AppointmentID),
    CONSTRAINT fk_appointmentdiagnosis_diagnosis
        FOREIGN KEY (DiagnosisID) REFERENCES diagnosis (DiagnosisID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 8. Prescription
CREATE TABLE prescription (
    PrescriptionID VARCHAR(10) NOT NULL,
    AppointmentID VARCHAR(10) NOT NULL,
    PrescriptionDate DATE NOT NULL,
    PRIMARY KEY (PrescriptionID),
    KEY fk_prescription_appointment_idx (AppointmentID),
    CONSTRAINT fk_prescription_appointment
        FOREIGN KEY (AppointmentID) REFERENCES appointment (AppointmentID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 9. PrescriptionItem
CREATE TABLE prescriptionitem (
    PrescriptionItemID VARCHAR(10) NOT NULL,
    PrescriptionID VARCHAR(10) NOT NULL,
    MedicineID VARCHAR(10) NOT NULL,
    Dose VARCHAR(50) NOT NULL,
    Route VARCHAR(50) NOT NULL,
    Frequency VARCHAR(50) NOT NULL,
    Duration VARCHAR(50) NOT NULL,
    PRIMARY KEY (PrescriptionItemID),
    KEY fk_prescriptionitem_prescription_idx (PrescriptionID),
    KEY fk_prescriptionitem_medicine_idx (MedicineID),
    CONSTRAINT fk_prescriptionitem_medicine
        FOREIGN KEY (MedicineID) REFERENCES medicine (MedicineID),
    CONSTRAINT fk_prescriptionitem_prescription
        FOREIGN KEY (PrescriptionID) REFERENCES prescription (PrescriptionID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- 10. FollowUp
CREATE TABLE followup (
    FollowUpID VARCHAR(10) NOT NULL,
    AppointmentID VARCHAR(10) NOT NULL,
    DueDate DATE NOT NULL,
    Priority VARCHAR(20) NOT NULL,
    Status VARCHAR(20) NOT NULL,
    PRIMARY KEY (FollowUpID),
    KEY fk_followup_appointment_idx (AppointmentID),
    CONSTRAINT fk_followup_appointment
        FOREIGN KEY (AppointmentID) REFERENCES appointment (AppointmentID)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
