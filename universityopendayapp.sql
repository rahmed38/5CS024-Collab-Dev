-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 17, 2025 at 02:27 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `universityopendayapp`
--

-- --------------------------------------------------------

--
-- Table structure for table `postgraduatesubjects`
--

CREATE TABLE `postgraduatesubjects` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `CourseCode` varchar(20) NOT NULL,
  `DegreeName` varchar(100) NOT NULL,
  `Available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `postgraduatesubjects`
--

INSERT INTO `postgraduatesubjects` (`SubjectID`, `SubjectName`, `Duration`, `CourseCode`, `DegreeName`, `Available`) VALUES
(211, 'Artificial Intelligence', '1 year', 'AI211', 'MSc Artificial Intelligence', 1),
(212, 'Data Science', '1 year', 'CS212', 'MSc Data Science', 1),
(213, 'Education', '1 year', 'EDU213', 'MA Education', 1),
(214, 'Biomedical Engineering', '1 year', 'BM214', 'MSc Biomedical Engineering', 1),
(215, 'International Law', '1 year', 'IL215', 'LLM International Law', 1),
(216, 'Business Strategy', '1 year', 'BA216', 'MBA Business Strategy', 1),
(217, 'Civil Infrastructure', '1 year', 'CIV217', 'MSc Civil Infrastructure', 1),
(218, 'Creative Writing', '1 year', 'CW218', 'MA Creative Writing', 1),
(219, 'Neuroscience', '1 year', 'NS219', 'MSc Neuroscience', 1),
(220, 'Renewable Energy', '1 year', 'RE', 'MSc Renewable Energy', 1);

-- --------------------------------------------------------

--
-- Table structure for table `qrcodes`
--

CREATE TABLE `qrcodes` (
  `QRID` int(11) DEFAULT NULL,
  `QRCode` varchar(200) NOT NULL,
  `RewardName` varchar(200) NOT NULL,
  `RewardDetails` text NOT NULL,
  `RedeemLink` varchar(200) NOT NULL,
  `IsActive` tinyint(1) NOT NULL,
  `CreatedAt` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `undergradsubjects`
--

CREATE TABLE `undergradsubjects` (
  `SubjectID` int(11) NOT NULL,
  `SubjectName` varchar(100) NOT NULL,
  `Duration` varchar(20) NOT NULL,
  `CourseCode` varchar(20) NOT NULL,
  `DegreeName` varchar(100) NOT NULL,
  `Available` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `undergradsubjects`
--

INSERT INTO `undergradsubjects` (`SubjectID`, `SubjectName`, `Duration`, `CourseCode`, `DegreeName`, `Available`) VALUES
(111, 'Computer Science', '3 years', 'CS111', 'BSc Computer Science', 1),
(112, 'Pharmacy ', '3 years', 'PC112', 'BSc Pharmacy ', 1),
(113, 'Civil Engineering ', '3 years', 'CE113', 'BEng Civil Engineering ', 1),
(114, 'Sociology ', '3 years ', 'SL114', 'BA Hons Sociology', 1),
(115, 'Biology', '4 years ', 'BI115', 'Bsc Biology ', 1),
(116, 'Chemistry ', '3 years ', 'CH115', 'BSc Chemistry ', 1),
(117, 'Physics', '3 years', 'PH117', 'Bsc Physics', 1),
(118, 'Biomedical Science', '3 years ', 'BS118', 'BSc Biomedical Science', 1),
(119, 'Health and Social Care', '3 years ', 'HC119', 'BSc Health and Social Care', 1),
(120, 'Law ', '3 years', 'LW120', 'LLB Law', 1),
(121, 'Business Management', '3 years', 'BM120', 'BA Business Management', 1),
(122, 'Mechanical Eng.', '3 years', 'MECH122', 'BEng Mechanical Eng.', 1),
(123, 'Psychology', '3 years', 'PSY123', 'BSc Psychology', 1);

-- --------------------------------------------------------

--
-- Table structure for table `userredemptions`
--

CREATE TABLE `userredemptions` (
  `RedemptionID` int(11) NOT NULL,
  `UserID` int(11) NOT NULL,
  `QRID` int(11) NOT NULL,
  `RedeemedAt` datetime NOT NULL,
  `WasSuccessful` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `UserID` VARBINARY(20) NOT NULL,
  `FullName` VARBINARY(100) NOT NULL,
  `Surname` VARBINARY(100) NOT NULL,
  `Postgraduate` TINYINT(1) NOT NULL,
  `Undergraduate` TINYINT(1) NOT NULL,
  `Password` VARBINARY(60) NOT NULL,
  PRIMARY KEY (`UserID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`UserID`, `FullName`, `Surname`, `Postgraduate`, `Undergraduate`, `Password`) VALUES
(10001, 'Ayman', 'Waheed', 1, 0, 'iloverasmalai'),
(10002, 'Sharefa', 'Osman', 1, 0, 'ilovetiramisu'),
(10003, 'Ruqaiyyah', 'Yasir', 1, 0, 'ilovespongebob'),
(10004, 'Ramzaan', 'Sharaz', 1, 0, 'ilovepineapplepizza'),
(10005, 'Mohammed Nadeem', 'Bauker', 1, 0, 'ilovebeyonce'),
(10006, 'Rehan ', 'Ahmed ', 1, 0, 'ilovehereventhoshegay');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `postgraduatesubjects`
--
ALTER TABLE `postgraduatesubjects`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Indexes for table `undergradsubjects`
--
ALTER TABLE `undergradsubjects`
  ADD PRIMARY KEY (`SubjectID`);

--
-- Indexes for table `userredemptions`
--
ALTER TABLE `userredemptions`
  ADD PRIMARY KEY (`RedemptionID`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`UserID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `postgraduatesubjects`
--
ALTER TABLE `postgraduatesubjects`
  MODIFY `SubjectID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=221;

--
-- AUTO_INCREMENT for table `userredemptions`
--
ALTER TABLE `userredemptions`
  MODIFY `RedemptionID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10007;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
