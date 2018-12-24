-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: LebedkinAnatolijDB
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
-- Table structure for table `Adresses`
--

DROP TABLE IF EXISTS `Adresses`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Adresses` (
  `ID` int(11) NOT NULL,
  `Adress` varchar(45) DEFAULT NULL,
  `City` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `City` (`City`),
  CONSTRAINT `Adresses_ibfk_1` FOREIGN KEY (`City`) REFERENCES `Cities` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Adresses`
--

LOCK TABLES `Adresses` WRITE;
/*!40000 ALTER TABLE `Adresses` DISABLE KEYS */;
INSERT INTO `Adresses` VALUES (1,'Kolcevaya,10',1),(2,'Capital Street, 52',2);
/*!40000 ALTER TABLE `Adresses` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Check`
--

DROP TABLE IF EXISTS `Check`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Check` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Check`
--

LOCK TABLES `Check` WRITE;
/*!40000 ALTER TABLE `Check` DISABLE KEYS */;
/*!40000 ALTER TABLE `Check` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cities`
--

DROP TABLE IF EXISTS `Cities`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cities` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Country` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Country` (`Country`),
  CONSTRAINT `Cities_ibfk_1` FOREIGN KEY (`Country`) REFERENCES `Country` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cities`
--

LOCK TABLES `Cities` WRITE;
/*!40000 ALTER TABLE `Cities` DISABLE KEYS */;
INSERT INTO `Cities` VALUES (1,'Moscow',1),(2,'New York',2);
/*!40000 ALTER TABLE `Cities` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Country`
--

DROP TABLE IF EXISTS `Country`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Country` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Country`
--

LOCK TABLES `Country` WRITE;
/*!40000 ALTER TABLE `Country` DISABLE KEYS */;
INSERT INTO `Country` VALUES (1,'Russian Federation'),(2,'USA');
/*!40000 ALTER TABLE `Country` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Distributers`
--

DROP TABLE IF EXISTS `Distributers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Distributers` (
  `ID` int(11) NOT NULL,
  `INN` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Adress` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`,`INN`),
  KEY `Adress` (`Adress`),
  CONSTRAINT `Distributers_ibfk_1` FOREIGN KEY (`Adress`) REFERENCES `Adresses` (`ID`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Distributers`
--

LOCK TABLES `Distributers` WRITE;
/*!40000 ALTER TABLE `Distributers` DISABLE KEYS */;
/*!40000 ALTER TABLE `Distributers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DrugsNew`
--

DROP TABLE IF EXISTS `DrugsNew`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DrugsNew` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Image` varchar(45) DEFAULT NULL,
  `Maker` int(11) DEFAULT NULL,
  `Storage time` int(11) DEFAULT NULL,
  `Medicine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DrugsNew`
--

LOCK TABLES `DrugsNew` WRITE;
/*!40000 ALTER TABLE `DrugsNew` DISABLE KEYS */;
INSERT INTO `DrugsNew` VALUES (1,'Aspirin','aspirin.jpg',1,1,1),(2,'Terpinkod','terpinkod.jpg',2,2,2);
/*!40000 ALTER TABLE `DrugsNew` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Makers`
--

DROP TABLE IF EXISTS `Makers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Makers` (
  `ID` int(11) NOT NULL,
  `Name` varchar(45) DEFAULT NULL,
  `Adress` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Adress` (`Adress`),
  CONSTRAINT `Makers_ibfk_1` FOREIGN KEY (`Adress`) REFERENCES `Adresses` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Makers`
--

LOCK TABLES `Makers` WRITE;
/*!40000 ALTER TABLE `Makers` DISABLE KEYS */;
INSERT INTO `Makers` VALUES (1,'PharmaDel',1),(2,'SuperPharm',2);
/*!40000 ALTER TABLE `Makers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Medicine`
--

DROP TABLE IF EXISTS `Medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Medicine` (
  `ID` int(11) NOT NULL,
  `Medical name` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Medicine`
--

LOCK TABLES `Medicine` WRITE;
/*!40000 ALTER TABLE `Medicine` DISABLE KEYS */;
INSERT INTO `Medicine` VALUES (1,'Acetilsalicilovaya kislota'),(2,'Kodein');
/*!40000 ALTER TABLE `Medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Sales`
--

DROP TABLE IF EXISTS `Sales`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Sales` (
  `Check` int(11) NOT NULL,
  `Drug` int(11) NOT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`Check`,`Drug`),
  KEY `Drug` (`Drug`),
  CONSTRAINT `Sales_ibfk_1` FOREIGN KEY (`Check`) REFERENCES `Check` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Sales_ibfk_2` FOREIGN KEY (`Drug`) REFERENCES `Drugs` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Sales`
--

LOCK TABLES `Sales` WRITE;
/*!40000 ALTER TABLE `Sales` DISABLE KEYS */;
/*!40000 ALTER TABLE `Sales` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Storage`
--

DROP TABLE IF EXISTS `Storage`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Storage` (
  `Drug` int(11) NOT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`Drug`),
  CONSTRAINT `Storage_ibfk_1` FOREIGN KEY (`Drug`) REFERENCES `Drugs` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Storage`
--

LOCK TABLES `Storage` WRITE;
/*!40000 ALTER TABLE `Storage` DISABLE KEYS */;
/*!40000 ALTER TABLE `Storage` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Storage_time`
--

DROP TABLE IF EXISTS `Storage_time`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Storage_time` (
  `ID` int(11) NOT NULL,
  `Storage time` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Storage_time`
--

LOCK TABLES `Storage_time` WRITE;
/*!40000 ALTER TABLE `Storage_time` DISABLE KEYS */;
INSERT INTO `Storage_time` VALUES (1,3),(2,1);
/*!40000 ALTER TABLE `Storage_time` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Suppliment`
--

DROP TABLE IF EXISTS `Suppliment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Suppliment` (
  `Supply` int(11) NOT NULL,
  `Drug` int(11) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `Quantity` int(11) DEFAULT NULL,
  PRIMARY KEY (`Supply`),
  KEY `Drug` (`Drug`),
  CONSTRAINT `Suppliment_ibfk_1` FOREIGN KEY (`Supply`) REFERENCES `Supply` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Suppliment_ibfk_2` FOREIGN KEY (`Drug`) REFERENCES `Drugs` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Suppliment`
--

LOCK TABLES `Suppliment` WRITE;
/*!40000 ALTER TABLE `Suppliment` DISABLE KEYS */;
/*!40000 ALTER TABLE `Suppliment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Supply`
--

DROP TABLE IF EXISTS `Supply`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Supply` (
  `ID` int(11) NOT NULL,
  `Date` date DEFAULT NULL,
  `Destributor` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `Destributor` (`Destributor`),
  CONSTRAINT `Supply_ibfk_1` FOREIGN KEY (`Destributor`) REFERENCES `Distributers` (`ID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Supply`
--

LOCK TABLES `Supply` WRITE;
/*!40000 ALTER TABLE `Supply` DISABLE KEYS */;
/*!40000 ALTER TABLE `Supply` ENABLE KEYS */;
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
