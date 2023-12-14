-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Dec 14, 2023 at 06:11 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `PAP`
--

-- --------------------------------------------------------

--
-- Table structure for table `Assignments`
--

CREATE TABLE `Assignments` (
  `a_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  `asmntNum` int(11) NOT NULL,
  `asmntName` varchar(255) NOT NULL,
  `asmntDueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Classes`
--

CREATE TABLE `Classes` (
  `c_id` int(11) NOT NULL,
  `s_id` int(11) NOT NULL,
  `className` varchar(255) NOT NULL,
  `classNotes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Finals`
--

CREATE TABLE `Finals` (
  `f_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  `fnlNum` int(11) NOT NULL,
  `fnlName` varchar(255) NOT NULL,
  `fnlDueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Labs`
--

CREATE TABLE `Labs` (
  `l_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `labName` varchar(255) NOT NULL,
  `labNotes` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `MidTerms`
--

CREATE TABLE `MidTerms` (
  `m_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  `mtNum` int(11) NOT NULL,
  `mtName` varchar(255) NOT NULL,
  `mtDueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Projects`
--

CREATE TABLE `Projects` (
  `p_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  `projNum` int(11) NOT NULL,
  `projName` varchar(255) NOT NULL,
  `projDueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Quizzes`
--

CREATE TABLE `Quizzes` (
  `q_id` int(11) NOT NULL,
  `c_id` int(11) NOT NULL,
  `l_id` int(11) DEFAULT NULL,
  `qzNum` int(11) NOT NULL,
  `qzName` varchar(255) NOT NULL,
  `qzDueDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Semesters`
--

CREATE TABLE `Semesters` (
  `s_id` int(11) NOT NULL,
  `y_id` int(11) NOT NULL,
  `smstrName` varchar(255) NOT NULL,
  `smstrStartDate` date DEFAULT NULL,
  `smstrEndDate` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `Users`
--

CREATE TABLE `Users` (
  `u_id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Users`
--

INSERT INTO `Users` (`u_id`, `username`, `email`, `password`) VALUES
(1, 'user1', 'user@web.com', '$2y$10$EAq2wu87TgpnYJBS2EFXmelD164oOLHM2eCkYI2XzgmVvhroECcrW'),
(2, 'user2', 'user@wb.com', '$2y$10$GKbVhl.iq.aEznJaeBf2ueMWRC1Ava2Vo4esKQRS9zCbx8wTcHZrC'),
(3, 'user3', 'user@web.com', '$2y$10$GTpdD78gzINze98q4UoRH.K9JHsV7UkUYBBT1LJeVvff4aqk3PIxG'),
(4, 'user4', 'user@web.com', '$2y$10$w4yt8gjINdaoO0WDT12vs..PHl5jmigp4DeYoltMsrLZ4/JFfvqLG'),
(5, 'user5', 'user@web.com', '$2y$10$A9zmESZkLl/YhlV.ZA6OR.JQIFo766zOsyjSP93BzkJOu8ovgmORi'),
(6, 'user6', 'user@web.com', '$2y$10$BebjT0X/Wlz55Uq5YyQza.1B21Y/Y/NOeene4uFCXCVffqfhFDZ6i'),
(7, 'user7', 'user@web.com', '$2y$10$bgrUJsozNz9LNVcd2J6rv.y5rjjqahv2yJV5d92avWR04HbAr.nue'),
(8, '', '', '$2y$10$bLwjp292jj2X46nhEZFo2OllzzDMpMHgYCsWJakarJyK2CX3ee5p6'),
(9, 'user8', 'user@web.com', '$2y$10$PtGft5l6ZUkS.kYmv59jF.x6c2UEnFITO7Ed/n5J1xCWMFv8QRW.O'),
(10, 'userr', 'user@web.com', '$2y$10$FD0n1G.Pv8FUJMo.JCWMvOX.sNpmzudx6YHQ4DHMNGT/mkn9GmHbG');

-- --------------------------------------------------------

--
-- Table structure for table `Years`
--

CREATE TABLE `Years` (
  `y_id` int(11) NOT NULL,
  `year` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Years`
--

INSERT INTO `Years` (`y_id`, `year`) VALUES
(1, '2000');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Assignments`
--
ALTER TABLE `Assignments`
  ADD PRIMARY KEY (`a_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `Classes`
--
ALTER TABLE `Classes`
  ADD PRIMARY KEY (`c_id`),
  ADD KEY `s_id` (`s_id`);

--
-- Indexes for table `Finals`
--
ALTER TABLE `Finals`
  ADD PRIMARY KEY (`f_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `Labs`
--
ALTER TABLE `Labs`
  ADD PRIMARY KEY (`l_id`),
  ADD KEY `c_id` (`c_id`);

--
-- Indexes for table `MidTerms`
--
ALTER TABLE `MidTerms`
  ADD PRIMARY KEY (`m_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `Projects`
--
ALTER TABLE `Projects`
  ADD PRIMARY KEY (`p_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `Quizzes`
--
ALTER TABLE `Quizzes`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `c_id` (`c_id`),
  ADD KEY `l_id` (`l_id`);

--
-- Indexes for table `Semesters`
--
ALTER TABLE `Semesters`
  ADD PRIMARY KEY (`s_id`),
  ADD KEY `y_id` (`y_id`);

--
-- Indexes for table `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`u_id`);

--
-- Indexes for table `Years`
--
ALTER TABLE `Years`
  ADD PRIMARY KEY (`y_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Assignments`
--
ALTER TABLE `Assignments`
  MODIFY `a_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Classes`
--
ALTER TABLE `Classes`
  MODIFY `c_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Finals`
--
ALTER TABLE `Finals`
  MODIFY `f_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Labs`
--
ALTER TABLE `Labs`
  MODIFY `l_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `MidTerms`
--
ALTER TABLE `MidTerms`
  MODIFY `m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Projects`
--
ALTER TABLE `Projects`
  MODIFY `p_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Quizzes`
--
ALTER TABLE `Quizzes`
  MODIFY `q_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Semesters`
--
ALTER TABLE `Semesters`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `Users`
--
ALTER TABLE `Users`
  MODIFY `u_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Years`
--
ALTER TABLE `Years`
  MODIFY `y_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Assignments`
--
ALTER TABLE `Assignments`
  ADD CONSTRAINT `assignments_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `Classes` (`c_id`),
  ADD CONSTRAINT `assignments_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `Labs` (`l_id`);

--
-- Constraints for table `Classes`
--
ALTER TABLE `Classes`
  ADD CONSTRAINT `classes_ibfk_1` FOREIGN KEY (`s_id`) REFERENCES `Semesters` (`s_id`);

--
-- Constraints for table `Finals`
--
ALTER TABLE `Finals`
  ADD CONSTRAINT `finals_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `Classes` (`c_id`),
  ADD CONSTRAINT `finals_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `Labs` (`l_id`);

--
-- Constraints for table `Labs`
--
ALTER TABLE `Labs`
  ADD CONSTRAINT `labs_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `Classes` (`c_id`);

--
-- Constraints for table `MidTerms`
--
ALTER TABLE `MidTerms`
  ADD CONSTRAINT `midterms_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `Classes` (`c_id`),
  ADD CONSTRAINT `midterms_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `Labs` (`l_id`);

--
-- Constraints for table `Projects`
--
ALTER TABLE `Projects`
  ADD CONSTRAINT `projects_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `Classes` (`c_id`),
  ADD CONSTRAINT `projects_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `Labs` (`l_id`);

--
-- Constraints for table `Quizzes`
--
ALTER TABLE `Quizzes`
  ADD CONSTRAINT `quizzes_ibfk_1` FOREIGN KEY (`c_id`) REFERENCES `Classes` (`c_id`),
  ADD CONSTRAINT `quizzes_ibfk_2` FOREIGN KEY (`l_id`) REFERENCES `Labs` (`l_id`);

--
-- Constraints for table `Semesters`
--
ALTER TABLE `Semesters`
  ADD CONSTRAINT `semesters_ibfk_1` FOREIGN KEY (`y_id`) REFERENCES `Years` (`y_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
