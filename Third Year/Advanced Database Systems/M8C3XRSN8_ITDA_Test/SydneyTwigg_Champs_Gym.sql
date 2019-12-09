CREATE DATABASE  IF NOT EXISTS `sydneytwigg_champs_gym` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `sydneytwigg_champs_gym`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: sydneytwigg_champs_gym
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
-- Table structure for table `gym_classes`
--

DROP TABLE IF EXISTS `gym_classes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_classes` (
  `className` varchar(255) NOT NULL,
  `classInstructor` varchar(255) DEFAULT NULL,
  `classTime` time NOT NULL,
  `classDuration_in_min` int(11) NOT NULL,
  PRIMARY KEY (`className`),
  UNIQUE KEY `className` (`className`),
  KEY `classInstructor_idx` (`classInstructor`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_classes`
--

LOCK TABLES `gym_classes` WRITE;
/*!40000 ALTER TABLE `gym_classes` DISABLE KEYS */;
INSERT INTO `gym_classes` VALUES ('Cha cha for beginners','Lady G','00:00:00',30),('Yoga','Charnay','00:00:00',60),('Zumba','Ntombi','00:00:00',45);
/*!40000 ALTER TABLE `gym_classes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_members`
--

DROP TABLE IF EXISTS `gym_members`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_members` (
  `TimeStamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Name` text NOT NULL,
  `Surname` text NOT NULL,
  `Membership_No` int(11) NOT NULL,
  PRIMARY KEY (`Membership_No`),
  UNIQUE KEY `Membership_No_UNIQUE` (`Membership_No`),
  UNIQUE KEY `Membership_No` (`Membership_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_members`
--

LOCK TABLES `gym_members` WRITE;
/*!40000 ALTER TABLE `gym_members` DISABLE KEYS */;
INSERT INTO `gym_members` VALUES ('2018-02-27 11:28:22','Skipper','Hopper',10001),('2018-02-27 11:28:56','Jane','Beste',10002),('2018-02-26 10:35:35','Mrume','Tatenda',10003),('2018-02-26 10:35:35','Nicki','Minaz',10004);
/*!40000 ALTER TABLE `gym_members` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gym_trainers`
--

DROP TABLE IF EXISTS `gym_trainers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gym_trainers` (
  `Trainer_No` int(11) NOT NULL,
  `TrainerName` varchar(255) NOT NULL,
  `TrainerSurname` varchar(255) NOT NULL,
  `TrainerFee` varchar(255) NOT NULL,
  `TrainerFocusArea` varchar(255) NOT NULL,
  PRIMARY KEY (`Trainer_No`),
  UNIQUE KEY `Trainer_No` (`Trainer_No`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gym_trainers`
--

LOCK TABLES `gym_trainers` WRITE;
/*!40000 ALTER TABLE `gym_trainers` DISABLE KEYS */;
INSERT INTO `gym_trainers` VALUES (1101,'Sbu','Boso','250','Cardio'),(1102,'Charnay','Ray','500','Strength and conditioning'),(1103,'Floyd','Mayweather','700','Boxing');
/*!40000 ALTER TABLE `gym_trainers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'sydneytwigg_champs_gym'
--

--
-- Dumping routines for database 'sydneytwigg_champs_gym'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-02-27 14:32:10
