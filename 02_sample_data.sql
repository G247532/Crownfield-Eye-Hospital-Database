-- MySQL dump 10.13  Distrib 8.0.46, for Win64 (x86_64)
--
-- Host: localhost    Database: crowmfieldeyehospital
-- ------------------------------------------------------
-- Server version	8.4.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES ('APT001','OP001','CL001','C001','2026-10-05','09:00:00','Ocular hypertension'),('APT002','OP002','CL002','C001','2026-10-05','09:30:00','Diabetic macular oedema'),('APT003','OP003','CL003','C002','2026-11-16','10:15:00','Ocular hypertension'),('APT004','OP004','CL004','C001','2026-10-05','11:00:00','Glaucoma suspect'),('APT005','OP004','CL003','C003','2026-10-07','14:00:00','Keratoconus'),('APT006','OP005','CL005','C004','2026-11-23','09:00:00','Routine eye examination'),('APT007','OP006','CL006','C005','2026-11-23','09:30:00','Retina assessment'),('APT008','OP007','CL007','C006','2026-11-24','10:00:00','Cornea review'),('APT009','OP008','CL008','C007','2026-11-24','10:30:00','General eye check'),('APT010','OP009','CL009','C008','2026-11-25','11:00:00','Glaucoma assessment'),('APT011','OP010','CL0010','C009','2026-11-25','11:30:00','Retina follow-up'),('APT012','OP011','CL0011','C010','2026-11-26','12:00:00','Cornea examination'),('APT013','OP012','CL0012','C011','2026-11-26','13:00:00','Ophthalmology review'),('APT014','OP013','CL0013','C012','2026-11-27','14:00:00','Glaucoma follow-up'),('APT015','OP014','CL0014','C013','2026-11-27','14:30:00','Retina consultation');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `appointmentdiagnosis`
--

LOCK TABLES `appointmentdiagnosis` WRITE;
/*!40000 ALTER TABLE `appointmentdiagnosis` DISABLE KEYS */;
INSERT INTO `appointmentdiagnosis` VALUES ('APT001','D001'),('APT003','D001'),('APT002','D002'),('APT004','D003'),('APT005','D004'),('APT006','D005'),('APT007','D006'),('APT008','D007'),('APT009','D008'),('APT010','D009'),('APT011','D010'),('APT012','D011'),('APT013','D012'),('APT014','D013'),('APT015','D014');
/*!40000 ALTER TABLE `appointmentdiagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clinic`
--

LOCK TABLES `clinic` WRITE;
/*!40000 ALTER TABLE `clinic` DISABLE KEYS */;
INSERT INTO `clinic` VALUES ('C001','City Road','City Road'),('C002','Bedford','Bedford'),('C003','Croydon','Croydon'),('C004','North London Eye Centre','Finchley Road, London'),('C005','West London Eye Centre','Ealing, London'),('C006','East London Eye Centre','Stratford, London'),('C007','South London Eye Centre','Bromley, London'),('C008','Central Vision Clinic','Holborn, London'),('C009','Riverside Eye Clinic','Greenwich, London'),('C010','Parkside Eye Clinic','Ilford, London'),('C011','Hillside Eye Clinic','Enfield, London'),('C012','Community Eye Centre','Hackney, London'),('C013','Specialist Vision Centre','Harrow, London');
/*!40000 ALTER TABLE `clinic` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `clinican`
--

LOCK TABLES `clinican` WRITE;
/*!40000 ALTER TABLE `clinican` DISABLE KEYS */;
INSERT INTO `clinican` VALUES ('CL001','Dr Maya Shah','Glaucoma'),('CL0010','Dr Oliver Harris','Retina'),('CL0011','Dr Aisha Malik','Cornea'),('CL0012','Dr Thomas Reed','Ophthalmology'),('CL0013','Dr Sophie Turner','Glaucoma'),('CL0014','Dr Adam Wright','Retina'),('CL002','Dr Leo Grant','	Retina'),('CL003','Dr Priya Nair','Cornea'),('CL004','Dr Ahmed Khan','Ophthalmology'),('CL005','Dr Sarah Evans','Glaucoma'),('CL006','Dr James Foster','Retina'),('CL007','Dr Emily Clarke','Cornea'),('CL008','Dr Daniel Brooks','Ophthalmology'),('CL009','Dr Priya Mehta','Glaucoma');
/*!40000 ALTER TABLE `clinican` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES ('D001','Ocular hypertension'),('D002','Diabetic macular oedema'),('D003','Glaucoma suspect'),('D004','Keratoconus'),('D005','Cataract'),('D006','Dry eye syndrome'),('D007','Age-related macular degeneration'),('D008','Retinal detachment'),('D009','Conjunctivitis'),('D010','Blepharitis'),('D011','Uveitis'),('D012','Optic neuritis'),('D013','Corneal abrasion'),('D014','Myopia');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `followup`
--

LOCK TABLES `followup` WRITE;
/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
INSERT INTO `followup` VALUES ('FU001','APT001','2026-11-16','High','Pending'),('FU002','APT002','2026-11-02','Urgent','Pending'),('FU003','APT003','2027-02-08','Routine','Pending'),('FU004','APT005','2026-12-02','Routine','Pending'),('FU005','APT006','2026-12-21','Routine','Pending'),('FU006','APT007','2026-12-21','High','Pending'),('FU007','APT008','2027-01-05','Routine','Pending'),('FU008','APT009','2027-01-05','Routine','Pending'),('FU009','APT010','2027-01-06','High','Pending'),('FU010','APT011','2027-01-06','Urgent','Pending'),('FU011','APT012','2027-01-07','Routine','Pending'),('FU012','APT013','2027-01-07','High','Pending'),('FU013','APT014','2027-01-08','Routine','Pending'),('FU014','APT015','2027-01-08','Routine','Pending');
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES ('M001','Latanoprost'),('M002','Timolol'),('M003','Aflibercept'),('M004','Sodium chloride drops'),('M005','Artificial tears'),('M006','Dexamethasone'),('M007','Moxifloxacin'),('M008','Prednisolone'),('M009','Cyclopentolate'),('M010','Brimonidine'),('M011','Dorzolamide'),('M012','Lidocaine eye drops'),('M013','Ketorolac'),('M014','Lubricating eye gel');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES ('OP001','Amina Yusuf','NE1 4AB'),('OP002','Daniel Reed','N16 7QP'),('OP003','Sofia Bennett','E8 2LD'),('OP004','Michael Okoro','SE6 3RT'),('OP005','Olivia Carter','E1 6AN'),('OP006','James Wilson','N4 2AB'),('OP007','Emily Patel','SW2 1AA'),('OP008','Noah Thompson','E3 4RT'),('OP009','Grace Ahmed','SE1 8XX'),('OP010','Ethan Clarke','W1 5DT'),('OP011','Mia Robinson','N7 9PL'),('OP012','Lucas Martin','E5 0AA'),('OP013','Isla Cooper','SE8 3AB'),('OP014','Adam Lewis','NW1 6XE');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescription`
--

LOCK TABLES `prescription` WRITE;
/*!40000 ALTER TABLE `prescription` DISABLE KEYS */;
INSERT INTO `prescription` VALUES ('PR001','APT001','2026-10-05'),('PR002','APT002','2026-10-05'),('PR003','APT003','2026-11-16'),('PR004','APT005','2026-10-07'),('PR005','APT006','2026-11-23'),('PR006','APT007','2026-11-23'),('PR007','APT008','2026-11-24'),('PR008','APT009','2026-11-24'),('PR009','APT010','2026-11-25'),('PR010','APT011','2026-11-25'),('PR011','APT012','2026-11-26'),('PR012','APT013','2026-11-26'),('PR013','APT014','2026-11-27'),('PR014','APT015','2026-11-27');
/*!40000 ALTER TABLE `prescription` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping data for table `prescriptionitem`
--

LOCK TABLES `prescriptionitem` WRITE;
/*!40000 ALTER TABLE `prescriptionitem` DISABLE KEYS */;
INSERT INTO `prescriptionitem` VALUES ('PI001','PR001','M001','1 drop','Eye drops','Once daily','Ongoing'),('PI002','PR001','M002','1 drop','Eye drops','Twice daily','Ongoing'),('PI003','PR002','M003','2 mg','Injection','As prescribed','Ongoing'),('PI004','PR003','M001','1 drop','Eye drops','Once daily','Ongoing'),('PI005','PR004','M004','1 drop','Eye drops','As needed','8 weeks'),('PI015','PR005','M005','1 drop','Eye drops','Once daily','4 weeks'),('PI016','PR006','M006','1 drop','Eye drops','Twice daily','6 weeks'),('PI017','PR007','M007','2 mg','Injection','As prescribed','Ongoing'),('PI018','PR008','M008','1 drop','Eye drops','Once daily','8 weeks'),('PI019','PR009','M009','1 drop','Eye drops','Twice daily','4 weeks'),('PI020','PR010','M010','1 drop','Eye drops','Once daily','6 weeks'),('PI021','PR011','M011','2 mg','Injection','As prescribed','Ongoing'),('PI022','PR012','M012','1 drop','Eye drops','Twice daily','8 weeks'),('PI023','PR013','M013','1 drop','Eye drops','Once daily','4 weeks'),('PI024','PR014','M014','1 drop','Eye drops','As needed','6 weeks');
/*!40000 ALTER TABLE `prescriptionitem` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-11-22 16:01:45
