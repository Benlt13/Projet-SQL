-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: mysql-benji.alwaysdata.net
-- Generation Time: Nov 12, 2024 at 08:34 AM
-- Server version: 10.11.8-MariaDB
-- PHP Version: 7.4.33

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `benji_projet2`
--

-- --------------------------------------------------------

--
-- Table structure for table `TypesMoteurs`
--

CREATE TABLE `TypesMoteurs` (
  `ID_Type_Moteur` int(11) NOT NULL,
  `Type_Moteur` varchar(50) DEFAULT NULL,
  `Description_Moteur` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `TypesMoteurs`
--

INSERT INTO `TypesMoteurs` (`ID_Type_Moteur`, `Type_Moteur`, `Description_Moteur`) VALUES
(1, 'Essence', 'Moteur à combustion interne alimenté à essence.'),
(2, 'Diesel', 'Moteur à combustion interne alimenté au diesel.'),
(3, 'Hybride', 'Moteur combinant essence et électrique.'),
(4, 'Electrique', 'Moteur entièrement électrique.');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `TypesMoteurs`
--
ALTER TABLE `TypesMoteurs`
  ADD PRIMARY KEY (`ID_Type_Moteur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
