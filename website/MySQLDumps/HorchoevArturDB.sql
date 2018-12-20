-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: HorchoevArturDB
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
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `customers` (
  `idcustomer` int(11) NOT NULL,
  `passport` int(11) DEFAULT NULL,
  `adress` varchar(45) DEFAULT NULL,
  `surname` varchar(45) DEFAULT NULL,
  `name` varchar(45) DEFAULT NULL,
  `fathername` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcustomer`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,100,'lenina 1','Ivanov','Ivan','Ivanovich'),(2,101,'lenina 2','Petrov','Vasya','Petrovich'),(3,102,'lenina 3','Sidorov','Dima','Lvovich'),(4,103,'lenina 4','Sleptsov','Kolya','Alexandrovich'),(5,104,'lenina 5','Lukin','Vova','Gavrilevich');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `komisiya`
--

DROP TABLE IF EXISTS `komisiya`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `komisiya` (
  `idkomisiya` int(11) NOT NULL,
  `objects_idobjects` int(11) NOT NULL,
  `vidkomissii` tinyint(4) DEFAULT NULL,
  `summa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idkomisiya`,`objects_idobjects`),
  KEY `objects_idobjects` (`objects_idobjects`),
  CONSTRAINT `komisiya_ibfk_1` FOREIGN KEY (`objects_idobjects`) REFERENCES `objects` (`idobjects`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `komisiya`
--

LOCK TABLES `komisiya` WRITE;
/*!40000 ALTER TABLE `komisiya` DISABLE KEYS */;
/*!40000 ALTER TABLE `komisiya` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objects`
--

DROP TABLE IF EXISTS `objects`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objects` (
  `idobjects` int(11) NOT NULL,
  `adress` varchar(45) NOT NULL,
  `square` float NOT NULL,
  `room` int(10) NOT NULL,
  `floors` int(11) NOT NULL,
  `descriptionl` varchar(450) DEFAULT NULL,
  `price` int(100) DEFAULT NULL,
  `predoplata` int(100) DEFAULT NULL,
  `free` tinyint(3) unsigned zerofill NOT NULL,
  `customers_idcustomer` int(11) NOT NULL,
  PRIMARY KEY (`idobjects`),
  KEY `customers_idcustomer` (`customers_idcustomer`),
  CONSTRAINT `objects_ibfk_1` FOREIGN KEY (`customers_idcustomer`) REFERENCES `customers` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objects`
--

LOCK TABLES `objects` WRITE;
/*!40000 ALTER TABLE `objects` DISABLE KEYS */;
INSERT INTO `objects` VALUES (1,'Pobedy 23',23,1,4,'',25000,12500,001,2),(2,'Pobedy 33',43,2,4,'',35000,22500,002,3),(3,'Pobedy 53',63,3,4,'',40000,32500,002,4),(12,'test',1,2,3,'4',5,6,001,1);
/*!40000 ALTER TABLE `objects` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `oplata`
--

DROP TABLE IF EXISTS `oplata`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `oplata` (
  `idoplata` int(11) NOT NULL,
  `idarendatora` int(11) NOT NULL,
  `idowner` int(11) NOT NULL,
  `oplataownera` int(11) DEFAULT NULL,
  `story_idstory` int(11) NOT NULL,
  `summa` int(11) DEFAULT NULL,
  PRIMARY KEY (`idoplata`),
  KEY `story_idstory` (`story_idstory`),
  CONSTRAINT `oplata_ibfk_1` FOREIGN KEY (`story_idstory`) REFERENCES `story` (`idstory`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `oplata`
--

LOCK TABLES `oplata` WRITE;
/*!40000 ALTER TABLE `oplata` DISABLE KEYS */;
/*!40000 ALTER TABLE `oplata` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `photos`
--

DROP TABLE IF EXISTS `photos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `photos` (
  `idphotos` int(11) NOT NULL,
  `objects_idobjects` int(11) NOT NULL,
  `photoscol` varchar(450) DEFAULT NULL,
  PRIMARY KEY (`idphotos`),
  KEY `objects_idobjects` (`objects_idobjects`),
  CONSTRAINT `photos_ibfk_1` FOREIGN KEY (`objects_idobjects`) REFERENCES `objects` (`idobjects`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `photos`
--

LOCK TABLES `photos` WRITE;
/*!40000 ALTER TABLE `photos` DISABLE KEYS */;
INSERT INTO `photos` VALUES (1,1,'https://i.archi.ru/i/650/223670.jpg');
/*!40000 ALTER TABLE `photos` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recvizity`
--

DROP TABLE IF EXISTS `recvizity`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `recvizity` (
  `idrecvizity` int(11) NOT NULL,
  `customers_idcustomer` int(11) NOT NULL,
  `bic` int(11) DEFAULT NULL,
  `schetCB` int(11) DEFAULT NULL,
  `chet` int(11) DEFAULT NULL,
  PRIMARY KEY (`idrecvizity`),
  KEY `customers_idcustomer` (`customers_idcustomer`),
  CONSTRAINT `recvizity_ibfk_1` FOREIGN KEY (`customers_idcustomer`) REFERENCES `customers` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recvizity`
--

LOCK TABLES `recvizity` WRITE;
/*!40000 ALTER TABLE `recvizity` DISABLE KEYS */;
INSERT INTO `recvizity` VALUES (1,2,123,123,123),(2,3,122,122,122);
/*!40000 ALTER TABLE `recvizity` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `story`
--

DROP TABLE IF EXISTS `story`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `story` (
  `idstory` int(11) NOT NULL,
  `idobject` int(11) NOT NULL,
  `datanach` date NOT NULL,
  `datakonec` date NOT NULL,
  `customers_idcustomer` int(11) NOT NULL,
  PRIMARY KEY (`idstory`),
  KEY `customers_idcustomer` (`customers_idcustomer`),
  CONSTRAINT `story_ibfk_1` FOREIGN KEY (`customers_idcustomer`) REFERENCES `customers` (`idcustomer`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `story`
--

LOCK TABLES `story` WRITE;
/*!40000 ALTER TABLE `story` DISABLE KEYS */;
/*!40000 ALTER TABLE `story` ENABLE KEYS */;
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
