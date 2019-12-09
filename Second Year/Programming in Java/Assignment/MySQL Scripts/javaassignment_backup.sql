CREATE DATABASE  IF NOT EXISTS `javaassignment` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `javaassignment`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: javaassignment
-- ------------------------------------------------------
-- Server version	5.7.10-log

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
-- Table structure for table `bookings`
--

DROP TABLE IF EXISTS `bookings`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `bookings` (
  `reference` varchar(36) NOT NULL,
  `bookingDate` varchar(10) DEFAULT NULL,
  `ISBN` varchar(20) DEFAULT NULL,
  `bookTitle` varchar(50) NOT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `studentNum` varchar(45) DEFAULT NULL,
  `returnDate` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`reference`),
  UNIQUE KEY `reference_UNIQUE` (`reference`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bookings`
--

LOCK TABLES `bookings` WRITE;
/*!40000 ALTER TABLE `bookings` DISABLE KEYS */;
INSERT INTO `bookings` VALUES ('2c53ba3e-72d0-4ca8-87d4-d1aae429c183','31/02/2017','9780261102354','The Hobbit','Zach','Helfrich','1234','01-05-2017'),('36fb8cd7-3e24-4738-9bb5-a6055efa84b4','10/11/2016',NULL,'The Fellowship of the Ring','Sydney','Twigg',NULL,'20/03/2017'),('40de7162-509d-4c52-a5d6-d84d3389d30d','29/04/2017','1234567890123','Book','Bradley','Dick','6789','21-09-2017'),('95066798-15b7-4801-917a-e30229b63ae6','06-08-2017','9781473211513','Warbreaker','Cameron','Moonsamy','1111',NULL),('b9abcc22-5b1a-4c2a-a8b4-8ce0b0284fdd','29/04/2017','1234567890123','Book','Bradley','Dick','6789','09/06/2017'),('cdf99f8c-ab0e-4702-a9bf-75f7a065a2b6','31/03/2017',NULL,'Warbreaker','Sydney','Twigg','123456','18/09/2017'),('e79a17ea-c3a8-4c77-a9ed-0bc489a28422','31/02/2017','9780261102354','The Hobbit','Zach','Helfrich','1234','02/04/2018');
/*!40000 ALTER TABLE `bookings` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `books`
--

DROP TABLE IF EXISTS `books`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `books` (
  `ISBN` varchar(20) NOT NULL,
  `title` varchar(50) NOT NULL,
  `author` varchar(45) NOT NULL,
  `year` int(11) NOT NULL,
  `edition` varchar(10) NOT NULL,
  `category` varchar(45) NOT NULL,
  `publisher` varchar(45) NOT NULL,
  `copiesAvailable` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ISBN`),
  UNIQUE KEY `ISBN_UNIQUE` (`ISBN`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `books`
--

LOCK TABLES `books` WRITE;
/*!40000 ALTER TABLE `books` DISABLE KEYS */;
INSERT INTO `books` VALUES ('1234567890123','Book','Name',2017,'10th','Fiction','Publishing House',15),('9780261102354','The Fellowship of the Ring','J R R Tolkien',1954,'3rd','Fantasy','HarperCollins',9),('9780582186552','The Hobbit','J R R Tolkien',1937,'5th','Fantasy','Allen & Unwin',2),('9780765360038','Warbreaker','Brandon Sanderson',2010,'3rd','Fantasy','Tor Fantasy',2),('9781473211513','The Way of Kings','Brandon Sanderson',2015,'1st','Fantasy','Gollancz',0);
/*!40000 ALTER TABLE `books` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `students`
--

DROP TABLE IF EXISTS `students`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `students` (
  `studentNumber` int(11) NOT NULL,
  `title` varchar(10) DEFAULT NULL,
  `name` varchar(45) NOT NULL,
  `surname` varchar(45) NOT NULL,
  `cellNum` varchar(14) DEFAULT NULL,
  `address` varchar(200) NOT NULL,
  PRIMARY KEY (`studentNumber`),
  UNIQUE KEY `studentNumber_UNIQUE` (`studentNumber`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `students`
--

LOCK TABLES `students` WRITE;
/*!40000 ALTER TABLE `students` DISABLE KEYS */;
INSERT INTO `students` VALUES (1234,'Mr','Zach','Helfrich','+1 1837776211','17 Drive Road'),(3810,'Mr','Cameron','Moonsamy','0831112341','Durban'),(9876,'Mr','Bradley','Dick','+44 999 12 101','1 Avenue Street'),(123456,'Ms','Sydney','Twigg','+27832567264','6 Mohr Road, Tokai, Cape Town');
/*!40000 ALTER TABLE `students` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-03-31 19:40:46
