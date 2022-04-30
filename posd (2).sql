-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 18, 2022 at 02:19 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 5.6.40

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `posd`
--

-- --------------------------------------------------------

--
-- Table structure for table `accounts`
--

CREATE TABLE `accounts` (
  `UserID` int(11) NOT NULL,
  `FirstName` varchar(45) NOT NULL,
  `LastName` varchar(45) NOT NULL,
  `Email` varchar(45) NOT NULL,
  `Password` varchar(45) DEFAULT NULL,
  `Address` varchar(50) DEFAULT NULL,
  `Mobile` varchar(11) DEFAULT NULL,
  `Verified` tinyint(1) NOT NULL DEFAULT '0',
  `Vkey` varchar(45) DEFAULT NULL,
  `UserLevel` int(1) NOT NULL DEFAULT '1',
  `CreatedDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `accounts`
--

INSERT INTO `accounts` (`UserID`, `FirstName`, `LastName`, `Email`, `Password`, `Address`, `Mobile`, `Verified`, `Vkey`, `UserLevel`, `CreatedDate`) VALUES
(58, 'admin', 'admin', 'admin@gmail.com', '46b8bb9c44331ce375c50ffb41dbb9f9', 'Cauayan City, Isabela', '09190790221', 0, 'c777e925768180e0e9a68d2c60785f39', 2, '2021-11-13 22:38:20'),
(59, 'user', 'user', 'user@gmail.com', '46b8bb9c44331ce375c50ffb41dbb9f9', '', '', 0, 'e1c5cdafbf31859d1deb9b19ba66b5d9', 1, '2021-11-13 22:38:40'),
(60, 'admin2', 'admin2', 'admin2@gmail.com', '46b8bb9c44331ce375c50ffb41dbb9f9', 'Cauayan City, Isabela', '09190790234', 0, 'e1c5cdafbf31859d1deb9b19ba66b5d9', 0, '2021-11-14 14:31:44'),
(67, 'cauayan', 'posd', 'cauayanposd@gmail.com', '9251096fa3ff7fa8cf25a6624df95fbb', 'Maharlika Highway, Cauayan, Isabela', '09999683568', 1, '34bc7cd1ce7eb3a57d98bbc7a8cfc9a5', 1, '2021-11-26 02:58:52'),
(87, 'joana', 'pascua', 'jopascua0524@gmail.com', 'd099871947711b6f3a81637b1562e546', 'Minante 1, Cauayan, Isabela', '09362508103', 1, '305fde965d3a055976c2fabdcef9fb38', 1, '2022-01-16 09:23:42'),
(88, 'joana', 'pascua', 'jopascua0524@gmail.com', 'd099871947711b6f3a81637b1562e546', 'Minante 1, Cauayan, Isabela', '09999683568', 1, '07d13ad25f41f9001df24fbef6c8222a', 1, '2022-01-16 09:31:51');

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `CatID` int(11) NOT NULL,
  `CatName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`CatID`, `CatName`) VALUES
(2, 'Fare Matrix'),
(3, 'Harassment'),
(4, 'Driving Violation');

-- --------------------------------------------------------

--
-- Table structure for table `complain`
--

CREATE TABLE `complain` (
  `CaseID` int(6) NOT NULL,
  `CaseNo` varchar(11) DEFAULT NULL,
  `CFirstName` varchar(45) DEFAULT NULL,
  `CLastName` varchar(45) DEFAULT NULL,
  `CEmail` varchar(45) DEFAULT NULL,
  `CCategory` varchar(45) DEFAULT NULL,
  `CMobile` varchar(11) NOT NULL,
  `VType` varchar(45) DEFAULT NULL,
  `VCode` varchar(10) DEFAULT NULL,
  `VPlateNo` varchar(15) DEFAULT NULL,
  `VOperatorName` varchar(45) DEFAULT NULL,
  `VOrganization` varchar(45) DEFAULT NULL,
  `ComplaintType` varchar(45) DEFAULT NULL,
  `SubComplaint` varchar(45) DEFAULT NULL,
  `LocIncident` varchar(45) DEFAULT NULL,
  `BFrom` varchar(45) DEFAULT NULL,
  `BTo` varchar(45) DEFAULT NULL,
  `CDetails` varchar(500) DEFAULT NULL,
  `CProof` varchar(45) DEFAULT NULL,
  `DateComplained` timestamp NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `DateRespond` date DEFAULT NULL,
  `ROfficer` varchar(45) DEFAULT NULL,
  `Status` smallint(6) DEFAULT '1',
  `Vkey` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `complain`
--

INSERT INTO `complain` (`CaseID`, `CaseNo`, `CFirstName`, `CLastName`, `CEmail`, `CCategory`, `CMobile`, `VType`, `VCode`, `VPlateNo`, `VOperatorName`, `VOrganization`, `ComplaintType`, `SubComplaint`, `LocIncident`, `BFrom`, `BTo`, `CDetails`, `CProof`, `DateComplained`, `DateRespond`, `ROfficer`, `Status`, `Vkey`) VALUES
(45, '2022-16843', 'joana', 'pascua', 'jopascua0524@gmail.com', 'Student', '09362508103', 'Public', '', 'fghdsdzwa', '', 'POBLACION', NULL, NULL, 'National Highway', '', '', 'Lasing yung driver', '1642325312.JPG', '2022-01-16 09:28:32', NULL, NULL, 2, '305fde965d3a055976c2fabdcef9fb38'),
(46, '2022-87585', 'joana', 'pascua', 'jopascua0524@gmail.com', 'Student', '09999683568', 'Public', '6754563', '', '', 'SM CAUAYAN', NULL, NULL, 'sillawit to centro', 'sillawit', 'centro', '150 ng driver from sillawit to centro \r\nBody No: 6754', '1642325511.jpg', '2022-01-16 09:34:15', NULL, NULL, 2, '07d13ad25f41f9001df24fbef6c8222a');

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `ID` int(11) NOT NULL,
  `Question` varchar(500) NOT NULL,
  `Answer` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`ID`, `Question`, `Answer`) VALUES
(1, 'What is Passengers Complaint Management System?', 'PCMS | POSD was made to complain online by passengers or residents inside Cauayan City. This system allows complaints by the passenger into a driver/operator will be redirected to our system. This will prevent any harassment or fraud made by the drivers/operator of public transportation.\r\n( Ang PCMS ay ginawa upang ikaw ay makapagsumbong sa POSD Cauayan online. Ano mang uri ng maling gawain ng isang drayber ay maipapasok sa aming system at magkakaroon ng imbestigasyon. Ito ay upang mapanatili an'),
(2, 'Where is the exact location of your Office?', 'POSD Office located at the right side of F.L.Dy Coliseum, Cauayan, Isabela'),
(3, 'How to Complaint?', 'You can visit the Procedure Menu or Click the \"Report Now\" button to redirect you to the complaint form.(Maaring bisitahin and Procedure Menu o I click and report button upang makapunta sa complaint form)\r\n'),
(4, 'Hotline Numbers', 'PNP: 0905-558-8333\r\nPOSD: 0935-274-0922\r\nRESCUE 922: 0927-992-1515');

-- --------------------------------------------------------

--
-- Table structure for table `message`
--

CREATE TABLE `message` (
  `MessageID` int(11) NOT NULL,
  `CaseNo` varchar(11) NOT NULL,
  `SenderID` int(11) NOT NULL,
  `Sender` text NOT NULL,
  `Mto` varchar(45) NOT NULL,
  `MSubject` varchar(45) NOT NULL,
  `MBody` varchar(500) NOT NULL,
  `Purpose` text NOT NULL,
  `CaseStatus` int(11) NOT NULL,
  `DateSent` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

CREATE TABLE `news` (
  `NewsID` int(11) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Image` varchar(45) NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `news`
--

INSERT INTO `news` (`NewsID`, `Title`, `Image`, `status`) VALUES
(28, 'NCAP', '1637805613.jpg', 0),
(30, 'EO NO. 85-2021', '1638106061.png', 0),
(32, 'EO NO. 85-2021', '1638106270.jpg', 0);

-- --------------------------------------------------------

--
-- Table structure for table `ordinance`
--

CREATE TABLE `ordinance` (
  `OrID` int(11) NOT NULL,
  `OrdinanceNo` varchar(20) NOT NULL,
  `Title` varchar(50) NOT NULL,
  `Description` varchar(10000) NOT NULL,
  `Image` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `ordinance`
--

INSERT INTO `ordinance` (`OrID`, `OrdinanceNo`, `Title`, `Description`, `Image`) VALUES
(34, '2021-430', 'Traffic Management Code of 2019', 'An Ordinance Amending Articles II, VII, and XXI of Ordinance No. 2019-234, Series of 2019 Otherwise known as \" The City of Cauayan, Isabela Traffic Management Code of 2019 and Amendments\", and for other purposes', '1638680726.png'),
(35, 'Executive Order 84-2', 'Guidelines for Alert Level 2', 'Executive Order 84-2', '1638106558.png'),
(36, '2018-195', 'Tricycle Fare', '2018-195', '1638681259.png');

-- --------------------------------------------------------

--
-- Table structure for table `subcategory`
--

CREATE TABLE `subcategory` (
  `SubID` int(11) NOT NULL,
  `CatID` int(11) NOT NULL,
  `SubCatName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subcategory`
--

INSERT INTO `subcategory` (`SubID`, `CatID`, `SubCatName`) VALUES
(1, 1, 'Over Speeding'),
(2, 1, 'Violent Driver'),
(3, 1, 'Driving Under the Influence of liquor/alcohol'),
(4, 2, 'Overpricing '),
(5, 2, 'Discount Not Given'),
(6, 3, 'Behavior Problem'),
(7, 1, 'U TURN'),
(8, 4, 'Overspeeding'),
(9, 3, 'Sexual Harassment');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `accounts`
--
ALTER TABLE `accounts`
  ADD PRIMARY KEY (`UserID`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`CatID`);

--
-- Indexes for table `complain`
--
ALTER TABLE `complain`
  ADD PRIMARY KEY (`CaseID`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `message`
--
ALTER TABLE `message`
  ADD PRIMARY KEY (`MessageID`);

--
-- Indexes for table `news`
--
ALTER TABLE `news`
  ADD PRIMARY KEY (`NewsID`);

--
-- Indexes for table `ordinance`
--
ALTER TABLE `ordinance`
  ADD PRIMARY KEY (`OrID`);

--
-- Indexes for table `subcategory`
--
ALTER TABLE `subcategory`
  ADD PRIMARY KEY (`SubID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `accounts`
--
ALTER TABLE `accounts`
  MODIFY `UserID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=89;

--
-- AUTO_INCREMENT for table `category`
--
ALTER TABLE `category`
  MODIFY `CatID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `complain`
--
ALTER TABLE `complain`
  MODIFY `CaseID` int(6) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `faqs`
--
ALTER TABLE `faqs`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `message`
--
ALTER TABLE `message`
  MODIFY `MessageID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `news`
--
ALTER TABLE `news`
  MODIFY `NewsID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `ordinance`
--
ALTER TABLE `ordinance`
  MODIFY `OrID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;

--
-- AUTO_INCREMENT for table `subcategory`
--
ALTER TABLE `subcategory`
  MODIFY `SubID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
