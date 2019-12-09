CREATE DATABASE  IF NOT EXISTS `techdatingdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `techdatingdb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: techdatingdb
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
-- Table structure for table `gender`
--

DROP TABLE IF EXISTS `gender`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `gender` (
  `genderID` varchar(10) NOT NULL,
  `genderName` varchar(45) NOT NULL,
  PRIMARY KEY (`genderID`),
  UNIQUE KEY `genderID_UNIQUE` (`genderID`),
  KEY `idx_gender` (`genderID`,`genderName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store the list of accepted gender inputs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gender`
--

LOCK TABLES `gender` WRITE;
/*!40000 ALTER TABLE `gender` DISABLE KEYS */;
INSERT INTO `gender` VALUES ('F','Female'),('FTM','Transgender - Female to Male'),('M','Male'),('MTF','Transgender - Male to Female'),('NB','Non-Binary');
/*!40000 ALTER TABLE `gender` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `login` (
  `memberID` int(11) NOT NULL,
  `username` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  PRIMARY KEY (`memberID`),
  UNIQUE KEY `memberID_UNIQUE` (`memberID`),
  UNIQUE KEY `username_UNIQUE` (`username`),
  KEY `idx_memberID` (`memberID`),
  KEY `idx_username` (`username`),
  KEY `idx_user` (`memberID`,`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store all login details for TechDating';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (4,'admin','admin'),(7,'Ash','Hunter2'),(8,'j76','hello'),(9,'meow','sheep');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `match`
--

DROP TABLE IF EXISTS `match`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `match` (
  `memberID_1` int(11) NOT NULL,
  `memberID_2` int(11) NOT NULL,
  PRIMARY KEY (`memberID_1`,`memberID_2`),
  KEY `member2_idx` (`memberID_2`),
  CONSTRAINT `member1` FOREIGN KEY (`memberID_1`) REFERENCES `member` (`memberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `member2` FOREIGN KEY (`memberID_2`) REFERENCES `member` (`memberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store the ID''s of two matches users';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `match`
--

LOCK TABLES `match` WRITE;
/*!40000 ALTER TABLE `match` DISABLE KEYS */;
INSERT INTO `match` VALUES (1,2),(8,2),(2,4),(8,7),(8,9);
/*!40000 ALTER TABLE `match` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `memberID` int(11) NOT NULL AUTO_INCREMENT,
  `avatar` longblob,
  `firstname` varchar(30) NOT NULL,
  `age` int(11) NOT NULL,
  `location` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `orientation` varchar(10) NOT NULL,
  `relationshipinterest` varchar(10) NOT NULL,
  PRIMARY KEY (`memberID`),
  UNIQUE KEY `memberID_UNIQUE` (`memberID`),
  KEY `gender_idx` (`gender`),
  KEY `orientation_idx` (`orientation`),
  KEY `relationshipinterest_idx` (`relationshipinterest`),
  KEY `idx_memberID` (`memberID`),
  CONSTRAINT `gender` FOREIGN KEY (`gender`) REFERENCES `gender` (`genderID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `orientation` FOREIGN KEY (`orientation`) REFERENCES `orientation` (`orientationID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `relationshipinterest` FOREIGN KEY (`relationshipinterest`) REFERENCES `relationshipinterest` (`relationshipinterestID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='Database to store all members of TechDating.';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
INSERT INTO `member` VALUES (2,NULL,'Bradley',27,'Perth, Scotland','M','S','LTR'),(4,NULL,'Administrator',100,'The Server','NB','P','P'),(7,NULL,'Ashley',24,'Cape Town','F','B','C'),(8,NULL,'Jason',30,'Cape Town, South Africa','F','B','C'),(9,NULL,'Cat',47,'Cape Town, South Africa','F','B','C');
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`root`@`localhost`*/ /*!50003 TRIGGER `check age`
BEFORE INSERT ON `techdatingdb`.`member` FOR EACH ROW
/*Trigger to check the age of a user, users must be 
over the age of 18 to register*/
BEGIN
	IF(NEW.`age` < '18') THEN
		SIGNAL SQLSTATE '45000'
		SET MESSAGE_TEXT = 'Users must be over 18.';
    END IF;
END */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `messageID` int(11) NOT NULL AUTO_INCREMENT,
  `senderID` int(11) NOT NULL,
  `receiverID` int(11) NOT NULL,
  `subject` varchar(25) NOT NULL,
  `body` varchar(400) NOT NULL,
  `timestamp` datetime NOT NULL,
  PRIMARY KEY (`messageID`),
  UNIQUE KEY `messageID_UNIQUE` (`messageID`),
  KEY `sender_idx` (`senderID`),
  KEY `receiver_idx` (`receiverID`),
  CONSTRAINT `receiver` FOREIGN KEY (`receiverID`) REFERENCES `member` (`memberID`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `sender` FOREIGN KEY (`senderID`) REFERENCES `member` (`memberID`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store messages sent between user''s';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `orientation`
--

DROP TABLE IF EXISTS `orientation`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `orientation` (
  `orientationID` varchar(10) NOT NULL,
  `orientationName` varchar(45) NOT NULL,
  PRIMARY KEY (`orientationID`),
  UNIQUE KEY `orientationID_UNIQUE` (`orientationID`),
  KEY `idx_orientation` (`orientationID`,`orientationName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store the list of accepted orientation inputs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `orientation`
--

LOCK TABLES `orientation` WRITE;
/*!40000 ALTER TABLE `orientation` DISABLE KEYS */;
INSERT INTO `orientation` VALUES ('B','Bisexual'),('G','Gay'),('L','Lesbian'),('P','Pansexual'),('S','Straight');
/*!40000 ALTER TABLE `orientation` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `relationshipinterest`
--

DROP TABLE IF EXISTS `relationshipinterest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `relationshipinterest` (
  `relationshipinterestID` varchar(10) NOT NULL,
  `interestedin_relationship` varchar(45) NOT NULL,
  PRIMARY KEY (`relationshipinterestID`),
  UNIQUE KEY `relationshipinterestID_UNIQUE` (`relationshipinterestID`),
  KEY `idx_relationship` (`relationshipinterestID`,`interestedin_relationship`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Table to store the list of accepted relationship interest inputs';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `relationshipinterest`
--

LOCK TABLES `relationshipinterest` WRITE;
/*!40000 ALTER TABLE `relationshipinterest` DISABLE KEYS */;
INSERT INTO `relationshipinterest` VALUES ('C','Casual'),('LTR','Long Term Relationship'),('M','Monogamy'),('NM','Non-Monogamy'),('P','Polyamory');
/*!40000 ALTER TABLE `relationshipinterest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'techdatingdb'
--

--
-- Dumping routines for database 'techdatingdb'
--
/*!50003 DROP PROCEDURE IF EXISTS `create_match` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `create_match`(
		/*The input parameters for this procedure are the matched 
        member IDs.*/
		IN `memberID_1` INTEGER,
        IN `memberID_2` INTEGER
)
BEGIN
	/*Two users will be automatically matched together using 
    an algorithm in the Java code. This procedure is then called 
    using their ID's as parameters to place those users into the 
    match table.*/
    INSERT INTO `techdatingdb`.`match`(`memberID_1`, `memberID_2`)
    VALUES (`memberID_1`, `memberID_2`);
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `get_profile` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'STRICT_TRANS_TABLES,NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`root`@`localhost` PROCEDURE `get_profile`(
		/*The input parameter for this procedure is the 
        logged in member IDs.*/
		IN `memberID` INTEGER
)
BEGIN
	/*When the member logs in, their profile details 
    will be fetched from the database in the member 
    table - this makes use of inner joins to fetch the name
    of the gender, orientation and relationship interest from 
    their ID's.*/
    SELECT member.firstname, member.age, member.location, gender.genderName, 
    orientation.orientationName, relationshipinterest.interestedin_relationship
	FROM (((member
	INNER JOIN gender ON member.gender=gender.genderID)
	INNER JOIN orientation on member.orientation=orientation.orientationID)
	INNER JOIN relationshipInterest on 
    member.relationshipinterest=relationshipinterest.relationshipinterestID) WHERE member.memberID = memberID;
END ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-05-18 22:50:13
