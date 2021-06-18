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
INSERT INTO `Administrators` VALUES (1,1),(4,1),(1,2),(3,3);
/*!40000 ALTER TABLE `Administrators` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Buys`
--

DROP TABLE IF EXISTS `Buys`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Buys` (
  `price_for_seance` int NOT NULL,
  `ticket_reference` int NOT NULL,
  PRIMARY KEY (`price_for_seance`,`ticket_reference`),
  KEY `ticket_reference` (`ticket_reference`),
  CONSTRAINT `buys_ibfk_1` FOREIGN KEY (`price_for_seance`) REFERENCES `Prices` (`id`),
  CONSTRAINT `buys_ibfk_2` FOREIGN KEY (`ticket_reference`) REFERENCES `Tickets` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Buys`
--

LOCK TABLES `Buys` WRITE;
/*!40000 ALTER TABLE `Buys` DISABLE KEYS */;
INSERT INTO `Buys` VALUES (1,1),(3,2),(3,3),(2,4),(2,5),(2,6),(1,7),(1,8),(1,9),(3,10);
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Cinemas`
--

LOCK TABLES `Cinemas` WRITE;
/*!40000 ALTER TABLE `Cinemas` DISABLE KEYS */;
INSERT INTO `Cinemas` VALUES (1,'Studio Universel','Joseph F Maxwell'),(2,'UGC Opéra','A.J. August Fashion Wear'),(3,'Astor','2005 Ferrari 575 Superamerica');
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
  `duration` varchar(155) NOT NULL,
  `start` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Movies`
--

LOCK TABLES `Movies` WRITE;
/*!40000 ALTER TABLE `Movies` DISABLE KEYS */;
INSERT INTO `Movies` VALUES (1,'Pulp Fiction','1994','L\'odyssée sanglante, burlesque et cocasse de petits malfrats \ndans la jungle de Hollywood à travers trois histoires qui s\'entremêlent.','2h58','2021-06-30 22:36:47'),(3,'Interstellar','2014','Un groupe d\'explorateurs exploite une faille dans \nl\'espace-temps afin de parcourir des distances incroyables dans le but de sauver l\'humanité','2h49','2021-08-28 19:42:34'),(4,'Seul sur Mars','2015','Seul sur Mars (The Martian, litt. « Le Martien ») est un film de science-fiction américain réalisé par Ridley Scott, sorti en 2015.','2h31','2022-06-17 17:44:34'),(5,'Gravity','2013','Gravity or gravitation, is a natural phenomenon by which all things with mass or energy—including planets, stars, galaxies, and even light—are attracted to','1h31','2021-09-20 20:46:08'),(9,'The Prestige','2006','The Prestige is a 2006 science fiction psychological thriller film directed ','2h10','2021-10-18 12:41:22'),(10,'The Dark Knight','2008','The Dark Knight: Directed ','2h32','2021-11-18 17:42:07'),(11,'Memento','2000','Memento is one of those pictures that will have you sitting in the theater after the lights come up','1h54','2021-09-01 20:42:19'),(12,'Transcendence','2014','Transcendence is a 2014 American science fiction ','1h59','2021-12-29 12:45:49'),(13,'Man of Steel','2013','Man of Steel is a reboot of the Superman film','2h28','2021-05-24 22:46:00');
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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prices`
--

LOCK TABLES `Prices` WRITE;
/*!40000 ALTER TABLE `Prices` DISABLE KEYS */;
INSERT INTO `Prices` VALUES (1,'full',9.2),(2,'student',7.6),(3,'child',5.9);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Rooms`
--

LOCK TABLES `Rooms` WRITE;
/*!40000 ALTER TABLE `Rooms` DISABLE KEYS */;
INSERT INTO `Rooms` VALUES (1,'AD12',1,1),(2,'AD13',1,2),(3,'AD14',1,3),(4,'AD16',1,1),(5,'BE22',2,5),(6,'BE23',2,6),(7,'BE24',2,7),(8,'BE26',2,8),(9,'CV34',3,9),(10,'CV36',3,10),(11,'CV37',3,11),(12,'CV38',3,12);
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
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Seances`
--

LOCK TABLES `Seances` WRITE;
/*!40000 ALTER TABLE `Seances` DISABLE KEYS */;
INSERT INTO `Seances` VALUES (1,'SE1',1),(2,'SE2',3),(3,'SE3',4),(4,'SE4',5),(5,'SEA1',1),(6,'SEA2',13),(7,'SEA3',12),(8,'SEA4',11),(9,'SEB1',10),(10,'SEB2',9),(11,'SEB3',5),(12,'SEB4',3);
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
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Tickets`
--

LOCK TABLES `Tickets` WRITE;
/*!40000 ALTER TABLE `Tickets` DISABLE KEYS */;
INSERT INTO `Tickets` VALUES (1,'XDFER2345','online',1),(2,'XDFER4567','online',2),(3,'XDFER5641','offline',4),(4,'XDFER3456','offline',12),(5,'XDFSD4566','offline',7),(6,'XDFFG3455','online',6),(7,'XDFQSE345','offline',3),(8,'XDFRT5345','online',1),(9,'XDFE23446','offline',10),(10,'XDFER2451','online',12);
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
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES (1,'Mickael','ADMIN'),(2,'Marque','ADMIN'),(3,'Joel','ADMIN'),(4,'Victor','ADMIN');
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

-- Dump completed on 2021-06-18 13:08:14
