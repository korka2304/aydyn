-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: MigalkinEgorDB
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
-- Table structure for table `Arenda`
--

DROP TABLE IF EXISTS `Arenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Arenda` (
  `Price` int(11) NOT NULL,
  `Predoplata` int(11) DEFAULT NULL,
  `Object_Adress` varchar(50) NOT NULL,
  PRIMARY KEY (`Price`),
  KEY `Object_Adress` (`Object_Adress`),
  CONSTRAINT `Arenda_ibfk_1` FOREIGN KEY (`Object_Adress`) REFERENCES `Object` (`Adress`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Arenda`
--

LOCK TABLES `Arenda` WRITE;
/*!40000 ALTER TABLE `Arenda` DISABLE KEYS */;
INSERT INTO `Arenda` VALUES (12000,5000,'Kulakovskogo');
/*!40000 ALTER TABLE `Arenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Client`
--

DROP TABLE IF EXISTS `Client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Client` (
  `Family Name` varchar(50) DEFAULT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `kianfou name` varchar(45) DEFAULT NULL,
  `passport` int(11) NOT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `srok` int(11) DEFAULT NULL,
  PRIMARY KEY (`passport`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Client`
--

LOCK TABLES `Client` WRITE;
/*!40000 ALTER TABLE `Client` DISABLE KEYS */;
INSERT INTO `Client` VALUES ('Korkin','Aydyn','Ivanovich',98116478,'Kulakovskogo7',12);
/*!40000 ALTER TABLE `Client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `History`
--

DROP TABLE IF EXISTS `History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `History` (
  `Object` varchar(45) DEFAULT NULL,
  `srok` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Object_Adress` varchar(50) NOT NULL,
  `Object_Client_passport` int(11) NOT NULL,
  `Object_Komissiya_Komissiya` int(11) NOT NULL,
  `Client_passport` int(11) NOT NULL,
  KEY `Object_Adress` (`Object_Adress`,`Object_Client_passport`),
  KEY `Client_passport` (`Client_passport`),
  CONSTRAINT `History_ibfk_1` FOREIGN KEY (`Object_Adress`, `Object_Client_passport`) REFERENCES `Object` (`Adress`, `Client_passport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `History_ibfk_2` FOREIGN KEY (`Client_passport`) REFERENCES `Client` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `History`
--

LOCK TABLES `History` WRITE;
/*!40000 ALTER TABLE `History` DISABLE KEYS */;
INSERT INTO `History` VALUES ('something',3,12000,'Kulakovskogo',98116478,10,98116478);
/*!40000 ALTER TABLE `History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Object`
--

DROP TABLE IF EXISTS `Object`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Object` (
  `Adress` varchar(50) NOT NULL,
  `ploshad` int(11) DEFAULT NULL,
  `etaz` int(11) DEFAULT NULL,
  `kol-vo komnat` int(11) DEFAULT NULL,
  `kratkoe opisanie` varchar(45) DEFAULT NULL,
  `photo` varchar(45) DEFAULT NULL,
  `Client_passport` int(11) NOT NULL,
  `Komissiya` int(11) DEFAULT NULL,
  PRIMARY KEY (`Adress`,`Client_passport`),
  KEY `Client_passport` (`Client_passport`),
  CONSTRAINT `Object_ibfk_1` FOREIGN KEY (`Client_passport`) REFERENCES `Client` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Object`
--

LOCK TABLES `Object` WRITE;
/*!40000 ALTER TABLE `Object` DISABLE KEYS */;
INSERT INTO `Object` VALUES ('Kulakovskogo',123,2,4,'netu','netu',98116478,10);
/*!40000 ALTER TABLE `Object` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Payment_History`
--

DROP TABLE IF EXISTS `Payment_History`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Payment_History` (
  `Client_passport` int(11) NOT NULL,
  `oplata` int(11) DEFAULT NULL,
  `bank_shet` int(11) NOT NULL,
  `Arenda_Price` int(11) NOT NULL,
  KEY `Client_passport` (`Client_passport`),
  KEY `bank_shet` (`bank_shet`),
  KEY `Arenda_Price` (`Arenda_Price`),
  CONSTRAINT `Payment_History_ibfk_1` FOREIGN KEY (`Client_passport`) REFERENCES `Client` (`passport`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Payment_History_ibfk_2` FOREIGN KEY (`bank_shet`) REFERENCES `bank` (`shet`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Payment_History_ibfk_3` FOREIGN KEY (`Arenda_Price`) REFERENCES `Arenda` (`Price`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Payment_History`
--

LOCK TABLES `Payment_History` WRITE;
/*!40000 ALTER TABLE `Payment_History` DISABLE KEYS */;
INSERT INTO `Payment_History` VALUES (98116478,12000,115115,12000);
/*!40000 ALTER TABLE `Payment_History` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bank`
--

DROP TABLE IF EXISTS `bank`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bank` (
  `passport` int(11) DEFAULT NULL,
  `shet` int(11) NOT NULL,
  PRIMARY KEY (`shet`),
  KEY `passport` (`passport`),
  CONSTRAINT `bank_ibfk_1` FOREIGN KEY (`passport`) REFERENCES `Client` (`passport`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bank`
--

LOCK TABLES `bank` WRITE;
/*!40000 ALTER TABLE `bank` DISABLE KEYS */;
INSERT INTO `bank` VALUES (98116478,115115);
/*!40000 ALTER TABLE `bank` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-20 18:45:15
