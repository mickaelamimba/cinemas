-- MariaDB dump 10.18  Distrib 10.5.8-MariaDB, for osx10.15 (x86_64)
--
-- Host: 127.0.0.1    Database: cinemas
-- ------------------------------------------------------
-- Server version	8.0.19

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Administrators`
--

DROP TABLE IF EXISTS `Administrators`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Administrators` (
  `user_id` int NOT NULL,
  `cinema_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`cinema_id`),
  KEY `cinema_id` (`cinema_id`),
  CONSTRAINT `administrators_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`),
  CONSTRAINT `administrators_ibfk_2` FOREIGN KEY (`cinema_id`) REFERENCES `Cinemas` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Administrators`
--

LOCK TABLES `Administrators` WRITE;
/*!40000 ALTER TABLE `Administrators` DISABLE KEYS */;
/*!40000 ALTER TABLE `Administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Back_office`
--

DROP TABLE IF EXISTS `Back_office`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Back_office` (
  `user_id` int NOT NULL,
  `seance_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`seance_id`),
  KEY `seance_id` (`seance_id`),
  CONSTRAINT `back_office_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `Users` (`id`),
  CONSTRAINT `back_office_ibfk_2` FOREIGN KEY (`seance_id`) REFERENCES `Seances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Back_office`
--

LOCK TABLES `Back_office` WRITE;
/*!40000 ALTER TABLE `Back_office` DISABLE KEYS */;
/*!40000 ALTER TABLE `Back_office` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Buys`
--

DROP TABLE IF EXISTS `Buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Buys` (
  `id` int NOT NULL AUTO_INCREMENT,
  `price_for_seance` int NOT NULL,
  `ticket_reference` int NOT NULL,
  `select_seance` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `select_seance` (`select_seance`),
  KEY `price_for_seance` (`price_for_seance`),
  KEY `ticket_reference` (`ticket_reference`),
  CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`select_seance`) REFERENCES `Seances` (`id`),
  CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`price_for_seance`) REFERENCES `Prices` (`id`),
  CONSTRAINT `buys_ibfk_3` FOREIGN KEY (`ticket_reference`) REFERENCES `Tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Buys`
--

LOCK TABLES `Buys` WRITE;
/*!40000 ALTER TABLE `Buys` DISABLE KEYS */;
/*!40000 ALTER TABLE `Buys` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Cinemas`
--

DROP TABLE IF EXISTS `Cinemas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Cinemas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `address` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cinemas`
--

LOCK TABLES `Cinemas` WRITE;
/*!40000 ALTER TABLE `Cinemas` DISABLE KEYS */;
/*!40000 ALTER TABLE `Cinemas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Movies`
--

DROP TABLE IF EXISTS `Movies`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Movies` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `year` varchar(155) NOT NULL,
  `description` varchar(155) NOT NULL,
  `date` date NOT NULL,
  `duration` varchar(155) NOT NULL,
  `start` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
/*!40000 ALTER TABLE `Movies` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prices`
--

DROP TABLE IF EXISTS `Prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `type` varchar(11) NOT NULL,
  `price` float NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prices`
--

LOCK TABLES `Prices` WRITE;
/*!40000 ALTER TABLE `Prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Rooms`
--

DROP TABLE IF EXISTS `Rooms`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Rooms` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `cinema_room` int NOT NULL,
  `seance_room` int NOT NULL,
  PRIMARY KEY (`id`,`cinema_room`),
  KEY `cinema_room` (`cinema_room`),
  KEY `seance_room` (`seance_room`),
  CONSTRAINT `rooms_ibfk_1` FOREIGN KEY (`cinema_room`) REFERENCES `Cinemas` (`id`) ON DELETE CASCADE,
  CONSTRAINT `rooms_ibfk_2` FOREIGN KEY (`seance_room`) REFERENCES `Seances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
/*!40000 ALTER TABLE `Rooms` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Seances`
--

DROP TABLE IF EXISTS `Seances`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Seances` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `movie_playing` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `movie_playing` (`movie_playing`),
  CONSTRAINT `seances_ibfk_1` FOREIGN KEY (`movie_playing`) REFERENCES `Movies` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seances`
--

LOCK TABLES `Seances` WRITE;
/*!40000 ALTER TABLE `Seances` DISABLE KEYS */;
/*!40000 ALTER TABLE `Seances` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Tickets`
--

DROP TABLE IF EXISTS `Tickets`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Tickets` (
  `id` int NOT NULL AUTO_INCREMENT,
  `reference` varchar(115) NOT NULL,
  `online_payment` varchar(11) NOT NULL,
  `go_in_seance` int NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `reference` (`reference`),
  KEY `go_in_seance` (`go_in_seance`),
  CONSTRAINT `tickets_ibfk_1` FOREIGN KEY (`go_in_seance`) REFERENCES `Seances` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
/*!40000 ALTER TABLE `Tickets` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(155) NOT NULL,
  `role` varchar(155) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-06-17 21:52:34
