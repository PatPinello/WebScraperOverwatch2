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
  `EliminationMotinGame` float DEFAULT NULL,
  `FinalBlowMotinGame` float DEFAULT NULL,
  `AllDamageDoneMotinGame` float DEFAULT NULL,
  `HealingDoneMotinGame` float DEFAULT NULL,
  `DefeniveAitMotinGame` float DEFAULT NULL,
  `OffeniveAitMotinGame` float DEFAULT NULL,
  `ObjectiveKillMotinGame` float DEFAULT NULL,
  `ObjectiveTimeMotinGame` float DEFAULT NULL,
  `MultikillBet` float DEFAULT NULL,
  `SoloKillMotinGame` float DEFAULT NULL,
  `TimepentonFireMotinGame` float DEFAULT NULL,
  `MeleeFinalBlowMotinGame` float DEFAULT NULL,
  `EnvironmentalKillMotinGame` float DEFAULT NULL,
  `KilltreakBet` float DEFAULT NULL,
  `HeroDamageDoneMotinGame` float DEFAULT NULL,
  `BarrierDamageDoneMotinGame` float DEFAULT NULL,
  `AitMotinGame` float DEFAULT NULL,
  `ObjectiveContetTimeMotinGame` float DEFAULT NULL,
  `ReconAitMotinGame` float DEFAULT NULL,
  `HeroDamageDoneAvgper10Min` float DEFAULT NULL,
  `DeathAvgper10Min` float DEFAULT NULL,
  `EliminationAvgper10Min` float DEFAULT NULL,
  `AitAvgper10min` float DEFAULT NULL,
  `HealingDoneAvgper10Min` float DEFAULT NULL,
  `ObjectiveKillAvgper10Min` float DEFAULT NULL,
  `ObjectiveTimeAvgper10Min` float DEFAULT NULL,
  `FinalBlowAvgper10Min` float DEFAULT NULL,
  `ObjectiveContetTimeAvgper10Min` float DEFAULT NULL,
  `TimePlayed` float DEFAULT NULL,
  `GamePlayed` float DEFAULT NULL,
  `GameWon` float DEFAULT NULL,
  `GameLot` float DEFAULT NULL,
  `HeroWin` float DEFAULT NULL,
  `EnvironmentalKill` float DEFAULT NULL,
  `TimeSpentonFireMotinGame ` float DEFAULT NULL,
  `MeleeFinalBlow` float DEFAULT NULL,
  `HeroDamageDone` float DEFAULT NULL,
  `Death` float DEFAULT NULL,
  `Elimination` float DEFAULT NULL,
  `DamageDone` float DEFAULT NULL,
  `ObjectiveKill` float DEFAULT NULL,
  `FinalBlow` float DEFAULT NULL,
  `ObjectiveTime` float DEFAULT NULL,
  `ObjectiveContetTime` float DEFAULT NULL,
  `SoloKill` float DEFAULT NULL,
  `Multikill` float DEFAULT NULL,
  `ReconAit` float DEFAULT NULL,
  `Ait` float DEFAULT NULL,
  `HealingDone` float DEFAULT NULL,
  `DefeniveAit` float DEFAULT NULL,
  `OffeniveAit` float DEFAULT NULL,
  `Card` float DEFAULT NULL,
  `day` date NOT NULL,
  `username` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `bestOverall1`
--

-- INSERT INTO `bestOverall1` (`id`, `Elimination_MotinGame`, `FinalBlow_MotinGame`, `AllDamageDone_MotinGame`, `HealingDone_MotinGame`, `DefeniveAit_MotinGame`, `OffeniveAit_MotinGame`, `ObjectiveKill_MotinGame`, `ObjectiveTime_MotinGame`, `Multikill_Bet`, `oloKill_MotinGame`, `TimepentonFire_MotinGame`, `MeleeFinalBlow_MotinGame`, `EnvironmentalKill_MotinGame`, `Killtreak_Bet`, `HeroDamageDone_MotinGame`, `BarrierDamageDone_MotinGame`, `Ait_MotinGame`, `ObjectiveContetTime_MotinGame`, `ReconAit_MotinGame`, `HeroDamageDone_Avgper10Min`, `day`, `username`) VALUES
-- (2, 49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 0, '2023-06-07', 'Ninjaman7000-1418'),
-- (3, 40, 21, 17345, 13294, 29, 7, 20, 326, 5, 21, 533, NULL, 1, 17, 13794, 5393, 29, 326, 1, 5938, '2023-06-07', 'ComradeJuice-1182'),
-- (4, 26, 16, 26822, 15433, 37, 26, 14, 445, 4, 16, 421, 1, 1, 14, 8613, 6255, 42, 246, NULL, 2226, '2023-06-08', 'DirtSoup-1478'),
-- (5, 45, 25, 24747, 5995, 14, 16, 36, 705, 5, 25, 809, NULL, 1, 23, 16582, 12421, 17, 435, 2, 7904, '2023-06-08', 'Deigs-11887'),
-- (6, 49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, NULL, '2023-06-08', 'Ninjaman7000-1418'),
-- (7, 40, 21, 17345, 13294, 29, 7, 20, 331, 5, 21, 533, NULL, 1, 17, 13794, 5393, 29, 331, 1, 5826, '2023-06-08', 'ComradeJuice-1182');

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
