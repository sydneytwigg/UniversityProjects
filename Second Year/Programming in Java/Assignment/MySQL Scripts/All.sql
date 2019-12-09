--Sydney Twigg
--M8C3XRSN8
--Database creation SQL scripts


--create database
CREATE DATABASE `javaassignment` /*!40100 DEFAULT CHARACTER SET utf8 */;

--create table bookings
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

--create table books
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

--create table students
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
