-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 03, 2023 at 11:47 AM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gorsal`
--

-- --------------------------------------------------------

--
-- Table structure for table `calis`
--

CREATE TABLE `calis` (
  `id` int(11) NOT NULL,
  `adi` text NOT NULL,
  `soyadi` text NOT NULL,
  `ucert` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `calis`
--

INSERT INTO `calis` (`id`, `adi`, `soyadi`, `ucert`) VALUES
(4, 'muhammed', 'korc', 8500),
(5, 'omar', 'korc', 8595);

-- --------------------------------------------------------

--
-- Table structure for table `ekle`
--

CREATE TABLE `ekle` (
  `adi` text NOT NULL,
  `soyadi` text NOT NULL,
  `telefone` int(11) NOT NULL,
  `yas` date NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `ekle`
--

INSERT INTO `ekle` (`adi`, `soyadi`, `telefone`, `yas`, `id`) VALUES
('muhammed', 'korc', 2147483647, '2023-01-02', 5),
('korc', 'omar', 5654, '2023-01-02', 6);

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `username` text NOT NULL,
  `password` text NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`username`, `password`, `id`) VALUES
('admin', '12345', 1),
('korc', '12345', 2);

-- --------------------------------------------------------

--
-- Table structure for table `odeme`
--

CREATE TABLE `odeme` (
  `adi` text NOT NULL,
  `soyadi` text NOT NULL,
  `odemeler` int(11) NOT NULL,
  `odemekkalan` int(11) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `odeme`
--

INSERT INTO `odeme` (`adi`, `soyadi`, `odemeler`, `odemekkalan`, `id`) VALUES
('korc', 'ahmet', 100, 2500, 1),
('omar', 'korc', 120, 2500, 2),
('murat', 'sari', 2500, 1250, 3);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `calis`
--
ALTER TABLE `calis`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `ekle`
--
ALTER TABLE `ekle`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `odeme`
--
ALTER TABLE `odeme`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `calis`
--
ALTER TABLE `calis`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `ekle`
--
ALTER TABLE `ekle`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `odeme`
--
ALTER TABLE `odeme`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
