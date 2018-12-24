-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: AlekseevStanislavDB
-- ------------------------------------------------------
-- Server version	5.7.24-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `ConsultingRooms`
--

DROP TABLE IF EXISTS `ConsultingRooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ConsultingRooms` (
  `idCab` int(11) NOT NULL,
  `NUMcab` int(11) DEFAULT NULL,
  `StartWork` time DEFAULT NULL,
  `EndWork` time DEFAULT NULL,
  PRIMARY KEY (`idCab`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ConsultingRooms`
--

LOCK TABLES `ConsultingRooms` WRITE;
/*!40000 ALTER TABLE `ConsultingRooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `ConsultingRooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patients`
--

DROP TABLE IF EXISTS `Patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patients` (
  `idPatients` int(11) NOT NULL,
  `First Name` varchar(45) DEFAULT NULL,
  `Last Name` varchar(45) DEFAULT NULL,
  `Fathers Name` varchar(45) DEFAULT NULL,
  `Passport Series` int(11) DEFAULT NULL,
  `Passport Number` int(11) DEFAULT NULL,
  `Adress` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idPatients`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patients`
--

LOCK TABLES `Patients` WRITE;
/*!40000 ALTER TABLE `Patients` DISABLE KEYS */;
INSERT INTO `Patients` VALUES (1,'Alexeev','Stanislav','Kapitonovich',9812,441944,'QWERTY123'),(2,'Tarabukin','Ivan','Michailovich',9811,441932,'QWERTY221'),(3,'Imeev','Leonid','Vladimirovich',9813,411932,'QWERTY1412');
/*!40000 ALTER TABLE `Patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PatientsCard`
--

DROP TABLE IF EXISTS `PatientsCard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PatientsCard` (
  `idPatientsSP` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PatientsCard`
--

LOCK TABLES `PatientsCard` WRITE;
/*!40000 ALTER TABLE `PatientsCard` DISABLE KEYS */;
/*!40000 ALTER TABLE `PatientsCard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `PatientsDiagnosis`
--

DROP TABLE IF EXISTS `PatientsDiagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `PatientsDiagnosis` (
  `Patients_idPatients` int(11) DEFAULT NULL,
  `diagnosis_iddiagnosis` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `PatientsDiagnosis`
--

LOCK TABLES `PatientsDiagnosis` WRITE;
/*!40000 ALTER TABLE `PatientsDiagnosis` DISABLE KEYS */;
/*!40000 ALTER TABLE `PatientsDiagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Specialisations`
--

DROP TABLE IF EXISTS `Specialisations`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specialisations` (
  `idSpecializations` int(11) NOT NULL,
  `SpName` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idSpecializations`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specialisations`
--

LOCK TABLES `Specialisations` WRITE;
/*!40000 ALTER TABLE `Specialisations` DISABLE KEYS */;
INSERT INTO `Specialisations` VALUES (1,'Doctor'),(2,'Vrach');
/*!40000 ALTER TABLE `Specialisations` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Specialists`
--

DROP TABLE IF EXISTS `Specialists`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Specialists` (
  `idSpecialist` int(11) NOT NULL,
  `PassportSP` int(11) DEFAULT NULL,
  `idSpecializationsSP` int(11) DEFAULT NULL,
  `idCabSP` int(11) DEFAULT NULL,
  PRIMARY KEY (`idSpecialist`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Specialists`
--

LOCK TABLES `Specialists` WRITE;
/*!40000 ALTER TABLE `Specialists` DISABLE KEYS */;
/*!40000 ALTER TABLE `Specialists` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Workers`
--

DROP TABLE IF EXISTS `Workers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Workers` (
  `Passport` int(11) NOT NULL,
  `First Name` varchar(45) DEFAULT NULL,
  `Last Name` varchar(45) DEFAULT NULL,
  `Fathers Name` varchar(45) DEFAULT NULL,
  `Science degree` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Workers`
--

LOCK TABLES `Workers` WRITE;
/*!40000 ALTER TABLE `Workers` DISABLE KEYS */;
INSERT INTO `Workers` VALUES (1,'Petrov','Petr','Petrovich','5st'),(2,'Ivanov','Ivan','Ivanovich','2st');
/*!40000 ALTER TABLE `Workers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `diagnosis`
--

DROP TABLE IF EXISTS `diagnosis`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `diagnosis` (
  `iddiagnosis` int(11) NOT NULL,
  `nameDia` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`iddiagnosis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `diagnosis`
--

LOCK TABLES `diagnosis` WRITE;
/*!40000 ALTER TABLE `diagnosis` DISABLE KEYS */;
INSERT INTO `diagnosis` VALUES (1,'Tuberkulez'),(2,'Diareya'),(3,'DSP'),(4,'Angina');
/*!40000 ALTER TABLE `diagnosis` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sessions`
--

DROP TABLE IF EXISTS `sessions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sessions` (
  `idsessions` int(11) NOT NULL,
  `Specialists_idSpecialists` int(11) NOT NULL,
  `timeStart` time DEFAULT NULL,
  `timeFinish` time DEFAULT NULL,
  `lechenie` varchar(45) DEFAULT NULL,
  `Patients_idPatients` int(11) DEFAULT NULL,
  `diagnosis_iddiagnosis` int(11) DEFAULT NULL,
  PRIMARY KEY (`idsessions`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sessions`
--

LOCK TABLES `sessions` WRITE;
/*!40000 ALTER TABLE `sessions` DISABLE KEYS */;
/*!40000 ALTER TABLE `sessions` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 18:45:13
