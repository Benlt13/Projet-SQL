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
-- Table structure for table `ModelesVoitures`
--

CREATE TABLE `ModelesVoitures` (
  `ID_Modele` int(11) NOT NULL,
  `Marque` varchar(50) DEFAULT NULL,
  `Nom_Modele` varchar(50) DEFAULT NULL,
  `Annee_Lancement` int(11) DEFAULT NULL,
  `ID_Type_Moteur` int(11) DEFAULT NULL,
  `ID_Fondateur` int(11) DEFAULT NULL,
  `Prix` decimal(10,2) DEFAULT NULL,
  `Puissance_Ch` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `ModelesVoitures`
--

INSERT INTO `ModelesVoitures` (`ID_Modele`, `Marque`, `Nom_Modele`, `Annee_Lancement`, `ID_Type_Moteur`, `ID_Fondateur`, `Prix`, `Puissance_Ch`) VALUES
(1, 'Peugeot', '208', 2012, 1, 1, 18000.00, 100),
(2, 'Volkswagen', 'Golf 8r', 2019, 2, 2, 40000.00, 340),
(3, 'Audi', 'A3', 1996, 1, 3, 35000.00, 150),
(4, 'Mercedes', 'EQC', 2022, 4, 4, 40000.00, 400),
(5, 'BMW', 'Serie 3', 1975, 2, 5, 25000.00, 180);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `ModelesVoitures`
--
ALTER TABLE `ModelesVoitures`
  ADD PRIMARY KEY (`ID_Modele`),
  ADD KEY `ID_Type_Moteur` (`ID_Type_Moteur`),
  ADD KEY `Marque` (`Marque`),
  ADD KEY `ID_Fondateur` (`ID_Fondateur`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `ModelesVoitures`
--
ALTER TABLE `ModelesVoitures`
  ADD CONSTRAINT `ModelesVoitures_ibfk_1` FOREIGN KEY (`ID_Type_Moteur`) REFERENCES `TypesMoteurs` (`ID_Type_Moteur`),
  ADD CONSTRAINT `ModelesVoitures_ibfk_2` FOREIGN KEY (`Marque`) REFERENCES `MarquesFondateurs` (`Marque`),
  ADD CONSTRAINT `ModelesVoitures_ibfk_3` FOREIGN KEY (`ID_Fondateur`) REFERENCES `MarquesFondateurs` (`ID_Fondateur`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
