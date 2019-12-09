CREATE DATABASE  IF NOT EXISTS `newrelateddb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `newrelateddb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: newrelateddb
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
-- Table structure for table `graph0`
--

DROP TABLE IF EXISTS `graph0`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph0` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph0`
--

LOCK TABLES `graph0` WRITE;
/*!40000 ALTER TABLE `graph0` DISABLE KEYS */;
INSERT INTO `graph0` VALUES (1,'AR1','OFID1111','2017/03/15','Athlone','2:21','Carjacking','Closed'),(177,'CPA1','OFID1112','2014/01/02','Lansdowne','18:00','Illegal Firearms','Open'),(2,'AR1','OFID1112','2017/03/16','Athlone','3:21','Carjacking','Closed'),(8,'AR1','OFID1111','2016/08/23','Athlone','2:00','Carjacking','Open'),(7,'AR1','OFID1112','2017/03/21','Athlone','2:00','Carjacking','Open'),(169,'CPA1','OFID1112','2014/01/05','Wynberg','18:00','Illegal Firearms','Open'),(181,'CPA1','OFID1112','2014/01/02','Lansdowne','18:00','Illegal Firearms','Open'),(164,'CPA1','OFID1111','2013/12/31','Wynberg','18:00','Illegal Firearms','Open'),(81,'CC1','OFID1112','2016/01/10','Kirstenhof','18:00','Murder','Open'),(149,'OS1','OFID1112','2013/12/16','Wynberg','18:00','Theft','Open'),(248,'PR5','OFID1111','2017/02/10','Dieprivier','14:10','Stock-theft','Closed'),(166,'CPA1','OFID1113','2014/01/02','Wynberg','18:00','Illegal Firearms','Open'),(165,'CPA1','OFID1112','2014/01/01','Wynberg','18:00','Illegal Firearms','Open'),(203,'AR3','OFID1111','2012/01/02','Wynberg','23:00','Robbery at non-residential premises','Open'),(168,'CPA1','OFID1111','2014/01/04','Wynberg','18:00','Illegal Firearms','Closed'),(206,'AR3','OFID1114','2017/06/25','Wynberg','23:00','Robbery at non-residential premises','Open'),(63,'CC1','OFID1113','2015/12/23','Kirstenhof','18:00','Murder','Open'),(197,'AR3','OFID1113','2011/12/27','Steenberg','23:00','Robbery at non-residential premises','Open'),(69,'CC1','OFID1112','2015/12/29','Kirstenhof','18:00','Murder','Open'),(75,'CC1','OFID1114','2016/01/04','Kirstenhof','18:00','Murder','Open'),(84,'CC1','OFID1111','2016/01/13','Kirstenhof','18:00','Murder','Open'),(66,'CC1','OFID1112','2015/12/26','Kirstenhof','18:00','Murder','Open'),(188,'AR3','OFID1114','2011/12/08','Muizenberg','15:00','Robbery at non-residential premises','Open'),(72,'CC1','OFID1111','2016/01/01','Kirstenhof','18:00','Murder','Open'),(78,'CC1','OFID1113','2016/01/07','Kirstenhof','18:00','Murder','Open'),(87,'CC1','OFID1114','2016/01/16','Kirstenhof','18:00','Murder','Open'),(124,'OC5','OFID1112','2013/11/11','Camps Bay','18:00','Kidnapping','Open'),(141,'OC2','OFID1114','2013/11/28','Cape Town Central','18:00','Public violence','Open'),(208,'AR3','OFID1112','2017/06/27','Woodstock','23:00','Robbery at non-residential premises','Open'),(129,'OC5','OFID1113','2013/11/16','Camps Bay','18:00','Kidnapping','Open'),(142,'OC2','OFID1111','2013/11/29','Cape Town Central','18:00','Public violence','Open'),(131,'OC5','OFID1111','2013/11/18','Camps Bay','18:00','Kidnapping','Open'),(126,'OC5','OFID1114','2013/11/13','Camps Bay','18:00','Kidnapping','Open'),(138,'OC2','OFID1111','2013/11/25','Cape Town Central','18:00','Public violence','Open'),(135,'OC2','OFID1112','2013/11/22','Cape Town Central','18:00','Public violence','Open'),(128,'OC5','OFID1112','2013/11/15','Camps Bay','18:00','Kidnapping','Open'),(132,'OC2','OFID1112','2013/11/19','Cape Town Central','18:00','Public violence','Open'),(130,'OC5','OFID1114','2013/11/17','Camps Bay','18:00','Kidnapping','Open'),(134,'OC2','OFID1111','2013/11/21','Cape Town Central','18:00','Public violence','Open'),(202,'AR3','OFID1114','2012/01/01','Woodstock','23:00','Robbery at non-residential premises','Open'),(187,'CPA1','OFID1113','2011/12/07','Mowbray','14:00','Illegal Firearms','Open'),(244,'CC5','OFID1113','2017/05/15','Maitland','21:00','Kidnapping','Open'),(160,'OS1','OFID1111','2013/12/27','Woodstock','18:00','Theft','Open'),(143,'OS1','OFID1114','2013/12/10','Claremont','18:00','Theft','Open'),(163,'CPA1','OFID1114','2013/12/30','Wynberg','18:00','Illegal Firearms','Open'),(161,'OS1','OFID1112','2013/12/28','Wynberg','18:00','Theft','Open'),(162,'OS1','OFID1113','2013/12/29','Wynberg','18:00','Theft','Open'),(173,'CPA1','OFID1112','2014/01/02','Lansdowne','18:00','Illegal Firearms','Open'),(167,'CPA1','OFID1114','2014/01/03','Wynberg','18:00','Illegal Firearms','Open'),(3,'AR1','OFID1112','2017/03/17','Athlone','4:21','Carjacking','Open'),(176,'CPA1','OFID1111','2014/01/02','Langa','18:00','Illegal Firearms','Open'),(6,'AR1','OFID1112','2017/03/20','Athlone','7:21','Carjacking','Open'),(23,'CC1','OFID1113','2016/09/02','Goodwood','22:00','Murder','Open'),(28,'CC1','OFID1114','2017/08/20','Goodwood','3:00','Murder','Open'),(238,'CC5','OFID1111','2017/05/09','Parow','15:00','Kidnapping','Open'),(155,'OS1','OFID1114','2013/12/22','Wynberg','18:00','Theft','Open'),(242,'CC5','OFID1111','2017/05/13','Maitland','19:00','Kidnapping','Open'),(251,'CC1','OFID1111','11/05/2017','Wynberg','03:03','Murder','Closed'),(170,'CPA1','OFID1113','2014/01/02','Wynberg','18:00','Illegal Firearms','Closed'),(209,'AR3','OFID1113','2017/06/28','Wynberg','23:00','Robbery at non-residential premises','Open'),(127,'OC5','OFID1111','2013/11/14','Camps Bay','18:00','Kidnapping','Open'),(133,'OC2','OFID1113','2013/11/20','Cape Town Central','18:00','Public violence','Open'),(140,'OC2','OFID1113','2013/11/27','Cape Town Central','18:00','Public violence','Open'),(137,'OC2','OFID1114','2013/11/24','Cape Town Central','18:00','Public violence','Open'),(154,'OS1','OFID1113','2013/12/21','Woodstock','18:00','Theft','Open'),(194,'AR3','OFID1114','2011/12/24','Sea Point','23:00','Robbery at non-residential premises','Open'),(205,'AR3','OFID1113','2017/06/24','Woodstock','23:00','Robbery at non-residential premises','Open'),(12,'AR5','OFID1111','2016/08/27','Bellville South','2:00','Bank robbery','Open'),(225,'CC2','OFID1113','2017/07/14','Parow','1:00','Sexual offences','Closed'),(16,'CC1','OFID1111','2016/08/31','Bellville South','2:00','Murder','Open'),(235,'CC5','OFID1111','2017/05/06','Parow','11:00','Kidnapping','Closed'),(18,'CC1','OFID1112','2016/08/29','Delft','2:00','Murder','Open'),(13,'AR6','OFID1111','2016/08/28','Bellville','2:00','Robbery of cash in transit','Open'),(223,'CC2','OFID1111','2017/07/12','Parow','23:00','Sexual offences','Closed'),(229,'CC5','OFID1113','2017/04/30','Parow','5:00','Kidnapping','Closed'),(230,'CC5','OFID1114','2017/05/01','Parow','6:00','Kidnapping','Open'),(239,'CC5','OFID1112','2017/05/10','Parow','16:00','Kidnapping','Open'),(27,'CC1','OFID1113','2016/09/06','Goodwood','2:00','Murder','Open'),(32,'CC1','OFID1114','2017/08/24','Goodwood','7:00','Murder','Open'),(226,'CC2','OFID1114','2017/07/15','Parow','2:00','Sexual offences','Open'),(34,'CC1','OFID1112','2017/08/26','Goodwood','18:00','Murder','Open'),(231,'CC5','OFID1111','2017/05/02','Parow','7:00','Kidnapping','Closed'),(227,'CC5','OFID1111','2017/07/16','Parow','3:00','Kidnapping','Closed'),(90,'CC1','OFID1113','2016/01/19','Belhar','18:00','Murder','Open'),(112,'CR2','OFID1112','2016/02/11','Bishop Lavis','18:00','Malicious damage to property','Open'),(193,'AR3','OFID1113','2011/12/23','Ravensmead','23:00','Robbery at non-residential premises','Open'),(237,'CC5','OFID1113','2017/05/08','Parow','14:00','Kidnapping','Open'),(118,'OC5','OFID1114','2016/02/17','Bishop Lavis','18:00','Kidnapping','Open');
/*!40000 ALTER TABLE `graph0` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph1`
--

DROP TABLE IF EXISTS `graph1`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph1` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph1`
--

LOCK TABLES `graph1` WRITE;
/*!40000 ALTER TABLE `graph1` DISABLE KEYS */;
INSERT INTO `graph1` VALUES (4,'AR1','OFID1111','2017/03/18','Athlone','5:21','Carjacking','Closed'),(25,'CC1','OFID1111','2016/09/04','Goodwood','0:00','Murder','Open'),(233,'CC5','OFID1113','2017/05/04','Parow','9:00','Kidnapping','Closed'),(250,'PR5','OFID1112','2016/10/10','Elsies River','12:00','Stock-theft','Closed'),(26,'CC1','OFID1112','2016/09/05','Goodwood','1:00','Murder','Open'),(180,'CPA1','OFID1111','2014/01/02','Langa','18:00','Illegal Firearms','Open'),(243,'CC5','OFID1112','2017/05/14','Maitland','20:00','Kidnapping','Open'),(5,'AR1','OFID1111','2017/03/19','Athlone','6:21','Carjacking','Open'),(172,'CPA1','OFID1111','2014/01/02','Langa','18:00','Illegal Firearms','Closed'),(139,'OC2','OFID1112','2013/11/26','Cape Town Central','18:00','Public violence','Open'),(148,'OS1','OFID1111','2013/12/15','Woodstock','18:00','Theft','Open'),(241,'CC5','OFID1114','2017/05/12','Maitland','18:00','Kidnapping','Open'),(125,'OC5','OFID1113','2013/11/12','Camps Bay','18:00','Kidnapping','Open'),(136,'OC2','OFID1113','2013/11/23','Cape Town Central','18:00','Public violence','Open'),(15,'CC1','OFID1112','2016/08/30','Bellville','2:00','Murder','Open'),(192,'AR3','OFID1112','2011/12/22','Ravensmead','23:00','Robbery at non-residential premises','Open'),(503,'CC2','OFID1111','11/03/2017','Belhar','13:59','Sexual offences','Closed'),(17,'CC1','OFID1111','2016/09/01','Delft','2:00','Murder','Open'),(94,'CC3','OFID1114','2016/01/24','Belhar','18:00','Attempted Murder','Open'),(179,'CPA1','OFID1114','2014/01/02','Kuils Rivier','18:00','Illegal Firearms','Open'),(30,'CC1','OFID1112','2017/08/22','Goodwood','5:00','Murder','Open'),(109,'CR2','OFID1113','2016/02/08','Bishop Lavis','18:00','Malicious damage to property','Open'),(115,'OC3','OFID1111','2016/02/14','Bishop Lavis','18:00','Crimen injuria','Open'),(31,'CC1','OFID1113','2017/08/23','Goodwood','6:00','Murder','Open'),(33,'CC1','OFID1111','2017/08/25','Goodwood','18:00','Murder','Open'),(103,'CR1','OFID1111','2016/02/02','Bishop Lavis','18:00','Arson','Open'),(9,'AR2','OFID1111','2016/08/24','Bellville','2:00','Truck Hijacking','Open'),(14,'CC1','OFID1112','2016/08/29','Bellville South','2:00','Murder','Open'),(191,'AR3','OFID1111','2011/12/21','Ravensmead','23:00','Robbery at non-residential premises','Open'),(29,'CC1','OFID1111','2017/08/21','Goodwood','4:00','Murder','Open'),(224,'CC2','OFID1112','2017/07/13','Parow','0:00','Sexual offences','Open'),(91,'CC1','OFID1111','2016/01/21','Belhar','18:00','Murder','Open'),(24,'CC1','OFID1114','2016/09/03','Goodwood','23:00','Murder','Open'),(22,'CC1','OFID1112','2016/09/01','Goodwood','21:00','Murder','Open'),(97,'CC6','OFID1113','2016/01/27','Bishop Lavis','18:00','Common robbery','Open'),(93,'CC2','OFID1113','2016/01/23','Belhar','18:00','Sexual offences','Open'),(106,'CR1','OFID1114','2016/02/05','Bishop Lavis','18:00','Arson','Open'),(222,'CC2','OFID1114','2017/07/11','Parow','22:00','Sexual offences','Open'),(240,'CC5','OFID1113','2017/05/11','Parow','17:00','Kidnapping','Open'),(234,'CC5','OFID1114','2017/05/05','Parow','10:00','Kidnapping','Open'),(10,'AR3','OFID1112','2016/08/25','Bellville South','2:00','Robbery at residential premises','Open'),(11,'AR4','OFID1112','2016/08/26','Bellville','2:00','Robbery at non-residential premises','Open'),(232,'CC5','OFID1112','2017/05/03','Parow','8:00','Kidnapping','Open'),(228,'CC5','OFID1112','2017/07/17','Parow','4:00','Kidnapping','Open'),(95,'CC4','OFID1111','2016/01/25','Belhar','18:00','Assault','Open'),(100,'CPA2','OFID1112','2016/01/30','Bishop Lavis','18:00','Drug related','Open'),(247,'PR1','OFID1112','2017/03/03','Belhar','14:10','Burglary at non-residential premises','Open'),(190,'AR3','OFID1114','2011/12/20','Ravensmead','3:00','Robbery at non-residential premises','Open'),(236,'CC5','OFID1112','2017/05/07','Parow','12:00','Kidnapping','Open'),(19,'CC1','OFID1112','2016/08/29','Delft','18:00','Murder','Open'),(175,'CPA1','OFID1114','2014/01/02','Kuils Rivier','18:00','Illegal Firearms','Open'),(20,'CC1','OFID1111','2016/08/30','Delft','19:00','Murder','Open'),(96,'CC5','OFID1112','2016/01/26','Belhar','18:00','Common assault','Open'),(21,'CC1','OFID1111','2016/08/31','Delft','20:00','Murder','Open'),(171,'CPA1','OFID1114','2014/01/02','Kuils Rivier','18:00','Illegal Firearms','Open'),(92,'CC1','OFID1112','2016/01/22','Belhar','18:00','Murder','Open'),(121,'OC5','OFID1113','2016/02/20','Bishop Lavis','18:00','Kidnapping','Open');
/*!40000 ALTER TABLE `graph1` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph10`
--

DROP TABLE IF EXISTS `graph10`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph10` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph10`
--

LOCK TABLES `graph10` WRITE;
/*!40000 ALTER TABLE `graph10` DISABLE KEYS */;
INSERT INTO `graph10` VALUES (82,'CC1','OFID1113','2016/01/11','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph10` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph11`
--

DROP TABLE IF EXISTS `graph11`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph11` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph11`
--

LOCK TABLES `graph11` WRITE;
/*!40000 ALTER TABLE `graph11` DISABLE KEYS */;
INSERT INTO `graph11` VALUES (85,'CC1','OFID1112','2016/01/14','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph11` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph12`
--

DROP TABLE IF EXISTS `graph12`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph12` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph12`
--

LOCK TABLES `graph12` WRITE;
/*!40000 ALTER TABLE `graph12` DISABLE KEYS */;
INSERT INTO `graph12` VALUES (88,'CC1','OFID1111','2016/01/17','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph12` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph13`
--

DROP TABLE IF EXISTS `graph13`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph13` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph13`
--

LOCK TABLES `graph13` WRITE;
/*!40000 ALTER TABLE `graph13` DISABLE KEYS */;
INSERT INTO `graph13` VALUES (98,'CC7','OFID1114','2016/01/28','Bothasig','18:00','Robbery','Open'),(504,'CC6','OFID1111','11/05/2017','Bothasig','12:03','Common robbery','Open'),(104,'CR1','OFID1112','2016/02/03','Bothasig','18:00','Arson','Open'),(107,'CR1','OFID1111','2016/02/06','Bothasig','18:00','Arson','Open'),(113,'OC1','OFID1113','2016/02/12','Bothasig','18:00','Malicious damage to property','Open'),(122,'OC5','OFID1114','2016/02/21','Bothasig','18:00','Kidnapping','Open'),(101,'CPA3','OFID1113','2016/01/31','Bothasig','18:00','Driving Alcohol','Open'),(185,'CPA1','OFID1111','2011/12/05','Milnerton','12:00','Illegal Firearms','Open'),(116,'OC4','OFID1112','2016/02/15','Bothasig','18:00','Child Neglect','Open'),(110,'CR2','OFID1114','2016/02/09','Bothasig','18:00','Malicious damage to property','Open'),(119,'OC5','OFID1111','2016/02/18','Bothasig','18:00','Kidnapping','Open');
/*!40000 ALTER TABLE `graph13` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph14`
--

DROP TABLE IF EXISTS `graph14`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph14` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph14`
--

LOCK TABLES `graph14` WRITE;
/*!40000 ALTER TABLE `graph14` DISABLE KEYS */;
INSERT INTO `graph14` VALUES (144,'OS1','OFID1111','2013/12/11','Stellenbosch','18:00','Theft','Open'),(210,'CC2','OFID1114','2017/06/29','Stellenbosch','23:00','Sexual offences','Closed'),(219,'CC2','OFID1111','2017/07/08','Stellenbosch','19:00','Sexual offences','Closed'),(215,'CC2','OFID1111','2017/07/04','Stellenbosch','15:00','Sexual offences','Closed'),(221,'CC2','OFID1113','2017/07/10','Stellenbosch','21:00','Sexual offences','Closed'),(213,'CC2','OFID1113','2017/07/02','Stellenbosch','13:00','Sexual offences','Closed'),(218,'CC2','OFID1114','2017/07/07','Stellenbosch','18:00','Sexual offences','Closed'),(214,'CC2','OFID1114','2017/07/03','Stellenbosch','14:00','Sexual offences','Closed'),(216,'CC2','OFID1112','2017/07/05','Stellenbosch','16:00','Sexual offences','Closed'),(150,'OS1','OFID1113','2013/12/17','Stellenbosch','18:00','Theft','Open'),(212,'CC2','OFID1112','2017/07/01','Stellenbosch','23:00','Sexual offences','Closed'),(220,'CC2','OFID1112','2017/07/09','Stellenbosch','20:00','Sexual offences','Closed'),(156,'OS1','OFID1111','2013/12/23','Stellenbosch','18:00','Theft','Open'),(211,'CC2','OFID1111','2017/06/30','Stellenbosch','23:00','Sexual offences','Closed'),(198,'AR3','OFID1114','2011/12/28','Stellenbosch','23:00','Robbery at non-residential premises','Open'),(217,'CC2','OFID1113','2017/07/06','Stellenbosch','17:00','Sexual offences','Closed');
/*!40000 ALTER TABLE `graph14` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph15`
--

DROP TABLE IF EXISTS `graph15`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph15` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph15`
--

LOCK TABLES `graph15` WRITE;
/*!40000 ALTER TABLE `graph15` DISABLE KEYS */;
INSERT INTO `graph15` VALUES (145,'OS1','OFID1112','2013/12/12','Strand','18:00','Theft','Open'),(199,'AR3','OFID1111','2011/12/29','Strand','23:00','Robbery at non-residential premises','Open'),(151,'OS1','OFID1114','2013/12/18','Strand','18:00','Theft','Open'),(157,'OS1','OFID1112','2013/12/24','Strand','18:00','Theft','Open'),(196,'AR3','OFID1112','2011/12/26','Somerset West','23:00','Robbery at non-residential premises','Open');
/*!40000 ALTER TABLE `graph15` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph16`
--

DROP TABLE IF EXISTS `graph16`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph16` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph16`
--

LOCK TABLES `graph16` WRITE;
/*!40000 ALTER TABLE `graph16` DISABLE KEYS */;
INSERT INTO `graph16` VALUES (147,'OS1','OFID1114','2013/12/14','Table View','18:00','Theft','Open'),(204,'AR3','OFID1112','2012/01/03','Table View','23:00','Robbery at non-residential premises','Open'),(153,'OS1','OFID1112','2013/12/20','Table View','18:00','Theft','Open'),(201,'AR3','OFID1113','2011/12/31','Table View','23:00','Robbery at non-residential premises','Open'),(159,'OS1','OFID1114','2013/12/26','Table View','18:00','Theft','Open'),(207,'AR3','OFID1111','2017/06/26','Table View','23:00','Robbery at non-residential premises','Open');
/*!40000 ALTER TABLE `graph16` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph17`
--

DROP TABLE IF EXISTS `graph17`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph17` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph17`
--

LOCK TABLES `graph17` WRITE;
/*!40000 ALTER TABLE `graph17` DISABLE KEYS */;
INSERT INTO `graph17` VALUES (189,'AR3','OFID1111','2011/12/09','Nyanga','16:00','Robbery at non-residential premises','Open');
/*!40000 ALTER TABLE `graph17` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph18`
--

DROP TABLE IF EXISTS `graph18`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph18` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph18`
--

LOCK TABLES `graph18` WRITE;
/*!40000 ALTER TABLE `graph18` DISABLE KEYS */;
INSERT INTO `graph18` VALUES (195,'AR3','OFID1111','2011/12/25','Simons Town','23:00','Robbery at non-residential premises','Open');
/*!40000 ALTER TABLE `graph18` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph19`
--

DROP TABLE IF EXISTS `graph19`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph19` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph19`
--

LOCK TABLES `graph19` WRITE;
/*!40000 ALTER TABLE `graph19` DISABLE KEYS */;
INSERT INTO `graph19` VALUES (245,'CC2','OFID1113','2013/05/19','Macassar','14:00','Sexual offences','Open');
/*!40000 ALTER TABLE `graph19` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph2`
--

DROP TABLE IF EXISTS `graph2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph2` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph2`
--

LOCK TABLES `graph2` WRITE;
/*!40000 ALTER TABLE `graph2` DISABLE KEYS */;
INSERT INTO `graph2` VALUES (35,'CC1','OFID1113','2017/08/27','Mitchells Plain','18:00','Murder','Open'),(182,'CPA1','OFID1113','2014/01/02','Lingelethu-West','23:00','Illegal Firearms','Open'),(38,'CC1','OFID1112','2017/08/30','Mitchells Plain','18:00','Murder','Open'),(47,'CC1','OFID1113','2012/10/15','Mitchells Plain','18:00','Murder','Open'),(60,'CC1','OFID1114','2015/12/20','Mitchells Plain','18:00','Murder','Open'),(46,'CC1','OFID1112','2012/10/14','Mitchells Plain','18:00','Murder','Open'),(57,'CC1','OFID1111','2015/12/17','Mitchells Plain','18:00','Murder','Open'),(146,'OS1','OFID1113','2013/12/13','Strandfontein','18:00','Theft','Open'),(58,'CC1','OFID1112','2015/12/18','Mitchells Plain','18:00','Murder','Open'),(36,'CC1','OFID1114','2017/08/28','Mitchells Plain','18:00','Murder','Open'),(158,'OS1','OFID1113','2013/12/25','Strandfontein','18:00','Theft','Open'),(53,'CC1','OFID1111','2012/10/21','Mitchells Plain','18:00','Murder','Open'),(48,'CC1','OFID1114','2012/10/16','Mitchells Plain','18:00','Murder','Open'),(54,'CC1','OFID1112','2012/10/22','Mitchells Plain','18:00','Murder','Open'),(37,'CC1','OFID1111','2017/08/29','Mitchells Plain','18:00','Murder','Open'),(152,'OS1','OFID1111','2013/12/19','Strandfontein','18:00','Theft','Open'),(40,'CC1','OFID1114','2017/09/01','Mitchells Plain','18:00','Murder','Open'),(49,'CC1','OFID1111','2012/10/17','Mitchells Plain','18:00','Murder','Open'),(39,'CC1','OFID1113','2017/08/31','Mitchells Plain','18:00','Murder','Open'),(43,'CC1','OFID1113','2012/10/11','Mitchells Plain','18:00','Murder','Open'),(183,'CPA1','OFID1114','2014/01/02','Lingelethu-West','0:00','Illegal Firearms','Open'),(51,'CC1','OFID1113','2012/10/19','Mitchells Plain','18:00','Murder','Open'),(41,'CC1','OFID1111','2012/10/09','Mitchells Plain','18:00','Murder','Open'),(186,'CPA1','OFID1112','2011/12/06','Mitchells Plain','13:00','Illegal Firearms','Open'),(61,'CC1','OFID1111','2015/12/21','Mitchells Plain','18:00','Murder','Open'),(50,'CC1','OFID1112','2012/10/18','Mitchells Plain','18:00','Murder','Open'),(42,'CC1','OFID1112','2012/10/10','Mitchells Plain','18:00','Murder','Open'),(59,'CC1','OFID1113','2015/12/19','Mitchells Plain','18:00','Murder','Open'),(62,'CC1','OFID1112','2015/12/22','Mitchells Plain','18:00','Murder','Open'),(200,'AR3','OFID1112','2011/12/30','Strandfontein','23:00','Robbery at non-residential premises','Open'),(44,'CC1','OFID1114','2012/10/12','Mitchells Plain','18:00','Murder','Open'),(184,'CPA1','OFID1111','2014/01/02','Lingelethu-West','1:00','Illegal Firearms','Open'),(178,'CPA1','OFID1113','2014/01/02','Lingelethu-West','18:00','Illegal Firearms','Open'),(52,'CC1','OFID1114','2012/10/20','Mitchells Plain','18:00','Murder','Open'),(45,'CC1','OFID1111','2012/10/13','Mitchells Plain','18:00','Murder','Open'),(56,'CC1','OFID1114','2015/12/16','Mitchells Plain','18:00','Murder','Open'),(174,'CPA1','OFID1113','2014/01/02','Lingelethu-West','18:00','Illegal Firearms','Open'),(55,'CC1','OFID1113','2015/12/15','Mitchells Plain','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph20`
--

DROP TABLE IF EXISTS `graph20`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph20` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph20`
--

LOCK TABLES `graph20` WRITE;
/*!40000 ALTER TABLE `graph20` DISABLE KEYS */;
INSERT INTO `graph20` VALUES (246,'CC2','OFID1114','2013/05/20','Macassar','15:00','Sexual offences','Open');
/*!40000 ALTER TABLE `graph20` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph21`
--

DROP TABLE IF EXISTS `graph21`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph21` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph21`
--

LOCK TABLES `graph21` WRITE;
/*!40000 ALTER TABLE `graph21` DISABLE KEYS */;
INSERT INTO `graph21` VALUES (249,'PR5','OFID1112','2016/11/11','Durbanville','13:00','Stock-theft','Open');
/*!40000 ALTER TABLE `graph21` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph3`
--

DROP TABLE IF EXISTS `graph3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph3` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph3`
--

LOCK TABLES `graph3` WRITE;
/*!40000 ALTER TABLE `graph3` DISABLE KEYS */;
INSERT INTO `graph3` VALUES (64,'CC1','OFID1114','2015/12/24','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph4`
--

DROP TABLE IF EXISTS `graph4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph4` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph4`
--

LOCK TABLES `graph4` WRITE;
/*!40000 ALTER TABLE `graph4` DISABLE KEYS */;
INSERT INTO `graph4` VALUES (65,'CC1','OFID1111','2015/12/25','Kraaifontein','18:00','Murder','Open'),(120,'OC5','OFID1112','2016/02/19','Brackenfell','18:00','Kidnapping','Open'),(74,'CC1','OFID1113','2016/01/03','Kraaifontein','18:00','Murder','Open'),(111,'CR2','OFID1111','2016/02/10','Brackenfell','18:00','Malicious damage to property','Open'),(502,'OC2','OFID1111','11/04/2017','Brackenfell','02:04','Public violence','Open'),(83,'CC1','OFID1114','2016/01/12','Kraaifontein','18:00','Murder','Open'),(89,'CC1','OFID1112','2016/01/18','Kraaifontein','18:00','Murder','Open'),(123,'OC5','OFID1111','2013/11/10','Brackenfell','18:00','Kidnapping','Open'),(68,'CC1','OFID1111','2015/12/28','Kraaifontein','18:00','Murder','Open'),(117,'OC5','OFID1113','2016/02/16','Brackenfell','18:00','Kidnapping','Open'),(77,'CC1','OFID1112','2016/01/06','Kraaifontein','18:00','Murder','Open'),(71,'CC1','OFID1114','2015/12/31','Kraaifontein','18:00','Murder','Open'),(99,'CPA1','OFID1111','2016/01/29','Brackenfell','18:00','Illegal Firearms','Open'),(108,'CR1','OFID1112','2016/02/07','Brackenfell','18:00','Arson','Open'),(80,'CC1','OFID1111','2016/01/09','Kraaifontein','18:00','Murder','Open'),(105,'CR1','OFID1113','2016/02/04','Brackenfell','18:00','Arson','Open'),(86,'CC1','OFID1113','2016/01/15','Kraaifontein','18:00','Murder','Open'),(114,'OC2','OFID1114','2016/02/13','Brackenfell','18:00','Public violence','Open'),(102,'CPA4','OFID1114','2016/02/01','Brackenfell','18:00','Sexual Offences','Open');
/*!40000 ALTER TABLE `graph4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph5`
--

DROP TABLE IF EXISTS `graph5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph5` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph5`
--

LOCK TABLES `graph5` WRITE;
/*!40000 ALTER TABLE `graph5` DISABLE KEYS */;
INSERT INTO `graph5` VALUES (67,'CC1','OFID1113','2015/12/27','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph6`
--

DROP TABLE IF EXISTS `graph6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph6` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph6`
--

LOCK TABLES `graph6` WRITE;
/*!40000 ALTER TABLE `graph6` DISABLE KEYS */;
INSERT INTO `graph6` VALUES (70,'CC1','OFID1113','2015/12/30','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph7`
--

DROP TABLE IF EXISTS `graph7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph7` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph7`
--

LOCK TABLES `graph7` WRITE;
/*!40000 ALTER TABLE `graph7` DISABLE KEYS */;
INSERT INTO `graph7` VALUES (73,'CC1','OFID1112','2016/01/02','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph8`
--

DROP TABLE IF EXISTS `graph8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph8` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph8`
--

LOCK TABLES `graph8` WRITE;
/*!40000 ALTER TABLE `graph8` DISABLE KEYS */;
INSERT INTO `graph8` VALUES (76,'CC1','OFID1111','2016/01/05','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `graph9`
--

DROP TABLE IF EXISTS `graph9`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `graph9` (
  `reportID` int(10) DEFAULT NULL,
  `crimeID` varchar(10) DEFAULT NULL,
  `userID` varchar(10) DEFAULT NULL,
  `date` varchar(20) DEFAULT NULL,
  `location` varchar(30) DEFAULT NULL,
  `time` varchar(10) DEFAULT NULL,
  `crimeType` varchar(100) DEFAULT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `graph9`
--

LOCK TABLES `graph9` WRITE;
/*!40000 ALTER TABLE `graph9` DISABLE KEYS */;
INSERT INTO `graph9` VALUES (79,'CC1','OFID1114','2016/01/08','Kleinvlei','18:00','Murder','Open');
/*!40000 ALTER TABLE `graph9` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'newrelateddb'
--

--
-- Dumping routines for database 'newrelateddb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-06 16:12:35
CREATE DATABASE  IF NOT EXISTS `capewatchdb` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `capewatchdb`;
-- MySQL dump 10.13  Distrib 5.7.9, for Win64 (x86_64)
--
-- Host: localhost    Database: capewatchdb
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
-- Table structure for table `crime_case`
--

DROP TABLE IF EXISTS `crime_case`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_case` (
  `crimeID` varchar(10) NOT NULL,
  `userID` varchar(10) NOT NULL,
  `date` varchar(20) NOT NULL,
  `location` varchar(30) NOT NULL,
  `time` varchar(10) NOT NULL,
  `crimeType` varchar(100) NOT NULL,
  `status` varchar(10) NOT NULL,
  `reportID` int(11) NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`reportID`)
) ENGINE=InnoDB AUTO_INCREMENT=507 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_case`
--

LOCK TABLES `crime_case` WRITE;
/*!40000 ALTER TABLE `crime_case` DISABLE KEYS */;
INSERT INTO `crime_case` VALUES ('AR1','OFID1111','2017/03/15','Athlone','2:21','Carjacking','Closed',1),('AR1','OFID1112','2017/03/16','Athlone','3:21','Carjacking','Closed',2),('AR1','OFID1112','2017/03/17','Athlone','4:21','Carjacking','Open',3),('AR1','OFID1111','2017/03/18','Athlone','5:21','Carjacking','Closed',4),('AR1','OFID1111','2017/03/19','Athlone','6:21','Carjacking','Open',5),('AR1','OFID1112','2017/03/20','Athlone','7:21','Carjacking','Open',6),('AR1','OFID1112','2017/03/21','Athlone','2:00','Carjacking','Open',7),('AR1','OFID1111','2016/08/23','Athlone','2:00','Carjacking','Open',8),('AR2','OFID1111','2016/08/24','Bellville','2:00','Truck Hijacking','Open',9),('AR3','OFID1112','2016/08/25','Bellville South','2:00','Robbery at residential premises','Open',10),('AR4','OFID1112','2016/08/26','Bellville','2:00','Robbery at non-residential premises','Open',11),('AR5','OFID1111','2016/08/27','Bellville South','2:00','Bank robbery','Open',12),('AR6','OFID1111','2016/08/28','Bellville','2:00','Robbery of cash in transit','Open',13),('CC1','OFID1112','2016/08/29','Bellville South','2:00','Murder','Open',14),('CC1','OFID1112','2016/08/30','Bellville','2:00','Murder','Open',15),('CC1','OFID1111','2016/08/31','Bellville South','2:00','Murder','Open',16),('CC1','OFID1111','2016/09/01','Delft','2:00','Murder','Open',17),('CC1','OFID1112','2016/08/29','Delft','2:00','Murder','Open',18),('CC1','OFID1112','2016/08/29','Delft','18:00','Murder','Open',19),('CC1','OFID1111','2016/08/30','Delft','19:00','Murder','Open',20),('CC1','OFID1111','2016/08/31','Delft','20:00','Murder','Open',21),('CC1','OFID1112','2016/09/01','Goodwood','21:00','Murder','Open',22),('CC1','OFID1113','2016/09/02','Goodwood','22:00','Murder','Open',23),('CC1','OFID1114','2016/09/03','Goodwood','23:00','Murder','Open',24),('CC1','OFID1111','2016/09/04','Goodwood','0:00','Murder','Open',25),('CC1','OFID1112','2016/09/05','Goodwood','1:00','Murder','Open',26),('CC1','OFID1113','2016/09/06','Goodwood','2:00','Murder','Open',27),('CC1','OFID1114','2017/08/20','Goodwood','3:00','Murder','Open',28),('CC1','OFID1111','2017/08/21','Goodwood','4:00','Murder','Open',29),('CC1','OFID1112','2017/08/22','Goodwood','5:00','Murder','Open',30),('CC1','OFID1113','2017/08/23','Goodwood','6:00','Murder','Open',31),('CC1','OFID1114','2017/08/24','Goodwood','7:00','Murder','Open',32),('CC1','OFID1111','2017/08/25','Goodwood','18:00','Murder','Open',33),('CC1','OFID1112','2017/08/26','Goodwood','18:00','Murder','Open',34),('CC1','OFID1113','2017/08/27','Mitchells Plain','18:00','Murder','Open',35),('CC1','OFID1114','2017/08/28','Mitchells Plain','18:00','Murder','Open',36),('CC1','OFID1111','2017/08/29','Mitchells Plain','18:00','Murder','Open',37),('CC1','OFID1112','2017/08/30','Mitchells Plain','18:00','Murder','Open',38),('CC1','OFID1113','2017/08/31','Mitchells Plain','18:00','Murder','Open',39),('CC1','OFID1114','2017/09/01','Mitchells Plain','18:00','Murder','Open',40),('CC1','OFID1111','2012/10/09','Mitchells Plain','18:00','Murder','Open',41),('CC1','OFID1112','2012/10/10','Mitchells Plain','18:00','Murder','Open',42),('CC1','OFID1113','2012/10/11','Mitchells Plain','18:00','Murder','Open',43),('CC1','OFID1114','2012/10/12','Mitchells Plain','18:00','Murder','Open',44),('CC1','OFID1111','2012/10/13','Mitchells Plain','18:00','Murder','Open',45),('CC1','OFID1112','2012/10/14','Mitchells Plain','18:00','Murder','Open',46),('CC1','OFID1113','2012/10/15','Mitchells Plain','18:00','Murder','Open',47),('CC1','OFID1114','2012/10/16','Mitchells Plain','18:00','Murder','Open',48),('CC1','OFID1111','2012/10/17','Mitchells Plain','18:00','Murder','Open',49),('CC1','OFID1112','2012/10/18','Mitchells Plain','18:00','Murder','Open',50),('CC1','OFID1113','2012/10/19','Mitchells Plain','18:00','Murder','Open',51),('CC1','OFID1114','2012/10/20','Mitchells Plain','18:00','Murder','Open',52),('CC1','OFID1111','2012/10/21','Mitchells Plain','18:00','Murder','Open',53),('CC1','OFID1112','2012/10/22','Mitchells Plain','18:00','Murder','Open',54),('CC1','OFID1113','2015/12/15','Mitchells Plain','18:00','Murder','Open',55),('CC1','OFID1114','2015/12/16','Mitchells Plain','18:00','Murder','Open',56),('CC1','OFID1111','2015/12/17','Mitchells Plain','18:00','Murder','Open',57),('CC1','OFID1112','2015/12/18','Mitchells Plain','18:00','Murder','Open',58),('CC1','OFID1113','2015/12/19','Mitchells Plain','18:00','Murder','Open',59),('CC1','OFID1114','2015/12/20','Mitchells Plain','18:00','Murder','Open',60),('CC1','OFID1111','2015/12/21','Mitchells Plain','18:00','Murder','Open',61),('CC1','OFID1112','2015/12/22','Mitchells Plain','18:00','Murder','Open',62),('CC1','OFID1113','2015/12/23','Kirstenhof','18:00','Murder','Open',63),('CC1','OFID1114','2015/12/24','Kleinvlei','18:00','Murder','Open',64),('CC1','OFID1111','2015/12/25','Kraaifontein','18:00','Murder','Open',65),('CC1','OFID1112','2015/12/26','Kirstenhof','18:00','Murder','Open',66),('CC1','OFID1113','2015/12/27','Kleinvlei','18:00','Murder','Open',67),('CC1','OFID1111','2015/12/28','Kraaifontein','18:00','Murder','Open',68),('CC1','OFID1112','2015/12/29','Kirstenhof','18:00','Murder','Open',69),('CC1','OFID1113','2015/12/30','Kleinvlei','18:00','Murder','Open',70),('CC1','OFID1114','2015/12/31','Kraaifontein','18:00','Murder','Open',71),('CC1','OFID1111','2016/01/01','Kirstenhof','18:00','Murder','Open',72),('CC1','OFID1112','2016/01/02','Kleinvlei','18:00','Murder','Open',73),('CC1','OFID1113','2016/01/03','Kraaifontein','18:00','Murder','Open',74),('CC1','OFID1114','2016/01/04','Kirstenhof','18:00','Murder','Open',75),('CC1','OFID1111','2016/01/05','Kleinvlei','18:00','Murder','Open',76),('CC1','OFID1112','2016/01/06','Kraaifontein','18:00','Murder','Open',77),('CC1','OFID1113','2016/01/07','Kirstenhof','18:00','Murder','Open',78),('CC1','OFID1114','2016/01/08','Kleinvlei','18:00','Murder','Open',79),('CC1','OFID1111','2016/01/09','Kraaifontein','18:00','Murder','Open',80),('CC1','OFID1112','2016/01/10','Kirstenhof','18:00','Murder','Open',81),('CC1','OFID1113','2016/01/11','Kleinvlei','18:00','Murder','Open',82),('CC1','OFID1114','2016/01/12','Kraaifontein','18:00','Murder','Open',83),('CC1','OFID1111','2016/01/13','Kirstenhof','18:00','Murder','Open',84),('CC1','OFID1112','2016/01/14','Kleinvlei','18:00','Murder','Open',85),('CC1','OFID1113','2016/01/15','Kraaifontein','18:00','Murder','Open',86),('CC1','OFID1114','2016/01/16','Kirstenhof','18:00','Murder','Open',87),('CC1','OFID1111','2016/01/17','Kleinvlei','18:00','Murder','Open',88),('CC1','OFID1112','2016/01/18','Kraaifontein','18:00','Murder','Open',89),('CC1','OFID1113','2016/01/19','Belhar','18:00','Murder','Open',90),('CC1','OFID1111','2016/01/21','Belhar','18:00','Murder','Open',91),('CC1','OFID1112','2016/01/22','Belhar','18:00','Murder','Open',92),('CC2','OFID1113','2016/01/23','Belhar','18:00','Sexual offences','Open',93),('CC3','OFID1114','2016/01/24','Belhar','18:00','Attempted Murder','Open',94),('CC4','OFID1111','2016/01/25','Belhar','18:00','Assault','Open',95),('CC5','OFID1112','2016/01/26','Belhar','18:00','Common assault','Open',96),('CC6','OFID1113','2016/01/27','Bishop Lavis','18:00','Common robbery','Open',97),('CC7','OFID1114','2016/01/28','Bothasig','18:00','Robbery','Open',98),('CPA1','OFID1111','2016/01/29','Brackenfell','18:00','Illegal Firearms','Open',99),('CPA2','OFID1112','2016/01/30','Bishop Lavis','18:00','Drug related','Open',100),('CPA3','OFID1113','2016/01/31','Bothasig','18:00','Driving Alcohol','Open',101),('CPA4','OFID1114','2016/02/01','Brackenfell','18:00','Sexual Offences','Open',102),('CR1','OFID1111','2016/02/02','Bishop Lavis','18:00','Arson','Open',103),('CR1','OFID1112','2016/02/03','Bothasig','18:00','Arson','Open',104),('CR1','OFID1113','2016/02/04','Brackenfell','18:00','Arson','Open',105),('CR1','OFID1114','2016/02/05','Bishop Lavis','18:00','Arson','Open',106),('CR1','OFID1111','2016/02/06','Bothasig','18:00','Arson','Open',107),('CR1','OFID1112','2016/02/07','Brackenfell','18:00','Arson','Open',108),('CR2','OFID1113','2016/02/08','Bishop Lavis','18:00','Malicious damage to property','Open',109),('CR2','OFID1114','2016/02/09','Bothasig','18:00','Malicious damage to property','Open',110),('CR2','OFID1111','2016/02/10','Brackenfell','18:00','Malicious damage to property','Open',111),('CR2','OFID1112','2016/02/11','Bishop Lavis','18:00','Malicious damage to property','Open',112),('OC1','OFID1113','2016/02/12','Bothasig','18:00','Malicious damage to property','Open',113),('OC2','OFID1114','2016/02/13','Brackenfell','18:00','Public violence','Open',114),('OC3','OFID1111','2016/02/14','Bishop Lavis','18:00','Crimen injuria','Open',115),('OC4','OFID1112','2016/02/15','Bothasig','18:00','Child Neglect','Open',116),('OC5','OFID1113','2016/02/16','Brackenfell','18:00','Kidnapping','Open',117),('OC5','OFID1114','2016/02/17','Bishop Lavis','18:00','Kidnapping','Open',118),('OC5','OFID1111','2016/02/18','Bothasig','18:00','Kidnapping','Open',119),('OC5','OFID1112','2016/02/19','Brackenfell','18:00','Kidnapping','Open',120),('OC5','OFID1113','2016/02/20','Bishop Lavis','18:00','Kidnapping','Open',121),('OC5','OFID1114','2016/02/21','Bothasig','18:00','Kidnapping','Open',122),('OC5','OFID1111','2013/11/10','Brackenfell','18:00','Kidnapping','Open',123),('OC5','OFID1112','2013/11/11','Camps Bay','18:00','Kidnapping','Open',124),('OC5','OFID1113','2013/11/12','Camps Bay','18:00','Kidnapping','Open',125),('OC5','OFID1114','2013/11/13','Camps Bay','18:00','Kidnapping','Open',126),('OC5','OFID1111','2013/11/14','Camps Bay','18:00','Kidnapping','Open',127),('OC5','OFID1112','2013/11/15','Camps Bay','18:00','Kidnapping','Open',128),('OC5','OFID1113','2013/11/16','Camps Bay','18:00','Kidnapping','Open',129),('OC5','OFID1114','2013/11/17','Camps Bay','18:00','Kidnapping','Open',130),('OC5','OFID1111','2013/11/18','Camps Bay','18:00','Kidnapping','Open',131),('OC2','OFID1112','2013/11/19','Cape Town Central','18:00','Public violence','Open',132),('OC2','OFID1113','2013/11/20','Cape Town Central','18:00','Public violence','Open',133),('OC2','OFID1111','2013/11/21','Cape Town Central','18:00','Public violence','Open',134),('OC2','OFID1112','2013/11/22','Cape Town Central','18:00','Public violence','Open',135),('OC2','OFID1113','2013/11/23','Cape Town Central','18:00','Public violence','Open',136),('OC2','OFID1114','2013/11/24','Cape Town Central','18:00','Public violence','Open',137),('OC2','OFID1111','2013/11/25','Cape Town Central','18:00','Public violence','Open',138),('OC2','OFID1112','2013/11/26','Cape Town Central','18:00','Public violence','Open',139),('OC2','OFID1113','2013/11/27','Cape Town Central','18:00','Public violence','Open',140),('OC2','OFID1114','2013/11/28','Cape Town Central','18:00','Public violence','Open',141),('OC2','OFID1111','2013/11/29','Cape Town Central','18:00','Public violence','Open',142),('OS1','OFID1114','2013/12/10','Claremont','18:00','Theft','Open',143),('OS1','OFID1111','2013/12/11','Stellenbosch','18:00','Theft','Open',144),('OS1','OFID1112','2013/12/12','Strand','18:00','Theft','Open',145),('OS1','OFID1113','2013/12/13','Strandfontein','18:00','Theft','Open',146),('OS1','OFID1114','2013/12/14','Table View','18:00','Theft','Open',147),('OS1','OFID1111','2013/12/15','Woodstock','18:00','Theft','Open',148),('OS1','OFID1112','2013/12/16','Wynberg','18:00','Theft','Open',149),('OS1','OFID1113','2013/12/17','Stellenbosch','18:00','Theft','Open',150),('OS1','OFID1114','2013/12/18','Strand','18:00','Theft','Open',151),('OS1','OFID1111','2013/12/19','Strandfontein','18:00','Theft','Open',152),('OS1','OFID1112','2013/12/20','Table View','18:00','Theft','Open',153),('OS1','OFID1113','2013/12/21','Woodstock','18:00','Theft','Open',154),('OS1','OFID1114','2013/12/22','Wynberg','18:00','Theft','Open',155),('OS1','OFID1111','2013/12/23','Stellenbosch','18:00','Theft','Open',156),('OS1','OFID1112','2013/12/24','Strand','18:00','Theft','Open',157),('OS1','OFID1113','2013/12/25','Strandfontein','18:00','Theft','Open',158),('OS1','OFID1114','2013/12/26','Table View','18:00','Theft','Open',159),('OS1','OFID1111','2013/12/27','Woodstock','18:00','Theft','Open',160),('OS1','OFID1112','2013/12/28','Wynberg','18:00','Theft','Open',161),('OS1','OFID1113','2013/12/29','Wynberg','18:00','Theft','Open',162),('CPA1','OFID1114','2013/12/30','Wynberg','18:00','Illegal Firearms','Open',163),('CPA1','OFID1111','2013/12/31','Wynberg','18:00','Illegal Firearms','Open',164),('CPA1','OFID1112','2014/01/01','Wynberg','18:00','Illegal Firearms','Open',165),('CPA1','OFID1113','2014/01/02','Wynberg','18:00','Illegal Firearms','Open',166),('CPA1','OFID1114','2014/01/03','Wynberg','18:00','Illegal Firearms','Open',167),('CPA1','OFID1111','2014/01/04','Wynberg','18:00','Illegal Firearms','Closed',168),('CPA1','OFID1112','2014/01/05','Wynberg','18:00','Illegal Firearms','Open',169),('CPA1','OFID1113','2014/01/02','Wynberg','18:00','Illegal Firearms','Closed',170),('CPA1','OFID1114','2014/01/02','Kuils Rivier','18:00','Illegal Firearms','Open',171),('CPA1','OFID1111','2014/01/02','Langa','18:00','Illegal Firearms','Closed',172),('CPA1','OFID1112','2014/01/02','Lansdowne','18:00','Illegal Firearms','Open',173),('CPA1','OFID1113','2014/01/02','Lingelethu-West','18:00','Illegal Firearms','Open',174),('CPA1','OFID1114','2014/01/02','Kuils Rivier','18:00','Illegal Firearms','Open',175),('CPA1','OFID1111','2014/01/02','Langa','18:00','Illegal Firearms','Open',176),('CPA1','OFID1112','2014/01/02','Lansdowne','18:00','Illegal Firearms','Open',177),('CPA1','OFID1113','2014/01/02','Lingelethu-West','18:00','Illegal Firearms','Open',178),('CPA1','OFID1114','2014/01/02','Kuils Rivier','18:00','Illegal Firearms','Open',179),('CPA1','OFID1111','2014/01/02','Langa','18:00','Illegal Firearms','Open',180),('CPA1','OFID1112','2014/01/02','Lansdowne','18:00','Illegal Firearms','Open',181),('CPA1','OFID1113','2014/01/02','Lingelethu-West','23:00','Illegal Firearms','Open',182),('CPA1','OFID1114','2014/01/02','Lingelethu-West','0:00','Illegal Firearms','Open',183),('CPA1','OFID1111','2014/01/02','Lingelethu-West','1:00','Illegal Firearms','Open',184),('CPA1','OFID1111','2011/12/05','Milnerton','12:00','Illegal Firearms','Open',185),('CPA1','OFID1112','2011/12/06','Mitchells Plain','13:00','Illegal Firearms','Open',186),('CPA1','OFID1113','2011/12/07','Mowbray','14:00','Illegal Firearms','Open',187),('AR3','OFID1114','2011/12/08','Muizenberg','15:00','Robbery at non-residential premises','Open',188),('AR3','OFID1111','2011/12/09','Nyanga','16:00','Robbery at non-residential premises','Open',189),('AR3','OFID1114','2011/12/20','Ravensmead','3:00','Robbery at non-residential premises','Open',190),('AR3','OFID1111','2011/12/21','Ravensmead','23:00','Robbery at non-residential premises','Open',191),('AR3','OFID1112','2011/12/22','Ravensmead','23:00','Robbery at non-residential premises','Open',192),('AR3','OFID1113','2011/12/23','Ravensmead','23:00','Robbery at non-residential premises','Open',193),('AR3','OFID1114','2011/12/24','Sea Point','23:00','Robbery at non-residential premises','Open',194),('AR3','OFID1111','2011/12/25','Simons Town','23:00','Robbery at non-residential premises','Open',195),('AR3','OFID1112','2011/12/26','Somerset West','23:00','Robbery at non-residential premises','Open',196),('AR3','OFID1113','2011/12/27','Steenberg','23:00','Robbery at non-residential premises','Open',197),('AR3','OFID1114','2011/12/28','Stellenbosch','23:00','Robbery at non-residential premises','Open',198),('AR3','OFID1111','2011/12/29','Strand','23:00','Robbery at non-residential premises','Open',199),('AR3','OFID1112','2011/12/30','Strandfontein','23:00','Robbery at non-residential premises','Open',200),('AR3','OFID1113','2011/12/31','Table View','23:00','Robbery at non-residential premises','Open',201),('AR3','OFID1114','2012/01/01','Woodstock','23:00','Robbery at non-residential premises','Open',202),('AR3','OFID1111','2012/01/02','Wynberg','23:00','Robbery at non-residential premises','Open',203),('AR3','OFID1112','2012/01/03','Table View','23:00','Robbery at non-residential premises','Open',204),('AR3','OFID1113','2017/06/24','Woodstock','23:00','Robbery at non-residential premises','Open',205),('AR3','OFID1114','2017/06/25','Wynberg','23:00','Robbery at non-residential premises','Open',206),('AR3','OFID1111','2017/06/26','Table View','23:00','Robbery at non-residential premises','Open',207),('AR3','OFID1112','2017/06/27','Woodstock','23:00','Robbery at non-residential premises','Open',208),('AR3','OFID1113','2017/06/28','Wynberg','23:00','Robbery at non-residential premises','Open',209),('CC2','OFID1114','2017/06/29','Stellenbosch','23:00','Sexual offences','Closed',210),('CC2','OFID1111','2017/06/30','Stellenbosch','23:00','Sexual offences','Closed',211),('CC2','OFID1112','2017/07/01','Stellenbosch','23:00','Sexual offences','Closed',212),('CC2','OFID1113','2017/07/02','Stellenbosch','13:00','Sexual offences','Closed',213),('CC2','OFID1114','2017/07/03','Stellenbosch','14:00','Sexual offences','Closed',214),('CC2','OFID1111','2017/07/04','Stellenbosch','15:00','Sexual offences','Closed',215),('CC2','OFID1112','2017/07/05','Stellenbosch','16:00','Sexual offences','Closed',216),('CC2','OFID1113','2017/07/06','Stellenbosch','17:00','Sexual offences','Closed',217),('CC2','OFID1114','2017/07/07','Stellenbosch','18:00','Sexual offences','Closed',218),('CC2','OFID1111','2017/07/08','Stellenbosch','19:00','Sexual offences','Closed',219),('CC2','OFID1112','2017/07/09','Stellenbosch','20:00','Sexual offences','Closed',220),('CC2','OFID1113','2017/07/10','Stellenbosch','21:00','Sexual offences','Closed',221),('CC2','OFID1114','2017/07/11','Parow','22:00','Sexual offences','Open',222),('CC2','OFID1111','2017/07/12','Parow','23:00','Sexual offences','Closed',223),('CC2','OFID1112','2017/07/13','Parow','0:00','Sexual offences','Open',224),('CC2','OFID1113','2017/07/14','Parow','1:00','Sexual offences','Closed',225),('CC2','OFID1114','2017/07/15','Parow','2:00','Sexual offences','Open',226),('CC5','OFID1111','2017/07/16','Parow','3:00','Kidnapping','Closed',227),('CC5','OFID1112','2017/07/17','Parow','4:00','Kidnapping','Open',228),('CC5','OFID1113','2017/04/30','Parow','5:00','Kidnapping','Closed',229),('CC5','OFID1114','2017/05/01','Parow','6:00','Kidnapping','Open',230),('CC5','OFID1111','2017/05/02','Parow','7:00','Kidnapping','Closed',231),('CC5','OFID1112','2017/05/03','Parow','8:00','Kidnapping','Open',232),('CC5','OFID1113','2017/05/04','Parow','9:00','Kidnapping','Closed',233),('CC5','OFID1114','2017/05/05','Parow','10:00','Kidnapping','Open',234),('CC5','OFID1111','2017/05/06','Parow','11:00','Kidnapping','Closed',235),('CC5','OFID1112','2017/05/07','Parow','12:00','Kidnapping','Open',236),('CC5','OFID1113','2017/05/08','Parow','14:00','Kidnapping','Open',237),('CC5','OFID1111','2017/05/09','Parow','15:00','Kidnapping','Open',238),('CC5','OFID1112','2017/05/10','Parow','16:00','Kidnapping','Open',239),('CC5','OFID1113','2017/05/11','Parow','17:00','Kidnapping','Open',240),('CC5','OFID1114','2017/05/12','Maitland','18:00','Kidnapping','Open',241),('CC5','OFID1111','2017/05/13','Maitland','19:00','Kidnapping','Open',242),('CC5','OFID1112','2017/05/14','Maitland','20:00','Kidnapping','Open',243),('CC5','OFID1113','2017/05/15','Maitland','21:00','Kidnapping','Open',244),('CC2','OFID1113','2013/05/19','Macassar','14:00','Sexual offences','Open',245),('CC2','OFID1114','2013/05/20','Macassar','15:00','Sexual offences','Open',246),('PR1','OFID1112','2017/03/03','Belhar','14:10','Burglary at non-residential premises','Open',247),('PR5','OFID1111','2017/02/10','Dieprivier','14:10','Stock-theft','Closed',248),('PR5','OFID1112','2016/11/11','Durbanville','13:00','Stock-theft','Open',249),('PR5','OFID1112','2016/10/10','Elsies River','12:00','Stock-theft','Closed',250),('CC1','OFID1111','11/05/2017','Wynberg','03:03','Murder','Closed',251),('OC2','OFID1111','11/04/2017','Brackenfell','02:04','Public violence','Open',502),('CC2','OFID1111','11/03/2017','Belhar','13:59','Sexual offences','Closed',503),('CC6','OFID1111','11/05/2017','Bothasig','12:03','Common robbery','Open',504),('CC1','OFID1111','11/06/2017','Athlone','08:08','Murder','Open',505),('OS1','OFID1112','11/06/2017','Bothasig','09:17','All theft not mentioned elsewhere','Closed',506);
/*!40000 ALTER TABLE `crime_case` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crime_location`
--

DROP TABLE IF EXISTS `crime_location`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crime_location` (
  `location` varchar(30) NOT NULL,
  `policeZone` varchar(30) NOT NULL,
  PRIMARY KEY (`location`),
  UNIQUE KEY `location` (`location`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crime_location`
--

LOCK TABLES `crime_location` WRITE;
/*!40000 ALTER TABLE `crime_location` DISABLE KEYS */;
INSERT INTO `crime_location` VALUES ('207 Lawrence Road','Athlone');
/*!40000 ALTER TABLE `crime_location` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `injured_party`
--

DROP TABLE IF EXISTS `injured_party`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `injured_party` (
  `reportID` varchar(10) NOT NULL,
  `age` varchar(5) NOT NULL,
  `race` varchar(10) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `area` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `injured_party`
--

LOCK TABLES `injured_party` WRITE;
/*!40000 ALTER TABLE `injured_party` DISABLE KEYS */;
INSERT INTO `injured_party` VALUES ('0','13','black','female','Wynberg'),('0123456789','15','coloured','female','Athlone'),('1','23','white','male','Athlone'),('502','12','white','male','Brackenfell'),('504','87','white','female','Bothasig'),('1','23','white','male','Athlone'),('1','24','black','male','Athlone'),('505','20','white','female','Athlone'),('505','20','white','female','Athlone');
/*!40000 ALTER TABLE `injured_party` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `officer_detail`
--

DROP TABLE IF EXISTS `officer_detail`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `officer_detail` (
  `OfficerID` varchar(11) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `division` varchar(100) NOT NULL,
  `policeStation` varchar(100) NOT NULL,
  PRIMARY KEY (`OfficerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `officer_detail`
--

LOCK TABLES `officer_detail` WRITE;
/*!40000 ALTER TABLE `officer_detail` DISABLE KEYS */;
/*!40000 ALTER TABLE `officer_detail` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_station`
--

DROP TABLE IF EXISTS `police_station`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_station` (
  `policestation` varchar(100) NOT NULL,
  `zone` varchar(100) NOT NULL,
  `address` varchar(250) NOT NULL,
  `telephone` varchar(250) NOT NULL,
  PRIMARY KEY (`policestation`),
  UNIQUE KEY `policestation` (`policestation`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_station`
--

LOCK TABLES `police_station` WRITE;
/*!40000 ALTER TABLE `police_station` DISABLE KEYS */;
INSERT INTO `police_station` VALUES ('Athlone Police Station','Athlone','Corner of Jan Smuts (M17) and Klipfontein (M18) - Athlone - 7764','021 697 9200'),('Belhar Police Station (satellite)','Belhar','Platteklip Crescent - Belhar - 7535','021 953 8100'),('Bellvile Police Station','Bellville','Voortrekker Road -Bellvile -next to Magistrate\'s Court - Bellville - 7535','021 918 3000'),('Bellvile South Police Station','Bellville South','Kasselsvlei Road -Bellville south -opposite Bellville South Industria - Bellville South - 7535','021 950 1300'),('Bishop Lavis Police Station','Bishop Lavis','Corner Table Mountain Road and Myrtle - Bishop Lavis - 7490','021 935 9802'),('Bothasig Police Station','Bothasig','Steurhoven Street - Bothasig - 7441','021 559 9400'),('Brackenfell Police Station','Brackenfell','Brackenfell Boulevard - Brackenfell - 7560','021 980 5700'),('Camps Bay Police Station','Camps Bay','Victoria Road -Camps Bay - opposite Camps Bay Swimming Pool - Camps Bay - 8040','021 437 8140'),('Cape Town Airport Police Station','Cape Town Central','Between International and Domestic Terminals - Cape Town Airport - 7525','021 927 2900'),('Cape Town Central Police Station','Cape Town Central','Corner of Buitenkant and Albertus streets - Cape Town - 8000','021 467 8000 /1 /2'),('Claremont Police Station','Claremont','Lansdowne Road next to Post Office - Claremont - 7440','021 657 2250'),('Delft Police Station','Delft','Main Road Delft - next to the Day Hospital - Kasselsvlei - 7537','021 954 9000'),('Diep River Police Station','Diep Rivier','Corner of Main Road and Fairdale -Diep River - 7800','021 710 7300'),('Durbanville Police Station','Durbanville','2 Church street - Durbanville - 7550','021 970 3800'),('Elsies River Police Station','Elsies River','Corner of Valhalla and Viking Road - Elsies River - 7480','021 933 0300'),('Fish Hoek Police Station','Fish Hoek','Corner of Main and Addo - Fish hoek - 7975','021 784 2700'),('Goodwood Police Station','Goodwood','Wiener Street - N1 City - Vrijzee - 7495','021 592 4430'),('Grassy Park Police Station','Grassy Park','Reddy Avenue (off Victoria Road) Grassy Park - 7941','021 700 3900'),('Gugulethu Police Station','Gugulethu','NY 1 Street - Gugulethu - 7750','021 637 5945'),('Harare Police Station (Satellite)','Harare','Steve Biko Drive next to the Clinic','021 363 9000'),('Hout Bay Police Station','Hout Bay','Corner of Main Road and Mandela Road','021 791 9300'),('Kensington Police Station','Kensington','Supermarine Street - Kensington - Maitland - 7404','021 594 7020/ 1/ 6/ 7/ 8'),('Khayelitsha Police Station','Khayelitsha','Bonga Drive - Site B - Bellville - 7535','021 360 2375/6'),('Kirstenhof Police Station','Kirstenhof','Pollsmoor Road - Kirstenhof - 7964','021 701 2426'),('Kleinvlei Police Station','Kleinvlei','Albert Philander Road - Kleinvlei - 7100','021 902 8300'),('Kraaifontein Police Station','Kraaifontein','Van Riebeeck Road (M15) - Kraaifontein - next to Municipal Depot - Kraaifontein - 7569','021 980 5500 /33 /34'),('Kuils River Police Station','Kuils Rivier','Corner of Jan Van Riebeeck (R102) and Station Road - Kuils River - 7579','021 903 3333 / 900 2800'),('Langa Police Station','Langa','Washington Street - Langa - 7455','021 695 8000'),('Lansdowne Police Station','Lansdowne','Flamingo Crescent - opposite Lumber City - Lansdowne - 7780','021 700 9000/45'),('Lingelethu West Police Station (satellite)','Lingelethu -West','Makabeni Street - Lingelethu West - 7783','021 361 1784'),('Macassar Police Station','Macassar','Hospital Street - next to Post Office - Macassar - 7130','021 857 1024'),('Maitland Police Station','Maitland','Voortrekker Road - opposite the Post Office - Maitland - 7405','021 506 9400 / 2022'),('Manenberg Police Station','Manenberg','Corner of Klipfontein and Duinefontein Road - Manenberg','021 699 9400'),('Mfuleni Police Station (satellite)','Mfuleni','Main Road - 2nd building - Blue Downs - 7100','021 909 9300'),('Milnerton Police Station','Milnerton','Koeberg Road - Milnerton - 7441','021 528 3800'),('Mitchells Plain Police Station','Mitchells Plain','AZ Berman (M45) Mitchells Plain - next to Day Hospital - Mitchells Plain - 7785','021 370 1600'),('Mowbray Police Station','Mowbray','Main Road - Mowbray - opposite Shoprite Checkers - Mowbray - 7700','021 680 9580'),('Muizenberg Police Station','Muizenberg','School Road (off Main Road) - Muizenberg - 7945','021 787 9000'),('Nyanga Police Station','Nyanga','N311 Ntlangano Cresent - Nyanga - 7755','021 380 3300'),('Ocean View Police Station','Ocean View','Slangkop Road - at turn off to Scarborough - Sunvalley - 7985','021 783 8306'),('Parow Police Station','Parow','Voortrekker Road - Parow - 7500','021 929 7037/7000'),('Phillipi East Police Station (satellite)','Philippi East','Stock Road - Phillipi East - 7785','021 370 1900'),('Phillipi Police Station','Philippi','Corner of Ottery (off Lansdowne) and Old Lansdowne Road - Phillipi - Phillipi - 7785','021 690 1500'),('Pinelands Police Station','Pinelands','Jan Smuts Drive - Pinelands - 7405','021 506 2022 / 2389'),('Ravensmead Police Station','Ravensmead','Christian Street - Ravensmead - 7493','021 933 9000'),('Rondebosch Police Station','Rondebosch','Church Street - Rondebosch - opposite St Paul\'s - Rondebosch - 7700','021 685 7345'),('Sea Point Police Station','Sea Point','Corner of Stanley and Bay - Green Point - Sea Point - 8060','021 430 3700'),('Simon\'s Town Police Station','Simon\'s Town','Corner of Main Road and King George - Simon\'s Town - Simonstown - 7995','021 786 8640'),('Sir Lowry\'s Pass Police Station (satellite of Somerset West)','Somerset West','Main Road - Sir Lowry\'s Pass - opposite Post Office - see Somerset West','021 858 1710'),('Somerset West Police Station','Somerset West','Corner of Main and Pastorie - Somerset West - 7129','021 850 1300'),('Steenberg Police Station','Steenberg','Cradock Road - off Concert Boulevard - Retreat - 7965','021 702 9000'),('Stellenbosch Police Station','Stellenbosch','Corner of Bergzicht and du Toit - Stellenbosch - Stellenbosch - 7599','021 809 5000'),('Strand Police Station','Strand','Corner of Gordon\'s Bay Road (R44) and Altena - Strand - next to Magistrate\'s Court - Strand - 7140','021 854 9100'),('Strandfontein Police Station','Strandfontein','Corner of Witsands and Spine Road - Strandfontein - 7785','021 370 1500'),('Table Bay Harbour Police Station','Table Bay Harbour','South Arm - Table Bay Harbour - Roggebaai - 8012','021 403 1000'),('Table View Police Station','Table View','Pentz Road - Table View - next to Table View Mall - Table View - 7441','021 521 3300'),('Woodstock Police Station','Woodstock','Corner of Victoria and Church - Woodstock - 7925','021 442 3117/21'),('Wynberg Police Station','Wynberg','Church Street - Wynberg - opposite Maynardville - Wynberg - 7824','021 799 1300');
/*!40000 ALTER TABLE `police_station` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `police_user`
--

DROP TABLE IF EXISTS `police_user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `police_user` (
  `name` varchar(20) NOT NULL,
  `surname` varchar(20) NOT NULL,
  `division` varchar(100) NOT NULL,
  `rank` varchar(100) NOT NULL,
  `policeStation` varchar(100) NOT NULL,
  `email` varchar(50) DEFAULT NULL,
  `password` varchar(200) DEFAULT NULL,
  `OfficerID` varchar(11) NOT NULL,
  `email_verification_hash` varchar(200) DEFAULT NULL,
  `password_status` varchar(15) NOT NULL DEFAULT 'new',
  PRIMARY KEY (`OfficerID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `police_user`
--

LOCK TABLES `police_user` WRITE;
/*!40000 ALTER TABLE `police_user` DISABLE KEYS */;
INSERT INTO `police_user` VALUES ('','','','','',NULL,NULL,'',NULL,''),('Sydney','Twigg','Community Relations Division','General','Athlone Police Station','sydneytwigg@gmail.com','$2a$10$DOWSDz/CyKaJ40hslrk5fe1A7SD1o1puYusrnlJdJ4bFrQYngwwUS','OFID1111','$2a$10$DOWSDz/CyKaJ40hslrk5feU4OkkikaeEBAHuUybbi0MmTiDydvRpy','active'),('Tyler ','Gray','Visible Policing Division','Major-General','Bellvile','xmeagolsoftware@gmail.com','$2a$10$DOWSDz/CyKaJ40hslrk5fe1A7SD1o1puYusrnlJdJ4bFrQYngwwUS','OFID1112',NULL,'active'),('Lee','Georges','Internal Stability ','Major General','Bellvile Police Station',NULL,NULL,'OFID1113',NULL,'new'),('Kevin','Tondo','Community Relations ','Brigadier','Bellvile South Police Station',NULL,NULL,'OFID1114',NULL,'new'),('Tinashe','Madzingaidzo','Supporting Services ','Colonel','Bishop Lavis Police Station',NULL,NULL,'OFID1115',NULL,'new'),('Aleshia','Tomkiewicz','Human Resources Management ','Lieutenant Colonel','Bothasig Police Station','meowimmasheep@gmail.com','$2a$10$DOWSDz/CyKaJ40hslrk5fe1A7SD1o1puYusrnlJdJ4bFrQYngwwUS','OFID1116','$2a$10$DOWSDz/CyKaJ40hslrk5fe1VSa9zaLTftqvJNlUBYr2K1et0OQOc6','active'),('Evan','Zigomalas','Crime Combating and Investigation ','Captain','Brackenfell Police Station',NULL,NULL,'OFID1117',NULL,'new'),('France','Andrade','Visible Policing ','Warrant','Camps Bay Police Station',NULL,NULL,'OFID1118',NULL,'new'),('Ulysses','Mcwalters','Internal Stability ','Sergeant','Cape Town Central Police Station',NULL,NULL,'OFID1119',NULL,'new'),('Tyisha','Veness','Community Relations ','Constable','Cape Town Airport Police Station',NULL,NULL,'OFID1120',NULL,'new'),('Eric','Rampy','Supporting Services ','General','Claremont Police Station',NULL,NULL,'OFID1121',NULL,'new'),('Marg','Grasmick','Human Resources Management ','Lieutenant General','Delft Police Station',NULL,NULL,'OFID1122',NULL,'new'),('Laquita','Hisaw','Crime Combating and Investigation ','Major General','Diep River Police Station',NULL,NULL,'OFID1123',NULL,'new'),('Lura','Manzella','Visible Policing ','Brigadier','Durbanville Police Station',NULL,NULL,'OFID1124',NULL,'new'),('Yuette','Klapec','Internal Stability ','Colonel','Elsies River Police Station',NULL,NULL,'OFID1125',NULL,'new'),('Fernanda','Writer','Community Relations ','Lieutenant Colonel','Fish Hoek Police Station',NULL,NULL,'OFID1126',NULL,'new'),('Charlesetta','Erm','Supporting Services ','Captain','Goodwood Police Station',NULL,NULL,'OFID1127',NULL,'new'),('Corrinne','Jaret','Human Resources Management ','Warrant','Grassy Park Police Station',NULL,NULL,'OFID1128',NULL,'new'),('Niesha','Bruch','Crime Combating and Investigation ','Sergeant','Gugulethu Police Station',NULL,NULL,'OFID1129',NULL,'new'),('Rueben','Gastellum','Visible Policing ','Constable','Harare Police Station (Satellite)',NULL,NULL,'OFID1130',NULL,'new'),('Michell','Throssell','Internal Stability ','General','Hout Bay Police Station',NULL,NULL,'OFID1131',NULL,'new'),('Edgar','Kanne','Community Relations ','Lieutenant General','Kensington Police Station',NULL,NULL,'OFID1132',NULL,'new'),('Dewitt','Julio','Supporting Services ','Major General','Khayelitsha Police Station',NULL,NULL,'OFID1133',NULL,'new'),('Charisse','Spinello','Human Resources Management ','Brigadier','Kirstenhof Police Station',NULL,NULL,'OFID1134',NULL,'new'),('Mee','Lapinski','Crime Combating and Investigation ','Colonel','Kleinvlei Police Station',NULL,NULL,'OFID1135',NULL,'new'),('Peter','Gutierres','Visible Policing ','Lieutenant Colonel','Kraaifontein Police Station',NULL,NULL,'OFID1136',NULL,'new'),('Octavio','Salvadore','Internal Stability ','Captain','Kuils River Police Station',NULL,NULL,'OFID1137',NULL,'new'),('Martha','Teplica','Community Relations ','Warrant','Langa Police Station',NULL,NULL,'OFID1138',NULL,'new'),('Tamesha','Veigel','Supporting Services ','Sergeant','Lansdowne Police Station',NULL,NULL,'OFID1139',NULL,'new'),('Tess','Sitra','Human Resources Management ','Constable','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1140',NULL,'new'),('Leonard','Kufner','Crime Combating and Investigation ','General','Macassar Police Station',NULL,NULL,'OFID1141',NULL,'new'),('Svetlana','Tauras','Visible Policing ','Lieutenant General','Maitland Police Station',NULL,NULL,'OFID1142',NULL,'new'),('Pok','Molaison','Internal Stability ','Major General','Manenberg Police Station',NULL,NULL,'OFID1143',NULL,'new'),('Augustine','Growcock','Community Relations ','Brigadier','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1144',NULL,'new'),('Karma','Quarto','Supporting Services ','Colonel','Milnerton Police Station',NULL,NULL,'OFID1145',NULL,'new'),('Reed','Weisinger','Human Resources Management ','Lieutenant Colonel','Mitchells Plain Police Station',NULL,NULL,'OFID1146',NULL,'new'),('German','Zelaya','Crime Combating and Investigation ','Captain','Mowbray Police Station',NULL,NULL,'OFID1147',NULL,'new'),('Milly','Savidge','Visible Policing ','Warrant','Muizenberg Police Station',NULL,NULL,'OFID1148',NULL,'new'),('Luis','Ear','Internal Stability ','Sergeant','Nyanga Police Station',NULL,NULL,'OFID1149',NULL,'new'),('Ciara','Cobbley','Community Relations ','Constable','Ocean View Police Station',NULL,NULL,'OFID1150',NULL,'new'),('Alethea','Mould','Supporting Services ','General','Parow Police Station',NULL,NULL,'OFID1151',NULL,'new'),('Margurite','Loperfido','Human Resources Management ','Lieutenant General','Phillipi Police Station',NULL,NULL,'OFID1152',NULL,'new'),('Vernice','Sperazza','Crime Combating and Investigation ','Major General','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1153',NULL,'new'),('Vicente','Rawicki','Visible Policing ','Brigadier','Pinelands Police Station',NULL,NULL,'OFID1154',NULL,'new'),('Craig','Cua','Internal Stability ','Colonel','Ravensmead Police Station',NULL,NULL,'OFID1155',NULL,'new'),('Jenise','Dulle','Community Relations ','Lieutenant Colonel','Rondebosch Police Station',NULL,NULL,'OFID1156',NULL,'new'),('Marylin','Cornelison','Supporting Services ','Captain','Sea Point Police Station',NULL,NULL,'OFID1157',NULL,'new'),('Marget','Gunst','Human Resources Management ','Warrant','Simon\'s Town Police Station',NULL,NULL,'OFID1158',NULL,'new'),('Annett','Bunselmeyer','Crime Combating and Investigation ','Sergeant','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1159',NULL,'new'),('Kip','Turziano','Visible Policing ','Constable','Somerset West Police Station',NULL,NULL,'OFID1160',NULL,'new'),('Melina','Orizabal','Internal Stability ','General','Steenberg Police Station',NULL,NULL,'OFID1161',NULL,'new'),('Tina','Clapham','Community Relations ','Lieutenant General','Stellenbosch Police Station',NULL,NULL,'OFID1162',NULL,'new'),('Luisa','Devereux','Supporting Services ','Major General','Strand Police Station',NULL,NULL,'OFID1163',NULL,'new'),('Pedro','Aschoff','Human Resources Management ','Brigadier','Strandfontein Police Station',NULL,NULL,'OFID1164',NULL,'new'),('Carrol','Kunimitsu','Crime Combating and Investigation ','Colonel','Table Bay Harbour Police Station',NULL,NULL,'OFID1165',NULL,'new'),('Alba','Mosseri','Visible Policing ','Lieutenant Colonel','Table View Police Station',NULL,NULL,'OFID1166',NULL,'new'),('Domonique','Sandlin','Internal Stability ','Captain','Woodstock Police Station',NULL,NULL,'OFID1167',NULL,'new'),('Rory','Neufville','Community Relations ','Warrant','Wynberg Police Station',NULL,NULL,'OFID1168',NULL,'new'),('Dustin','Klingaman','Supporting Services ','Sergeant','Athlone Police Station',NULL,NULL,'OFID1169',NULL,'new'),('Lyndia','Moonshower','Human Resources Management ','Constable','Belhar Police Station (satellite)',NULL,NULL,'OFID1170',NULL,'new'),('Jules','Hiltner','Crime Combating and Investigation ','General','Bellvile Police Station',NULL,NULL,'OFID1171',NULL,'new'),('Dong','Kopczynski','Visible Policing ','Lieutenant General','Bellvile South Police Station',NULL,NULL,'OFID1172',NULL,'new'),('Justine','Salta','Internal Stability ','Major General','Bishop Lavis Police Station',NULL,NULL,'OFID1173',NULL,'new'),('Chantay','Kamens','Community Relations ','Brigadier','Bothasig Police Station',NULL,NULL,'OFID1174',NULL,'new'),('Tequila','Chisum','Supporting Services ','Colonel','Brackenfell Police Station',NULL,NULL,'OFID1175',NULL,'new'),('Maybelle','Consolazio','Human Resources Management ','Lieutenant Colonel','Camps Bay Police Station',NULL,NULL,'OFID1176',NULL,'new'),('Margarett','Bairo','Crime Combating and Investigation ','Captain','Cape Town Central Police Station',NULL,NULL,'OFID1177',NULL,'new'),('Janessa','Noonon','Visible Policing ','Warrant','Cape Town Airport Police Station',NULL,NULL,'OFID1178',NULL,'new'),('Sol','Cowser','Internal Stability ','Sergeant','Claremont Police Station',NULL,NULL,'OFID1179',NULL,'new'),('Louann','Smethers','Community Relations ','Constable','Delft Police Station',NULL,NULL,'OFID1180',NULL,'new'),('Lindsay','Yadao','Supporting Services ','General','Diep River Police Station',NULL,NULL,'OFID1181',NULL,'new'),('Malika','Hanton','Human Resources Management ','Lieutenant General','Durbanville Police Station',NULL,NULL,'OFID1182',NULL,'new'),('Stefany','Ferenz','Crime Combating and Investigation ','Major General','Elsies River Police Station',NULL,NULL,'OFID1183',NULL,'new'),('Abraham','Cratch','Visible Policing ','Brigadier','Fish Hoek Police Station',NULL,NULL,'OFID1184',NULL,'new'),('Giuseppe','Rohaley','Internal Stability ','Colonel','Goodwood Police Station',NULL,NULL,'OFID1185',NULL,'new'),('Kiera','Bassil','Community Relations ','Lieutenant Colonel','Grassy Park Police Station',NULL,NULL,'OFID1186',NULL,'new'),('Wendell','Rubano','Supporting Services ','Captain','Gugulethu Police Station',NULL,NULL,'OFID1187',NULL,'new'),('Stevie','Stifflemire','Human Resources Management ','Warrant','Harare Police Station (Satellite)',NULL,NULL,'OFID1188',NULL,'new'),('Yun','Paletta','Crime Combating and Investigation ','Sergeant','Hout Bay Police Station',NULL,NULL,'OFID1189',NULL,'new'),('Brittani','Thurm','Visible Policing ','Constable','Kensington Police Station',NULL,NULL,'OFID1190',NULL,'new'),('Billy','Venus','Internal Stability ','General','Khayelitsha Police Station',NULL,NULL,'OFID1191',NULL,'new'),('Brynn','Elkan','Community Relations ','Lieutenant General','Kirstenhof Police Station',NULL,NULL,'OFID1192',NULL,'new'),('Elroy','Piehler','Supporting Services ','Major General','Kleinvlei Police Station',NULL,NULL,'OFID1193',NULL,'new'),('Anisha','Shulick','Human Resources Management ','Brigadier','Kraaifontein Police Station',NULL,NULL,'OFID1194',NULL,'new'),('Bettina','Kham','Crime Combating and Investigation ','Colonel','Kuils River Police Station',NULL,NULL,'OFID1195',NULL,'new'),('Velda','Mancilla','Visible Policing ','Lieutenant Colonel','Langa Police Station',NULL,NULL,'OFID1196',NULL,'new'),('Marta','Brace','Internal Stability ','Captain','Lansdowne Police Station',NULL,NULL,'OFID1197',NULL,'new'),('Juan','Vanwyhe','Community Relations ','Warrant','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1198',NULL,'new'),('Lelia','Filion','Supporting Services ','Sergeant','Macassar Police Station',NULL,NULL,'OFID1199',NULL,'new'),('Una','Frankel','Human Resources Management ','Constable','Maitland Police Station',NULL,NULL,'OFID1200',NULL,'new'),('Eva','Joulwan','Crime Combating and Investigation ','General','Manenberg Police Station',NULL,NULL,'OFID1201',NULL,'new'),('Mammie','Dormanen','Visible Policing ','Lieutenant General','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1202',NULL,'new'),('Jeannetta','Coolidge','Internal Stability ','Major General','Milnerton Police Station',NULL,NULL,'OFID1203',NULL,'new'),('Elbert','Drawe','Community Relations ','Brigadier','Mitchells Plain Police Station',NULL,NULL,'OFID1204',NULL,'new'),('Lenny','Gazzola','Supporting Services ','Colonel','Mowbray Police Station',NULL,NULL,'OFID1205',NULL,'new'),('Mira','Alpheaus','Human Resources Management ','Lieutenant Colonel','Muizenberg Police Station',NULL,NULL,'OFID1206',NULL,'new'),('Cathern','Ungar','Crime Combating and Investigation ','Captain','Nyanga Police Station',NULL,NULL,'OFID1207',NULL,'new'),('Malcom','Fleckles','Visible Policing ','Warrant','Ocean View Police Station',NULL,NULL,'OFID1208',NULL,'new'),('Monroe','Damato','Internal Stability ','Sergeant','Parow Police Station',NULL,NULL,'OFID1209',NULL,'new'),('Leota','Fletchen','Community Relations ','Constable','Phillipi Police Station',NULL,NULL,'OFID1210',NULL,'new'),('Berry','Gutoski','Supporting Services ','General','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1211',NULL,'new'),('Meghan','Riherd','Human Resources Management ','Lieutenant General','Pinelands Police Station',NULL,NULL,'OFID1212',NULL,'new'),('Mike','Torner','Crime Combating and Investigation ','Major General','Ravensmead Police Station',NULL,NULL,'OFID1213',NULL,'new'),('Elsa','Delisle','Visible Policing ','Brigadier','Rondebosch Police Station',NULL,NULL,'OFID1214',NULL,'new'),('Linwood','Rosenlof','Internal Stability ','Colonel','Sea Point Police Station',NULL,NULL,'OFID1215',NULL,'new'),('Latosha','Alexy','Community Relations ','Lieutenant Colonel','Simon\'s Town Police Station',NULL,NULL,'OFID1216',NULL,'new'),('Alexia','Meenan','Supporting Services ','Captain','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1217',NULL,'new'),('Graham','Stanwick','Human Resources Management ','Warrant','Somerset West Police Station',NULL,NULL,'OFID1218',NULL,'new'),('Elinore','Fulda','Crime Combating and Investigation ','Sergeant','Steenberg Police Station',NULL,NULL,'OFID1219',NULL,'new'),('Lisbeth','Creecy','Visible Policing ','Constable','Stellenbosch Police Station',NULL,NULL,'OFID1220',NULL,'new'),('Eloisa','Faurote','Internal Stability ','General','Strand Police Station',NULL,NULL,'OFID1221',NULL,'new'),('Shawana','Cantua','Community Relations ','Lieutenant General','Strandfontein Police Station',NULL,NULL,'OFID1222',NULL,'new'),('Alyssa','Ansbro','Supporting Services ','Major General','Table Bay Harbour Police Station',NULL,NULL,'OFID1223',NULL,'new'),('Kyoko','Mcmillian','Human Resources Management ','Brigadier','Table View Police Station',NULL,NULL,'OFID1224',NULL,'new'),('Terry','Gauthier','Crime Combating and Investigation ','Colonel','Woodstock Police Station',NULL,NULL,'OFID1225',NULL,'new'),('Sena','Langenbach','Visible Policing ','Lieutenant Colonel','Wynberg Police Station',NULL,NULL,'OFID1226',NULL,'new'),('Cristen','Nesset','Internal Stability ','Captain','Athlone Police Station',NULL,NULL,'OFID1227',NULL,'new'),('Lashawn','Ker','Community Relations ','Warrant','Belhar Police Station (satellite)',NULL,NULL,'OFID1228',NULL,'new'),('Wade','Sovel','Supporting Services ','Sergeant','Bellvile Police Station',NULL,NULL,'OFID1229',NULL,'new'),('Whitney','Tishler','Human Resources Management ','Constable','Bellvile South Police Station',NULL,NULL,'OFID1230',NULL,'new'),('Deja','Conatser','Crime Combating and Investigation ','General','Bishop Lavis Police Station',NULL,NULL,'OFID1231',NULL,'new'),('Earnestine','Casper','Visible Policing ','Lieutenant General','Bothasig Police Station',NULL,NULL,'OFID1232',NULL,'new'),('Frankie','Marruffo','Internal Stability ','Major General','Brackenfell Police Station',NULL,NULL,'OFID1233',NULL,'new'),('Paola','Dease','Community Relations ','Brigadier','Camps Bay Police Station',NULL,NULL,'OFID1234',NULL,'new'),('Rodrigo','Hawkin','Supporting Services ','Colonel','Cape Town Central Police Station',NULL,NULL,'OFID1235',NULL,'new'),('Luther','Alsman','Human Resources Management ','Lieutenant Colonel','Cape Town Airport Police Station',NULL,NULL,'OFID1236',NULL,'new'),('Casey','Dondero','Crime Combating and Investigation ','Captain','Claremont Police Station',NULL,NULL,'OFID1237',NULL,'new'),('Ressie','Bontemps','Visible Policing ','Warrant','Delft Police Station',NULL,NULL,'OFID1238',NULL,'new'),('Sean','Schurman','Internal Stability ','Sergeant','Diep River Police Station',NULL,NULL,'OFID1239',NULL,'new'),('Celestina','Pince','Community Relations ','Constable','Durbanville Police Station',NULL,NULL,'OFID1240',NULL,'new'),('Maira','Karas','Supporting Services ','General','Elsies River Police Station',NULL,NULL,'OFID1241',NULL,'new'),('Beth','Barbone','Human Resources Management ','Lieutenant General','Fish Hoek Police Station',NULL,NULL,'OFID1242',NULL,'new'),('Wei','Nobel','Crime Combating and Investigation ','Major General','Goodwood Police Station',NULL,NULL,'OFID1243',NULL,'new'),('Melissia','Slotemaker','Visible Policing ','Brigadier','Grassy Park Police Station',NULL,NULL,'OFID1244',NULL,'new'),('Letha','Akey','Internal Stability ','Colonel','Gugulethu Police Station',NULL,NULL,'OFID1245',NULL,'new'),('Isaac','Semrad','Community Relations ','Lieutenant Colonel','Harare Police Station (Satellite)',NULL,NULL,'OFID1246',NULL,'new'),('Kristine','Klipfel','Supporting Services ','Captain','Hout Bay Police Station',NULL,NULL,'OFID1247',NULL,'new'),('Odette','Moussette','Human Resources Management ','Warrant','Kensington Police Station',NULL,NULL,'OFID1248',NULL,'new'),('Hobert','Panfilov','Crime Combating and Investigation ','Sergeant','Khayelitsha Police Station',NULL,NULL,'OFID1249',NULL,'new'),('Isadora','Mchughes','Visible Policing ','Constable','Kirstenhof Police Station',NULL,NULL,'OFID1250',NULL,'new'),('Emily','Pogorelc','Internal Stability ','General','Kleinvlei Police Station',NULL,NULL,'OFID1251',NULL,'new'),('Desire','Barresi','Community Relations ','Lieutenant General','Kraaifontein Police Station',NULL,NULL,'OFID1252',NULL,'new'),('Rosalind','Stamps','Supporting Services ','Major General','Kuils River Police Station',NULL,NULL,'OFID1253',NULL,'new'),('Vernell','Connley','Human Resources Management ','Brigadier','Langa Police Station',NULL,NULL,'OFID1254',NULL,'new'),('Micheline','Mathieson','Crime Combating and Investigation ','Colonel','Lansdowne Police Station',NULL,NULL,'OFID1255',NULL,'new'),('Nathan','Outhouse','Visible Policing ','Lieutenant Colonel','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1256',NULL,'new'),('Allene','Burau','Internal Stability ','Captain','Macassar Police Station',NULL,NULL,'OFID1257',NULL,'new'),('Julie','Sakshaug','Community Relations ','Warrant','Maitland Police Station',NULL,NULL,'OFID1258',NULL,'new'),('Francisca','Shuhi','Supporting Services ','Sergeant','Manenberg Police Station',NULL,NULL,'OFID1259',NULL,'new'),('Marisha','Wilcoxon','Human Resources Management ','Constable','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1260',NULL,'new'),('Telma','Maraia','Crime Combating and Investigation ','General','Milnerton Police Station',NULL,NULL,'OFID1261',NULL,'new'),('Luke','Crete','Visible Policing ','Lieutenant General','Mitchells Plain Police Station',NULL,NULL,'OFID1262',NULL,'new'),('Hubert','Mias','Internal Stability ','Major General','Mowbray Police Station',NULL,NULL,'OFID1263',NULL,'new'),('Janella','Altobell','Community Relations ','Brigadier','Muizenberg Police Station',NULL,NULL,'OFID1264',NULL,'new'),('Angelo','Lavista','Supporting Services ','Colonel','Nyanga Police Station',NULL,NULL,'OFID1265',NULL,'new'),('Tran','Mandiola','Human Resources Management ','Lieutenant Colonel','Ocean View Police Station',NULL,NULL,'OFID1266',NULL,'new'),('Reynalda','Vanhooser','Crime Combating and Investigation ','Captain','Parow Police Station',NULL,NULL,'OFID1267',NULL,'new'),('Salley','Rieger','Visible Policing ','Warrant','Phillipi Police Station',NULL,NULL,'OFID1268',NULL,'new'),('Cheryll','Yurich','Internal Stability ','Sergeant','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1269',NULL,'new'),('Crista','Viengxay','Community Relations ','Constable','Pinelands Police Station',NULL,NULL,'OFID1270',NULL,'new'),('Lino','Sutulovich','Supporting Services ','General','Ravensmead Police Station',NULL,NULL,'OFID1271',NULL,'new'),('Galen','Wendorf','Human Resources Management ','Lieutenant General','Rondebosch Police Station',NULL,NULL,'OFID1272',NULL,'new'),('Gilbert','Langarica','Crime Combating and Investigation ','Major General','Sea Point Police Station',NULL,NULL,'OFID1273',NULL,'new'),('Whitney','Goossen','Visible Policing ','Brigadier','Simon\'s Town Police Station',NULL,NULL,'OFID1274',NULL,'new'),('Socorro','Abrahams','Internal Stability ','Colonel','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1275',NULL,'new'),('Mauricio','Flam','Community Relations ','Lieutenant Colonel','Somerset West Police Station',NULL,NULL,'OFID1276',NULL,'new'),('Phillip','Aloi','Supporting Services ','Captain','Steenberg Police Station',NULL,NULL,'OFID1277',NULL,'new'),('Gilberto','Erixon','Human Resources Management ','Warrant','Stellenbosch Police Station',NULL,NULL,'OFID1278',NULL,'new'),('Thad','Puskarich','Crime Combating and Investigation ','Sergeant','Strand Police Station',NULL,NULL,'OFID1279',NULL,'new'),('Bambi','Favaron','Visible Policing ','Constable','Strandfontein Police Station',NULL,NULL,'OFID1280',NULL,'new'),('Marshall','Kozikowski','Internal Stability ','General','Table Bay Harbour Police Station',NULL,NULL,'OFID1281',NULL,'new'),('Chery','Wiederin','Community Relations ','Lieutenant General','Table View Police Station',NULL,NULL,'OFID1282',NULL,'new'),('Eileen','Montecalvo','Supporting Services ','Major General','Woodstock Police Station',NULL,NULL,'OFID1283',NULL,'new'),('Melita','Szpak','Human Resources Management ','Brigadier','Wynberg Police Station',NULL,NULL,'OFID1284',NULL,'new'),('Ashley','Jessie','Crime Combating and Investigation ','Colonel','Athlone Police Station',NULL,NULL,'OFID1285',NULL,'new'),('Laila','Fend','Visible Policing ','Lieutenant Colonel','Belhar Police Station (satellite)',NULL,NULL,'OFID1286',NULL,'new'),('Bobbie','Guillereault','Internal Stability ','Captain','Bellvile Police Station',NULL,NULL,'OFID1287',NULL,'new'),('Dana','Paluszynski','Community Relations ','Warrant','Bellvile South Police Station',NULL,NULL,'OFID1288',NULL,'new'),('Freida','Newyear','Supporting Services ','Sergeant','Bishop Lavis Police Station',NULL,NULL,'OFID1289',NULL,'new'),('Val','Cellucci','Human Resources Management ','Constable','Bothasig Police Station',NULL,NULL,'OFID1290',NULL,'new'),('Horace','Knapp','Crime Combating and Investigation ','General','Brackenfell Police Station',NULL,NULL,'OFID1291',NULL,'new'),('Joana','Reinecke','Visible Policing ','Lieutenant General','Camps Bay Police Station',NULL,NULL,'OFID1292',NULL,'new'),('Tiara','Schlichter','Internal Stability ','Major General','Cape Town Central Police Station',NULL,NULL,'OFID1293',NULL,'new'),('Dacia','Swaisgood','Community Relations ','Brigadier','Cape Town Airport Police Station',NULL,NULL,'OFID1294',NULL,'new'),('Myong','Babineaux','Supporting Services ','Colonel','Claremont Police Station',NULL,NULL,'OFID1295',NULL,'new'),('Gene','Bleile','Human Resources Management ','Lieutenant Colonel','Delft Police Station',NULL,NULL,'OFID1296',NULL,'new'),('Kanisha','Difiora','Crime Combating and Investigation ','Captain','Diep River Police Station',NULL,NULL,'OFID1297',NULL,'new'),('Ayesha','Moeder','Visible Policing ','Warrant','Durbanville Police Station',NULL,NULL,'OFID1298',NULL,'new'),('Lanie','Smalarz','Internal Stability ','Sergeant','Elsies River Police Station',NULL,NULL,'OFID1299',NULL,'new'),('Jaleesa','Polintan','Community Relations ','Constable','Fish Hoek Police Station',NULL,NULL,'OFID1300',NULL,'new'),('Tamekia','Flotow','Supporting Services ','General','Goodwood Police Station',NULL,NULL,'OFID1301',NULL,'new'),('Ula','Otey','Human Resources Management ','Lieutenant General','Grassy Park Police Station',NULL,NULL,'OFID1302',NULL,'new'),('Rosendo','Ratel','Crime Combating and Investigation ','Major General','Gugulethu Police Station',NULL,NULL,'OFID1303',NULL,'new'),('Timmy','Lintner','Visible Policing ','Brigadier','Harare Police Station (Satellite)',NULL,NULL,'OFID1304',NULL,'new'),('Zita','Speltz','Internal Stability ','Colonel','Hout Bay Police Station',NULL,NULL,'OFID1305',NULL,'new'),('Aleisha','Lemm','Community Relations ','Lieutenant Colonel','Kensington Police Station',NULL,NULL,'OFID1306',NULL,'new'),('Naomi','Lavezzo','Supporting Services ','Captain','Khayelitsha Police Station',NULL,NULL,'OFID1307',NULL,'new'),('Aretha','Bowling','Human Resources Management ','Warrant','Kirstenhof Police Station',NULL,NULL,'OFID1308',NULL,'new'),('Mila','Figuera','Crime Combating and Investigation ','Sergeant','Kleinvlei Police Station',NULL,NULL,'OFID1309',NULL,'new'),('Orville','Zuehl','Visible Policing ','Constable','Kraaifontein Police Station',NULL,NULL,'OFID1310',NULL,'new'),('Gabriele','Geschke','Internal Stability ','General','Kuils River Police Station',NULL,NULL,'OFID1311',NULL,'new'),('Kara','Jaquish','Community Relations ','Lieutenant General','Langa Police Station',NULL,NULL,'OFID1312',NULL,'new'),('Kenny','Lin','Supporting Services ','Major General','Lansdowne Police Station',NULL,NULL,'OFID1313',NULL,'new'),('Vashti','Sugai','Human Resources Management ','Brigadier','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1314',NULL,'new'),('Jordan','Handsaker','Crime Combating and Investigation ','Colonel','Macassar Police Station',NULL,NULL,'OFID1315',NULL,'new'),('Carisa','Degenhardt','Visible Policing ','Lieutenant Colonel','Maitland Police Station',NULL,NULL,'OFID1316',NULL,'new'),('Audrie','Danaher','Internal Stability ','Captain','Manenberg Police Station',NULL,NULL,'OFID1317',NULL,'new'),('Shaunna','Rodamis','Community Relations ','Warrant','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1318',NULL,'new'),('Coleen','Langer','Supporting Services ','Sergeant','Milnerton Police Station',NULL,NULL,'OFID1319',NULL,'new'),('Katie','Choinski','Human Resources Management ','Constable','Mitchells Plain Police Station',NULL,NULL,'OFID1320',NULL,'new'),('Dannie','Brau','Crime Combating and Investigation ','General','Mowbray Police Station',NULL,NULL,'OFID1321',NULL,'new'),('Ashanti','Donn','Visible Policing ','Lieutenant General','Muizenberg Police Station',NULL,NULL,'OFID1322',NULL,'new'),('Madalyn','Dubberly','Internal Stability ','Major General','Nyanga Police Station',NULL,NULL,'OFID1323',NULL,'new'),('Santos','Signore','Community Relations ','Brigadier','Ocean View Police Station',NULL,NULL,'OFID1324',NULL,'new'),('Alyce','Flamino','Supporting Services ','Colonel','Parow Police Station',NULL,NULL,'OFID1325',NULL,'new'),('Pearly','Ero','Human Resources Management ','Lieutenant Colonel','Phillipi Police Station',NULL,NULL,'OFID1326',NULL,'new'),('Cherrie','Nitschke','Crime Combating and Investigation ','Captain','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1327',NULL,'new'),('Maia','Shadd','Visible Policing ','Warrant','Pinelands Police Station',NULL,NULL,'OFID1328',NULL,'new'),('Edwin','Logghe','Internal Stability ','Sergeant','Ravensmead Police Station',NULL,NULL,'OFID1329',NULL,'new'),('Leigha','Semenza','Community Relations ','Constable','Rondebosch Police Station',NULL,NULL,'OFID1330',NULL,'new'),('Walker','Seeger','Supporting Services ','General','Sea Point Police Station',NULL,NULL,'OFID1331',NULL,'new'),('Nakita','Rodrigues','Human Resources Management ','Lieutenant General','Simon\'s Town Police Station',NULL,NULL,'OFID1332',NULL,'new'),('Kattie','Ozane','Crime Combating and Investigation ','Major General','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1333',NULL,'new'),('Lamar','Suite','Visible Policing ','Brigadier','Somerset West Police Station',NULL,NULL,'OFID1334',NULL,'new'),('Juliana','Uken','Internal Stability ','Colonel','Steenberg Police Station',NULL,NULL,'OFID1335',NULL,'new'),('Chan','Loftin','Community Relations ','Lieutenant Colonel','Stellenbosch Police Station',NULL,NULL,'OFID1336',NULL,'new'),('Delpha','Detamore','Supporting Services ','Captain','Strand Police Station',NULL,NULL,'OFID1337',NULL,'new'),('Floyd','Tivis','Human Resources Management ','Warrant','Strandfontein Police Station',NULL,NULL,'OFID1338',NULL,'new'),('Chantell','Besong','Crime Combating and Investigation ','Sergeant','Table Bay Harbour Police Station',NULL,NULL,'OFID1339',NULL,'new'),('Martin','Fonua','Visible Policing ','Constable','Table View Police Station',NULL,NULL,'OFID1340',NULL,'new'),('Hyun','Erdman','Internal Stability ','General','Woodstock Police Station',NULL,NULL,'OFID1341',NULL,'new'),('Nada','Arey','Community Relations ','Lieutenant General','Wynberg Police Station',NULL,NULL,'OFID1342',NULL,'new'),('Elizabeth','Pata','Supporting Services ','Major General','Athlone Police Station',NULL,NULL,'OFID1343',NULL,'new'),('Dominic','Washmuth','Human Resources Management ','Brigadier','Belhar Police Station (satellite)',NULL,NULL,'OFID1344',NULL,'new'),('Alise','Packebush','Crime Combating and Investigation ','Colonel','Bellvile Police Station',NULL,NULL,'OFID1345',NULL,'new'),('Flo','Bardsley','Visible Policing ','Lieutenant Colonel','Bellvile South Police Station',NULL,NULL,'OFID1346',NULL,'new'),('Bonita','Sandblom','Internal Stability ','Captain','Bishop Lavis Police Station',NULL,NULL,'OFID1347',NULL,'new'),('Royal','Rush','Community Relations ','Warrant','Bothasig Police Station',NULL,NULL,'OFID1348',NULL,'new'),('Erasmo','Talentino','Supporting Services ','Sergeant','Brackenfell Police Station',NULL,NULL,'OFID1349',NULL,'new'),('Mari','Smeby','Human Resources Management ','Constable','Camps Bay Police Station',NULL,NULL,'OFID1350',NULL,'new'),('Eleonora','Ventry','Crime Combating and Investigation ','General','Cape Town Central Police Station',NULL,NULL,'OFID1351',NULL,'new'),('Therese','Shiraki','Visible Policing ','Lieutenant General','Cape Town Airport Police Station',NULL,NULL,'OFID1352',NULL,'new'),('Rodolfo','Scavuzzo','Internal Stability ','Major General','Claremont Police Station',NULL,NULL,'OFID1353',NULL,'new'),('Cruz','Fanelli','Community Relations ','Brigadier','Delft Police Station',NULL,NULL,'OFID1354',NULL,'new'),('Arlyne','Dellinger','Supporting Services ','Colonel','Diep River Police Station',NULL,NULL,'OFID1355',NULL,'new'),('Edward','Strejan','Human Resources Management ','Lieutenant Colonel','Durbanville Police Station',NULL,NULL,'OFID1356',NULL,'new'),('Christoper','Sheneman','Crime Combating and Investigation ','Captain','Elsies River Police Station',NULL,NULL,'OFID1357',NULL,'new'),('Melda','Colamarino','Visible Policing ','Warrant','Fish Hoek Police Station',NULL,NULL,'OFID1358',NULL,'new'),('Margot','Peay','Internal Stability ','Sergeant','Goodwood Police Station',NULL,NULL,'OFID1359',NULL,'new'),('Gerald','Drozdenko','Community Relations ','Constable','Grassy Park Police Station',NULL,NULL,'OFID1360',NULL,'new'),('Tomoko','Renno','Supporting Services ','General','Gugulethu Police Station',NULL,NULL,'OFID1361',NULL,'new'),('Mendy','Wassmann','Human Resources Management ','Lieutenant General','Harare Police Station (Satellite)',NULL,NULL,'OFID1362',NULL,'new'),('Daryl','Hilcher','Crime Combating and Investigation ','Major General','Hout Bay Police Station',NULL,NULL,'OFID1363',NULL,'new'),('Ty','Feeback','Visible Policing ','Brigadier','Kensington Police Station',NULL,NULL,'OFID1364',NULL,'new'),('King','Vanacore','Internal Stability ','Colonel','Khayelitsha Police Station',NULL,NULL,'OFID1365',NULL,'new'),('Isidra','Varnado','Community Relations ','Lieutenant Colonel','Kirstenhof Police Station',NULL,NULL,'OFID1366',NULL,'new'),('Tonja','Driesenga','Supporting Services ','Captain','Kleinvlei Police Station',NULL,NULL,'OFID1367',NULL,'new'),('Shaquana','Featherston','Human Resources Management ','Warrant','Kraaifontein Police Station',NULL,NULL,'OFID1368',NULL,'new'),('Gilberto','Feagins','Crime Combating and Investigation ','Sergeant','Kuils River Police Station',NULL,NULL,'OFID1369',NULL,'new'),('Rex','Faehnle','Visible Policing ','Constable','Langa Police Station',NULL,NULL,'OFID1370',NULL,'new'),('Adolph','Cunningham','Internal Stability ','General','Lansdowne Police Station',NULL,NULL,'OFID1371',NULL,'new'),('Queen','Leader','Community Relations ','Lieutenant General','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1372',NULL,'new'),('Rebbecca','Rufenacht','Supporting Services ','Major General','Macassar Police Station',NULL,NULL,'OFID1373',NULL,'new'),('Ardella','Goldrup','Human Resources Management ','Brigadier','Maitland Police Station',NULL,NULL,'OFID1374',NULL,'new'),('Dallas','Miyashiro','Crime Combating and Investigation ','Colonel','Manenberg Police Station',NULL,NULL,'OFID1375',NULL,'new'),('Vivan','Jenious','Visible Policing ','Lieutenant Colonel','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1376',NULL,'new'),('Han','Dzledzic','Internal Stability ','Captain','Milnerton Police Station',NULL,NULL,'OFID1377',NULL,'new'),('Emilio','Guitierrez','Community Relations ','Warrant','Mitchells Plain Police Station',NULL,NULL,'OFID1378',NULL,'new'),('Latia','Cos','Supporting Services ','Sergeant','Mowbray Police Station',NULL,NULL,'OFID1379',NULL,'new'),('Lilli','Cureau','Human Resources Management ','Constable','Muizenberg Police Station',NULL,NULL,'OFID1380',NULL,'new'),('Maryanne','Siske','Crime Combating and Investigation ','General','Nyanga Police Station',NULL,NULL,'OFID1381',NULL,'new'),('Eliz','Strimple','Visible Policing ','Lieutenant General','Ocean View Police Station',NULL,NULL,'OFID1382',NULL,'new'),('Laura','Gumaer','Internal Stability ','Major General','Parow Police Station',NULL,NULL,'OFID1383',NULL,'new'),('Leanora','Respicio','Community Relations ','Brigadier','Phillipi Police Station',NULL,NULL,'OFID1384',NULL,'new'),('Sherell','Pomarico','Supporting Services ','Colonel','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1385',NULL,'new'),('Charlie','Isita','Human Resources Management ','Lieutenant Colonel','Pinelands Police Station',NULL,NULL,'OFID1386',NULL,'new'),('Veronique','Nuckolls','Crime Combating and Investigation ','Captain','Ravensmead Police Station',NULL,NULL,'OFID1387',NULL,'new'),('Antonio','Villamarin','Visible Policing ','Warrant','Rondebosch Police Station',NULL,NULL,'OFID1388',NULL,'new'),('Louvenia','Kincannon','Internal Stability ','Sergeant','Sea Point Police Station',NULL,NULL,'OFID1389',NULL,'new'),('Roxanne','Hedegore','Community Relations ','Constable','Simon\'s Town Police Station',NULL,NULL,'OFID1390',NULL,'new'),('Eve','Hoffstot','Supporting Services ','General','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1391',NULL,'new'),('Kenda','Koza','Human Resources Management ','Lieutenant General','Somerset West Police Station',NULL,NULL,'OFID1392',NULL,'new'),('Elden','Mercik','Crime Combating and Investigation ','Major General','Steenberg Police Station',NULL,NULL,'OFID1393',NULL,'new'),('Kami','Ferre','Visible Policing ','Brigadier','Stellenbosch Police Station',NULL,NULL,'OFID1394',NULL,'new'),('Selene','Zeng','Internal Stability ','Colonel','Strand Police Station',NULL,NULL,'OFID1395',NULL,'new'),('Deangelo','Rardon','Community Relations ','Lieutenant Colonel','Strandfontein Police Station',NULL,NULL,'OFID1396',NULL,'new'),('Olen','Ailey','Supporting Services ','Captain','Table Bay Harbour Police Station',NULL,NULL,'OFID1397',NULL,'new'),('Lanie','Smarsh','Human Resources Management ','Warrant','Table View Police Station',NULL,NULL,'OFID1398',NULL,'new'),('Lynna','Breheny','Crime Combating and Investigation ','Sergeant','Woodstock Police Station',NULL,NULL,'OFID1399',NULL,'new'),('Jody','Klitzing','Visible Policing ','Constable','Wynberg Police Station',NULL,NULL,'OFID1400',NULL,'new'),('Antonio','Glasford','Internal Stability ','General','Athlone Police Station',NULL,NULL,'OFID1401',NULL,'new'),('Merilyn','Scurci','Community Relations ','Lieutenant General','Belhar Police Station (satellite)',NULL,NULL,'OFID1402',NULL,'new'),('Elliott','Kins','Supporting Services ','Major General','Bellvile Police Station',NULL,NULL,'OFID1403',NULL,'new'),('Leonie','Devereux','Human Resources Management ','Brigadier','Bellvile South Police Station',NULL,NULL,'OFID1404',NULL,'new'),('Eulah','Syrop','Crime Combating and Investigation ','Colonel','Bishop Lavis Police Station',NULL,NULL,'OFID1405',NULL,'new'),('Marsha','Tarry','Visible Policing ','Lieutenant Colonel','Bothasig Police Station',NULL,NULL,'OFID1406',NULL,'new'),('Mignon','Luger','Internal Stability ','Captain','Brackenfell Police Station',NULL,NULL,'OFID1407',NULL,'new'),('Tu','Rivet','Community Relations ','Warrant','Camps Bay Police Station',NULL,NULL,'OFID1408',NULL,'new'),('Adelle','Schantini','Supporting Services ','Sergeant','Cape Town Central Police Station',NULL,NULL,'OFID1409',NULL,'new'),('Douglass','Fonnesbeck','Human Resources Management ','Constable','Cape Town Airport Police Station',NULL,NULL,'OFID1410',NULL,'new'),('Evette','Mazierski','Crime Combating and Investigation ','General','Claremont Police Station',NULL,NULL,'OFID1411',NULL,'new'),('Geraldo','Okoren','Visible Policing ','Lieutenant General','Delft Police Station',NULL,NULL,'OFID1412',NULL,'new'),('Clarinda','Pelayo','Internal Stability ','Major General','Diep River Police Station',NULL,NULL,'OFID1413',NULL,'new'),('Reuben','Mccorrison','Community Relations ','Brigadier','Durbanville Police Station',NULL,NULL,'OFID1414',NULL,'new'),('Yen','Groody','Supporting Services ','Colonel','Elsies River Police Station',NULL,NULL,'OFID1415',NULL,'new'),('Tanja','Milne','Human Resources Management ','Lieutenant Colonel','Fish Hoek Police Station',NULL,NULL,'OFID1416',NULL,'new'),('Jerlene','Holtgrewe','Crime Combating and Investigation ','Captain','Goodwood Police Station',NULL,NULL,'OFID1417',NULL,'new'),('Almeta','Keehner','Visible Policing ','Warrant','Grassy Park Police Station',NULL,NULL,'OFID1418',NULL,'new'),('Wilda','Brigham','Internal Stability ','Sergeant','Gugulethu Police Station',NULL,NULL,'OFID1419',NULL,'new'),('Remedios','Arlinghaus','Community Relations ','Constable','Harare Police Station (Satellite)',NULL,NULL,'OFID1420',NULL,'new'),('Margret','Alcazar','Supporting Services ','General','Hout Bay Police Station',NULL,NULL,'OFID1421',NULL,'new'),('Denny','Casalenda','Human Resources Management ','Lieutenant General','Kensington Police Station',NULL,NULL,'OFID1422',NULL,'new'),('Carolynn','Atkison','Crime Combating and Investigation ','Major General','Khayelitsha Police Station',NULL,NULL,'OFID1423',NULL,'new'),('Amina','Goulbourne','Visible Policing ','Brigadier','Kirstenhof Police Station',NULL,NULL,'OFID1424',NULL,'new'),('Janna','Przybyl','Internal Stability ','Colonel','Kleinvlei Police Station',NULL,NULL,'OFID1425',NULL,'new'),('Emiko','Sayre','Community Relations ','Lieutenant Colonel','Kraaifontein Police Station',NULL,NULL,'OFID1426',NULL,'new'),('In','Muns','Supporting Services ','Captain','Kuils River Police Station',NULL,NULL,'OFID1427',NULL,'new'),('Eleni','Vanscoik','Human Resources Management ','Warrant','Langa Police Station',NULL,NULL,'OFID1428',NULL,'new'),('Kandis','Alsbury','Crime Combating and Investigation ','Sergeant','Lansdowne Police Station',NULL,NULL,'OFID1429',NULL,'new'),('Kina','Saltman','Visible Policing ','Constable','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1430',NULL,'new'),('Jacki','Sterback','Internal Stability ','General','Macassar Police Station',NULL,NULL,'OFID1431',NULL,'new'),('Fallon','Kerfoot','Community Relations ','Lieutenant General','Maitland Police Station',NULL,NULL,'OFID1432',NULL,'new'),('Precious','Brabble','Supporting Services ','Major General','Manenberg Police Station',NULL,NULL,'OFID1433',NULL,'new'),('Glory','Ona','Human Resources Management ','Brigadier','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1434',NULL,'new'),('Tamesha','Tyburski','Crime Combating and Investigation ','Colonel','Milnerton Police Station',NULL,NULL,'OFID1435',NULL,'new'),('Brande','Cutlip','Visible Policing ','Lieutenant Colonel','Mitchells Plain Police Station',NULL,NULL,'OFID1436',NULL,'new'),('Olene','Skubis','Internal Stability ','Captain','Mowbray Police Station',NULL,NULL,'OFID1437',NULL,'new'),('Carey','Marchetta','Community Relations ','Warrant','Muizenberg Police Station',NULL,NULL,'OFID1438',NULL,'new'),('Launa','Torez','Supporting Services ','Sergeant','Nyanga Police Station',NULL,NULL,'OFID1439',NULL,'new'),('Dominga','Whitrock','Human Resources Management ','Constable','Ocean View Police Station',NULL,NULL,'OFID1440',NULL,'new'),('Dwight','Belyea','Crime Combating and Investigation ','General','Parow Police Station',NULL,NULL,'OFID1441',NULL,'new'),('Cornell','Mccrossin','Visible Policing ','Lieutenant General','Phillipi Police Station',NULL,NULL,'OFID1442',NULL,'new'),('Alverta','Topete','Internal Stability ','Major General','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1443',NULL,'new'),('Felicia','Claybrooks','Community Relations ','Brigadier','Pinelands Police Station',NULL,NULL,'OFID1444',NULL,'new'),('Carmen','Gillham','Supporting Services ','Colonel','Ravensmead Police Station',NULL,NULL,'OFID1445',NULL,'new'),('Ashlee','Beyl','Human Resources Management ','Lieutenant Colonel','Rondebosch Police Station',NULL,NULL,'OFID1446',NULL,'new'),('Vannessa','Land','Crime Combating and Investigation ','Captain','Sea Point Police Station',NULL,NULL,'OFID1447',NULL,'new'),('Patti','Rempel','Visible Policing ','Warrant','Simon\'s Town Police Station',NULL,NULL,'OFID1448',NULL,'new'),('German','Meyerhoff','Internal Stability ','Sergeant','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1449',NULL,'new'),('Anika','Marse','Community Relations ','Constable','Somerset West Police Station',NULL,NULL,'OFID1450',NULL,'new'),('Cristina','Marola','Supporting Services ','General','Steenberg Police Station',NULL,NULL,'OFID1451',NULL,'new'),('Lemuel','Allis','Human Resources Management ','Lieutenant General','Stellenbosch Police Station',NULL,NULL,'OFID1452',NULL,'new'),('Joaquin','Hysom','Crime Combating and Investigation ','Major General','Strand Police Station',NULL,NULL,'OFID1453',NULL,'new'),('Kerrie','Makuch','Visible Policing ','Brigadier','Strandfontein Police Station',NULL,NULL,'OFID1454',NULL,'new'),('Alaine','Raterman','Internal Stability ','Colonel','Table Bay Harbour Police Station',NULL,NULL,'OFID1455',NULL,'new'),('Shannon','Kobayashi','Community Relations ','Lieutenant Colonel','Table View Police Station',NULL,NULL,'OFID1456',NULL,'new'),('Corinne','Holman','Supporting Services ','Captain','Woodstock Police Station',NULL,NULL,'OFID1457',NULL,'new'),('Heidy','Hallford','Human Resources Management ','Warrant','Wynberg Police Station',NULL,NULL,'OFID1458',NULL,'new'),('Marylyn','Shonerd','Crime Combating and Investigation ','Sergeant','Athlone Police Station',NULL,NULL,'OFID1459',NULL,'new'),('Maryln','Mortenson','Visible Policing ','Constable','Belhar Police Station (satellite)',NULL,NULL,'OFID1460',NULL,'new'),('Pearlie','Flori','Internal Stability ','General','Bellvile Police Station',NULL,NULL,'OFID1461',NULL,'new'),('Nina','Yaklin','Community Relations ','Lieutenant General','Bellvile South Police Station',NULL,NULL,'OFID1462',NULL,'new'),('Vivienne','Torrain','Supporting Services ','Major General','Bishop Lavis Police Station',NULL,NULL,'OFID1463',NULL,'new'),('Jacob','Kippel','Human Resources Management ','Brigadier','Bothasig Police Station',NULL,NULL,'OFID1464',NULL,'new'),('Tula','Nahmias','Crime Combating and Investigation ','Colonel','Brackenfell Police Station',NULL,NULL,'OFID1465',NULL,'new'),('Berry','Scandalis','Visible Policing ','Lieutenant Colonel','Camps Bay Police Station',NULL,NULL,'OFID1466',NULL,'new'),('Kaycee','Carsten','Internal Stability ','Captain','Cape Town Central Police Station',NULL,NULL,'OFID1467',NULL,'new'),('Melvin','Setter','Community Relations ','Warrant','Cape Town Airport Police Station',NULL,NULL,'OFID1468',NULL,'new'),('Brianne','Matsumura','Supporting Services ','Sergeant','Claremont Police Station',NULL,NULL,'OFID1469',NULL,'new'),('Eugene','Pelzer','Human Resources Management ','Constable','Delft Police Station',NULL,NULL,'OFID1470',NULL,'new'),('Margery','Rohrs','Crime Combating and Investigation ','General','Diep River Police Station',NULL,NULL,'OFID1471',NULL,'new'),('Noel','Sarra','Visible Policing ','Lieutenant General','Durbanville Police Station',NULL,NULL,'OFID1472',NULL,'new'),('Beula','Lingo','Internal Stability ','Major General','Elsies River Police Station',NULL,NULL,'OFID1473',NULL,'new'),('Sheridan','Mckenize','Community Relations ','Brigadier','Fish Hoek Police Station',NULL,NULL,'OFID1474',NULL,'new'),('Dino','Meinert','Supporting Services ','Colonel','Goodwood Police Station',NULL,NULL,'OFID1475',NULL,'new'),('Rebbeca','Rubinstein','Human Resources Management ','Lieutenant Colonel','Grassy Park Police Station',NULL,NULL,'OFID1476',NULL,'new'),('Celia','Reisling','Crime Combating and Investigation ','Captain','Gugulethu Police Station',NULL,NULL,'OFID1477',NULL,'new'),('Stefania','Weatherwax','Visible Policing ','Warrant','Harare Police Station (Satellite)',NULL,NULL,'OFID1478',NULL,'new'),('Leah','Luchterhand','Internal Stability ','Sergeant','Hout Bay Police Station',NULL,NULL,'OFID1479',NULL,'new'),('Billy','Selma','Community Relations ','Constable','Kensington Police Station',NULL,NULL,'OFID1480',NULL,'new'),('Doug','Lucore','Supporting Services ','General','Khayelitsha Police Station',NULL,NULL,'OFID1481',NULL,'new'),('Veronica','Mcclodden','Human Resources Management ','Lieutenant General','Kirstenhof Police Station',NULL,NULL,'OFID1482',NULL,'new'),('Laquanda','Kho','Crime Combating and Investigation ','Major General','Kleinvlei Police Station',NULL,NULL,'OFID1483',NULL,'new'),('Mohammad','Poitra','Visible Policing ','Brigadier','Kraaifontein Police Station',NULL,NULL,'OFID1484',NULL,'new'),('Mozell','Westad','Internal Stability ','Colonel','Kuils River Police Station',NULL,NULL,'OFID1485',NULL,'new'),('Bronwyn','Bridgford','Community Relations ','Lieutenant Colonel','Langa Police Station',NULL,NULL,'OFID1486',NULL,'new'),('Jeff','Brossoit','Supporting Services ','Captain','Lansdowne Police Station',NULL,NULL,'OFID1487',NULL,'new'),('Shantay','Hopman','Human Resources Management ','Warrant','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1488',NULL,'new'),('Chantay','Jirsa','Crime Combating and Investigation ','Sergeant','Macassar Police Station',NULL,NULL,'OFID1489',NULL,'new'),('Keneth','Stpierrie','Visible Policing ','Constable','Maitland Police Station',NULL,NULL,'OFID1490',NULL,'new'),('Alton','Rampy','Internal Stability ','General','Manenberg Police Station',NULL,NULL,'OFID1491',NULL,'new'),('Patrick','Teisberg','Community Relations ','Lieutenant General','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1492',NULL,'new'),('Theron','Merriam','Supporting Services ','Major General','Milnerton Police Station',NULL,NULL,'OFID1493',NULL,'new'),('Pilar','Seelig','Human Resources Management ','Brigadier','Mitchells Plain Police Station',NULL,NULL,'OFID1494',NULL,'new'),('Lashunda','Argiro','Crime Combating and Investigation ','Colonel','Mowbray Police Station',NULL,NULL,'OFID1495',NULL,'new'),('Verda','Chiphe','Visible Policing ','Lieutenant Colonel','Muizenberg Police Station',NULL,NULL,'OFID1496',NULL,'new'),('Ashley','Tropp','Internal Stability ','Captain','Nyanga Police Station',NULL,NULL,'OFID1497',NULL,'new'),('Vesta','Havely','Community Relations ','Warrant','Ocean View Police Station',NULL,NULL,'OFID1498',NULL,'new'),('Emogene','Ritthaler','Supporting Services ','Sergeant','Parow Police Station',NULL,NULL,'OFID1499',NULL,'new'),('Shayne','Mordhorst','Human Resources Management ','Constable','Phillipi Police Station',NULL,NULL,'OFID1500',NULL,'new'),('Franchesca','Charry','Crime Combating and Investigation ','General','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1501',NULL,'new'),('Elmira','Ringlein','Visible Policing ','Lieutenant General','Pinelands Police Station',NULL,NULL,'OFID1502',NULL,'new'),('Destiny','Madlem','Internal Stability ','Major General','Ravensmead Police Station',NULL,NULL,'OFID1503',NULL,'new'),('Gaston','Szumski','Community Relations ','Brigadier','Rondebosch Police Station',NULL,NULL,'OFID1504',NULL,'new'),('Ronna','Mittler','Supporting Services ','Colonel','Sea Point Police Station',NULL,NULL,'OFID1505',NULL,'new'),('Angelica','Poisso','Human Resources Management ','Lieutenant Colonel','Simon\'s Town Police Station',NULL,NULL,'OFID1506',NULL,'new'),('Casie','Arzilli','Crime Combating and Investigation ','Captain','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1507',NULL,'new'),('Magdalene','Cocherell','Visible Policing ','Warrant','Somerset West Police Station',NULL,NULL,'OFID1508',NULL,'new'),('Erasmo','Gath','Internal Stability ','Sergeant','Steenberg Police Station',NULL,NULL,'OFID1509',NULL,'new'),('Rosalia','Ziv','Community Relations ','Constable','Stellenbosch Police Station',NULL,NULL,'OFID1510',NULL,'new'),('Lyda','Cronholm','Supporting Services ','General','Strand Police Station',NULL,NULL,'OFID1511',NULL,'new'),('Lisandra','Stueber','Human Resources Management ','Lieutenant General','Strandfontein Police Station',NULL,NULL,'OFID1512',NULL,'new'),('Sabina','Prok','Crime Combating and Investigation ','Major General','Table Bay Harbour Police Station',NULL,NULL,'OFID1513',NULL,'new'),('Elenore','Gomoran','Visible Policing ','Brigadier','Table View Police Station',NULL,NULL,'OFID1514',NULL,'new'),('Brynn','Capra','Internal Stability ','Colonel','Woodstock Police Station',NULL,NULL,'OFID1515',NULL,'new'),('Leeann','Flory','Community Relations ','Lieutenant Colonel','Wynberg Police Station',NULL,NULL,'OFID1516',NULL,'new'),('Janet','Steimer','Supporting Services ','Captain','Athlone Police Station',NULL,NULL,'OFID1517',NULL,'new'),('Lewis','Mellom','Human Resources Management ','Warrant','Belhar Police Station (satellite)',NULL,NULL,'OFID1518',NULL,'new'),('Jestine','Driscol','Crime Combating and Investigation ','Sergeant','Bellvile Police Station',NULL,NULL,'OFID1519',NULL,'new'),('Tatum','Parks','Visible Policing ','Constable','Bellvile South Police Station',NULL,NULL,'OFID1520',NULL,'new'),('Kayleigh','Bendle','Internal Stability ','General','Bishop Lavis Police Station',NULL,NULL,'OFID1521',NULL,'new'),('Lili','Imondi','Community Relations ','Lieutenant General','Bothasig Police Station',NULL,NULL,'OFID1522',NULL,'new'),('Sunshine','Senechal','Supporting Services ','Major General','Brackenfell Police Station',NULL,NULL,'OFID1523',NULL,'new'),('Remona','Heier','Human Resources Management ','Brigadier','Camps Bay Police Station',NULL,NULL,'OFID1524',NULL,'new'),('Gail','Carris','Crime Combating and Investigation ','Colonel','Cape Town Central Police Station',NULL,NULL,'OFID1525',NULL,'new'),('Dong','Oropeza','Visible Policing ','Lieutenant Colonel','Cape Town Airport Police Station',NULL,NULL,'OFID1526',NULL,'new'),('Larue','Ocacio','Internal Stability ','Captain','Claremont Police Station',NULL,NULL,'OFID1527',NULL,'new'),('Goldie','Sonkens','Community Relations ','Warrant','Delft Police Station',NULL,NULL,'OFID1528',NULL,'new'),('Shelia','Plues','Supporting Services ','Sergeant','Diep River Police Station',NULL,NULL,'OFID1529',NULL,'new'),('Narcisa','Araiza','Human Resources Management ','Constable','Durbanville Police Station',NULL,NULL,'OFID1530',NULL,'new'),('Evelynn','Frede','Crime Combating and Investigation ','General','Elsies River Police Station',NULL,NULL,'OFID1531',NULL,'new'),('Arlean','Calaf','Visible Policing ','Lieutenant General','Fish Hoek Police Station',NULL,NULL,'OFID1532',NULL,'new'),('Tamra','Yu','Internal Stability ','Major General','Goodwood Police Station',NULL,NULL,'OFID1533',NULL,'new'),('Dusti','Maricle','Community Relations ','Brigadier','Grassy Park Police Station',NULL,NULL,'OFID1534',NULL,'new'),('Aracelis','Donham','Supporting Services ','Colonel','Gugulethu Police Station',NULL,NULL,'OFID1535',NULL,'new'),('Filiberto','Fredrikson','Human Resources Management ','Lieutenant Colonel','Harare Police Station (Satellite)',NULL,NULL,'OFID1536',NULL,'new'),('Leana','Stackpole','Crime Combating and Investigation ','Captain','Hout Bay Police Station',NULL,NULL,'OFID1537',NULL,'new'),('Man','Homer','Visible Policing ','Warrant','Kensington Police Station',NULL,NULL,'OFID1538',NULL,'new'),('Lennie','Asley','Internal Stability ','Sergeant','Khayelitsha Police Station',NULL,NULL,'OFID1539',NULL,'new'),('Arletta','Naomi','Community Relations ','Constable','Kirstenhof Police Station',NULL,NULL,'OFID1540',NULL,'new'),('Chana','Perera','Supporting Services ','General','Kleinvlei Police Station',NULL,NULL,'OFID1541',NULL,'new'),('Nell','Pao','Human Resources Management ','Lieutenant General','Kraaifontein Police Station',NULL,NULL,'OFID1542',NULL,'new'),('Antonio','Heilig','Crime Combating and Investigation ','Major General','Kuils River Police Station',NULL,NULL,'OFID1543',NULL,'new'),('Gerald','Kernagis','Visible Policing ','Brigadier','Langa Police Station',NULL,NULL,'OFID1544',NULL,'new'),('Sueann','Mandril','Internal Stability ','Colonel','Lansdowne Police Station',NULL,NULL,'OFID1545',NULL,'new'),('Alayna','Hoyal','Community Relations ','Lieutenant Colonel','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1546',NULL,'new'),('Talia','Marthe','Supporting Services ','Captain','Macassar Police Station',NULL,NULL,'OFID1547',NULL,'new'),('Pansy','Kopan','Human Resources Management ','Warrant','Maitland Police Station',NULL,NULL,'OFID1548',NULL,'new'),('Royce','Saik','Crime Combating and Investigation ','Sergeant','Manenberg Police Station',NULL,NULL,'OFID1549',NULL,'new'),('Cherelle','Sorrel','Visible Policing ','Constable','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1550',NULL,'new'),('Dudley','Dibartolo','Internal Stability ','General','Milnerton Police Station',NULL,NULL,'OFID1551',NULL,'new'),('Nettie','Aldaco','Community Relations ','Lieutenant General','Mitchells Plain Police Station',NULL,NULL,'OFID1552',NULL,'new'),('Carline','Bulcao','Supporting Services ','Major General','Mowbray Police Station',NULL,NULL,'OFID1553',NULL,'new'),('Shanda','Lunger','Human Resources Management ','Brigadier','Muizenberg Police Station',NULL,NULL,'OFID1554',NULL,'new'),('Emilio','Withers','Crime Combating and Investigation ','Colonel','Nyanga Police Station',NULL,NULL,'OFID1555',NULL,'new'),('Lovetta','Study','Visible Policing ','Lieutenant Colonel','Ocean View Police Station',NULL,NULL,'OFID1556',NULL,'new'),('Felice','Gone','Internal Stability ','Captain','Parow Police Station',NULL,NULL,'OFID1557',NULL,'new'),('Stefania','Leadbeater','Community Relations ','Warrant','Phillipi Police Station',NULL,NULL,'OFID1558',NULL,'new'),('Margarita','Orloski','Supporting Services ','Sergeant','Phillipi East Police Station (satellite)',NULL,NULL,'OFID1559',NULL,'new'),('Paul','Farrin','Human Resources Management ','Constable','Pinelands Police Station',NULL,NULL,'OFID1560',NULL,'new'),('Anglea','Tritten','Crime Combating and Investigation ','General','Ravensmead Police Station',NULL,NULL,'OFID1561',NULL,'new'),('Ona','Bowhall','Visible Policing ','Lieutenant General','Rondebosch Police Station',NULL,NULL,'OFID1562',NULL,'new'),('Germaine','Hascall','Internal Stability ','Major General','Sea Point Police Station',NULL,NULL,'OFID1563',NULL,'new'),('Vicky','Schellenberge','Community Relations ','Brigadier','Simon\'s Town Police Station',NULL,NULL,'OFID1564',NULL,'new'),('Carolann','Gross','Supporting Services ','Colonel','Sir Lowry\'s Pass Police Station (satellite of Somerset West)',NULL,NULL,'OFID1565',NULL,'new'),('Rusty','Adelsperger','Human Resources Management ','Lieutenant Colonel','Somerset West Police Station',NULL,NULL,'OFID1566',NULL,'new'),('Cassandra','Bludworth','Crime Combating and Investigation ','Captain','Steenberg Police Station',NULL,NULL,'OFID1567',NULL,'new'),('Teresita','Gesell','Visible Policing ','Warrant','Stellenbosch Police Station',NULL,NULL,'OFID1568',NULL,'new'),('Evangelina','Gius','Internal Stability ','Sergeant','Strand Police Station',NULL,NULL,'OFID1569',NULL,'new'),('Marlon','Tromblay','Community Relations ','Constable','Strandfontein Police Station',NULL,NULL,'OFID1570',NULL,'new'),('Quiana','Scarsella','Supporting Services ','General','Table Bay Harbour Police Station',NULL,NULL,'OFID1571',NULL,'new'),('Viki','Humeniuk','Human Resources Management ','Lieutenant General','Table View Police Station',NULL,NULL,'OFID1572',NULL,'new'),('Domitila','Weissmann','Crime Combating and Investigation ','Major General','Woodstock Police Station',NULL,NULL,'OFID1573',NULL,'new'),('Ivan','Aronov','Visible Policing ','Brigadier','Wynberg Police Station',NULL,NULL,'OFID1574',NULL,'new'),('Anabel','Baldock','Internal Stability ','Colonel','Athlone Police Station',NULL,NULL,'OFID1575',NULL,'new'),('Carlton','Blyler','Community Relations ','Lieutenant Colonel','Belhar Police Station (satellite)',NULL,NULL,'OFID1576',NULL,'new'),('Rashida','Vera','Supporting Services ','Captain','Bellvile Police Station',NULL,NULL,'OFID1577',NULL,'new'),('Sherron','Knodel','Human Resources Management ','Warrant','Bellvile South Police Station',NULL,NULL,'OFID1578',NULL,'new'),('Cora','Mossing','Crime Combating and Investigation ','Sergeant','Bishop Lavis Police Station',NULL,NULL,'OFID1579',NULL,'new'),('Altha','Tischner','Visible Policing ','Constable','Bothasig Police Station',NULL,NULL,'OFID1580',NULL,'new'),('Dortha','Yaccarino','Internal Stability ','General','Brackenfell Police Station',NULL,NULL,'OFID1581',NULL,'new'),('Diego','Augle','Community Relations ','Lieutenant General','Camps Bay Police Station',NULL,NULL,'OFID1582',NULL,'new'),('Peggy','Khov','Supporting Services ','Major General','Cape Town Central Police Station',NULL,NULL,'OFID1583',NULL,'new'),('Walton','Yuki','Human Resources Management ','Brigadier','Cape Town Airport Police Station',NULL,NULL,'OFID1584',NULL,'new'),('Vallie','Yafaie','Crime Combating and Investigation ','Colonel','Claremont Police Station',NULL,NULL,'OFID1585',NULL,'new'),('Tony','Diazdeleon','Visible Policing ','Lieutenant Colonel','Delft Police Station',NULL,NULL,'OFID1586',NULL,'new'),('Val','Villot','Internal Stability ','Captain','Diep River Police Station',NULL,NULL,'OFID1587',NULL,'new'),('Mel','Picciuto','Community Relations ','Warrant','Durbanville Police Station',NULL,NULL,'OFID1588',NULL,'new'),('Isabella','Piatkowski','Supporting Services ','Sergeant','Elsies River Police Station',NULL,NULL,'OFID1589',NULL,'new'),('Erasmo','Rhea','Human Resources Management ','Constable','Fish Hoek Police Station',NULL,NULL,'OFID1590',NULL,'new'),('Ivory','Lohrenz','Crime Combating and Investigation ','General','Goodwood Police Station',NULL,NULL,'OFID1591',NULL,'new'),('Nikita','Walka','Visible Policing ','Lieutenant General','Grassy Park Police Station',NULL,NULL,'OFID1592',NULL,'new'),('Aleta','Ligons','Internal Stability ','Major General','Gugulethu Police Station',NULL,NULL,'OFID1593',NULL,'new'),('Owen','Jentzen','Community Relations ','Brigadier','Harare Police Station (Satellite)',NULL,NULL,'OFID1594',NULL,'new'),('Pauline','Fling','Supporting Services ','Colonel','Hout Bay Police Station',NULL,NULL,'OFID1595',NULL,'new'),('Tijuana','Machalek','Human Resources Management ','Lieutenant Colonel','Kensington Police Station',NULL,NULL,'OFID1596',NULL,'new'),('Ahmad','Alsaqri','Crime Combating and Investigation ','Captain','Khayelitsha Police Station',NULL,NULL,'OFID1597',NULL,'new'),('Jamika','Conoly','Visible Policing ','Warrant','Kirstenhof Police Station',NULL,NULL,'OFID1598',NULL,'new'),('Derrick','Dolloff','Internal Stability ','Sergeant','Kleinvlei Police Station',NULL,NULL,'OFID1599',NULL,'new'),('Jacquelyne','Reibman','Community Relations ','Constable','Kraaifontein Police Station',NULL,NULL,'OFID1600',NULL,'new'),('Zachary','Freeburger','Supporting Services ','General','Kuils River Police Station',NULL,NULL,'OFID1601',NULL,'new'),('Sophia','Gaucher','Human Resources Management ','Lieutenant General','Langa Police Station',NULL,NULL,'OFID1602',NULL,'new'),('Isabelle','Kono','Crime Combating and Investigation ','Major General','Lansdowne Police Station',NULL,NULL,'OFID1603',NULL,'new'),('Ronnie','Brigman','Visible Policing ','Brigadier','Lingelethu West Police Station (satellite)',NULL,NULL,'OFID1604',NULL,'new'),('Krystina','Schlabaugh','Internal Stability ','Colonel','Macassar Police Station',NULL,NULL,'OFID1605',NULL,'new'),('Rosita','Ausdemore','Community Relations ','Lieutenant Colonel','Maitland Police Station',NULL,NULL,'OFID1606',NULL,'new'),('Huey','Stancil','Supporting Services ','Captain','Manenberg Police Station',NULL,NULL,'OFID1607',NULL,'new'),('Elbert','Fiorino','Human Resources Management ','Warrant','Mfuleni Police Station (satellite)',NULL,NULL,'OFID1608',NULL,'new'),('Pura','Manciel','Crime Combating and Investigation ','Sergeant','Milnerton Police Station',NULL,NULL,'OFID1609',NULL,'new'),('Alesia','Katie','Visible Policing ','Constable','Mitchells Plain Police Station',NULL,NULL,'OFID1610',NULL,'new'),('Avery','Veit','Internal Stability ','General','Mowbray Police Station',NULL,NULL,'OFID1611',NULL,'new'),('Reid','Euresti','Community Relations ','Lieutenant General','Muizenberg Police Station',NULL,NULL,'OFID1612',NULL,'new'),('Charlette','Brenning','Supporting Services ','Major General','Nyanga Police Station',NULL,NULL,'OFID1613',NULL,'new'),('Celestina','Keeny','Human Resources Management ','Brigadier','Ocean View Police Station',NULL,NULL,'OFID1614',NULL,'new'),('Mi','Richan','Crime Combating and Investigation ','Colonel','Parow Police Station',NULL,NULL,'OFID1615',NULL,'new');
/*!40000 ALTER TABLE `police_user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_of_crime`
--

DROP TABLE IF EXISTS `type_of_crime`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_of_crime` (
  `crimeID` varchar(10) NOT NULL,
  `crimeName` varchar(150) NOT NULL,
  `crimeCategory` varchar(150) NOT NULL,
  PRIMARY KEY (`crimeID`),
  UNIQUE KEY `crimeID` (`crimeID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_of_crime`
--

LOCK TABLES `type_of_crime` WRITE;
/*!40000 ALTER TABLE `type_of_crime` DISABLE KEYS */;
INSERT INTO `type_of_crime` VALUES ('AR1','Carjacking','Subcategories of aggravated robbery'),('AR2','Truck hijacking','Subcategories of aggravated robbery'),('AR3','Robbery at residential premises','Subcategories of aggravated robbery'),('AR4','Robbery at non-residential premises','Subcategories of aggravated robbery'),('AR5','Bank robbery','Subcategories of aggravated robbery'),('AR6','Robbery of cash in transit','Subcategories of aggravated robbery'),('CC1','Murder','Contact Crimes (Crimes against the person)'),('CC2','Sexual offences','Contact Crimes (Crimes against the person)'),('CC3','Attempted Murder','Contact Crimes (Crimes against the person)'),('CC4','Assault with the intent to inflict grievous bodily harm','Contact Crimes (Crimes against the person)'),('CC5','Common assault','Contact Crimes (Crimes against the person)'),('CC6','Common robbery','Contact Crimes (Crimes against the person)'),('CC7','Robbery with aggravating circumstances','Contact Crimes (Crimes against the person)'),('CPA1','Illegal possession of firearms and ammunition','Crime detected as a result of police action'),('CPA2','Drug related crime','Crime detected as a result of police action'),('CPA3','Driving under the influence of alcohol or drugs','Crime detected as a result of police action'),('CPA4','Sexual offences as a result of police action','Crime detected as a result of police action'),('CR1','Arson','Contact related crimes'),('CR2','Malicious damage to property','Contact related crimes'),('OC1','Culpable homicide','Other'),('OC2','Public violence','Other'),('OC3','Crimen injuria','Other'),('OC4','Neglect and ill-treatment of children','Other'),('OC5','Kidnapping','Other'),('OS1','All theft not mentioned elsewhere','Other serious crimes'),('OS2','Commercial crime','Other serious crimes'),('OS3','Shoplifting','Other serious crimes'),('PR1','Burglary at non-residential premises','Property Related crimes'),('PR2','Burglary at residential premises','Property Related crimes'),('PR3','Theft of motor vehicle and motorcycle','Property Related crimes'),('PR4','Theft out of or from motor vehicle','Property Related crimes'),('PR5','Stock-theft','Property Related crimes');
/*!40000 ALTER TABLE `type_of_crime` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'capewatchdb'
--

--
-- Dumping routines for database 'capewatchdb'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-06 16:12:35
