-- phpMyAdmin SQL Dump
-- version 4.7.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2018 at 12:00 PM
-- Server version: 10.1.25-MariaDB
-- PHP Version: 5.6.31

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `champs_gym`
--

-- --------------------------------------------------------

--
-- Table structure for table `gym_trainers`
--

CREATE TABLE `gym_trainers` (
  `Trainer_No` int(11) NOT NULL,
  `TrainerName` text NOT NULL,
  `TrainerSurname` text NOT NULL,
  `TrainerFee` text NOT NULL,
  `TrainerFocusArea` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `gym_trainers`
--

INSERT INTO `gym_trainers` (`Trainer_No`, `TrainerName`, `TrainerSurname`, `TrainerFee`, `TrainerFocusArea`) VALUES
(1101, 'Sbu', 'Boso', '250', 'Cardio'),
(1102, 'Charnay', 'Ray', '500', 'Strength and conditioning'),
(1103, 'Floyd', 'Mayweather', '700', 'Boxing');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
