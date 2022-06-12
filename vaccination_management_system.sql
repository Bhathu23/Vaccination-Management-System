-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 03, 2022 at 06:48 PM
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
-- Database: `vaccination_management_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `covid_19_consent_form`
--

CREATE TABLE `covid_19_consent_form` (
  `NIC` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Permanent_Address` varchar(100) NOT NULL,
  `Telephone_No` varchar(20) NOT NULL,
  `Health_Staff` tinyint(4) NOT NULL,
  `Front_line_Workers-Other_than_Health_Staff_and_Security_Forces` tinyint(4) NOT NULL,
  `More_than_60_Years_of_Age` tinyint(4) NOT NULL,
  `With_comorbidities_in_30-60_years_age_group` tinyint(4) NOT NULL,
  `Security_Forces` tinyint(4) NOT NULL,
  `Without_comorbidities_in_30-60_years_age_group` tinyint(4) NOT NULL,
  `Less_than_30_years_of_age` tinyint(4) NOT NULL,
  `Pregnant_mother` tinyint(4) NOT NULL,
  `Education_staff(Teachers_and_others)` tinyint(4) NOT NULL,
  `Allergies` tinyint(4) NOT NULL,
  `Taking_treatment_for_any_chronic_diease` tinyint(4) NOT NULL,
  `Diabetes_Mellitus` tinyint(4) NOT NULL,
  `Hypertension` tinyint(4) NOT NULL,
  `Ischemic_Heart_Disease` tinyint(4) NOT NULL,
  `Bronchial_Asthma` tinyint(4) NOT NULL,
  `Chronic_Obstructive_Airway_Disease` tinyint(4) NOT NULL,
  `Chronic_Kidney_Disease` tinyint(4) NOT NULL,
  `Malignancies` tinyint(4) NOT NULL,
  `Other` varchar(50) NOT NULL,
  `Vaccine_Product` varchar(50) NOT NULL,
  `Batch_Number` varchar(20) NOT NULL,
  `Age` int(3) NOT NULL,
  `Sex` tinyint(4) NOT NULL,
  `GS_Division_and_No` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `institution_details`
--

CREATE TABLE `institution_details` (
  `Serial_No` varchar(20) NOT NULL,
  `NIC` varchar(20) NOT NULL,
  `Immunization_centre_name` varchar(50) NOT NULL,
  `First_Dose` date NOT NULL,
  `Second_Dose` date NOT NULL,
  `Third_Dose` date NOT NULL,
  `Fourth_Dose` date NOT NULL,
  `Fifth_Dose` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `covid_19_consent_form`
--
ALTER TABLE `covid_19_consent_form`
  ADD PRIMARY KEY (`NIC`);

--
-- Indexes for table `institution_details`
--
ALTER TABLE `institution_details`
  ADD PRIMARY KEY (`Serial_No`),
  ADD KEY `Foreign_Key` (`NIC`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `institution_details`
--
ALTER TABLE `institution_details`
  ADD CONSTRAINT `Foreign_Key` FOREIGN KEY (`NIC`) REFERENCES `covid_19_consent_form` (`NIC`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
