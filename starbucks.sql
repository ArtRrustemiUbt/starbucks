-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 12, 2023 at 01:22 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `starbucks`
--

-- --------------------------------------------------------

--
-- Table structure for table `klient`
--

CREATE TABLE `klient` (
  `idKlientit` int(11) NOT NULL,
  `emri` varchar(100) NOT NULL,
  `mbiemri` varchar(100) NOT NULL,
  `email` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `passwordi` varchar(255) NOT NULL,
  `roli` tinyint(1) NOT NULL,
  `numriTel` bigint(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `klient`
--

INSERT INTO `klient` (`idKlientit`, `emri`, `mbiemri`, `email`, `username`, `passwordi`, `roli`, `numriTel`) VALUES
(1, 'art', 'rrustemi', 'art@gmail.com', 'art', '123456789', 1, 6546545),
(97, 'rigon', 'vila', 'rigon@gmail.com', 'rigon', '123456789', 1, 65465455),
(98, 'test', 'testi', 'test@gmail.com', 'testi', '123456789', 1, 5654654);

-- --------------------------------------------------------

--
-- Table structure for table `porosit`
--

CREATE TABLE `porosit` (
  `emriKlientit` varchar(100) NOT NULL,
  `mbiemriKlientit` varchar(100) NOT NULL,
  `emailKlientit` varchar(100) NOT NULL,
  `numriTel` bigint(11) NOT NULL,
  `idPorosis` int(11) NOT NULL,
  `emriUshqimit` varchar(100) NOT NULL,
  `cmimi` int(11) NOT NULL,
  `fotoUshqimit` varchar(255) NOT NULL,
  `lloji` varchar(100) NOT NULL,
  `idKlientit` int(11) NOT NULL,
  `idUshqimit` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `porosit`
--

INSERT INTO `porosit` (`emriKlientit`, `mbiemriKlientit`, `emailKlientit`, `numriTel`, `idPorosis`, `emriUshqimit`, `cmimi`, `fotoUshqimit`, `lloji`, `idKlientit`, `idUshqimit`) VALUES
('Art', 'Rrustemi', 'art.rrustemi@gmail.com', 438052820, 68, 'KAFE', 3, 'CAF11.WEBP', 'KAFE', 1, 12),
('Art', 'Rrustemi', 'art.rrustemi@gmail.com', 438052820, 69, 'KAFE', 3, 'KAFE.JPG', 'HOME', 1, 7),
('Art', 'Rrustemi', 'art.rrustemi@gmail.com', 6546545, 77, 'KAFE', 5, 'HOT-TEAS.JPG', 'KAFE', 1, 2),
('Art', 'Rrustemi', 'art.rrustemi@gmail.com', 6546545, 78, 'KAFE', 5, 'HOT-TEAS.JPG', 'KAFE', 1, 2);

-- --------------------------------------------------------

--
-- Table structure for table `ushqimet`
--

CREATE TABLE `ushqimet` (
  `idUshqimit` int(11) NOT NULL,
  `emri` varchar(100) NOT NULL,
  `cmimi` int(11) NOT NULL,
  `fotoUshqimit` varchar(255) NOT NULL,
  `lloji` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ushqimet`
--

INSERT INTO `ushqimet` (`idUshqimit`, `emri`, `cmimi`, `fotoUshqimit`, `lloji`) VALUES
(2, 'kafe', 5, 'hot-teas.jpg', 'kafe'),
(3, 'kroasant', 2, 'bakery.jpg', 'food'),
(4, 'breakfast', 3, 'hot-breakfast.jpg', 'food'),
(6, 'caffe', 5, 'caf11.webp', 'kafe'),
(7, 'kafe', 3, 'kafe.jpg', 'home'),
(8, 'kafe', 3, 'kafe-1.jpg', 'home'),
(9, 'tea', 4, 'c-cups.jpg', 'merch'),
(10, 'kafe', 3, 'c-cups-1.jpg', 'merch'),
(12, 'kafe', 3, 'caf11.webp', 'kafe'),
(13, 'kafe', 2, 'c-cups-3.jpg', 'kafe');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klient`
--
ALTER TABLE `klient`
  ADD PRIMARY KEY (`idKlientit`);

--
-- Indexes for table `porosit`
--
ALTER TABLE `porosit`
  ADD PRIMARY KEY (`idPorosis`),
  ADD KEY `idKlientit` (`idKlientit`),
  ADD KEY `idUshqimit` (`idUshqimit`);

--
-- Indexes for table `ushqimet`
--
ALTER TABLE `ushqimet`
  ADD PRIMARY KEY (`idUshqimit`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klient`
--
ALTER TABLE `klient`
  MODIFY `idKlientit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;

--
-- AUTO_INCREMENT for table `porosit`
--
ALTER TABLE `porosit`
  MODIFY `idPorosis` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `ushqimet`
--
ALTER TABLE `ushqimet`
  MODIFY `idUshqimit` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `porosit`
--
ALTER TABLE `porosit`
  ADD CONSTRAINT `porosit_ibfk_1` FOREIGN KEY (`idKlientit`) REFERENCES `klient` (`idKlientit`) ON DELETE CASCADE,
  ADD CONSTRAINT `porosit_ibfk_2` FOREIGN KEY (`idUshqimit`) REFERENCES `ushqimet` (`idUshqimit`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
