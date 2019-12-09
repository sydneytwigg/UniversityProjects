--Sydney Twigg
--M8C3XRSN8
--Database creation SQL scripts

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