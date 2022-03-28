-- MySQL dump 10.13  Distrib 8.0.28, for Win64 (x86_64)
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
-- Table structure for table `appoinment`
--

DROP TABLE IF EXISTS `appoinment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `appoinment` (
  `idappoinment` int NOT NULL,
  `idpatients` int NOT NULL,
  `idemployee` int NOT NULL,
  `description` varchar(45) DEFAULT NULL,
  `idroom` int NOT NULL,
  `start_time` timestamp(6) NULL DEFAULT NULL,
  `end_time` timestamp(6) NULL DEFAULT NULL,
  `issured_time` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`idappoinment`),
  KEY `fk_appoinment_patients1_idx` (`idpatients`),
  KEY `fk_appoinment_employee1_idx` (`idemployee`),
  KEY `fk_appoinment_room1_idx` (`idroom`),
  CONSTRAINT `fk_appoinment_employee1` FOREIGN KEY (`idemployee`) REFERENCES `employee` (`idemployee`),
  CONSTRAINT `fk_appoinment_patients1` FOREIGN KEY (`idpatients`) REFERENCES `patients` (`idpatients`),
  CONSTRAINT `fk_appoinment_room1` FOREIGN KEY (`idroom`) REFERENCES `room` (`idroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `appoinment`
--

LOCK TABLES `appoinment` WRITE;
/*!40000 ALTER TABLE `appoinment` DISABLE KEYS */;
/*!40000 ALTER TABLE `appoinment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `block`
--

DROP TABLE IF EXISTS `block`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `block` (
  `idblock` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idblock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `block`
--

LOCK TABLES `block` WRITE;
/*!40000 ALTER TABLE `block` DISABLE KEYS */;
INSERT INTO `block` VALUES (5,'test'),(6,'esa');
/*!40000 ALTER TABLE `block` ENABLE KEYS */;
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
  `first_name` varchar(45) DEFAULT NULL,
  `idroll` int NOT NULL,
  `iddepartment` int NOT NULL,
  PRIMARY KEY (`idemployee`),
  KEY `fk_employee_roll_idx` (`idroll`),
  KEY `fk_employee_department1_idx` (`iddepartment`),
  CONSTRAINT `fk_employee_department1` FOREIGN KEY (`iddepartment`) REFERENCES `department` (`iddepartment`),
  CONSTRAINT `fk_employee_roll` FOREIGN KEY (`idroll`) REFERENCES `roll` (`idroll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medication`
--

DROP TABLE IF EXISTS `medication`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medication` (
  `idmedication` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idmedication`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medication`
--

LOCK TABLES `medication` WRITE;
/*!40000 ALTER TABLE `medication` DISABLE KEYS */;
/*!40000 ALTER TABLE `medication` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `patients` (
  `idpatients` int NOT NULL,
  `first_name` varchar(45) DEFAULT NULL,
  `seond_name` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idpatients`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `prescribes`
--

DROP TABLE IF EXISTS `prescribes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `prescribes` (
  `idprescribes` int NOT NULL,
  `idpatients` int NOT NULL,
  `idappoinment` int NOT NULL,
  `dose` text,
  `idmedication` int NOT NULL,
  PRIMARY KEY (`idprescribes`),
  KEY `fk_prescribes_patients1_idx` (`idpatients`),
  KEY `fk_prescribes_appoinment1_idx` (`idappoinment`),
  KEY `fk_prescribes_mediation1_idx` (`idmedication`),
  CONSTRAINT `fk_prescribes_appoinment1` FOREIGN KEY (`idappoinment`) REFERENCES `appoinment` (`idappoinment`),
  CONSTRAINT `fk_prescribes_mediation1` FOREIGN KEY (`idmedication`) REFERENCES `medication` (`idmedication`),
  CONSTRAINT `fk_prescribes_patients1` FOREIGN KEY (`idpatients`) REFERENCES `patients` (`idpatients`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `prescribes`
--

LOCK TABLES `prescribes` WRITE;
/*!40000 ALTER TABLE `prescribes` DISABLE KEYS */;
/*!40000 ALTER TABLE `prescribes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `roll`
--

DROP TABLE IF EXISTS `roll`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `roll` (
  `idroll` int NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idroll`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `roll`
--

LOCK TABLES `roll` WRITE;
/*!40000 ALTER TABLE `roll` DISABLE KEYS */;
/*!40000 ALTER TABLE `roll` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `room`
--

DROP TABLE IF EXISTS `room`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `room` (
  `idroom` int NOT NULL AUTO_INCREMENT,
  `room_name` varchar(45) DEFAULT NULL,
  `block_floor` int DEFAULT NULL,
  `avalible` tinyint DEFAULT NULL,
  `idblock` int NOT NULL,
  PRIMARY KEY (`idroom`),
  KEY `fk_room_block1_idx` (`idblock`),
  CONSTRAINT `fk_room_block1` FOREIGN KEY (`idblock`) REFERENCES `block` (`idblock`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `room`
--

LOCK TABLES `room` WRITE;
/*!40000 ALTER TABLE `room` DISABLE KEYS */;
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
  `idpatients` int NOT NULL,
  `start_time` timestamp(6) NULL DEFAULT NULL,
  `end_time` timestamp(6) NULL DEFAULT NULL,
  `idroom` int NOT NULL,
  PRIMARY KEY (`idstay`),
  KEY `fk_stay_patients1_idx` (`idpatients`),
  KEY `fk_stay_room1_idx` (`idroom`),
  CONSTRAINT `fk_stay_patients1` FOREIGN KEY (`idpatients`) REFERENCES `patients` (`idpatients`),
  CONSTRAINT `fk_stay_room1` FOREIGN KEY (`idroom`) REFERENCES `room` (`idroom`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stay`
--

LOCK TABLES `stay` WRITE;
/*!40000 ALTER TABLE `stay` DISABLE KEYS */;
/*!40000 ALTER TABLE `stay` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `treatment_history`
--

DROP TABLE IF EXISTS `treatment_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `treatment_history` (
  `idtreatment_history` int NOT NULL,
  PRIMARY KEY (`idtreatment_history`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `treatment_history`
--

LOCK TABLES `treatment_history` WRITE;
/*!40000 ALTER TABLE `treatment_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `treatment_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `iduser` int NOT NULL,
  `email` varchar(45) DEFAULT NULL,
  `password` varchar(45) DEFAULT NULL,
  `userble_type` varchar(45) DEFAULT NULL,
  `userble_id` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iduser`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

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

-- Dump completed on 2022-03-28 19:04:54
