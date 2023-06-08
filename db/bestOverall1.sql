-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: db:3306
-- Generation Time: Jun 08, 2023 at 05:11 AM
-- Server version: 8.0.33
-- PHP Version: 8.1.17

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `playerStats`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestOverall1`
--

CREATE TABLE `bestOverall1` (
  `id` int NOT NULL,
  `Elimination_MotinGame` float DEFAULT NULL,
  `FinalBlow_MotinGame` float DEFAULT NULL,
  `AllDamageDone_MotinGame` float DEFAULT NULL,
  `HealingDone_MotinGame` float DEFAULT NULL,
  `DefeniveAit_MotinGame` float DEFAULT NULL,
  `OffeniveAit_MotinGame` float DEFAULT NULL,
  `ObjectiveKill_MotinGame` float DEFAULT NULL,
  `ObjectiveTime_MotinGame` float DEFAULT NULL,
  `Multikill_Bet` float DEFAULT NULL,
  `oloKill_MotinGame` float DEFAULT NULL,
  `TimepentonFire_MotinGame` float DEFAULT NULL,
  `MeleeFinalBlow_MotinGame` float DEFAULT NULL,
  `EnvironmentalKill_MotinGame` float DEFAULT NULL,
  `Killtreak_Bet` float DEFAULT NULL,
  `HeroDamageDone_MotinGame` float DEFAULT NULL,
  `BarrierDamageDone_MotinGame` float DEFAULT NULL,
  `Ait_MotinGame` float DEFAULT NULL,
  `ObjectiveContetTime_MotinGame` float DEFAULT NULL,
  `ReconAit_MotinGame` float DEFAULT NULL,
  `HeroDamageDone_Avgper10Min` float DEFAULT NULL,
  `day` date NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bestOverall1`
--

INSERT INTO `bestOverall1` (`id`, `Elimination_MotinGame`, `FinalBlow_MotinGame`, `AllDamageDone_MotinGame`, `HealingDone_MotinGame`, `DefeniveAit_MotinGame`, `OffeniveAit_MotinGame`, `ObjectiveKill_MotinGame`, `ObjectiveTime_MotinGame`, `Multikill_Bet`, `oloKill_MotinGame`, `TimepentonFire_MotinGame`, `MeleeFinalBlow_MotinGame`, `EnvironmentalKill_MotinGame`, `Killtreak_Bet`, `HeroDamageDone_MotinGame`, `BarrierDamageDone_MotinGame`, `Ait_MotinGame`, `ObjectiveContetTime_MotinGame`, `ReconAit_MotinGame`, `HeroDamageDone_Avgper10Min`, `day`, `username`) VALUES
(2, 49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 0, '2023-06-07', 'Ninjaman7000-1418'),
(3, 40, 21, 17345, 13294, 29, 7, 20, 326, 5, 21, 533, NULL, 1, 17, 13794, 5393, 29, 326, 1, 5938, '2023-06-07', 'ComradeJuice-1182'),
(4, 26, 16, 26822, 15433, 37, 26, 14, 445, 4, 16, 421, 1, 1, 14, 8613, 6255, 42, 246, NULL, 2226, '2023-06-08', 'DirtSoup-1478'),
(5, 45, 25, 24747, 5995, 14, 16, 36, 705, 5, 25, 809, NULL, 1, 23, 16582, 12421, 17, 435, 2, 7904, '2023-06-08', 'Deigs-11887'),
(6, 49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, NULL, '2023-06-08', 'Ninjaman7000-1418'),
(7, 40, 21, 17345, 13294, 29, 7, 20, 331, 5, 21, 533, NULL, 1, 17, 13794, 5393, 29, 331, 1, 5826, '2023-06-08', 'ComradeJuice-1182');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bestOverall1`
--
ALTER TABLE `bestOverall1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bestOverall1`
--
ALTER TABLE `bestOverall1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
