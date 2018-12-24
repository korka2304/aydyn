-- MySQL dump 10.13  Distrib 5.7.24, for Linux (i686)
--
-- Host: localhost    Database: SlepcovaValentinaDB
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
-- Table structure for table `authors`
--

DROP TABLE IF EXISTS `authors`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `authors` (
  `AuthorID` int(11) NOT NULL,
  `FirstName` varchar(50) DEFAULT NULL,
  `FamilyName` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`AuthorID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `authors`
--

LOCK TABLES `authors` WRITE;
/*!40000 ALTER TABLE `authors` DISABLE KEYS */;
INSERT INTO `authors` VALUES (1,'Ð›ÐµÐ²','Ð¢Ð¾Ð»ÑÑ‚Ð¾Ð¹'),(2,'Ð¤ÐµÐ´Ð¾Ñ€','Ð”Ð¾ÑÑ‚Ð¾ÐµÐ²ÑÐºÐ¸Ð¹'),(3,'Ð¡ÐµÑ€Ð³ÐµÐ¹','Ð›ÑƒÐºÑŒÑÐ½ÐµÐ½ÐºÐ¾'),(4,'Mikhail','Antonov'),(5,'LEverev','Vladimir'),(6,'Evgeniy','Chichvarkin'),(7,'',''),(8,'Ivan','Tarabukin'),(9,'glad','valakas');
/*!40000 ALTER TABLE `authors` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `BookID` int(11) NOT NULL,
  `AuthorID` int(11) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Year` int(11) NOT NULL DEFAULT '2000',
  PRIMARY KEY (`BookID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES (1,1,'Ð’Ð¾Ð¹Ð½Ð° Ð¸ ÐœÐ¸Ñ€',1868),(2,1,'ÐÐ½Ð½Ð° ÐšÐ°Ñ€ÐµÐ½Ð¸Ð½Ð°',1878),(3,2,'ÐŸÑ€ÐµÑÑ‚ÑƒÐ¿Ð»ÐµÐ½Ð¸Ðµ Ð¸ Ð½Ð°ÐºÐ°Ð·Ð°Ð½Ð¸Ðµ',1866),(4,2,'Ð˜Ð´Ð¸Ð¾Ñ‚',1868),(5,2,'Ð‘Ñ€Ð°Ñ‚ÑŒÑ ÐšÐ°Ñ€Ð°Ð¼Ð°Ð·Ð¾Ð²Ñ‹',1880),(6,2,'Ð‘ÐµÑÑ‹',1872),(7,3,'Ð›Ð°Ð±Ð¸Ñ€Ð¸Ð½Ñ‚ ÐžÑ‚Ñ€Ð°Ð¶ÐµÐ½Ð¸Ð¹',1997),(8,3,'ÐÐ¾Ñ‡Ð½Ð¾Ð¹ Ð´Ð¾Ð·Ð¾Ñ€',1995),(9,8,'Snow',2018),(10,1,'ban',54),(11,2,'dadaya',123);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `UserID` int(11) NOT NULL,
  `UserName` varchar(20) DEFAULT NULL,
  `UserPass` varchar(20) DEFAULT NULL,
  `UserEMail` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'KingMonster','password','monster@hotmail.com'),(2,'School23rulz','iamcool','sc23@hotmail.com'),(3,'Beorht','12345','guest@hotmail.com');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
