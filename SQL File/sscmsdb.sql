-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 12:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sscmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(10) NOT NULL,
  `AdminName` varchar(200) DEFAULT NULL,
  `UserName` varchar(200) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Address` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Password` varchar(200) DEFAULT NULL,
  `AdminRegdate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `UserName`, `MobileNumber`, `Address`, `Email`, `Password`, `AdminRegdate`) VALUES
(1, 'admin', 'admin', 787886187, 'Karte 4, Kabul, Afghanistan', 'admin@gmail.com', 'khaled@123', '2023-11-01 06:58:35');

-- --------------------------------------------------------

--
-- Table structure for table `tbldesk`
--

CREATE TABLE `tbldesk` (
  `id` int(11) NOT NULL,
  `deskNumber` varchar(120) DEFAULT NULL,
  `laptopChargerScoket` varchar(10) DEFAULT NULL,
  `isOccupied` char(1) DEFAULT NULL,
  `postingDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldesk`
--

INSERT INTO `tbldesk` (`id`, `deskNumber`, `laptopChargerScoket`, `isOccupied`, `postingDate`) VALUES
(1, '1', NULL, '', '2023-11-08 10:38:52'),
(2, '2', 'Yes', NULL, '2023-11-08 10:38:59'),
(3, '3', 'Yes', '1', '2023-11-08 10:39:05'),
(4, '4', 'Yes', NULL, '2023-10-08 10:39:12'),
(6, '2A', 'Yes', '1', '2023-09-08 16:14:25'),
(7, '1C', NULL, NULL, '2023-11-08 16:14:47'),
(9, '5A', 'Yes', '', '2023-11-08 17:57:12'),
(10, 'b12', 'Yes', NULL, '2023-11-06 11:52:51');

-- --------------------------------------------------------

--
-- Table structure for table `tbldeskhistory`
--

CREATE TABLE `tbldeskhistory` (
  `id` int(11) NOT NULL,
  `stduentId` int(11) DEFAULT NULL,
  `deaskId` int(11) DEFAULT NULL,
  `assignRemark` mediumtext DEFAULT NULL,
  `assignDate` timestamp NULL DEFAULT current_timestamp(),
  `unassignDate` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `unassignedRemark` mediumtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbldeskhistory`
--

INSERT INTO `tbldeskhistory` (`id`, `stduentId`, `deaskId`, `assignRemark`, `assignDate`, `unassignDate`, `unassignedRemark`) VALUES
(4, 2, 3, 'NA', '2023-10-18 13:38:14', '2023-10-18 13:59:21', 'NA'),
(6, 5, 3, 'Assigned', '2023-10-18 14:00:31', NULL, NULL),
(7, 2, 1, 'Desk assigned.', '2023-10-18 16:00:32', '2023-10-18 16:11:38', 'Student want to shift to the new desk.'),
(8, 9, 9, 'Desk assigned.', '2023-10-18 17:59:23', '2023-10-18 17:59:51', 'unassigned.'),
(9, 9, 6, 'New seat assigned.', '2022-12-07 18:00:30', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblstudents`
--

CREATE TABLE `tblstudents` (
  `id` int(11) NOT NULL,
  `registrationNumber` bigint(12) DEFAULT NULL,
  `studentName` varchar(150) DEFAULT NULL,
  `studentContactNo` bigint(12) DEFAULT NULL,
  `studentEmailId` varchar(120) DEFAULT NULL,
  `studentQualification` varchar(200) DEFAULT NULL,
  `studentAddress` mediumtext DEFAULT NULL,
  `regDate` timestamp NULL DEFAULT current_timestamp(),
  `isActive` int(11) DEFAULT NULL,
  `isDeskAssign` char(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tblstudents`
--

INSERT INTO `tblstudents` (`id`, `registrationNumber`, `studentName`, `studentContactNo`, `studentEmailId`, `studentQualification`, `studentAddress`, `regDate`, `isActive`, `isDeskAssign`) VALUES
(2, 2891347046, 'Qasim', 776123456, 'Qasim12@gmail.com', 'BSC', 'Kabul, Afghanistan', '2023-10-22 12:35:01', 1, NULL),
(5, 7559459412, 'Shakir', 777889234, 'shakirnoori@gamil.com', 'BSC', 'Maryam', '2023-10-22 13:12:33', 1, '1'),
(7, 1748045138, 'Layla', 779996173, 'Layla123@gmail.com', 'MCA', 'NA', '2023-10-22 16:16:08', 1, NULL),
(8, 4856632102, 'Karim shah', 774556571, 'karimhakimi@gmail.com', 'BCA', 'Kabul, Afghanistan', '2023-10-20 16:16:40', 1, NULL),
(9, 1849546661, 'shapoor', 785657375, 'shapoorka@gmail.com', 'BA', 'Kabul, Afghanistan', '2023-10-22 17:57:53', 1, '1'),
(10, 3512877294, 'Mosa khan', 7864623131, 'mosakhan@gmail.com', 'freshman', 'Kabul, Afghanistan', '2023-11-06 11:52:24', 1, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tbldesk`
--
ALTER TABLE `tbldesk`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbldeskhistory`
--
ALTER TABLE `tbldeskhistory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblstudents`
--
ALTER TABLE `tblstudents`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbldesk`
--
ALTER TABLE `tbldesk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbldeskhistory`
--
ALTER TABLE `tbldeskhistory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `tblstudents`
--
ALTER TABLE `tblstudents`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
