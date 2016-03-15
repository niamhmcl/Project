-- phpMyAdmin SQL Dump
-- version 4.4.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 10, 2015 at 01:15 PM
-- Server version: 5.6.26
-- PHP Version: 5.6.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `riverside`
--

-- --------------------------------------------------------

--
-- Table structure for table `equipment`
--

CREATE TABLE IF NOT EXISTS `equipment` (
  `equip_num` bigint(20) NOT NULL,
  `equip_desc` varchar(100) NOT NULL,
  `equip_repair_status` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `equipment`
--

INSERT INTO `equipment` (`equip_num`, `equip_desc`, `equip_repair_status`) VALUES
(1, 'Tennis Court 1 Net', 'Yes'),
(2, 'Tennis Court 1 Lights', 'Yes'),
(3, 'Tennis Court 2 Net', 'Yes'),
(4, 'Tennis Court 1 Lights', 'No'),
(5, 'Squash Court 1', 'Yes'),
(6, 'Gym Treadmill 1', 'No'),
(7, 'Beauty Rooms - heating ', 'Yes');

-- --------------------------------------------------------

--
-- Table structure for table `facility_booking`
--

CREATE TABLE IF NOT EXISTS `facility_booking` (
  `facility_booking_reference_number` bigint(20) NOT NULL,
  `facility_name` varchar(30) NOT NULL,
  `date` date NOT NULL,
  `start_time` time NOT NULL,
  `end_time` time NOT NULL,
  `member_number` bigint(20) NOT NULL,
  `instructor_required` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `facility_booking`
--

INSERT INTO `facility_booking` (`facility_booking_reference_number`, `facility_name`, `date`, `start_time`, `end_time`, `member_number`, `instructor_required`) VALUES
(1, 'tennis1', '2015-12-09', '01:01:00', '01:01:00', 3, 'yes'),
(2, 'tennis1', '0000-00-00', '02:03:00', '03:03:00', 2, 'yes'),
(3, 'tennisAll', '2015-12-11', '02:03:00', '03:03:00', 5, 'yes'),
(44, 'tennis2', '2015-12-02', '04:00:00', '05:00:00', 6, 'no'),
(46, 'gym', '2015-12-02', '04:00:00', '05:00:00', 2, 'yes'),
(48, 'tennis1', '2015-12-01', '10:00:00', '11:00:00', 3, 'no'),
(49, 'tennis1', '2015-12-01', '10:00:00', '11:00:00', 3, 'no'),
(50, 'gym', '2015-12-03', '11:00:00', '13:00:00', 4, 'no'),
(51, 'tennisAll', '2015-12-01', '11:00:00', '13:00:00', 5, 'no'),
(52, 'tennis2', '2015-11-05', '13:00:00', '16:00:00', 6, 'no'),
(53, 'gym', '2015-12-03', '14:00:00', '15:00:00', 3, 'no'),
(54, 'tennis1', '2015-12-17', '21:30:00', '22:30:00', 4, 'yes');

-- --------------------------------------------------------

--
-- Table structure for table `instructor`
--

CREATE TABLE IF NOT EXISTS `instructor` (
  `instructor_booking_num` bigint(20) NOT NULL,
  `booking_reference_num` bigint(20) NOT NULL,
  `instructor_staff_id` bigint(20) NOT NULL,
  `date` date NOT NULL,
  `time` time NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `instructor`
--

INSERT INTO `instructor` (`instructor_booking_num`, `booking_reference_num`, `instructor_staff_id`, `date`, `time`) VALUES
(1, 1, 6, '2015-12-01', '10:00:00'),
(2, 3, 3, '2015-12-01', '13:00:00'),
(3, 48, 213, '2015-12-01', '14:00:00'),
(4, 50, 222, '2015-12-06', '10:00:00'),
(5, 3, 213, '2015-12-09', '13:00:00'),
(6, 53, 211, '2015-12-10', '16:00:00'),
(7, 51, 200, '2015-12-15', '16:00:00'),
(8, 52, 222, '2015-12-15', '13:00:00');

-- --------------------------------------------------------

--
-- Table structure for table `member`
--

CREATE TABLE IF NOT EXISTS `member` (
  `member_number` bigint(20) NOT NULL,
  `member_name` varchar(80) NOT NULL,
  `sporting_organisation` text NOT NULL,
  `member_tel_num` varchar(20) NOT NULL,
  `member_address` varchar(120) NOT NULL,
  `member_dob` date NOT NULL,
  `member_email` varchar(40) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `member`
--

INSERT INTO `member` (`member_number`, `member_name`, `sporting_organisation`, `member_tel_num`, `member_address`, `member_dob`, `member_email`) VALUES
(1, 'John Holmes', 'yes', '443212', '4 Poulter Lane, \r\nGalway', '1976-05-04', 'john.h@hotmail.com'),
(2, 'Paula Jones', 'no', '3423532', '14 Sandy Vale, \r\nPetersburg, \r\nGalway', '1976-12-27', 'p.jones@gmail.com'),
(3, 'Jenny Peters', 'no', '1432334', '12 Sycamore Drive, \r\nMervue\r\nGalway', '1983-10-15', 'j.peters@gmail.com'),
(4, 'Mark Waters', 'yes', '2342345', 'Badminton Ireland,\r\nDunnes Drive, \r\nBallsbridge,\r\nDublin', '0000-00-00', 'mark@badmintonIreland.com'),
(5, 'Tom Jones', 'no', '12342', '4 Gunner Avenue, \r\nSallynoggon,\r\nSpiddal', '1982-12-23', 'tom.jones@outlook.com'),
(6, 'Cathal Corcoran', 'no', '234234', '22 Ross Ard,\r\nCappagh Road,\r\nGalway', '2000-04-08', 'c.l@hotmail.com'),
(7, 'Terry Jackson', 'no', '23453', '33 Elm Street.\r\nSalthill,\r\nGalway', '2000-05-14', 'ter@rte.ie'),
(8, 'Toby Coughlan', 'yes', '3423346', '44 Glasson Drive.\r\nMerchants Road,\r\nGalway', '0000-00-00', 'toby.coughlan@squashireland.com'),
(9, 'Aoife Lally', 'no', '213455', '4 Glen Drive,\r\nRenmore, \r\nGalway\r\n', '2000-07-21', 'a.lally@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE IF NOT EXISTS `payments` (
  `payment_reference_num` bigint(20) NOT NULL,
  `member_num` bigint(20) NOT NULL,
  `Date_of_issue` date NOT NULL,
  `payment_amount` double(6,2) NOT NULL,
  `payment_received_date` date NOT NULL,
  `payment_method` varchar(30) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`payment_reference_num`, `member_num`, `Date_of_issue`, `payment_amount`, `payment_received_date`, `payment_method`) VALUES
(1, 3, '2015-10-05', 13.00, '2015-11-02', 'cash'),
(2, 5, '2015-10-07', 130.00, '2015-11-09', 'Laser Card'),
(3, 1, '2015-12-01', 120.00, '0000-00-00', ''),
(4, 2, '2015-12-01', 12.00, '2015-12-01', 'Credit Card'),
(5, 3, '2015-12-02', 22.50, '2015-12-05', 'cash'),
(6, 2, '2015-11-15', 18.50, '0000-00-00', '');

-- --------------------------------------------------------

--
-- Table structure for table `repairs`
--

CREATE TABLE IF NOT EXISTS `repairs` (
  `repair_incident_num` bigint(20) NOT NULL,
  `equip_num` bigint(20) NOT NULL,
  `equip_desc` varchar(120) NOT NULL,
  `report_date` date NOT NULL,
  `fix_date` date NOT NULL,
  `cost` double(6,2) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `repairs`
--

INSERT INTO `repairs` (`repair_incident_num`, `equip_num`, `equip_desc`, `report_date`, `fix_date`, `cost`) VALUES
(1, 1, 'Tennis Court 1 Net', '2015-12-01', '2015-12-01', 0.00),
(2, 1, 'Tennis Court 1 Net', '2015-12-03', '2015-12-03', 30.00),
(3, 4, 'Gym - Treadmill 1 - broken belt', '2015-12-03', '2015-12-07', 140.56),
(4, 3, 'Squash Court 2 - broken light', '2015-12-13', '2015-12-14', 85.33),
(5, 3, 'Beauty Rooms Heating', '2015-12-02', '2015-12-02', 65.00),
(6, 7, 'Gym Bicycle 2 - broken speedometer', '2015-12-08', '0000-00-00', 0.00);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `equipment`
--
ALTER TABLE `equipment`
  ADD PRIMARY KEY (`equip_num`);

--
-- Indexes for table `facility_booking`
--
ALTER TABLE `facility_booking`
  ADD PRIMARY KEY (`facility_booking_reference_number`,`facility_name`,`date`,`start_time`,`end_time`),
  ADD KEY `member_number` (`member_number`);

--
-- Indexes for table `instructor`
--
ALTER TABLE `instructor`
  ADD PRIMARY KEY (`instructor_booking_num`),
  ADD KEY `booking_reference_num` (`booking_reference_num`);

--
-- Indexes for table `member`
--
ALTER TABLE `member`
  ADD PRIMARY KEY (`member_number`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`payment_reference_num`),
  ADD KEY `member_num` (`member_num`);

--
-- Indexes for table `repairs`
--
ALTER TABLE `repairs`
  ADD PRIMARY KEY (`repair_incident_num`),
  ADD KEY `equip_num` (`equip_num`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `equipment`
--
ALTER TABLE `equipment`
  MODIFY `equip_num` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `facility_booking`
--
ALTER TABLE `facility_booking`
  MODIFY `facility_booking_reference_number` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=55;
--
-- AUTO_INCREMENT for table `instructor`
--
ALTER TABLE `instructor`
  MODIFY `instructor_booking_num` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `member`
--
ALTER TABLE `member`
  MODIFY `member_number` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `payment_reference_num` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `repairs`
--
ALTER TABLE `repairs`
  MODIFY `repair_incident_num` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=7;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `facility_booking`
--
ALTER TABLE `facility_booking`
  ADD CONSTRAINT `facility_booking_ibfk_1` FOREIGN KEY (`member_number`) REFERENCES `member` (`member_number`);

--
-- Constraints for table `instructor`
--
ALTER TABLE `instructor`
  ADD CONSTRAINT `instructor_ibfk_1` FOREIGN KEY (`booking_reference_num`) REFERENCES `facility_booking` (`facility_booking_reference_number`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `payments_ibfk_1` FOREIGN KEY (`member_num`) REFERENCES `member` (`member_number`);

--
-- Constraints for table `repairs`
--
ALTER TABLE `repairs`
  ADD CONSTRAINT `repairs_ibfk_1` FOREIGN KEY (`equip_num`) REFERENCES `equipment` (`equip_num`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
