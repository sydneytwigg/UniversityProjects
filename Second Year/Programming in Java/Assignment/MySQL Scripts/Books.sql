--Sydney Twigg
--M8C3XRSN8
--Database creation SQL scripts

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

