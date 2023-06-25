-- phpMyAdmin SQL Dump
-- version 5.1.1deb5ubuntu1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 25, 2023 at 11:23 AM
-- Server version: 8.0.33-0ubuntu0.22.04.2
-- PHP Version: 8.1.2-1ubuntu2.11


--
-- Database: `playerStats`
--

-- --------------------------------------------------------

--
-- Table structure for table `bestOverall1`
--
CREATE DATABASE IF NOT EXISTS playerStats;

use playerStats;

CREATE TABLE `bestOverall1` (
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
  `TimeSpentonFireMotinGame` float DEFAULT NULL,
  `MeleeFinalBlowMotinGame` float DEFAULT NULL,
  `EnvironmentalKillMotinGame` float DEFAULT NULL,
  `KillStreakBet` float DEFAULT NULL,
  `HeroDamageDoneMotinGame` float DEFAULT NULL,
  `BarrierDamageDoneMotinGame` float DEFAULT NULL,
  `AitMotinGame` float DEFAULT NULL,
  `ObjectiveContetTimeMotinGame` float DEFAULT NULL,
  `ReconAitMotinGame` float DEFAULT NULL,
  `TimeSpentonFireAvgper10Min` float DEFAULT NULL,
  `HeroDamageDoneAvgper10Min` float DEFAULT NULL,
  `DeathAvgper10Min` float DEFAULT NULL,
  `EliminationAvgper10Min` float DEFAULT NULL,
  `AitAvgper10min` float DEFAULT NULL,
  `HealingDoneAvgper10Min` float DEFAULT NULL,
  `ObjectiveKillAvgper10Min` float DEFAULT NULL,
  `ObjectiveTimeAvgper10Min` float DEFAULT NULL,
  `FinalBlowAvgper10Min` float DEFAULT NULL,
  `ObjectiveContetTimeAvgper10Min` float DEFAULT NULL,
  `SoloKillAvgper10Min` float DEFAULT NULL,
  `TimePlayed` float DEFAULT NULL,
  `GamePlayed` float DEFAULT NULL,
  `GameWon` float DEFAULT NULL,
  `GameLot` float DEFAULT NULL,
  `HeroWin` float DEFAULT NULL,
  `EnvironmentalKill` float DEFAULT NULL,
  `TimeSpentonFire` float DEFAULT NULL,
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
  `day` date DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `id` int NOT NULL
);

--
-- Dumping data for table `bestOverall1`
--

INSERT INTO `bestOverall1` (`EliminationMotinGame`, `FinalBlowMotinGame`, `AllDamageDoneMotinGame`, `HealingDoneMotinGame`, `DefeniveAitMotinGame`, `OffeniveAitMotinGame`, `ObjectiveKillMotinGame`, `ObjectiveTimeMotinGame`, `MultikillBet`, `SoloKillMotinGame`, `TimeSpentonFireMotinGame`, `MeleeFinalBlowMotinGame`, `EnvironmentalKillMotinGame`, `KillStreakBet`, `HeroDamageDoneMotinGame`, `BarrierDamageDoneMotinGame`, `AitMotinGame`, `ObjectiveContetTimeMotinGame`, `ReconAitMotinGame`, `TimeSpentonFireAvgper10Min`, `HeroDamageDoneAvgper10Min`, `DeathAvgper10Min`, `EliminationAvgper10Min`, `AitAvgper10min`, `HealingDoneAvgper10Min`, `ObjectiveKillAvgper10Min`, `ObjectiveTimeAvgper10Min`, `FinalBlowAvgper10Min`, `ObjectiveContetTimeAvgper10Min`, `SoloKillAvgper10Min`, `TimePlayed`, `GamePlayed`, `GameWon`, `GameLot`, `HeroWin`, `EnvironmentalKill`, `TimeSpentonFire`, `MeleeFinalBlow`, `HeroDamageDone`, `Death`, `Elimination`, `DamageDone`, `ObjectiveKill`, `FinalBlow`, `ObjectiveTime`, `ObjectiveContetTime`, `SoloKill`, `Multikill`, `ReconAit`, `Ait`, `HealingDone`, `DefeniveAit`, `OffeniveAit`, `Card`, `day`, `username`, `id`) VALUES
(49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 110, 7317, 8.34, 18.71, 5.55, 1869, 6.98, 104, 9.33, 46, 2.31, 4723460, 3539, 1875, 1663, 505, 183, 21121, 546, 15239900, 23634, 53065, 15239900, 19784, 26459, 500148, 104012, 6560, 480, 21, 4589, 5298460, 7192, 5442, 933, '2023-06-19', 'Ninjaman7000-1418', 1),
(49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 110, 7319, 8.33, 18.73, 5.61, 1875, 6.98, 104, 9.34, 46, 2.31, 4732420, 3545, 1879, 1665, 509, 183, 22818, 550, 15278800, 23665, 53193, 15278800, 19838, 26518, 500755, 104327, 6572, 481, 21, 4664, 5327120, 7269, 5489, 933, '2023-06-20', 'Ninjaman7000-1418', 2),
(40, 21, 17345, 13294, 29, 9, 20, 535, 5, 21, 533, NULL, 1, 24, 13794, 6565, 29, 340, 1, 46, 5945, 7.73, 15.54, 4.79, 3151, 6.92, 109, 7.33, 38, 0.94, 241040, 178, 90, 88, 90, 7, 5107, NULL, 862425, 1122, 2254, 862425, 1004, 1064, 24749, 13058, 136, 21, 1, 695, 457171, 609, 158, NULL, '2023-06-20', 'ComradeJuice-1182', 3),
(40, 21, 17345, 13294, 29, 9, 20, 535, 5, 21, 533, NULL, 1, 24, 13794, 6565, 29, 354, 1, 48, 5921, 7.79, 15.42, 4.76, 3248, 6.91, 110, 7.2, 39, 0.93, 253331, 187, 91, 96, 91, 7, 10405, NULL, 907933, 1195, 2364, 907933, 1059, 1104, 25950, 14020, 143, 22, 1, 730, 498074, 632, 173, NULL, '2023-06-22', 'ComradeJuice-1182', 4),
(49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 111, 7337, 8.33, 18.74, 5.57, 1881, 7, 104, 9.35, 46, 2.31, 4761960, 3565, 1886, 1678, 516, 183, 31002, 551, 15445300, 23810, 53546, 15445300, 19993, 26728, 503042, 105659, 6615, 488, 21, 4731, 5377140, 7318, 5528, 933, '2023-06-22', 'Ninjaman7000-1418', 41),
(26, 16, 26822, 15433, 37, 26, 14, 445, 4, 16, 421, 1, 1, 14, 9030, 6255, 42, 246, NULL, 13, 2255, 6.87, 6.49, 13.16, 5893, 2.94, 109, 2.18, 36, 0.28, 535030, 401, 180, 221, 179, 4, 2859, 10, 728556, 2219, 2095, 728556, 949, 705, 61146, 31212, 92, 5, NULL, 4197, 1903720, 3741, 1426, NULL, '2023-06-23', 'DirtSoup-1478', 47),
(45, 25, 24747, 8071, 23, 16, 36, 705, 5, 25, 809, NULL, 1, 23, 16582, 12421, 21, 435, 2, 46, 7860, 7.15, 16.66, 2.1, 411, 7.93, 108, 7.28, 35, 0.8, 851304, 640, 286, 354, 286, 4, 15839, NULL, 4018820, 3658, 8517, 4018820, 4057, 3724, 93942, 45638, 410, 79, 7, 1072, 209928, 287, 234, NULL, '2023-06-23', 'Deigs-11887', 48),
(49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 111, 7339, 8.33, 18.73, 5.57, 1885, 6.99, 104, 9.35, 46, 2.31, 4771630, 3573, 1889, 1683, 519, 183, 32228, 551, 15492000, 23857, 53638, 15492000, 20025, 26785, 503533, 105919, 6625, 489, 21, 4762, 5397670, 7352, 5547, 933, '2023-06-24', 'Ninjaman7000-1418', 107),
(26, 16, 26822, 15433, 37, 26, 14, 445, 4, 16, 421, 1, 1, 14, 9030, 6255, 42, 246, NULL, 13, 2255, 6.87, 6.49, 13.16, 5893, 2.94, 109, 2.18, 36, 0.28, 535030, 401, 180, 221, 179, 4, 2859, 10, 728556, 2219, 2095, 728556, 949, 705, 61146, 31212, 92, 5, NULL, 4197, 1903720, 3741, 1426, NULL, '2023-06-24', 'DirtSoup-1478', 108),
(45, 25, 24747, 8071, 23, 16, 36, 705, 5, 25, 809, NULL, 1, 23, 16582, 12421, 21, 435, 2, 46, 7860, 7.15, 16.66, 2.1, 411, 7.93, 108, 7.28, 35, 0.8, 851304, 640, 286, 354, 286, 4, 15839, NULL, 4018820, 3658, 8517, 4018820, 4057, 3724, 93942, 45638, 410, 79, 7, 1072, 209928, 287, 234, NULL, '2023-06-24', 'Deigs-11887', 109),
(40, 21, 17345, 13294, 29, 9, 20, 535, 5, 21, 533, NULL, 1, 24, 13794, 6565, 29, 354, 1, 49, 5910, 7.86, 15.31, 4.75, 3229, 6.87, 109, 7.16, 39, 0.93, 261551, 193, 93, 100, 93, 7, 10804, NULL, 931249, 1238, 2413, 931249, 1082, 1129, 30208, 14214, 146, 23, 1, 749, 508805, 648, 177, NULL, '2023-06-24', 'ComradeJuice-1182', 110),
(49, 30, 40962, 18294, 36, 25, 29, 610, 5, 30, 954, 4, 9, 44, 17113, 14011, 27, 439, 12, 111, 7339, 8.33, 18.73, 5.57, 1885, 6.99, 104, 9.35, 46, 2.31, 4771630, 3573, 1889, 1683, 519, 183, 32228, 551, 15492000, 23857, 53638, 15492000, 20025, 26785, 503533, 105919, 6625, 489, 21, 4762, 5397670, 7352, 5547, 933, '2023-06-25', 'Ninjaman7000-1418', 187),
(26, 16, 26822, 15433, 37, 26, 14, 445, 4, 16, 421, 1, 1, 14, 9030, 6255, 42, 246, NULL, 13, 2255, 6.87, 6.49, 13.16, 5893, 2.94, 109, 2.18, 36, 0.28, 535030, 401, 180, 221, 179, 4, 2859, 10, 728556, 2219, 2095, 728556, 949, 705, 61146, 31212, 92, 5, NULL, 4197, 1903720, 3741, 1426, NULL, '2023-06-25', 'DirtSoup-1478', 188),
(45, 25, 24747, 8071, 23, 16, 36, 705, 5, 25, 809, NULL, 1, 23, 16582, 12421, 21, 435, 2, 46, 7860, 7.15, 16.66, 2.1, 411, 7.93, 108, 7.28, 35, 0.8, 851304, 640, 286, 354, 286, 4, 15839, NULL, 4018820, 3658, 8517, 4018820, 4057, 3724, 93942, 45638, 410, 79, 7, 1072, 209928, 287, 234, NULL, '2023-06-25', 'Deigs-11887', 189),
(40, 21, 17345, 13294, 29, 9, 20, 535, 5, 21, 533, NULL, 1, 24, 13794, 6565, 29, 354, 1, 49, 5910, 7.86, 15.31, 4.75, 3229, 6.87, 109, 7.16, 39, 0.93, 261551, 193, 93, 100, 93, 7, 10804, NULL, 931249, 1238, 2413, 931249, 1082, 1129, 30208, 14214, 146, 23, 1, 749, 508805, 648, 177, NULL, '2023-06-25', 'ComradeJuice-1182', 190);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bestOverall1`
--
ALTER TABLE `bestOverall1`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `day_3` (`day`,`username`),
  ADD KEY `day` (`day`,`username`),
  ADD KEY `day_2` (`day`,`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bestOverall1`
--
ALTER TABLE `bestOverall1`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=232;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
