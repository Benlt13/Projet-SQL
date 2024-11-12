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


/*---------------------------------------------------------TYPESMOTEURS----------------------------------------------*/

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


/*------------------------------------------------MarquesFondateurs-----------------------------------------*/

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



/*
1- Mettre à jour le prix d'un modèle de voiture. (Golf par exemple). 
	UPDATE ModelesVoitures
	SET Prix = Prix * 1.05
	WHERE Nom_Modele = 'Golf' AND Marque = 'Volkswagen';

2- Modifier le nom d'un fondateur d'une marque
	UPDATE MarquesFondateurs
	SET Nom_Fondateur = 'Karl Rapp'
	WHERE Marque = 'BMW';

3- Changer le type de moteur d'un modèle
	UPDATE ModelesVoitures
	SET ID_Type_Moteur = (SELECT ID_Type_Moteur FROM TypesMoteurs WHERE Type_Moteur = 'Hybride')
	WHERE Nom_Modele = '208' AND Marque = 'Peugeot';


7 Requêtes : 

1- Lister tous les modèles de voitures et leurs marques
	SELECT Marque, Nom_Modele FROM ModelesVoitures;

2- Afficher tous les modèles de voitures lancés après 2020 avec leur prix et leur année de lancement :
	SELECT Marque, Prix, Annee_Lancement FROM ModelesVoitures
	WHERE Annee_Lancement > 2020;

3- Lister les modèles de voitures avec leurs types de moteurs
	SELECT m.Marque, m.Nom_Modele, t.Type_Moteur
	FROM ModelesVoitures m 
	JOIN TypesMoteurs t ON m.ID_Type_Moteur = t.ID_Type_Moteur

4- Trouver la puissance moyenne des voitures pour chaque type de moteur
	SELECT t.Type_Moteur, AVG(m.Puissance_Ch) AS 'Puissance Moyenne'
	FROM ModelesVoitures m 
	JOIN TypesMoteurs t ON m.ID_Type_Moteur = t.ID_Type_Moteur
	GROUP BY t.Type_Moteur

5- Lister tous les modèles de voitures pour une marque spécifique et leur année de création :
	SELECT mf.Marque, m.Nom_Modele, mf.Annee_Creation
	FROM ModelesVoitures m 
	JOIN MarquesFondateurs mf ON m.ID_Fondateur = mf.ID_Fondateur
	WHERE mf.Marque = 'Peugeot';

6- Afficher le modèle de voiture avec la puissance la plus élevée et les informations de son type de moteur : 
	SELECT m.Marque, m.Puissance_Ch, t.Type_Moteur
	FROM ModelesVoitures m 
	JOIN TypesMoteurs t ON m.ID_Type_Moteur = t.ID_Type_Moteur
	WHERE m.Puissance_Ch = (SELECT MAX(Puissance_Ch) FROM ModelesVoitures);

7- Lister tous les fondateurs et indiquer s’ils ont des modèles disponibles dans la base de données :
	SELECT mf.Nom_Fondateur, mf.Marque, COUNT(m.ID_Modele) AS Nombre_Modeles
	FROM MarquesFondateurs mf
	LEFT JOIN ModelesVoitures m ON mf.ID_Fondateur = m.ID_Fondateur
	GROUP BY mf.Nom_Fondateur, mf.Marque;
*/
