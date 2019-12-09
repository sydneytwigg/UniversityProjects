--Sydney Twigg
--M8C3XRSN8
--Database creation SQL scripts

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