-- MySQL dump 10.13  Distrib 8.0.28, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: hospital_db
-- ------------------------------------------------------
-- Server version	8.0.28

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
-- Table structure for table `appointment`
--

DROP TABLE IF EXISTS `appointment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appointment` (
  `idappointment` int NOT NULL,
  `patient` int NOT NULL,
  `employee` int NOT NULL,
  `room` int NOT NULL,
  `date` date DEFAULT NULL,
  `time` time DEFAULT NULL,
  PRIMARY KEY (`idappointment`),
  KEY `fk_appointment_room1_idx` (`room`),
  KEY `fk_appointment_patient1_idx` (`patient`),
  KEY `fk_appointment_employee1_idx` (`employee`),
  CONSTRAINT `fk_appointment_employee1` FOREIGN KEY (`employee`) REFERENCES `employee` (`idemployee`),
  CONSTRAINT `fk_appointment_patient1` FOREIGN KEY (`patient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `fk_appointment_room1` FOREIGN KEY (`room`) REFERENCES `room` (`idroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `department`
--

DROP TABLE IF EXISTS `department`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `department` (
  `iddepartment` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `idemployee` int NOT NULL,
  `user` int NOT NULL,
  `department` int NOT NULL,
  `role_idrole` int NOT NULL,
  `employee_number` varchar(8) DEFAULT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idemployee`),
  KEY `fk_employee_department1_idx` (`department`),
  KEY `fk_employee_user1_idx` (`user`),
  KEY `fk_employee_role1_idx` (`role_idrole`),
  CONSTRAINT `fk_employee_department1` FOREIGN KEY (`department`) REFERENCES `department` (`iddepartment`),
  CONSTRAINT `fk_employee_role1` FOREIGN KEY (`role_idrole`) REFERENCES `role` (`idrole`),
  CONSTRAINT `fk_employee_user1` FOREIGN KEY (`user`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `patient`
--

DROP TABLE IF EXISTS `patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patient` (
  `idpatient` int NOT NULL,
  `user` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `last_name` varchar(45) DEFAULT NULL,
  `date_of_birth` varchar(45) DEFAULT NULL,
  `phone_number` varchar(45) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `city` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpatient`),
  KEY `fk_patient_user1_idx` (`user`),
  CONSTRAINT `fk_patient_user1` FOREIGN KEY (`user`) REFERENCES `user` (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `prescription_history`
--

DROP TABLE IF EXISTS `prescription_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescription_history` (
  `idprescription` int NOT NULL,
  `appointment` int DEFAULT NULL,
  `stay` int DEFAULT NULL,
  `result` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idprescription`),
  KEY `fk_prescription_history_appointment1_idx` (`appointment`),
  KEY `fk_prescription_history_stay1_idx` (`stay`),
  CONSTRAINT `fk_prescription_history_appointment1` FOREIGN KEY (`appointment`) REFERENCES `appointment` (`idappointment`),
  CONSTRAINT `fk_prescription_history_stay1` FOREIGN KEY (`stay`) REFERENCES `stay` (`idstay`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `role` (
  `idrole` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idrole`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `idroom` int NOT NULL,
  `department` int NOT NULL,
  `number` varchar(8) DEFAULT NULL,
  `type` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idroom`),
  KEY `fk_room_department1_idx` (`department`),
  CONSTRAINT `fk_room_department1` FOREIGN KEY (`department`) REFERENCES `department` (`iddepartment`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `stay`
--

DROP TABLE IF EXISTS `stay`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stay` (
  `idstay` int NOT NULL,
  `room` int NOT NULL,
  `patient` int NOT NULL,
  `start_date` date DEFAULT NULL,
  `end_date` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idstay`),
  KEY `fk_stay_room1_idx` (`room`),
  KEY `fk_stay_patient1_idx` (`patient`),
  CONSTRAINT `fk_stay_patient1` FOREIGN KEY (`patient`) REFERENCES `patient` (`idpatient`),
  CONSTRAINT `fk_stay_room1` FOREIGN KEY (`room`) REFERENCES `room` (`idroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL,
  `is_employee` tinyint(1) NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

INSERT INTO `user` (`iduser`,`is_employee`,`email`,`password`)
VALUES
  (1,0,"urna.suscipit.nonummy@protonmail.net",5359),
  (2,0,"lectus@google.com",5548),
  (3,1,"eu.sem.pellentesque@aol.couk",5139),
  (4,2,"mattis.integer.eu@hotmail.ca",5008),
  (5,1,"aliquam.iaculis@outlook.ca",5131);

--
-- Dumping events for database 'hospital_db'
--

--
-- Dumping routines for database 'hospital_db'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-30 22:34:58
