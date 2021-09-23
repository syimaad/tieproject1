-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 23, 2021 at 09:14 PM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `contact_us`
--

-- --------------------------------------------------------

--
-- Table structure for table `feed`
--

CREATE TABLE `feed` (
  `Sno.` int(4) NOT NULL,
  `Name` text NOT NULL,
  `Email` varchar(40) NOT NULL,
  `Phone` varchar(12) NOT NULL,
  `Feedback` text NOT NULL,
  `Date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `feed`
--

INSERT INTO `feed` (`Sno.`, `Name`, `Email`, `Phone`, `Feedback`, `Date`) VALUES
(1, 'Rohit Jumnani', 'rohit.rj13131313@gmail.com', '6363226105', 'Checking purpose...', '2021-09-21 00:09:35'),
(2, 'Sangam Yadav', 'yadavsangam@gmail.com', '6388141142', 'Sangam Yadav it is!', '2021-09-21 20:54:30'),
(3, 'Rohit Jumnani', 'jumnanirohit07@gmail.com', '8965044395', 'Rohit Jumnani TIE Project', '2021-09-21 23:02:26'),
(4, 'Rohit Jumnani', 'jumnanirohit07@gmail.com', '8965044395', 'Rohit Jumnani TIE Project', '2021-09-21 23:02:56'),
(5, 'Anything', 'any@gmail.com', '06363226105', 'It si \r\n', '2021-09-23 19:24:36'),
(6, 'Shiva Singh', 'shiva@gmail.com', '9426818599', 'Shiva it is', '2021-09-23 23:09:20');

-- --------------------------------------------------------

--
-- Stand-in structure for view `first_view`
-- (See below for the actual view)
--
CREATE TABLE `first_view` (
`name` text
,`email` varchar(40)
,`phone` varchar(12)
);

-- --------------------------------------------------------

--
-- Structure for view `first_view`
--
DROP TABLE IF EXISTS `first_view`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `first_view`  AS SELECT `feed`.`Name` AS `name`, `feed`.`Email` AS `email`, `feed`.`Phone` AS `phone` FROM `feed` ORDER BY `feed`.`Name` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `feed`
--
ALTER TABLE `feed`
  ADD PRIMARY KEY (`Sno.`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `feed`
--
ALTER TABLE `feed`
  MODIFY `Sno.` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
