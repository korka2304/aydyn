-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: ZaharovaMilanaDB
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
-- Table structure for table `Doctors`
--

DROP TABLE IF EXISTS `Doctors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctors` (
  `id` int(11) NOT NULL,
  `FIO` varchar(45) DEFAULT NULL,
  `Pasport` varchar(45) DEFAULT NULL,
  `Stepen` varchar(45) DEFAULT NULL,
  `Diploma` varchar(45) DEFAULT NULL,
  `Spec` varchar(45) DEFAULT NULL,
  `Time of work` varchar(45) DEFAULT NULL,
  `cab` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctors`
--

LOCK TABLES `Doctors` WRITE;
/*!40000 ALTER TABLE `Doctors` DISABLE KEYS */;
/*!40000 ALTER TABLE `Doctors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patients`
--

DROP TABLE IF EXISTS `patients`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patients` (
  `id` int(11) NOT NULL,
  `FIO` varchar(45) DEFAULT NULL,
  `Pasport` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patients`
--

LOCK TABLES `patients` WRITE;
/*!40000 ALTER TABLE `patients` DISABLE KEYS */;
/*!40000 ALTER TABLE `patients` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `patseans`
--

DROP TABLE IF EXISTS `patseans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `patseans` (
  `seansid` int(11) NOT NULL,
  `patients_id` int(11) NOT NULL,
  `result` varchar(200) DEFAULT NULL,
  `fk_table1_patients` int(11) DEFAULT NULL,
  PRIMARY KEY (`seansid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `patseans`
--

LOCK TABLES `patseans` WRITE;
/*!40000 ALTER TABLE `patseans` DISABLE KEYS */;
/*!40000 ALTER TABLE `patseans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `visitdoctor`
--

DROP TABLE IF EXISTS `visitdoctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `visitdoctor` (
  `id` int(11) NOT NULL,
  `patseans_seansid` int(11) NOT NULL,
  `Doctors_id` int(11) NOT NULL,
  `result` varchar(45) DEFAULT NULL,
  `date` datetime DEFAULT NULL,
  `fk_visitdoctor_patseans1` int(11) DEFAULT NULL,
  `fk_visitdoctor_Doctors1` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `visitdoctor`
--

LOCK TABLES `visitdoctor` WRITE;
/*!40000 ALTER TABLE `visitdoctor` DISABLE KEYS */;
/*!40000 ALTER TABLE `visitdoctor` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 18:45:14
