-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2024 at 05:44 AM
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
-- Database: `busprojectdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `bus`
--

CREATE TABLE `bus` (
  `Bus_Id` int(25) NOT NULL,
  `Bus_Name` varchar(35) NOT NULL,
  `Source` varchar(35) NOT NULL,
  `Destination` varchar(35) NOT NULL,
  `Time` varchar(35) NOT NULL,
  `busType` varchar(20) NOT NULL,
  `Fare` int(20) NOT NULL,
  `SeatNo` int(15) NOT NULL,
  `dateMonth` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bus`
--

INSERT INTO `bus` (`Bus_Id`, `Bus_Name`, `Source`, `Destination`, `Time`, `busType`, `Fare`, `SeatNo`, `dateMonth`) VALUES
(3, 'Arafat Express', 'Dhaka', 'sylhet', '10:15 am', 'AC SCANIA', 1350, 18, 'Thursday, December 5, 2024'),
(4, 'Royal Express', 'Dhaka', 'Khulna', '10:00 AM', 'AC SCANIA', 550, 28, 'Tuesday, December 10, 2024'),
(5, 'BUBT Pribahan', 'Rupnagar', 'Mirpur 14', '1:00 PM', 'NON/AC', 10, 36, 'Thursday, December 5, 2024');

-- --------------------------------------------------------

--
-- Table structure for table `buyticket`
--

CREATE TABLE `buyticket` (
  `Bus_Id` int(15) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `UserName` varchar(20) NOT NULL,
  `SeatNo` int(10) NOT NULL,
  `PhoneNumber` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `buyticket`
--

INSERT INTO `buyticket` (`Bus_Id`, `Name`, `UserName`, `SeatNo`, `PhoneNumber`) VALUES
(2, 'Ammar', 'am1', 3, '0130426174'),
(3, 'Arafat', 'Arafat1', 3, '01302456879'),
(4, 'wasit', 'wasit', 2, '01612382444'),
(5, 'rafiul', 'Raf1', 2, '01304260174');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(25) NOT NULL,
  `Name` varchar(35) NOT NULL,
  `UserName` varchar(35) NOT NULL,
  `Password` varchar(35) NOT NULL,
  `PhoneNumber` varchar(13) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `Name`, `UserName`, `Password`, `PhoneNumber`) VALUES
(1, 'Rafiul Hasan', 'Raf1', 'Rafiul01', '01304260174'),
(2, 'ammar', 'am1', 'Ammar5656', '01304265874'),
(3, 'Arafat Rahman', 'Arafat1', 'Arafat56', '01356897542'),
(4, 'Wasit Manat', 'wasit', '123@wasI', '01612382444'),
(5, 'Rafi', 'rafi1', 'Rafiul@01', '01302256789');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bus`
--
ALTER TABLE `bus`
  ADD PRIMARY KEY (`Bus_Id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bus`
--
ALTER TABLE `bus`
  MODIFY `Bus_Id` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(25) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
