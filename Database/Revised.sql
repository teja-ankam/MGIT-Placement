-- phpMyAdmin SQL Dump
-- version 4.1.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 21, 2015 at 07:29 AM
-- Server version: 5.6.16
-- PHP Version: 5.5.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `details`
--

-- --------------------------------------------------------

--
-- Table structure for table `addpdrive`
--

CREATE TABLE IF NOT EXISTS `addpdrive` (
  `CompanyName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `C/P` tinyint(1) NOT NULL DEFAULT '0',
  `PVenue` varchar(255) NOT NULL,
  `SSLC` float NOT NULL,
  `PU/Dip` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `ODetails` text,
  PRIMARY KEY (`CompanyName`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `addpdrive`
--

INSERT INTO `addpdrive` (`CompanyName`, `Date`, `C/P`, `PVenue`, `SSLC`, `PU/Dip`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `ODetails`) VALUES
('Apple', '2015-07-23', 0, 'RVCE', 98, 98, 90, 0, 0, 0, 'Welcome to Apple'),
('Haritha Tech', '2015-06-26', 1, 'SIT', 60, 65, 65, 0, 0, 0, '0'),
('HP', '2013-08-19', 1, 'SSIT', 70, 75, 75, 0, 0, 0, '0'),
('IBM', '2015-05-12', 0, 'CIT College', 60, 65, 65, 0, 0, 0, '0'),
('Infosis', '2015-01-10', 0, 'CIT College', 60, 60, 60, 0, 0, 0, '0'),
('Intel', '2013-09-08', 0, 'CIT', 60, 65, 65, 0, 0, 0, '0'),
('Microsoft company', '2014-12-09', 0, 'CIT', 60, 65, 65, 0, 0, 0, '0'),
('Skype', '2014-06-10', 1, 'SIT College', 75, 75, 75, 0, 0, 0, '0'),
('Tata Consultency Services', '2015-11-24', 1, 'AIE', 65, 70, 75, 0, 0, 0, '0'),
('VTECK', '2013-03-24', 0, 'CIT College', 60, 60, 65, 0, 0, 0, '0'),
('WDS', '2014-09-30', 1, 'KIT', 65, 65, 65, 0, 0, 0, '0'),
('yy', '2015-07-04', 0, '', 45, 55, 55, 8, 1, 2, '');

-- --------------------------------------------------------

--
-- Table structure for table `basicdetails`
--

CREATE TABLE IF NOT EXISTS `basicdetails` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `FirstName` varchar(25) NOT NULL,
  `LastName` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `Mobile` bigint(11) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `DOB` date NOT NULL,
  `Sem` int(11) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  `SSLC` float NOT NULL,
  `PU/Dip` float NOT NULL,
  `BE` float NOT NULL,
  `Backlogs` int(11) NOT NULL,
  `HofBacklogs` tinyint(1) NOT NULL,
  `DetainYears` int(11) NOT NULL,
  `Approve` tinyint(1) NOT NULL DEFAULT '0',
  `ApprovalDate` date NOT NULL,
  PRIMARY KEY (`Id`,`USN`),
  UNIQUE KEY `USN` (`USN`,`Mobile`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=15 ;

--
-- Dumping data for table `basicdetails`
--

INSERT INTO `basicdetails` (`Id`, `FirstName`, `LastName`, `USN`, `Mobile`, `Email`, `DOB`, `Sem`, `Branch`, `SSLC`, `PU/Dip`, `BE`, `Backlogs`, `HofBacklogs`, `DetainYears`, `Approve`, `ApprovalDate`) VALUES
(1, 'Saiteja', 'Ankam', '1cg13is400', 11111, 'v@gmil.comk', '2015-06-09', 1, 'ISE', 70, 70, 70, 0, 0, 0, 1, '0000-00-00'),
(2, 'Saikumar', 'Jogolla', '1cg13cs400', 22222, 'vhs@gmil.com', '1996-03-08', 2, 'CSE', 75, 75, 70, 0, 0, 0, 1, '0000-00-00'),
(3, 'Vignesh Chary', 'Vadla', '1cg12is001', 33333, 'r@gmail.com', '1991-01-28', 6, 'ISE', 55, 55, 55, 0, 0, 0, 1, '0000-00-00'),
(4, 'Saikiran', 'Jangapally', '1cg12cs002', 66666, 'p@gmail.com', '1991-02-13', 8, 'CSE', 85, 85, 85, 0, 0, 0, 0, '0000-00-00'),
(5, 'Swathi', 'Tekumatla', '1cg12cv001', 7777, 'mk@gmail.com', '1998-05-31', 7, 'CVE', 99, 99, 99, 0, 0, 0, 0, '0000-00-00'),
(6, 'Sravanthi', 'Nampelli', '1cg12ee001', 88888, 'h@gmail.com', '1999-01-04', 8, 'EEE', 99, 99, 99, 0, 0, 0, 0, '0000-00-00'),
(7, 'Nithin', 'Janagama', '1cg12cv002', 99999, 't@gmil.com', '1997-08-13', 4, 'CVE', 65, 65, 65, 0, 0, 0, 0, '0000-00-00'),
(8, 'TarunSai', 'Jupaka', '1cg12ee005', 10000, 'au@gmail.com', '1992-10-23', 4, 'EEE', 55, 55, 55, 0, 0, 0, 0, '0000-00-00'),
(9, 'Nithin Chakri', 'Purna', '1cg12is009', 20000, 'rb@gmail.com', '1997-04-28', 4, 'ISE', 66, 63, 62, 0, 0, 0, 1, '2015-07-23'),
(10, 'Radhika', 'Apte', '1cg12cs031', 40000, 'y@gmail.com', '2000-06-13', 5, 'CSE', 41, 45, 45, 0, 0, 0, 0, '0000-00-00'),
(11, 'Gopireddy', 'Anapureddy', '1cg13is401', 2147483647, 'rr@gmail.com', '2015-07-02', 4, 'ise', 77, 66, 77, 0, 0, 0, 1, '0000-00-00'),
(12, 'Tharun', 'Goguloth', '1cg12is094', 9880796862, 'harithsa@aol.com', '1994-10-22', 6, 'ISE', 91, 70, 50, 5, 0, 1, 1, '2015-08-18'),
(13, 'Vamshi', 'Gumpula', '1cg12is000', 2147483647, 'armstrong@neil.com', '2015-07-23', 7, 'ISE', 100, 100, 100, 0, 0, 0, 1, '2015-07-23'),
(14, 'Gayathri', 'Boddu', '1cg12is011', 9880796862, 'harithsa@aol.com', '2015-08-21', 6, 'ISE', 40, 70, 50, 5, 0, 1, 0, '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `updatedrive`
--

CREATE TABLE IF NOT EXISTS `updatedrive` (
  `USN` varchar(10) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `CompanyName` varchar(255) NOT NULL,
  `Date` date NOT NULL,
  `Attendence` tinyint(1) NOT NULL DEFAULT '0',
  `WT` tinyint(1) NOT NULL DEFAULT '0',
  `GD` tinyint(1) NOT NULL DEFAULT '0',
  `Techical` tinyint(1) NOT NULL DEFAULT '0',
  `Placed` tinyint(1) NOT NULL DEFAULT '0',
  KEY `USN` (`USN`),
  KEY `CompanyName` (`CompanyName`,`Date`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `updatedrive`
--

INSERT INTO `updatedrive` (`USN`, `Name`, `CompanyName`, `Date`, `Attendence`, `WT`, `GD`, `Techical`, `Placed`) VALUES
('1cg13is400', 'Saiteja', 'Haritha Tech', '2015-06-26', 1, 1, 1, 1, 1),
('1cg13cs400', 'Saikumar', 'HP', '2013-08-19', 1, 1, 1, 1, 1),
('1cg12cs002', 'Saikiran', 'IBM', '2015-05-12', 1, 1, 1, 1, 1),
('1cg12cv001', 'Swathi', 'Infosis', '2015-01-10', 1, 1, 1, 1, 1),
('1cg12ee001', 'Sravanthi', 'Intel', '2013-09-08', 1, 1, 1, 1, 1),
('1cg12ee005', 'TarunSai', 'Microsoft company', '2014-12-09', 1, 1, 1, 1, 1),
('1cg12is009', 'Nithin Chakri', 'Skype', '2014-06-10', 1, 1, 1, 1, 1),
('1cg12cs031', 'Radhika', 'Tata Consultency Services', '2015-11-24', 1, 1, 1, 1, 1),
('1cg12is001', 'Vignesh Chary', 'VTECK', '2013-03-24', 1, 1, 1, 1, 1),
('1cg12cv002', 'Nithin', 'WDS', '2014-09-30', 1, 1, 1, 1, 1),
('1cg12is011', 'Gayathri', 'yy', '2015-07-04', 1, 1, 1, 0, 0),
('1cg12is094', 'Tarun', 'Apple', '2015-07-23', 1, 1, 1, 1, 1);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `updatedrive`
--
ALTER TABLE `updatedrive`
  ADD CONSTRAINT `updatedrive_ibfk_1` FOREIGN KEY (`USN`) REFERENCES `basicdetails` (`USN`) ON DELETE CASCADE,
  ADD CONSTRAINT `updatedrive_ibfk_2` FOREIGN KEY (`CompanyName`, `Date`) REFERENCES `addpdrive` (`CompanyName`, `Date`) ON DELETE CASCADE;
--
-- Database: `placement`
--

-- --------------------------------------------------------

--
-- Table structure for table `hlogin`
--

CREATE TABLE IF NOT EXISTS `hlogin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  `Branch` varchar(15) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `hlogin`
--

INSERT INTO `hlogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`, `Branch`) VALUES
(1, 'CRK Reddy', 'CRK Reddy', '123456', 'hodcse@mgit.ac.in', 'What is your fav spot?', 'Bangalore', 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `plogin`
--

CREATE TABLE IF NOT EXISTS `plogin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `plogin`
--

INSERT INTO `plogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(1, 'K.Vamshi Krishna Varma', 'Vamshi', '123456', 'placements@mgit.ac.in', 'What is your fav spot?', 'mangalore');

-- --------------------------------------------------------

--
-- Table structure for table `prilogin`
--

CREATE TABLE IF NOT EXISTS `prilogin` (
  `Id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `Username` varchar(255) NOT NULL,
  `Password` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  PRIMARY KEY (`Id`),
  UNIQUE KEY `Username` (`Username`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `prilogin`
--

INSERT INTO `prilogin` (`Id`, `Name`, `Username`, `Password`, `Email`, `Question`, `Answer`) VALUES
(1, 'G.ChandraMohan Reddy', 'Mohan', '123456', 'principal@mgit.ac.in', 'What is your fav spot?', 'madikeri');

-- --------------------------------------------------------

--
-- Table structure for table `slogin`
--

CREATE TABLE IF NOT EXISTS `slogin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(25) NOT NULL,
  `USN` varchar(10) NOT NULL,
  `PASSWORD` varchar(255) NOT NULL,
  `Email` varchar(255) NOT NULL,
  `Question` varchar(255) NOT NULL,
  `Answer` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `USN` (`USN`,`Email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `slogin`
--

INSERT INTO `slogin` (`id`, `Name`, `USN`, `PASSWORD`, `Email`, `Question`, `Answer`) VALUES
(1, 'Gopireddy', '1cg13is401', '123456', 'gopi@gmail.com', 'What is your fav spot?', 'circket'),
(2, 'Teja', '1cg12is096', '123456', 'teja@gmil.com', 'what is your fav spot?', 'mysore'),
(3, 'Kumar', '1cg12cs001', '123456', 'kumar@gmail.com', 'What is your fav dish?', 'chicken'),
(4, 'Tharun', '1cg12is094', '123456', 'tharun@gmail.com', 'What is your nickname?', 'google'),
(5, 'Swathi', '1cg12is000', '123456', 'swathi@gmail.com', 'What is your fav spot?', 'New York'),
(8, 'Sravanthi', '1cg12is007', '123456', 'sravanthi@gmail.com', 'What is your fav spot?', 'Manali'),
(9, '', '', '', '', '', ''),
(10, 'Saikiran', '1cg12is009', '123456', 'saikiran@gmail.com', 'What is your nickname?', 'Gunda'),
(11, 'Vignesh', '1cg12is011', '123456', 'vignesh@gmail.com', 'What is your fav spot?', 'Manali');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
