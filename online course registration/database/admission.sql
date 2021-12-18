-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 18, 2021 at 07:59 PM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `admission`
--

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `id` int(240) NOT NULL,
  `course` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`id`, `course`) VALUES
(1, 'chm117'),
(2, 'phy112'),
(3, 'Art102');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `id` int(240) NOT NULL,
  `department` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`id`, `department`) VALUES
(1, 'cse'),
(2, 'eee'),
(3, 'bhm');

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(240) NOT NULL,
  `semester` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `semester`) VALUES
(1, 'summer'),
(2, 'spring'),
(3, 'winter');

-- --------------------------------------------------------

--
-- Table structure for table `session`
--

CREATE TABLE `session` (
  `id` int(240) NOT NULL,
  `session` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `session`
--

INSERT INTO `session` (`id`, `session`) VALUES
(1, '2020'),
(2, '2021'),
(3, '2022');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `stname` varchar(240) NOT NULL,
  `regno` int(240) NOT NULL,
  `password` varchar(240) NOT NULL,
  `course` varchar(240) NOT NULL,
  `department` varchar(240) NOT NULL,
  `session` varchar(240) NOT NULL,
  `profile` varchar(240) NOT NULL,
  `semester` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`stname`, `regno`, `password`, `course`, `department`, `session`, `profile`, `semester`) VALUES
('adnan', 112, '111', '', '', '', '', ''),
('ismail', 2011, '111', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `stu_course`
--

CREATE TABLE `stu_course` (
  `id` int(240) NOT NULL,
  `name` varchar(240) NOT NULL,
  `regno` int(240) NOT NULL,
  `session` varchar(240) NOT NULL,
  `department` varchar(240) NOT NULL,
  `semester` varchar(240) NOT NULL,
  `course` varchar(240) NOT NULL,
  `profile` varchar(240) NOT NULL,
  `cgpa` varchar(240) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `stu_course`
--

INSERT INTO `stu_course` (`id`, `name`, `regno`, `session`, `department`, `semester`, `course`, `profile`, `cgpa`) VALUES
(1, 'adnan', 111, '1', '2', '1', '1', 'hotel2.jpg', ''),
(2, 'tipu', 112, '1', '1', '1', '1', 'hotel1.jpg', ''),
(3, 'sobuj', 2011, '2', '2', '2', '3', 'room.jpg', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `session`
--
ALTER TABLE `session`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`regno`);

--
-- Indexes for table `stu_course`
--
ALTER TABLE `stu_course`
  ADD PRIMARY KEY (`regno`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
