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
-- Table structure for table `MarquesFondateurs`
--

CREATE TABLE `MarquesFondateurs` (
  `ID_Fondateur` int(11) NOT NULL,
  `Nom_Fondateur` varchar(100) DEFAULT NULL,
  `Marque` varchar(50) DEFAULT NULL,
  `Annee_Creation` int(11) DEFAULT NULL,
  `Pays_Origine` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `MarquesFondateurs`
--

INSERT INTO `MarquesFondateurs` (`ID_Fondateur`, `Nom_Fondateur`, `Marque`, `Annee_Creation`, `Pays_Origine`) VALUES
(1, 'Armand Peugeot', 'Peugeot', 1896, 'France'),
(2, 'Ferdinand Porsche', 'Volkswagen', 1937, 'Allemagne'),
(3, 'August Horch', 'Audi', 1909, 'Allemagne'),
(4, 'Karl Benz', 'Mercedes', 1926, 'Allemagne'),
(5, 'Franz Josef Popp', 'BMW', 1916, 'Allemagne');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `MarquesFondateurs`
--
ALTER TABLE `MarquesFondateurs`
  ADD PRIMARY KEY (`ID_Fondateur`),
  ADD UNIQUE KEY `Marque` (`Marque`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
