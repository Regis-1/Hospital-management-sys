-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: HMSDB
-- ------------------------------------------------------
-- Server version	8.0.29

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
-- Dumping data for table `appointment`
--

LOCK TABLES `appointment` WRITE;
/*!40000 ALTER TABLE `appointment` DISABLE KEYS */;
INSERT INTO `appointment` VALUES (1,1,1,3,'2021-07-30','13:00:00'),(2,2,3,6,'2022-03-14','12:00:00'),(3,1,3,2,'2022-04-11','14:00:00');
/*!40000 ALTER TABLE `appointment` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `department`
--

LOCK TABLES `department` WRITE;
/*!40000 ALTER TABLE `department` DISABLE KEYS */;
INSERT INTO `department` VALUES (1,'Emergency Room'),(2,'Outpatient department'),(3,'IT');
/*!40000 ALTER TABLE `department` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,3,1,1,'5026','Charity','Buckley','1995.05.5','1-390-259-3231','\"5026 Massa.Av\"','Bogo'),(2,4,3,3,'4444','Byron','Meadows','1994.04.12','1-448-208-8133','\"8983 Dui.Av\"','Hamburg'),(3,5,2,2,'3333','Driscoll','Miles','1993.03.4','1-674-754-9246','\"743 Suspendisse.Av\"','Dublin');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `patient`
--

LOCK TABLES `patient` WRITE;
/*!40000 ALTER TABLE `patient` DISABLE KEYS */;
INSERT INTO `patient` VALUES (1,1,'Jael','Cabrera','1976.03.1','1-757-327-0373','\"718-4459 Suspendisse Road\"','Awka'),(2,2,'Dawn','Pugh','1988.12.15','1-563-611-7457','\"2873 Dolor. Road\"','Awka');
/*!40000 ALTER TABLE `patient` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `prescription_history`
--

LOCK TABLES `prescription_history` WRITE;
/*!40000 ALTER TABLE `prescription_history` DISABLE KEYS */;
INSERT INTO `prescription_history` VALUES (1,1,NULL,'\"Bleeding stopped\"'),(2,2,NULL,'\"Left hand motor functions improved\"'),(3,3,1,'\"Stabilized Hand\"');
/*!40000 ALTER TABLE `prescription_history` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'nurse'),(2,'doctor'),(3,'admin');
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
INSERT INTO `room` VALUES (1,1,'1','ER'),(2,1,'2','ER'),(3,1,'3','ER'),(4,2,'1','Counseling'),(5,2,'2','Counseling'),(6,2,'3','Rehabilitation'),(7,3,'1','\"Server Room\"'),(8,2,'4','\"Patient Room\"'),(9,2,'5','\"Patient Room\"');
/*!40000 ALTER TABLE `room` ENABLE KEYS */;
UNLOCK TABLES;

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
-- Dumping data for table `stay`
--

LOCK TABLES `stay` WRITE;
/*!40000 ALTER TABLE `stay` DISABLE KEYS */;
INSERT INTO `stay` VALUES (1,4,2,'2022-04-12','2022-04-15');
/*!40000 ALTER TABLE `stay` ENABLE KEYS */;
UNLOCK TABLES;

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

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,0,'urna.suscipit.nonummy@protonmail.net','5359'),(2,0,'lectus@google.com','5548'),(3,1,'eu.sem.pellentesque@aol.couk','5139'),(4,1,'mattis.integer.eu@hotmail.ca','5008'),(5,1,'aliquam.iaculis@outlook.ca','5131');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-05-05 19:58:25
