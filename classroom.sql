-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Oct 28, 2017 at 05:01 AM
-- Server version: 10.1.28-MariaDB
-- PHP Version: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `classroom`
--

-- --------------------------------------------------------

--
-- Table structure for table `Courses`
--

CREATE TABLE `Courses` (
  `d_ID` varchar(20) NOT NULL,
  `Code` varchar(20) NOT NULL,
  `Faculty_ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Credit` int(10) NOT NULL,
  `Contact_hours` float NOT NULL,
  `Year` int(10) NOT NULL,
  `Semester` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Department`
--

CREATE TABLE `Department` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Adress` varchar(200) NOT NULL,
  `Major_expertise` varchar(50) NOT NULL,
  `Year_of_establishment` int(4) NOT NULL,
  `Small_image_Url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Dept_event`
--

CREATE TABLE `Dept_event` (
  `e_ID` varchar(20) NOT NULL,
  `d_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Dept_images`
--

CREATE TABLE `Dept_images` (
  `d_ID` varchar(20) NOT NULL,
  `Carousel_image_Url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Dept_notice`
--

CREATE TABLE `Dept_notice` (
  `d_ID` varchar(20) NOT NULL,
  `n_ID` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Events`
--

CREATE TABLE `Events` (
  `ID` varchar(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Post_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Central_image_Url` varchar(1000) NOT NULL,
  `Event_start_timestamp` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Event_end_timestampm` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  `Description` varchar(10000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Event_images`
--

CREATE TABLE `Event_images` (
  `e_ID` varchar(20) NOT NULL,
  `Event_image_Url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Faculty`
--

CREATE TABLE `Faculty` (
  `Group_ID` varchar(20) NOT NULL,
  `Faculty_ID` varchar(20) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email_ID` varchar(200) NOT NULL,
  `DOB` date NOT NULL,
  `Designation` varchar(2000) NOT NULL,
  `Date_of_joining` date NOT NULL,
  `Course_specialisation` varchar(50) NOT NULL,
  `Image_Url` varchar(1000) NOT NULL,
  `Salary` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Groups`
--

CREATE TABLE `Groups` (
  `Name` varchar(100) NOT NULL,
  `Group_ID` varchar(20) NOT NULL,
  `Year_of_formation` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Hostel`
--

CREATE TABLE `Hostel` (
  `ID` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Year_of_establishment` int(4) NOT NULL,
  `Type` varchar(10) NOT NULL,
  `Faculty_ID` varchar(20) NOT NULL,
  `No.of_Students` int(20) NOT NULL,
  `Image_Url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `News`
--

CREATE TABLE `News` (
  `ID` varchar(20) NOT NULL,
  `Title` varchar(20) NOT NULL,
  `Post_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `Description` varchar(10000) NOT NULL,
  `Image_Url` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

-- --------------------------------------------------------

--
-- Table structure for table `Student`
--

CREATE TABLE `Student` (
  `Enrollment_No` varchar(20) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `isAlmuni` tinyint(1) NOT NULL,
  `Year` int(4) NOT NULL,
  `Semester` int(10) NOT NULL,
  `Branch` varchar(100) NOT NULL,
  `Dept_ID` varchar(20) NOT NULL,
  `DOB` date NOT NULL,
  `Phone_No` varchar(20) NOT NULL,
  `Email_Id` varchar(100) NOT NULL,
  `Ug/Pg` varchar(10) NOT NULL,
  `Hostel_Id` varchar(20) NOT NULL,
  `Hostel_Room_No` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf16;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Courses`
--
ALTER TABLE `Courses`
  ADD PRIMARY KEY (`d_ID`,`Code`,`Faculty_ID`);

--
-- Indexes for table `Department`
--
ALTER TABLE `Department`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Dept_event`
--
ALTER TABLE `Dept_event`
  ADD PRIMARY KEY (`e_ID`,`d_ID`);

--
-- Indexes for table `Dept_images`
--
ALTER TABLE `Dept_images`
  ADD PRIMARY KEY (`d_ID`,`Carousel_image_Url`);

--
-- Indexes for table `Dept_notice`
--
ALTER TABLE `Dept_notice`
  ADD PRIMARY KEY (`d_ID`,`n_ID`);

--
-- Indexes for table `Events`
--
ALTER TABLE `Events`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Event_images`
--
ALTER TABLE `Event_images`
  ADD PRIMARY KEY (`e_ID`,`Event_image_Url`);

--
-- Indexes for table `Faculty`
--
ALTER TABLE `Faculty`
  ADD PRIMARY KEY (`Group_ID`,`Faculty_ID`);

--
-- Indexes for table `Groups`
--
ALTER TABLE `Groups`
  ADD PRIMARY KEY (`Group_ID`);

--
-- Indexes for table `Hostel`
--
ALTER TABLE `Hostel`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `News`
--
ALTER TABLE `News`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Student`
--
ALTER TABLE `Student`
  ADD PRIMARY KEY (`Enrollment_No`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
