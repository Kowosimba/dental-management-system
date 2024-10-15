-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 15, 2024 at 03:50 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dental`
--

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `IDnum` varchar(123) NOT NULL,
  `Name` text NOT NULL,
  `Surname` text NOT NULL,
  `Address` text NOT NULL,
  `Gender` text NOT NULL,
  `number` int(30) NOT NULL,
  `DOB` date NOT NULL,
  `Allergies` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`IDnum`, `Name`, `Surname`, `Address`, `Gender`, `number`, `DOB`, `Allergies`) VALUES
('M47-2008542 M47', 'Simbarashe', 'Kowo', '8154 Tynwald South', 'Male', 786500769, '2002-10-07', 'none'),
('w23-234153 M67', 'Tadiwa', 'Pasipanorowa', '5671 Mkoba, Gweru', 'Female', 784121456, '2006-10-02', 'hay fever\ngluten allergy');

-- --------------------------------------------------------

--
-- Table structure for table `prescriptions`
--

CREATE TABLE `prescriptions` (
  `name` text NOT NULL,
  `treatment` text NOT NULL,
  `cost` varchar(23) NOT NULL,
  `medicine` varchar(200) NOT NULL,
  `quantity` int(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `IDnum` varchar(30) NOT NULL,
  `Name` text NOT NULL,
  `Surname` text NOT NULL,
  `workfield` varchar(200) NOT NULL,
  `Gender` text NOT NULL,
  `address` varchar(200) NOT NULL,
  `number` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff`
--

INSERT INTO `staff` (`IDnum`, `Name`, `Surname`, `workfield`, `Gender`, `address`, `number`) VALUES
('C12 647223 H67', 'Tatenda', 'Maphosa', 'Assistant', 'Male', 'Borrwdale brooke 4567', 73182468);

-- --------------------------------------------------------

--
-- Table structure for table `treatement`
--

CREATE TABLE `treatement` (
  `ID` varchar(123) NOT NULL,
  `treatmenttype` varchar(400) NOT NULL,
  `description` varchar(30) NOT NULL,
  `payments` text NOT NULL,
  `fees` varchar(23) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
