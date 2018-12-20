-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: AlekseevNikitaDB
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
-- Table structure for table `4elovek`
--

DROP TABLE IF EXISTS `4elovek`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `4elovek` (
  `id_4elovek` int(11) NOT NULL,
  `familia` varchar(45) NOT NULL,
  `name` varchar(45) NOT NULL,
  `otchestvo` varchar(45) NOT NULL,
  `passport data` varchar(45) NOT NULL,
  PRIMARY KEY (`id_4elovek`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `4elovek`
--

LOCK TABLES `4elovek` WRITE;
/*!40000 ALTER TABLE `4elovek` DISABLE KEYS */;
INSERT INTO `4elovek` VALUES (0,'Alekseev','Nikita','Sergeevich','9813 463452'),(1,'Savvin','Anton','Vasilevich','9813 452678');
/*!40000 ALTER TABLE `4elovek` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `arenda`
--

DROP TABLE IF EXISTS `arenda`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `arenda` (
  `id_arenda` int(11) NOT NULL,
  `4elovek_id_4elovek1` int(11) NOT NULL,
  `kvartiri_id_kvartiri` int(11) NOT NULL,
  `oplata v mesac` int(11) NOT NULL,
  `predoplata` int(11) NOT NULL,
  `arenda begin` date NOT NULL,
  `arenda end` int(11) NOT NULL,
  PRIMARY KEY (`id_arenda`,`4elovek_id_4elovek1`,`kvartiri_id_kvartiri`),
  KEY `4elovek_id_4elovek1` (`4elovek_id_4elovek1`),
  KEY `kvartiri_id_kvartiri` (`kvartiri_id_kvartiri`),
  CONSTRAINT `arenda_ibfk_1` FOREIGN KEY (`4elovek_id_4elovek1`) REFERENCES `4elovek` (`id_4elovek`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `arenda_ibfk_2` FOREIGN KEY (`kvartiri_id_kvartiri`) REFERENCES `kvartiri` (`id_kvartiri`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `arenda`
--

LOCK TABLES `arenda` WRITE;
/*!40000 ALTER TABLE `arenda` DISABLE KEYS */;
/*!40000 ALTER TABLE `arenda` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `foto`
--

DROP TABLE IF EXISTS `foto`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `foto` (
  `id_foto` int(11) NOT NULL,
  `foto` varchar(45) DEFAULT NULL,
  `kvartiri_id_kvartiri` int(11) NOT NULL,
  PRIMARY KEY (`id_foto`,`kvartiri_id_kvartiri`),
  KEY `kvartiri_id_kvartiri` (`kvartiri_id_kvartiri`),
  CONSTRAINT `foto_ibfk_1` FOREIGN KEY (`kvartiri_id_kvartiri`) REFERENCES `kvartiri` (`id_kvartiri`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `foto`
--

LOCK TABLES `foto` WRITE;
/*!40000 ALTER TABLE `foto` DISABLE KEYS */;
/*!40000 ALTER TABLE `foto` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `kvartiri`
--

DROP TABLE IF EXISTS `kvartiri`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `kvartiri` (
  `id_kvartiri` int(11) NOT NULL,
  `adres` varchar(45) NOT NULL,
  `ploshad` int(11) NOT NULL,
  `count komnat` int(11) NOT NULL,
  `etazh` int(11) NOT NULL,
  `kratkoe opisanie` varchar(45) DEFAULT NULL,
  `4elovek_id_4elovek` int(11) NOT NULL,
  `komissia` int(11) DEFAULT NULL,
  PRIMARY KEY (`id_kvartiri`,`4elovek_id_4elovek`),
  KEY `4elovek_id_4elovek` (`4elovek_id_4elovek`),
  CONSTRAINT `kvartiri_ibfk_1` FOREIGN KEY (`4elovek_id_4elovek`) REFERENCES `4elovek` (`id_4elovek`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `kvartiri`
--

LOCK TABLES `kvartiri` WRITE;
/*!40000 ALTER TABLE `kvartiri` DISABLE KEYS */;
/*!40000 ALTER TABLE `kvartiri` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rekviziti`
--

DROP TABLE IF EXISTS `rekviziti`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rekviziti` (
  `id_rekvisit` int(11) NOT NULL,
  `BIK banka` double NOT NULL,
  `Bank schet` double NOT NULL,
  `chet in center bank` double NOT NULL,
  `4elovek_id_4elovek` int(11) NOT NULL,
  PRIMARY KEY (`id_rekvisit`),
  KEY `4elovek_id_4elovek` (`4elovek_id_4elovek`),
  CONSTRAINT `rekviziti_ibfk_1` FOREIGN KEY (`4elovek_id_4elovek`) REFERENCES `4elovek` (`id_4elovek`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rekviziti`
--

LOCK TABLES `rekviziti` WRITE;
/*!40000 ALTER TABLE `rekviziti` DISABLE KEYS */;
/*!40000 ALTER TABLE `rekviziti` ENABLE KEYS */;
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
