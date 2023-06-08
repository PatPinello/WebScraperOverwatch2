-- -- phpMyAdmin SQL Dump
-- -- version 5.2.1
-- -- https://www.phpmyadmin.net/
-- --
-- -- Host: db:3306
-- -- Generation Time: Jun 05, 2023 at 09:01 PM
-- -- Server version: 8.0.33
-- -- PHP Version: 8.1.17

-- SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
-- START TRANSACTION;
-- SET time_zone = "+00:00";


-- /*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
-- /*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
-- /*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
-- /*!40101 SET NAMES utf8mb4 */;

-- --
-- -- Database: `playerStats`
-- --

-- -- --------------------------------------------------------

-- --
-- -- Table structure for table `bestOverall`
-- --

-- CREATE TABLE `bestOverall` (
--   `id` int NOT NULL,
--   `Eliminations_MostinGame` float DEFAULT NULL,
--   `FinalBlows_MostinGame` float DEFAULT NULL,
--   `AllDamageDone_MostinGame` float DEFAULT NULL,
--   `HealingDone_MostinGame` float DEFAULT NULL,
--   `DefensiveAssists_MostinGame` float DEFAULT NULL,
--   `OffensiveAssists_MostinGame` float DEFAULT NULL,
--   `ObjectiveKills_MostinGame` float DEFAULT NULL,
--   `ObjectiveTime_MostinGame` float DEFAULT NULL,
--   `Multikill_Best` float DEFAULT NULL,
--   `SoloKills_MostinGame` float DEFAULT NULL,
--   `TimeSpentonFire_MostinGame` float DEFAULT NULL,
--   `MeleeFinalBlows_MostinGame` float DEFAULT NULL,
--   `EnvironmentalKills_MostinGame` float DEFAULT NULL,
--   `KillStreak_Best` float DEFAULT NULL,
--   `HeroDamageDone_MostinGame` float DEFAULT NULL,
--   `BarrierDamageDone_MostinGame` float DEFAULT NULL,
--   `Assists_MostinGame` float DEFAULT NULL,
--   `ObjectiveContestTime_MostinGame` float DEFAULT NULL,
--   `ReconAssists_MostinGame` float DEFAULT NULL,
--   `day` date NOT NULL,
--   `username` varchar(255) NOT NULL
-- ) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --
-- -- Indexes for dumped tables
-- --

-- --
-- -- Indexes for table `bestOverall`
-- --
-- ALTER TABLE `bestOverall`
--   ADD PRIMARY KEY (`id`);

-- --
-- -- AUTO_INCREMENT for dumped tables
-- --

-- --
-- -- AUTO_INCREMENT for table `bestOverall`
-- --
-- ALTER TABLE `bestOverall`
--   MODIFY `id` int NOT NULL AUTO_INCREMENT;
-- COMMIT;

-- /*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
-- /*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
-- /*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
