-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 02, 2018 at 06:19 AM
-- Server version: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `library`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `FullName` varchar(100) DEFAULT NULL,
  `AdminEmail` varchar(120) DEFAULT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL,
  `updationDate` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00' ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `FullName`, `AdminEmail`, `UserName`, `Password`, `updationDate`) VALUES
(1, 'Sarwar Alam', 'ansarisarwar97@gmail.com', 'admin', '21232f297a57a5a743894a0e4a801fc3', '2018-06-07 09:44:38');

-- --------------------------------------------------------

--
-- Table structure for table `moderator`
--

CREATE TABLE `moderator` (
  `id` int(11) NOT NULL,
  `UserName` varchar(100) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `moderator`
--

INSERT INTO `moderator` (`id`, `UserName`, `Password`) VALUES
(1, 'moderator', 'mode');

-- --------------------------------------------------------

--
-- Table structure for table `tblemployees`
--

CREATE TABLE `tblemployees` (
  `id` int(11) NOT NULL,
  `EmployeeID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `EmailId` varchar(120) DEFAULT NULL,
  `MobileNumber` char(11) DEFAULT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `Status` int(1) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblemployees`
--

INSERT INTO `tblemployees` (`id`, `EmployeeID`, `FullName`, `EmailId`, `MobileNumber`, `Password`, `Status`, `RegDate`, `UpdationDate`) VALUES
(15, '2', 'Neha Singh', 'neha@gmail.com', '1234567890', '262f5bdd0af9098e7443ab1f8e435290', 1, '2018-05-30 03:31:29', '2018-07-02 16:41:26'),
(16, '3', 'Sam Wilson', 'sam@gmail.com', '7867867867', '332532dcfaa1cbf61e2a266bd723612c', 1, '2018-06-14 16:38:50', '2018-06-20 11:10:31'),
(18, '4', 'Mintu', 'mintu@gmail.com', '1234567890', '5151d92e23889564623a29b431f66e24', 0, '2018-06-17 10:26:11', '2018-07-18 05:38:10'),
(19, '5', 'Sundar', 'sun@gmail.com', '1236547890', 'ebd556e6dfc99dbed29675ce1c6c68e5', 1, '2018-06-17 11:22:36', '2018-06-17 12:18:16'),
(20, '6', 'Maneesh Sagar', 'man@gmail.com', '7867864545', '39c63ddb96a31b9610cd976b896ad4f0', 0, '2018-06-19 14:41:35', '2018-06-25 16:47:13'),
(21, '7', 'M S DHONI', 'msd@gmail.com', '7525827455', 'b0f2169aa609c42c1bc96d4aa5da3aea', 1, '2018-06-25 15:19:42', NULL),
(22, '8', 'Shivam Verma', 'shivam@gmail.com', '7525877944', '3ae9d8799d1bb5e201e5704293bb54ef', 1, '2018-07-02 16:53:48', '2018-07-12 04:13:32'),
(23, '9', 'sanjay', 'sanjusastri1008@gmail.com', '7379407904', '103534e87b05d67f52aacd44d2c9037b', 1, '2018-07-18 04:41:33', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblissuedworkdetails`
--

CREATE TABLE `tblissuedworkdetails` (
  `id` int(11) NOT NULL,
  `EmpID` int(10) NOT NULL,
  `Task` varchar(120) DEFAULT NULL,
  `Employee` varchar(150) DEFAULT NULL,
  `IssuesDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `ReturnDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP,
  `RetrunStatus` int(1) NOT NULL,
  `fine` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblissuedworkdetails`
--

INSERT INTO `tblissuedworkdetails` (`id`, `EmpID`, `Task`, `Employee`, `IssuesDate`, `ReturnDate`, `RetrunStatus`, `fine`) VALUES
(63, 15, 'Python', 'Neha Singh', '2018-06-19 04:35:48', '2018-06-25 15:15:00', 0, NULL),
(72, 18, 'C', 'Mintu', '2018-06-19 14:08:53', NULL, 0, NULL),
(79, 16, 'UPNIC', 'Sam', '2018-06-19 17:12:15', NULL, 0, NULL),
(81, 15, 'J2EE', 'Neha Singh', '2018-06-20 11:37:50', '2018-06-25 12:09:22', 0, NULL),
(82, 15, '.NET', 'Neha Singh', '2018-06-25 15:18:15', NULL, 0, NULL),
(83, 19, 'Python', 'Sundar', '2018-06-25 15:18:40', '2018-07-18 04:46:54', 0, NULL),
(84, 21, 'Python', 'M S DHONI', '2018-06-25 15:20:36', NULL, 0, NULL),
(85, 16, 'J2EE', 'Sam Wilson', '2018-06-26 17:10:50', NULL, 0, NULL),
(87, 21, 'C', 'M S DHONI', '2018-07-02 05:50:36', NULL, 0, NULL),
(88, 22, 'UPSC', 'Shivam Verma', '2018-07-12 03:35:11', NULL, 0, NULL),
(89, 22, '.NET', 'Shivam Verma', '2018-07-12 04:11:56', '2018-07-12 04:12:42', 0, NULL),
(90, 16, 'Python', 'Sam Wilson', '2018-08-02 03:51:19', NULL, 0, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tblwork`
--

CREATE TABLE `tblwork` (
  `id` int(11) NOT NULL,
  `WorkName` varchar(255) DEFAULT NULL,
  `WorkId` int(11) DEFAULT NULL,
  `WorkPrice` int(11) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `UpdationDate` timestamp NULL DEFAULT NULL ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblwork`
--

INSERT INTO `tblwork` (`id`, `WorkName`, `WorkId`, `WorkPrice`, `RegDate`, `UpdationDate`) VALUES
(3, 'Python', 100, 15, '2017-07-08 20:17:31', '2018-06-17 11:46:06'),
(4, 'UPNIC', 101, NULL, '2018-05-28 09:07:42', NULL),
(5, 'UPSC', 102, NULL, '2018-05-28 09:08:03', NULL),
(6, '.NET', 103, NULL, '2018-06-17 11:46:50', NULL),
(7, 'C', 104, 50, '2018-06-19 09:23:02', NULL),
(8, 'J2EE', 105, 1500, '2018-06-20 11:36:18', NULL),
(9, 'ML using R', 106, 2000, '2018-07-03 06:52:43', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `moderator`
--
ALTER TABLE `moderator`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblemployees`
--
ALTER TABLE `tblemployees`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `StudentId` (`EmployeeID`);

--
-- Indexes for table `tblissuedworkdetails`
--
ALTER TABLE `tblissuedworkdetails`
  ADD PRIMARY KEY (`id`),
  ADD KEY `EmpID` (`EmpID`);

--
-- Indexes for table `tblwork`
--
ALTER TABLE `tblwork`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `moderator`
--
ALTER TABLE `moderator`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tblemployees`
--
ALTER TABLE `tblemployees`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `tblissuedworkdetails`
--
ALTER TABLE `tblissuedworkdetails`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=91;
--
-- AUTO_INCREMENT for table `tblwork`
--
ALTER TABLE `tblwork`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `tblissuedworkdetails`
--
ALTER TABLE `tblissuedworkdetails`
  ADD CONSTRAINT `tblissuedworkdetails_ibfk_1` FOREIGN KEY (`EmpID`) REFERENCES `tblemployees` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
