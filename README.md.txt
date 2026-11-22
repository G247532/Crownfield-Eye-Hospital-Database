# Crownfield Eye Hospital Database

## Project Overview

This project was developed for the CPU4:103 Introduction to Database module. It demonstrates the design, implementation and testing of a relational database for the fictional Crownfield Eye Hospital NHS Foundation Trust.

The database manages patient information, clinicians, clinics, appointments, diagnoses, prescriptions, medicines and follow-up records.

## Database Information

- **Database management system:** MySQL 8.4
- **Database name:** `crowmfieldeyehospital`
- **Storage engine:** InnoDB
- **Character set:** utf8mb4
- **Number of tables:** 10

## Database Tables

1. `patient`
2. `appointment`
3. `appointmentdiagnosis`
4. `clinic`
5. `clinican`
6. `diagnosis`
7. `followup`
8. `medicine`
9. `prescription`
10. `prescriptionitem`

## Repository Contents

| File | Description |
|---|---|
| `01_schema.sql` | Creates the database and its tables, primary keys and foreign keys. |
| `02_sample_data.sql` | Contains the sample records used to populate the database. |
| `03_individual_queries.sql` | Contains four individual SQL queries demonstrating aggregation, joins and a subquery. |
| `04_procedure_and_trigger.sql` | Creates and tests a stored procedure and creates a validation trigger. |
| `05_security_and_transactions.sql` | Demonstrates database roles, permissions, password hashing and transaction rollback. |

The original ER diagram is also included in this repository.

## Setup Instructions

1. Install MySQL Server 8.4 and MySQL Workbench.
2. Open MySQL Workbench and connect to your MySQL server.
3. Open and execute `01_schema.sql` to create the database structure.
4. Open and execute `02_sample_data.sql` to insert the sample records.
5. Execute `03_individual_queries.sql` to run the individual SQL tasks.
6. Execute `04_procedure_and_trigger.sql` to create the stored procedure and trigger.
7. Execute `05_security_and_transactions.sql` to demonstrate security and transaction features.

Run the files in the order listed above. The schema and sample data scripts are intended for a fresh database setup.

## Security

Four database roles are demonstrated:

- Hospital Administrator
- Doctor
- Receptionist
- Auditor

Permissions are assigned according to their responsibilities. The project also demonstrates SHA-256 hashing and transaction rollback. SHA-256 is included as an educational demonstration; production password storage should use a dedicated salted password-hashing method.

## Testing

The database was tested using SQL queries, joins, aggregate functions, a subquery, a stored procedure, a trigger and transaction rollback. The testing helped verify relationships, data retrieval and database integrity.

## Data Disclaimer

All patient and hospital records in this project are synthetic and created for educational purposes. No real patient information is included.

## Module

**CPU4:103 – Introduction to Database**

**Project:** Crownfield Eye Hospital Database Development