-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: EgorovaTatyanaDB
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
-- Table structure for table `bolnye`
--

DROP TABLE IF EXISTS `bolnye`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bolnye` (
  `passport` int(11) NOT NULL,
  `name` varchar(45) DEFAULT NULL,
  `adres` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bolnye`
--

LOCK TABLES `bolnye` WRITE;
/*!40000 ALTER TABLE `bolnye` DISABLE KEYS */;
/*!40000 ALTER TABLE `bolnye` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `doljnost`
--

DROP TABLE IF EXISTS `doljnost`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `doljnost` (
  `dolzh` varchar(45) NOT NULL,
  `cabinet` int(11) DEFAULT NULL,
  `rabotniki_passport` int(11) NOT NULL,
  `fk_doljnost_rabotniki1` int(11) DEFAULT NULL,
  PRIMARY KEY (`rabotniki_passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `doljnost`
--

LOCK TABLES `doljnost` WRITE;
/*!40000 ALTER TABLE `doljnost` DISABLE KEYS */;
/*!40000 ALTER TABLE `doljnost` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `idseans`
--

DROP TABLE IF EXISTS `idseans`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `idseans` (
  `idseans` int(11) DEFAULT NULL,
  `bolnye_passport` int(11) NOT NULL,
  `result` varchar(400) DEFAULT NULL,
  `fk_idseans_bolnye1` int(11) DEFAULT NULL,
  PRIMARY KEY (`bolnye_passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `idseans`
--

LOCK TABLES `idseans` WRITE;
/*!40000 ALTER TABLE `idseans` DISABLE KEYS */;
/*!40000 ALTER TABLE `idseans` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `priem`
--

DROP TABLE IF EXISTS `priem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `priem` (
  `idpriem` int(11) NOT NULL,
  `result` varchar(400) DEFAULT NULL,
  `data` date DEFAULT NULL,
  `doljnost_rabotniki_passport` int(11) NOT NULL,
  `fk_priem_idseans1` int(11) DEFAULT NULL,
  `fk_priem_doljnost1` int(11) DEFAULT NULL,
  PRIMARY KEY (`idpriem`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `priem`
--

LOCK TABLES `priem` WRITE;
/*!40000 ALTER TABLE `priem` DISABLE KEYS */;
/*!40000 ALTER TABLE `priem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rabotniki`
--

DROP TABLE IF EXISTS `rabotniki`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rabotniki` (
  `first name` varchar(45) NOT NULL,
  `father name` varchar(45) DEFAULT NULL,
  `family name` varchar(45) DEFAULT NULL,
  `degree` varchar(45) NOT NULL,
  `specialty` varchar(45) DEFAULT NULL,
  `time` time DEFAULT NULL,
  `passport` int(11) NOT NULL,
  PRIMARY KEY (`passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rabotniki`
--

LOCK TABLES `rabotniki` WRITE;
/*!40000 ALTER TABLE `rabotniki` DISABLE KEYS */;
INSERT INTO `rabotniki` VALUES ('Mikhail','Yu.','Antonov','PhD','Informatics',NULL,123456);
/*!40000 ALTER TABLE `rabotniki` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 18:45:16
