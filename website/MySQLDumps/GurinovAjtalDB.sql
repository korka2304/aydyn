-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: GurinovAjtalDB
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
-- Table structure for table `Conclusion`
--

DROP TABLE IF EXISTS `Conclusion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Conclusion` (
  `idConc` int(11) NOT NULL,
  `Name` varchar(45) NOT NULL,
  `InitialT` varchar(500) NOT NULL,
  PRIMARY KEY (`idConc`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Conclusion`
--

LOCK TABLES `Conclusion` WRITE;
/*!40000 ALTER TABLE `Conclusion` DISABLE KEYS */;
INSERT INTO `Conclusion` VALUES (1,'Dejk','2 plus 2 is 4 minus 1 is 3 quick mafs');
/*!40000 ALTER TABLE `Conclusion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Datacard`
--

DROP TABLE IF EXISTS `Datacard`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Datacard` (
  `idCard` int(11) NOT NULL,
  `Patient` int(11) NOT NULL,
  `Session` int(11) NOT NULL,
  `Conclusion` int(11) NOT NULL,
  PRIMARY KEY (`idCard`),
  KEY `Conclusion` (`Conclusion`),
  KEY `Patient` (`Patient`),
  KEY `Session` (`Session`),
  CONSTRAINT `Datacard_ibfk_1` FOREIGN KEY (`Conclusion`) REFERENCES `Conclusion` (`idConc`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Datacard_ibfk_2` FOREIGN KEY (`Patient`) REFERENCES `Patient` (`idPatient`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `Datacard_ibfk_3` FOREIGN KEY (`Session`) REFERENCES `Session` (`idSession`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Datacard`
--

LOCK TABLES `Datacard` WRITE;
/*!40000 ALTER TABLE `Datacard` DISABLE KEYS */;
INSERT INTO `Datacard` VALUES (1,1,1,1);
/*!40000 ALTER TABLE `Datacard` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Doctor`
--

DROP TABLE IF EXISTS `Doctor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Doctor` (
  `idDoctor` int(11) NOT NULL,
  `FullName` varchar(100) NOT NULL,
  `Diploma` tinyint(4) NOT NULL,
  `Worktime` varchar(45) NOT NULL,
  `Spec` int(11) NOT NULL,
  PRIMARY KEY (`idDoctor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Doctor`
--

LOCK TABLES `Doctor` WRITE;
/*!40000 ALTER TABLE `Doctor` DISABLE KEYS */;
INSERT INTO `Doctor` VALUES (1,'Carl Johnson',1,'0900-1700',1);
/*!40000 ALTER TABLE `Doctor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `DoctorSpec`
--

DROP TABLE IF EXISTS `DoctorSpec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `DoctorSpec` (
  `id` int(11) NOT NULL,
  `Spec` int(11) NOT NULL,
  `Doctor` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `Spec` (`Spec`),
  KEY `Doctor` (`Doctor`),
  CONSTRAINT `DoctorSpec_ibfk_1` FOREIGN KEY (`Spec`) REFERENCES `Spec` (`idSpec`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `DoctorSpec_ibfk_2` FOREIGN KEY (`Doctor`) REFERENCES `Doctor` (`idDoctor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `DoctorSpec`
--

LOCK TABLES `DoctorSpec` WRITE;
/*!40000 ALTER TABLE `DoctorSpec` DISABLE KEYS */;
INSERT INTO `DoctorSpec` VALUES (1,1,1);
/*!40000 ALTER TABLE `DoctorSpec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Patient`
--

DROP TABLE IF EXISTS `Patient`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Patient` (
  `idPatient` int(11) NOT NULL,
  `FullName` varchar(45) NOT NULL,
  `Address` varchar(45) NOT NULL,
  `Passport` varchar(45) NOT NULL,
  PRIMARY KEY (`idPatient`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Patient`
--

LOCK TABLES `Patient` WRITE;
/*!40000 ALTER TABLE `Patient` DISABLE KEYS */;
INSERT INTO `Patient` VALUES (1,'Ivanov Ivan','Warsaw Trjk st. 32','228228'),(2,'Far Oliver','Praha Voiczik st. 2','442633');
/*!40000 ALTER TABLE `Patient` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Session`
--

DROP TABLE IF EXISTS `Session`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Session` (
  `idSession` int(11) NOT NULL,
  `Doctor` int(11) NOT NULL,
  `Date` date NOT NULL,
  `Time` time NOT NULL,
  `Succeed` tinyint(4) NOT NULL,
  PRIMARY KEY (`idSession`),
  KEY `Doctor` (`Doctor`),
  CONSTRAINT `Session_ibfk_1` FOREIGN KEY (`Doctor`) REFERENCES `Doctor` (`idDoctor`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Session`
--

LOCK TABLES `Session` WRITE;
/*!40000 ALTER TABLE `Session` DISABLE KEYS */;
INSERT INTO `Session` VALUES (1,1,'2018-12-21','13:30:00',0);
/*!40000 ALTER TABLE `Session` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Spec`
--

DROP TABLE IF EXISTS `Spec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Spec` (
  `idSpec` int(11) NOT NULL,
  `SpecName` varchar(45) NOT NULL,
  `Cabinet` int(11) NOT NULL,
  PRIMARY KEY (`idSpec`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Spec`
--

LOCK TABLES `Spec` WRITE;
/*!40000 ALTER TABLE `Spec` DISABLE KEYS */;
INSERT INTO `Spec` VALUES (1,'MainMan',101);
/*!40000 ALTER TABLE `Spec` ENABLE KEYS */;
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
