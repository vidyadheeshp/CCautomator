-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 03, 2022 at 01:25 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laballocator`
--

-- --------------------------------------------------------

--
-- Table structure for table `courses`
--

CREATE TABLE `courses` (
  `cid` int(11) NOT NULL,
  `coursecode` varchar(10) NOT NULL,
  `coursename` varchar(30) NOT NULL,
  `deptid` int(11) NOT NULL,
  `sem` int(11) NOT NULL,
  `divisions` int(11) NOT NULL,
  `strength` int(11) NOT NULL,
  `softwarereq` varchar(40) NOT NULL,
  `academicyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `courses`
--

INSERT INTO `courses` (`cid`, `coursecode`, `coursename`, `deptid`, `sem`, `divisions`, `strength`, `softwarereq`, `academicyear`) VALUES
(1, '18CSL67', ' AI & Machine Learning Lab', 4, 6, 4, 211, '\"Ubuntu Version 18 +, PyCharm Python (3.', '2022-23'),
(2, '18CSL68', 'Embedded Systems and IoT Lab', 4, 6, 4, 211, 'Windows OS, Keil,Thony Python', '2022-23'),
(3, '18CSL46', 'Python Programming (Integrated', 4, 4, 4, 220, '', ''),
(4, '18CSL47', 'Algorithms Lab', 4, 4, 4, 220, '', ''),
(5, '18CSL48', 'Database Application Lab', 4, 4, 4, 220, '', '');

-- --------------------------------------------------------

--
-- Table structure for table `departments`
--

CREATE TABLE `departments` (
  `DeptID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT '',
  `UserName` varchar(10) DEFAULT '',
  `Password` varchar(100) DEFAULT '',
  `DateStmp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `departments`
--

INSERT INTO `departments` (`DeptID`, `Name`, `UserName`, `Password`, `DateStmp`) VALUES
(1, 'Aeronautical Engineering', 'AE', '166923464635161f97c19af7fd9f4433ea6f0c2b', '0000-00-00 00:00:00'),
(2, 'Architecture', 'AT', 'c2ae3e41855606ccd9fa4685d29427e260de6043', '0000-00-00 00:00:00'),
(3, 'Civil Engineering', 'CV', '8047ad7ecc39a93c012108421b64cec87a5da17a', '0000-00-00 00:00:00'),
(4, 'Computer Science Engineering', 'CS', '2ea9d36c8e172047987ab813c8453cb803e4484c', '0000-00-00 00:00:00'),
(5, 'Electrical & Electronics Engineering', 'EE', 'efeaf4761dc6c70ecdfd94b95571a3da996101ef', '0000-00-00 00:00:00'),
(6, 'Electronics & Communication Engineering', 'EC', '27653b0067d329ae8d69bd34e1661c96474b8134', '0000-00-00 00:00:00'),
(7, 'First Year (CCP)', 'FY', 'd4c87afca3300706d436a3accc55e10866d85c5f', '0000-00-00 00:00:00'),
(8, 'Information Science & Engineering', 'IS', '8a372d517f3308052dc9908f28907f1e532a3b22', '0000-00-00 00:00:00'),
(9, 'Master of Business Administration', 'MBA', 'e107ba85e303894e52fcf4920043a02589d2f779', '0000-00-00 00:00:00'),
(10, 'Master of Computer Applications', 'MCA', 'd1e073ffabe619daa4a2b0f65ea795be7e2dd7a5', '0000-00-00 00:00:00'),
(11, 'Mechanical Engineering', 'ME', 'd4c87afca3300706d436a3accc55e10866d85c5f', '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `laballocations`
--

CREATE TABLE `laballocations` (
  `allocationid` int(11) NOT NULL,
  `day` date NOT NULL,
  `slot` int(11) NOT NULL,
  `coursecode` int(11) NOT NULL,
  `batchno` int(11) NOT NULL,
  `academicyear` varchar(10) NOT NULL,
  `labid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `laballocations`
--

INSERT INTO `laballocations` (`allocationid`, `day`, `slot`, `coursecode`, `batchno`, `academicyear`, `labid`) VALUES
(1, '2022-06-01', 1, 1, 1, '2022-23', 1),
(2, '2022-06-02', 2, 1, 2, '2022-23', 3);

-- --------------------------------------------------------

--
-- Table structure for table `labs`
--

CREATE TABLE `labs` (
  `labid` int(11) NOT NULL,
  `labname` varchar(10) NOT NULL,
  `no_of_systems` int(11) NOT NULL,
  `deptid` int(11) DEFAULT NULL,
  `system_specifications` varchar(60) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `labs`
--

INSERT INTO `labs` (`labid`, `labname`, `no_of_systems`, `deptid`, `system_specifications`) VALUES
(1, 'Lab 1', 61, 10, 'Null'),
(2, 'Lab 1(B)', 40, 1, '\"Null\"'),
(3, 'Lab 2', 60, 11, '\"Null\"'),
(4, 'Lab 3', 40, 8, '\"Null\"'),
(5, 'Lab 4', 48, 3, '\"Null\"'),
(6, 'Lab 5', 31, 3, '\"Null\"'),
(7, 'Lab 6', 60, 2, '\"Null\"'),
(8, 'Lab 7', 44, 4, '\"Null\"'),
(9, 'Lab 8', 61, 4, '\"Null\"'),
(10, 'Lab 9', 14, 0, '\"Null\"'),
(11, 'Lab 10', 60, 0, '\"Null\"'),
(12, 'Lab 11', 60, 0, '\"Null\"'),
(13, 'Lab 12', 60, 7, '\"Null\"'),
(14, 'Lab 13 VLS', 64, 6, '\"Null\"'),
(15, 'Lab 14 Br.', 60, 5, '\"Null\"'),
(16, 'MBA Lab', 65, 9, '\"Null\"');

-- --------------------------------------------------------

--
-- Table structure for table `slotbooking`
--

CREATE TABLE `slotbooking` (
  `bookid` int(11) NOT NULL,
  `labid` int(11) NOT NULL,
  `deptid` int(11) NOT NULL,
  `purpose` varchar(50) NOT NULL,
  `faculty` varchar(30) NOT NULL,
  `academicyear` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `courses`
--
ALTER TABLE `courses`
  ADD PRIMARY KEY (`cid`),
  ADD KEY `fk_deptid` (`deptid`);

--
-- Indexes for table `departments`
--
ALTER TABLE `departments`
  ADD PRIMARY KEY (`DeptID`);

--
-- Indexes for table `laballocations`
--
ALTER TABLE `laballocations`
  ADD PRIMARY KEY (`allocationid`),
  ADD UNIQUE KEY `labid_2` (`labid`),
  ADD KEY `fk_courseid` (`coursecode`),
  ADD KEY `fk_labid` (`labid`) USING BTREE;

--
-- Indexes for table `labs`
--
ALTER TABLE `labs`
  ADD PRIMARY KEY (`labid`);

--
-- Indexes for table `slotbooking`
--
ALTER TABLE `slotbooking`
  ADD PRIMARY KEY (`bookid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `courses`
--
ALTER TABLE `courses`
  MODIFY `cid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `laballocations`
--
ALTER TABLE `laballocations`
  MODIFY `allocationid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `labs`
--
ALTER TABLE `labs`
  MODIFY `labid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `slotbooking`
--
ALTER TABLE `slotbooking`
  MODIFY `bookid` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `courses`
--
ALTER TABLE `courses`
  ADD CONSTRAINT `fk_deptid` FOREIGN KEY (`deptid`) REFERENCES `departments` (`DeptID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `laballocations`
--
ALTER TABLE `laballocations`
  ADD CONSTRAINT `fk_courseid` FOREIGN KEY (`coursecode`) REFERENCES `courses` (`cid`),
  ADD CONSTRAINT `fk_labid` FOREIGN KEY (`labid`) REFERENCES `labs` (`labid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
