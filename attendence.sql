-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 29, 2022 at 11:36 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `attendence`
--

DELIMITER $$
--
-- Procedures
--

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `branch`
--

CREATE TABLE `branch` (
  `branch` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `branch`
--

INSERT INTO `branch` (`branch`) VALUES
('CSE'),
('CV'),
('EC'),
('ISE'),
('ME');

-- --------------------------------------------------------

--
-- Table structure for table `class`
--

CREATE TABLE `class` (
  `classid` int(11) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `sem` int(11) NOT NULL,
  `section` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class`
--

INSERT INTO `class` (`classid`, `branch`, `sem`, `section`) VALUES
(1, 'CSE', 5, 'A'),
(2, 'CSE', 5, 'B'),
(3, 'CSE', 3, 'A'),
(4, 'CSE', 3, 'B'),
(5, 'CSE', 1, 'A'),
(6, 'CSE', 1, 'B'),
(7, 'CSE', 7, 'A'),
(8, 'CSE', 7, 'B');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `requestid` int(11) NOT NULL,
  `eventname` varchar(100) NOT NULL,
  `usn` int(11) NOT NULL,
  `co_ordinator` int(11) DEFAULT NULL,
  `date` date NOT NULL,
  `days` int(11) NOT NULL,
  `description` varchar(500) NOT NULL,
  `approveT` int(11) NOT NULL,
  `approveH` int(11) NOT NULL,
  `file_name` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`requestid`, `eventname`, `usn`, `co_ordinator`, `date`, `days`, `description`, `approveT`, `approveH`, `file_name`) VALUES
(20, 'udyoga', 12, 2, '1111-11-11', 3, '4', 0, 0, 'PXL_20210922_120650249.MV.jpg'),
(21, 'asdf', 12, 5, '1111-11-11', 1, 'asdf', 0, 0, '2420337.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `user` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`user`, `password`) VALUES
('admin', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `logs`
--

CREATE TABLE `logs` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `usn` int(11) NOT NULL,
  `action` varchar(100) NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `logs`
--

INSERT INTO `logs` (`id`, `name`, `usn`, `action`, `date`) VALUES
(8, 'Srinidhi M', 8, 'Admitted', '2022-01-25 10:12:45'),
(9, 'Srinidhi M', 8, 'Deleted', '2022-01-25 10:13:14'),
(10, 'aa', 9, 'Admitted', '2022-01-25 16:40:35'),
(11, 'aa', 9, 'Deleted', '2022-01-25 16:40:43'),
(12, 'Nanu', 2, 'Deleted', '2022-01-25 16:47:36'),
(13, 'nanu', 1, 'Admitted', '2022-01-25 16:55:23'),
(14, 'nanu', 1, 'Updated', '2022-01-26 15:47:58'),
(15, 'nanu', 1, 'Updated', '2022-01-26 15:52:14'),
(16, 'nanu', 1, 'Updated', '2022-01-26 15:52:24'),
(17, 'nanu', 1, 'Updated', '2022-01-26 15:54:01'),
(18, 'nanu', 1, 'Deleted', '2022-01-26 16:58:29'),
(19, 'Srinidhi M', 10, 'Admitted', '2022-01-27 06:14:30'),
(20, 'Nisvhal', 11, 'Admitted', '2022-01-27 06:15:12'),
(21, 'Srinidhi M', 10, 'Deleted', '2022-01-27 23:09:13'),
(22, 'Nisvhal', 11, 'Deleted', '2022-01-27 23:10:06'),
(23, 'aa', 12, 'Admitted', '2022-01-28 21:30:50'),
(24, 'aa', 14, 'Admitted', '2022-01-28 21:31:36'),
(25, 'asdf', 15, 'Admitted', '2022-01-28 23:09:47');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `usn` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(100) NOT NULL,
  `classid` int(11) DEFAULT NULL,
  `mail` varchar(100) NOT NULL,
  `phone` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`usn`, `name`, `branch`, `classid`, `mail`, `phone`, `dob`, `gender`, `address`, `password`) VALUES
(12, 'aa', 'CSE', 1, 'admin', '', '0000-00-00', '', '', '12345'),
(14, 'aa', 'CSE', 1, 'adminoo', '11', '2001-11-11', 'dd', 'sad', '12345'),
(15, 'asdf', 'CSE', 1, 'adminaa', '55', '1111-11-11', 'Male', '55', '12345');

--
-- Triggers `student`
--
DELIMITER $$
CREATE TRIGGER `delete` BEFORE DELETE ON `student` FOR EACH ROW insert into logs values (null, OLD.name,OLD.usn, 'Deleted', NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `insert` AFTER INSERT ON `student` FOR EACH ROW INSERT INTO logs values(null, NEW.name,NEW.usn, 'Admitted', NOW())
$$
DELIMITER ;
DELIMITER $$
CREATE TRIGGER `update` AFTER UPDATE ON `student` FOR EACH ROW insert into logs values (null, NEW.name,NEW.usn, 'Updated', NOW())
$$
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `subject`
--

CREATE TABLE `subject` (
  `sid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `sem` int(11) DEFAULT NULL,
  `branch` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject`
--

INSERT INTO `subject` (`sid`, `name`, `sem`, `branch`) VALUES
(1, 'ME', 5, 'CSE'),
(2, 'CNS', 5, 'CSE'),
(3, 'DBMS', 5, 'CSE'),
(4, 'ATC', 5, 'CSE'),
(5, 'ADP', 5, 'CSE'),
(6, 'UP', 5, 'CSE');

-- --------------------------------------------------------

--
-- Table structure for table `teacher`
--

CREATE TABLE `teacher` (
  `tid` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `branch` varchar(100) DEFAULT NULL,
  `subject` varchar(100) DEFAULT NULL,
  `co_ordinator` int(11) DEFAULT NULL,
  `gender` varchar(100) NOT NULL,
  `dob` date NOT NULL,
  `phone` varchar(100) NOT NULL,
  `mail` varchar(100) NOT NULL,
  `address` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `teacher`
--

INSERT INTO `teacher` (`tid`, `name`, `branch`, `subject`, `co_ordinator`, `gender`, `dob`, `phone`, `mail`, `address`, `password`) VALUES
(2, 'Reena', 'CSE', 'ME', 1, 'Male', '2000-01-01', '123', 'admin', '443', '12345'),
(5, 'ankita', 'CSE', 'CNS', 1, 'othere', '2001-11-11', 'aa', 'aa', 'afasd', '1234'),
(6, 'niji', 'CSE', 'ME', 1, 'sdf', '2011-11-11', 'ii', 'dfgv hbn', 'nj', 'x');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `branch`
--
ALTER TABLE `branch`
  ADD PRIMARY KEY (`branch`);

--
-- Indexes for table `class`
--
ALTER TABLE `class`
  ADD PRIMARY KEY (`classid`,`branch`,`sem`,`section`),
  ADD KEY `branch` (`branch`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`requestid`),
  ADD KEY `usn` (`usn`),
  ADD KEY `co_ordinator` (`co_ordinator`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`user`);

--
-- Indexes for table `logs`
--
ALTER TABLE `logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`usn`),
  ADD UNIQUE KEY `mail` (`mail`),
  ADD KEY `branch` (`branch`),
  ADD KEY `classid` (`classid`);

--
-- Indexes for table `subject`
--
ALTER TABLE `subject`
  ADD PRIMARY KEY (`sid`),
  ADD UNIQUE KEY `name` (`name`),
  ADD KEY `branch` (`branch`);

--
-- Indexes for table `teacher`
--
ALTER TABLE `teacher`
  ADD PRIMARY KEY (`tid`),
  ADD KEY `teacher_ibfk_1` (`branch`),
  ADD KEY `teacher_ibfk_3` (`subject`),
  ADD KEY `co_ordinator` (`co_ordinator`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class`
--
ALTER TABLE `class`
  MODIFY `classid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `requestid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `logs`
--
ALTER TABLE `logs`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `student`
--
ALTER TABLE `student`
  MODIFY `usn` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `subject`
--
ALTER TABLE `subject`
  MODIFY `sid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `teacher`
--
ALTER TABLE `teacher`
  MODIFY `tid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `class`
--
ALTER TABLE `class`
  ADD CONSTRAINT `class_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`) ON DELETE CASCADE ON UPDATE NO ACTION;

--
-- Constraints for table `event`
--
ALTER TABLE `event`
  ADD CONSTRAINT `event_ibfk_1` FOREIGN KEY (`usn`) REFERENCES `student` (`usn`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `event_ibfk_2` FOREIGN KEY (`co_ordinator`) REFERENCES `teacher` (`tid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `student`
--
ALTER TABLE `student`
  ADD CONSTRAINT `student_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`) ON DELETE CASCADE,
  ADD CONSTRAINT `student_ibfk_2` FOREIGN KEY (`classid`) REFERENCES `class` (`classid`) ON DELETE SET NULL ON UPDATE SET NULL;

--
-- Constraints for table `subject`
--
ALTER TABLE `subject`
  ADD CONSTRAINT `subject_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`) ON DELETE CASCADE ON UPDATE SET NULL;

--
-- Constraints for table `teacher`
--
ALTER TABLE `teacher`
  ADD CONSTRAINT `teacher_ibfk_1` FOREIGN KEY (`branch`) REFERENCES `branch` (`branch`) ON DELETE CASCADE ON UPDATE SET NULL,
  ADD CONSTRAINT `teacher_ibfk_3` FOREIGN KEY (`subject`) REFERENCES `subject` (`name`) ON DELETE SET NULL ON UPDATE SET NULL,
  ADD CONSTRAINT `teacher_ibfk_4` FOREIGN KEY (`co_ordinator`) REFERENCES `class` (`classid`) ON DELETE SET NULL ON UPDATE SET NULL;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
