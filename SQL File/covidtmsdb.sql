-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 09, 2022 at 08:44 PM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 7.4.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `covidtmsdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `form`
--

CREATE TABLE `form` (
  `fullname` varchar(250) NOT NULL,
  `mobilenumber` bigint(20) NOT NULL,
  `dob` date NOT NULL,
  `nic` varchar(15) NOT NULL,
  `address` varchar(250) NOT NULL,
  `vaccineproduct` varchar(100) NOT NULL,
  `bno` varchar(100) NOT NULL,
  `gno` varchar(100) NOT NULL,
  `age` int(11) NOT NULL,
  `sex` varchar(100) NOT NULL,
  `allergies` varchar(100) NOT NULL,
  `chronic` varchar(100) NOT NULL,
  `select` varchar(100) NOT NULL,
  `select1` varchar(100) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `ID` int(11) NOT NULL,
  `AdminName` varchar(120) DEFAULT NULL,
  `AdminuserName` varchar(20) NOT NULL,
  `MobileNumber` int(10) NOT NULL,
  `Email` varchar(120) NOT NULL,
  `Password` varchar(120) DEFAULT NULL,
  `AdminRegdate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbladmin`
--

INSERT INTO `tbladmin` (`ID`, `AdminName`, `AdminuserName`, `MobileNumber`, `Email`, `Password`, `AdminRegdate`) VALUES
(2, 'Admin', 'admin', 774596123, 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '2021-04-19 18:30:00');

-- --------------------------------------------------------

--
-- Table structure for table `tblgs`
--

CREATE TABLE `tblgs` (
  `id` int(11) NOT NULL,
  `EmpID` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NIC` varchar(15) DEFAULT NULL,
  `Area` varchar(55) DEFAULT NULL,
  `District` varchar(55) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblgs`
--

INSERT INTO `tblgs` (`id`, `EmpID`, `FullName`, `MobileNumber`, `Email`, `NIC`, `Area`, `District`, `RegDate`) VALUES
(12, '12456', 'mohammed afraj', 702798648, 'mohammedafraj1@gmail.com', '971761326V', 'Puttalam', 'Puttalam', '2022-07-02 19:30:55');

-- --------------------------------------------------------

--
-- Table structure for table `tblmoh`
--

CREATE TABLE `tblmoh` (
  `ID` int(11) NOT NULL,
  `EmpId` varchar(100) DEFAULT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(10) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `NIC` varchar(15) DEFAULT NULL,
  `Area` varchar(55) DEFAULT NULL,
  `District` varchar(55) DEFAULT NULL,
  `RegDate` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tblmoh`
--

INSERT INTO `tblmoh` (`ID`, `EmpId`, `FullName`, `MobileNumber`, `Email`, `NIC`, `Area`, `District`, `RegDate`) VALUES
(4, '123', 'mohammed afraj', 702798648, 'mohammedafraj1@gmail.com', '971761326V', 'Puttalam', 'Puttalam', '2022-07-02 19:22:52'),
(5, '124', 'Jhon', 702798542, 'jhon@gmail.com', '958674123V', 'Kalpitya', 'Puttalam', '2022-07-03 06:46:50'),
(6, '125', 'jack', 758964123, 'jack@gmail.com', '964582613V', 'grandpass', 'Colombo', '2022-07-03 06:47:57');

-- --------------------------------------------------------

--
-- Table structure for table `tblpatients`
--

CREATE TABLE `tblpatients` (
  `id` int(11) NOT NULL,
  `FullName` varchar(120) DEFAULT NULL,
  `MobileNumber` bigint(12) DEFAULT NULL,
  `DateOfBirth` date DEFAULT NULL,
  `GovtIssuedId` varchar(150) DEFAULT NULL,
  `GovtIssuedIdNo` varchar(150) DEFAULT NULL,
  `FullAddress` varchar(255) DEFAULT NULL,
  `State` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblpatients`
--

INSERT INTO `tblpatients` (`id`, `FullName`, `MobileNumber`, `DateOfBirth`, `GovtIssuedId`, `GovtIssuedIdNo`, `FullAddress`, `State`, `RegistrationDate`) VALUES
(8, 'Sangavi Tharmaratnam', 771111113, '2022-07-06', '877853142V', '012', 'Jaffna', '', '2022-07-09 10:12:50'),
(9, 'Bhathusha Thushianthan', 774576963, '1998-02-23', '985543305V', 'NIC', 'Jaffna', '', '2022-07-09 10:20:01'),
(10, 'Gejaani Vijeyakanthan', 774596123, '1997-12-06', '978563145V', 'NIC', 'Jaffna', '', '2022-07-09 12:46:12');

-- --------------------------------------------------------

--
-- Table structure for table `tblreporttracking`
--

CREATE TABLE `tblreporttracking` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(40) DEFAULT NULL,
  `Remark` varchar(255) DEFAULT NULL,
  `Status` varchar(120) DEFAULT NULL,
  `PostingTime` timestamp NULL DEFAULT current_timestamp(),
  `RemarkBy` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tblreporttracking`
--

INSERT INTO `tblreporttracking` (`id`, `OrderNumber`, `Remark`, `Status`, `PostingTime`, `RemarkBy`) VALUES
(1, 450040675, 'The Phlebotomist is on the way for collection.', 'On the Way for Collection', '2021-05-06 04:36:22', 2),
(6, 450040675, 'Sample collection.', 'Sample Collected', '2021-05-06 19:15:25', 2),
(7, 450040675, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-06 19:15:48', 2),
(9, 450040675, 'Report uploaded.', 'Delivered', '2021-05-06 20:01:48', 2),
(10, 617325549, 'The phlebotomist is on the way to sample collection.', 'On the Way for Collection', '2021-05-07 04:44:38', 2),
(11, 617325549, 'Sample collected successfully.', 'Sample Collected', '2021-05-07 04:46:46', 2),
(12, 617325549, 'Sample sent to the lab.', 'Sent to Lab', '2021-05-07 04:51:25', 2),
(13, 617325549, 'Report uploaded.', 'Delivered', '2021-05-07 04:57:20', 2),
(14, 250482553, 'On the way for sample collection.', 'On the Way for Collection', '2021-05-08 09:31:42', 2),
(15, 250482553, 'Sample collected successfully', 'Sample Collected', '2021-05-08 09:32:06', 2),
(16, 250482553, 'Sample sent to lab', 'Sent to Lab', '2021-05-08 09:32:26', 2),
(17, 250482553, 'Report Uploaded', 'Delivered', '2021-05-08 09:32:51', 2);

-- --------------------------------------------------------

--
-- Table structure for table `tbltestrecord`
--

CREATE TABLE `tbltestrecord` (
  `id` int(11) NOT NULL,
  `OrderNumber` bigint(14) DEFAULT NULL,
  `PatientMobileNumber` bigint(14) DEFAULT NULL,
  `TestType` varchar(100) DEFAULT NULL,
  `TestTimeSlot` varchar(120) DEFAULT NULL,
  `ReportStatus` varchar(100) DEFAULT NULL,
  `FinalReport` varchar(150) DEFAULT NULL,
  `ReportUploadTime` varchar(200) DEFAULT NULL,
  `RegistrationDate` timestamp NULL DEFAULT current_timestamp(),
  `AssignedtoEmpId` varchar(150) DEFAULT NULL,
  `AssigntoName` varchar(180) DEFAULT NULL,
  `AssignedTime` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbltestrecord`
--

INSERT INTO `tbltestrecord` (`id`, `OrderNumber`, `PatientMobileNumber`, `TestType`, `TestTimeSlot`, `ReportStatus`, `FinalReport`, `ReportUploadTime`, `RegistrationDate`, `AssignedtoEmpId`, `AssigntoName`, `AssignedTime`) VALUES
(1, 450040675, 1234567890, 'Antigen', '2021-05-01T04:05', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620331308.pdf', '07-05-2021 01:31:48 AM', '2021-04-27 17:31:23', '12587493', 'Amit Singh', '06-05-2021 10:05:22 AM'),
(2, 617325549, 6547893210, 'RT-PCR', '2021-05-01T05:10', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620363440.pdf', '07-05-2021 10:27:20 AM', '2021-04-27 18:04:58', '105202365', 'Rahul', '07-05-2021 10:13:41 AM'),
(4, 740138296, 1234567890, 'RT-PCR', '2021-05-05T14:40', 'Assigned', NULL, NULL, '2021-04-27 19:10:30', '105202365', 'Rahul', '07-05-2021 03:52:05 PM'),
(5, 716060226, 4598520125, 'CB-NAAT', '2021-05-15T14:22', NULL, NULL, NULL, '2021-05-08 05:49:46', NULL, NULL, NULL),
(6, 599452326, 2536987410, 'CB-NAAT', '2021-05-20T19:00', NULL, NULL, NULL, '2021-05-08 09:25:50', NULL, NULL, NULL),
(7, 250482553, 1234567899, 'Antigen', '2021-05-11T15:00', 'Delivered', '2c86e2aa7eb4cb4db70379e28fab9b521620466371.pdf', '08-05-2021 03:02:51 PM', '2021-05-08 09:29:22', '12587493', 'Amit Singh', '08-05-2021 03:00:47 PM'),
(8, 288171441, 775689214, 'Pfizer', '2022-07-16T11:49', NULL, NULL, NULL, '2022-07-09 06:20:43', NULL, NULL, NULL),
(9, 297303966, 775689214, 'Antigen', '2022-07-28T11:52', NULL, NULL, NULL, '2022-07-09 06:22:54', NULL, NULL, NULL),
(10, 545176126, 771111113, 'Pfizer', '2022-07-19T05:45', NULL, NULL, NULL, '2022-07-09 10:12:50', NULL, NULL, NULL),
(11, 787122933, 774576963, 'Pfizer', '2022-07-14T17:00', NULL, NULL, NULL, '2022-07-09 10:20:01', NULL, NULL, NULL),
(12, 338621831, 774596123, 'Pfizer', '2022-07-25T10:00', NULL, NULL, NULL, '2022-07-09 12:46:13', NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `tbluser`
--

CREATE TABLE `tbluser` (
  `Id` int(11) NOT NULL,
  `username` varchar(255) CHARACTER SET latin1 NOT NULL,
  `email` varchar(255) CHARACTER SET latin1 NOT NULL,
  `password` varchar(55) CHARACTER SET latin1 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbluser`
--

INSERT INTO `tbluser` (`Id`, `username`, `email`, `password`) VALUES
(1, 'admin', 'admin@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(3, 'Bhathu', 'bhathu123@gmail.com', '050248cd2efad770e194ca0e12d44264'),
(4, 'Mala', 'mala@gmail.com', '038cd328c936d030e5553d18a3b4596a'),
(5, 'thushi', 'thushi@gmail.com', '1552c03e78d38d5005d4ce7b8018addf'),
(6, 'Nila', 'nila123@gmail.com', '1552c03e78d38d5005d4ce7b8018addf'),
(7, 'Danial', 'danial@gmail.com', '1552c03e78d38d5005d4ce7b8018addf'),
(9, 'Vithu', 'vithu123@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(10, 'Vimal', 'vimal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(11, 'Gejanni', 'geja12@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(12, 'Viamala', 'vimala@gmail.com', '202cb962ac59075b964b07152d234b70'),
(13, 'Kamal', 'kamal@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(14, 'Sharmila', 'sharmila@gmail.com', '7812e8b74f6837fba66f86fe86688a2b'),
(15, 'Sumudhu', 'sumudhu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(17, 'Sangavi', 'sangavi@gmail.com', '3ff053be7dd2f0860d8199e9467db3e3'),
(19, 'Vithu12', 'vithu@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(20, 'Danial12', 'danial12@gamil.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(21, 'Keerthana', 'keerthana@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055'),
(24, 'Bhathusha', 'bhathu23@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `form`
--
ALTER TABLE `form`
  ADD PRIMARY KEY (`nic`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblgs`
--
ALTER TABLE `tblgs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblmoh`
--
ALTER TABLE `tblmoh`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `tblpatients`
--
ALTER TABLE `tblpatients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbluser`
--
ALTER TABLE `tbluser`
  ADD PRIMARY KEY (`Id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tblgs`
--
ALTER TABLE `tblgs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tblmoh`
--
ALTER TABLE `tblmoh`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tblpatients`
--
ALTER TABLE `tblpatients`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tblreporttracking`
--
ALTER TABLE `tblreporttracking`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `tbltestrecord`
--
ALTER TABLE `tbltestrecord`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `tbluser`
--
ALTER TABLE `tbluser`
  MODIFY `Id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
