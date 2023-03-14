-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 14, 2023 at 02:05 AM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `prueba4`
--

-- --------------------------------------------------------

--
-- Table structure for table `sequelizemeta`
--

CREATE TABLE `sequelizemeta` (
  `name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `sequelizemeta`
--

INSERT INTO `sequelizemeta` (`name`) VALUES
('20230312212849-create-tbl-documento.js'),
('20230312212928-create-tbl-rol.js'),
('20230312213330-create-tbl-usuario.js'),
('20230312213537-create-tbl-calificacion.js'),
('20230312221123-create-tbl-tipo-peticion.js'),
('20230312221814-create-tbl-peticion.js'),
('20230312225033-create-tbl-tipo-reporte.js'),
('20230312225249-create-tbl-reporte.js'),
('20230312230733-create-tbl-comentario.js'),
('20230312231821-create-tbl-imagen.js');

-- --------------------------------------------------------

--
-- Table structure for table `tblcalificacions`
--

CREATE TABLE `tblcalificacions` (
  `calId` int(5) NOT NULL,
  `calPun` int(5) DEFAULT NULL,
  `calSug` varchar(200) DEFAULT NULL,
  `calUsuId` int(5) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblcomentarios`
--

CREATE TABLE `tblcomentarios` (
  `comId` int(5) NOT NULL,
  `comDes` varchar(255) DEFAULT NULL,
  `comEst` tinyint(1) DEFAULT NULL,
  `comPetId` int(5) DEFAULT NULL,
  `comUsuId` int(5) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbldocumentos`
--

CREATE TABLE `tbldocumentos` (
  `docId` int(5) NOT NULL,
  `docTipo` char(2) DEFAULT NULL,
  `docNum` varchar(12) DEFAULT NULL,
  `docLugExpe` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblimagens`
--

CREATE TABLE `tblimagens` (
  `imgId` int(5) NOT NULL,
  `imgUrl` varchar(100) DEFAULT NULL,
  `imgPetId` int(5) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblpeticions`
--

CREATE TABLE `tblpeticions` (
  `petId` int(5) NOT NULL,
  `petFec` datetime NOT NULL,
  `petLoc` varchar(250) NOT NULL,
  `petBar` varchar(50) NOT NULL,
  `petEst` tinyint(1) NOT NULL,
  `petAsu` varchar(100) NOT NULL,
  `petDes` text DEFAULT NULL,
  `petSol` text DEFAULT NULL,
  `petApo` int(5) DEFAULT NULL,
  `petTipoPetId` tinyint(1) DEFAULT NULL,
  `petUsuId` int(5) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblreportes`
--

CREATE TABLE `tblreportes` (
  `repId` int(5) NOT NULL,
  `repEst` tinyint(1) NOT NULL,
  `repDes` varchar(250) DEFAULT NULL,
  `repUsuId` int(5) DEFAULT NULL,
  `repTipRepId` int(1) DEFAULT NULL,
  `repPetId` int(5) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblrols`
--

CREATE TABLE `tblrols` (
  `rolId` int(1) NOT NULL,
  `rolNom` varchar(25) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltipopeticions`
--

CREATE TABLE `tbltipopeticions` (
  `tipPetId` tinyint(1) NOT NULL,
  `tipPetNom` varchar(100) NOT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbltiporeportes`
--

CREATE TABLE `tbltiporeportes` (
  `tipRepId` int(1) NOT NULL,
  `tipRepNom` varchar(50) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tblusuarios`
--

CREATE TABLE `tblusuarios` (
  `usuId` int(5) NOT NULL,
  `usuAli` varchar(20) NOT NULL,
  `usuNom` varchar(20) NOT NULL,
  `usuApe` varchar(20) NOT NULL,
  `usuEma` varchar(50) NOT NULL,
  `usuPas` varchar(25) NOT NULL,
  `usuTel` varchar(15) NOT NULL,
  `usuEst` tinyint(1) DEFAULT NULL,
  `usuDir` varchar(15) DEFAULT NULL,
  `usuRolId` int(1) DEFAULT NULL,
  `usuDocId` int(5) DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sequelizemeta`
--
ALTER TABLE `sequelizemeta`
  ADD PRIMARY KEY (`name`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `tblcalificacions`
--
ALTER TABLE `tblcalificacions`
  ADD PRIMARY KEY (`calId`),
  ADD KEY `calUsuId` (`calUsuId`);

--
-- Indexes for table `tblcomentarios`
--
ALTER TABLE `tblcomentarios`
  ADD PRIMARY KEY (`comId`),
  ADD KEY `comPetId` (`comPetId`),
  ADD KEY `comUsuId` (`comUsuId`);

--
-- Indexes for table `tbldocumentos`
--
ALTER TABLE `tbldocumentos`
  ADD PRIMARY KEY (`docId`),
  ADD UNIQUE KEY `docNum` (`docNum`);

--
-- Indexes for table `tblimagens`
--
ALTER TABLE `tblimagens`
  ADD PRIMARY KEY (`imgId`),
  ADD KEY `imgPetId` (`imgPetId`);

--
-- Indexes for table `tblpeticions`
--
ALTER TABLE `tblpeticions`
  ADD PRIMARY KEY (`petId`),
  ADD KEY `petTipoPetId` (`petTipoPetId`),
  ADD KEY `petUsuId` (`petUsuId`);

--
-- Indexes for table `tblreportes`
--
ALTER TABLE `tblreportes`
  ADD PRIMARY KEY (`repId`),
  ADD KEY `repUsuId` (`repUsuId`),
  ADD KEY `repTipRepId` (`repTipRepId`),
  ADD KEY `repPetId` (`repPetId`);

--
-- Indexes for table `tblrols`
--
ALTER TABLE `tblrols`
  ADD PRIMARY KEY (`rolId`);

--
-- Indexes for table `tbltipopeticions`
--
ALTER TABLE `tbltipopeticions`
  ADD PRIMARY KEY (`tipPetId`);

--
-- Indexes for table `tbltiporeportes`
--
ALTER TABLE `tbltiporeportes`
  ADD PRIMARY KEY (`tipRepId`);

--
-- Indexes for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD PRIMARY KEY (`usuId`),
  ADD UNIQUE KEY `usuAli` (`usuAli`),
  ADD UNIQUE KEY `usuEma` (`usuEma`),
  ADD KEY `usuRolId` (`usuRolId`),
  ADD KEY `usuDocId` (`usuDocId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tblcalificacions`
--
ALTER TABLE `tblcalificacions`
  MODIFY `calId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblcomentarios`
--
ALTER TABLE `tblcomentarios`
  MODIFY `comId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbldocumentos`
--
ALTER TABLE `tbldocumentos`
  MODIFY `docId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblimagens`
--
ALTER TABLE `tblimagens`
  MODIFY `imgId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblpeticions`
--
ALTER TABLE `tblpeticions`
  MODIFY `petId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblreportes`
--
ALTER TABLE `tblreportes`
  MODIFY `repId` int(5) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblrols`
--
ALTER TABLE `tblrols`
  MODIFY `rolId` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltipopeticions`
--
ALTER TABLE `tbltipopeticions`
  MODIFY `tipPetId` tinyint(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbltiporeportes`
--
ALTER TABLE `tbltiporeportes`
  MODIFY `tipRepId` int(1) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  MODIFY `usuId` int(5) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblcalificacions`
--
ALTER TABLE `tblcalificacions`
  ADD CONSTRAINT `tblcalificacions_ibfk_1` FOREIGN KEY (`calUsuId`) REFERENCES `tblusuarios` (`usuId`);

--
-- Constraints for table `tblcomentarios`
--
ALTER TABLE `tblcomentarios`
  ADD CONSTRAINT `tblcomentarios_ibfk_1` FOREIGN KEY (`comPetId`) REFERENCES `tblpeticions` (`petId`),
  ADD CONSTRAINT `tblcomentarios_ibfk_2` FOREIGN KEY (`comUsuId`) REFERENCES `tblusuarios` (`usuId`);

--
-- Constraints for table `tblimagens`
--
ALTER TABLE `tblimagens`
  ADD CONSTRAINT `tblimagens_ibfk_1` FOREIGN KEY (`imgPetId`) REFERENCES `tblpeticions` (`petId`);

--
-- Constraints for table `tblpeticions`
--
ALTER TABLE `tblpeticions`
  ADD CONSTRAINT `tblpeticions_ibfk_1` FOREIGN KEY (`petTipoPetId`) REFERENCES `tbltipopeticions` (`tipPetId`),
  ADD CONSTRAINT `tblpeticions_ibfk_2` FOREIGN KEY (`petUsuId`) REFERENCES `tblusuarios` (`usuId`);

--
-- Constraints for table `tblreportes`
--
ALTER TABLE `tblreportes`
  ADD CONSTRAINT `tblreportes_ibfk_1` FOREIGN KEY (`repUsuId`) REFERENCES `tblusuarios` (`usuId`),
  ADD CONSTRAINT `tblreportes_ibfk_2` FOREIGN KEY (`repTipRepId`) REFERENCES `tbltiporeportes` (`tipRepId`),
  ADD CONSTRAINT `tblreportes_ibfk_3` FOREIGN KEY (`repPetId`) REFERENCES `tblpeticions` (`petId`);

--
-- Constraints for table `tblusuarios`
--
ALTER TABLE `tblusuarios`
  ADD CONSTRAINT `tblusuarios_ibfk_1` FOREIGN KEY (`usuRolId`) REFERENCES `tblrols` (`rolId`),
  ADD CONSTRAINT `tblusuarios_ibfk_2` FOREIGN KEY (`usuDocId`) REFERENCES `tbldocumentos` (`docId`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
