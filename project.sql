-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2017 at 11:50 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `project`
--

-- --------------------------------------------------------

--
-- Table structure for table `examiner`
--

CREATE TABLE `examiner` (
  `examiner_id` int(11) NOT NULL,
  `email` varchar(500) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `examiner`
--

INSERT INTO `examiner` (`examiner_id`, `email`, `password`) VALUES
(1, 'ashleshatayade@gmail.com', '123456'),
(2, 'snehalshirude07@gmail.com', '2703'),
(3, 'artiwagh04@gmail.com', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `answer`
--

CREATE TABLE `answer` (
  `qid` text NOT NULL,
  `ansid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `answer`
--

INSERT INTO `answer` (`qid`, `ansid`) VALUES
('6195cbadbf436', '6195cbadd7c7e'),
('6195cbade58d3', '6195cbade60b7'),
('6195cbade8fdb', '6195cbade96c4'),
('6195cbadebd28', '6195cbadec642'),
('6195cbadf0521', '6195cbadf0eba'),
('6195d20833aeb', '6195d2083496d'),
('6195d20838ad4', '6195d2083961e'),
('6195d2083dced', '6195d2083e8d7'),
('6195d20841388', '6195d20841c3c'),
('6195d20845bac', '6195d2084658e'),
('6195d5370a097', '6195d5370ab9a'),
('6195d5370da21', '6195d5370e460'),
('6195d53712471', '6195d53712fe5'),
('6195d537171dc', '6195d53718af7'),
('6195d5371c65c', '6195d5371d250'),
('6195d777ad734', '6195d777ae3a8'),
('6195d777b2023', '6195d777b3832'),
('6195d777b7fb7', '6195d777b8a12'),
('6195d777bc080', '6195d777bcc1f'),
('6195d777c0360', '6195d777c0f06'),
('6195d985a8457', '6195d985a9045'),
('6195d985abcd3', '6195d985ac470'),
('6195d985aedeb', '6195d985af746'),
('6195d985b344f', '6195d985b3cd5'),
('6195d985b7558', '6195d985b8bb0');

-- --------------------------------------------------------

-- Table structure for table `history`
--

CREATE TABLE `history` (
  `email` varchar(500) NOT NULL,
  `eid` text NOT NULL,
  `score` int(11) NOT NULL,
  `level` int(11) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `history`
--

INSERT INTO `history` (`email`, `eid`, `score`, `level`, `right`, `wrong`, `date`) VALUES
('ashleshatayade@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2021-10-06 09:31:26'),
('snehalshirude07@gmail.com', '558920ff906b8', 4, 2, 2, 0, '2021-10-05 13:32:09'),
('artiwagh04@gmail.com', '558921841f1ec', 4, 2, 2, 0, '2021-10-03 14:33:04'),
('ashwinibeldar@gmail.com', '5589222f16b93', 4, 2, 2, 0, '2021-10-10 14:49:39'),
('tejaswinimehta@gmail.com', '5589741f9ed52', 4, 5, 3, 2, '2021-10-05 15:07:16'),
('divyarajhans@gamil.com', '5589222f16b93', 4, 2, 2, 0, '2021-10-07 15:12:56'),
('chetanwagh@gmail.com', '558921841f1ec', 1, 2, 1, 1, '2021-10-06 16:11:50'),
('anuragpatil@gmail.com', '5589222f16b93', 1, 2, 1, 1, '2021-10-10 03:22:38');

-- --------------------------------------------------------

--
-- Table structure for table `options`
--

CREATE TABLE `options` (
  `qid` varchar(50) NOT NULL,
  `option` varchar(5000) NOT NULL,
  `optionid` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `options`
--

INSERT INTO `options` (`qid`, `option`, `optionid`) VALUES
('6195cbadbf436', 'DBMS is a collection of queries', '6195cbadd7c77'),
('6195cbadbf436', 'DBMS is a high-level language', '6195cbadd7c7c'),
('6195cbadbf436', 'DBMS is a programming language', '6195cbadd7c7d'),
('6195cbadbf436', 'DBMS stores, modifies and retrieves data', '6195cbadd7c7e'),
('6195cbade58d3', 'Managing stored data', '6195cbade60b3'),
('6195cbade58d3', 'Manipulating data', '6195cbade60b6'),
('6195cbade58d3', 'Analysing code', '6195cbade60b7'),
('6195cbade58d3', 'Security for stored data', '6195cbade60b8'),
('6195cbade8fdb', 'Collection of Records', '6195cbade96c2'),
('6195cbade8fdb', 'Collection of Tables', '6195cbade96c4'),
('6195cbade8fdb', 'Collection of Keys', '6195cbade96c5'),
('6195cbade8fdb', 'Collection of Fields', '6195cbade96c6'),
('6195cbadebd28', 'Data and the DBMS', '6195cbadec63d'),
('6195cbadebd28', 'Application and SQL', '6195cbadec641'),
('6195cbadebd28', 'Database application and the database', '6195cbadec642'),
('6195cbadebd28', 'The user and the software', '6195cbadec643'),
('6195cbadf0521', 'Network', '6195cbadf0eba'),
('6195cbadf0521', 'Physical', '6195cbadf0ebe'),
('6195cbadf0521', 'Hierarchical', '6195cbadf0ebf'),
('6195cbadf0521', 'Relational', '6195cbadf0ec0'),
('6195d20833aeb', 'Designing a software', '6195d20834967'),
('6195d20833aeb', 'Testing a software', '6195d2083496c'),
('6195d20833aeb', 'Application of engineering principles to the design a software', '6195d2083496d'),
('6195d20833aeb', 'None of the above', '6195d2083496e'),
('6195d20838ad4', 'Validation', '6195d20839616'),
('6195d20838ad4', 'Specification', '6195d2083961c'),
('6195d20838ad4', 'Development', '6195d2083961d'),
('6195d20838ad4', 'Dependence', '6195d2083961e'),
('6195d2083dced', 'Development', '6195d2083e8d3'),
('6195d2083dced', 'Maintainability & functionality', '6195d2083e8d7'),
('6195d2083dced', 'Functionality', '6195d2083e8d8'),
('6195d2083dced', 'Maintainability', '6195d2083e8d9'),
('6195d20841388', 'computer program', '6195d20841c3c'),
('6195d20841388', 'Testing', '6195d20841c40'),
('6195d20841388', 'AI', '6195d20841c41'),
('6195d20841388', 'IOT', '6195d20841c42'),
('6195d20845bac', 'System Design Life Cycle', '6195d2084658c'),
('6195d20845bac', 'Software Design Life Cycle', '6195d2084658d'),
('6195d20845bac', 'Software Development Life Cycle', '6195d2084658e'),
('6195d20845bac', 'System Development Life cycle', '6195d2084658f'),
('6195d5370a097', 'Java is a sequence-dependent programming language', '6195d5370ab92'),
('6195d5370a097', 'Java is a code dependent programming language', '6195d5370ab98'),
('6195d5370a097', 'Java is a platform-dependent programming language', '6195d5370ab99'),
('6195d5370a097', 'Java is a platform independent programming language', '6195d5370ab9a'),
('6195d5370da21', 'JRE', '6195d5370e459'),
('6195d5370da21', 'JIT', '6195d5370e45f'),
('6195d5370da21', 'JDK', '6195d5370e460'),
('6195d5370da21', 'JVM', '6195d5370e461'),
('6195d53712471', 'identifier & keyword', '6195d53712fde'),
('6195d53712471', 'identifier', '6195d53712fe4'),
('6195d53712471', 'keyword', '6195d53712fe5'),
('6195d53712471', 'none of the mentioned', '6195d53712fe6'),
('6195d537171dc', '.js', '6195d53718aef'),
('6195d537171dc', '.txt', '6195d53718af5'),
('6195d537171dc', '.class', '6195d53718af6'),
('6195d537171dc', '.java', '6195d53718af7'),
('6195d5371c65c', 'ArrayList class', '6195d5371d24d'),
('6195d5371c65c', 'Abstract class', '6195d5371d24f'),
('6195d5371c65c', 'Object class', '6195d5371d250'),
('6195d5371c65c', 'String class', '6195d5371d251'),
('6195d777ad734', 'RARP', '6195d777ae39f'),
('6195d777ad734', 'UDP', '6195d777ae3a6'),
('6195d777ad734', 'FTP', '6195d777ae3a7'),
('6195d777ad734', 'TELNET', '6195d777ae3a8'),
('6195d777b2023', 'Wide area network', '6195d777b382b'),
('6195d777b2023', 'Virtual private network', '6195d777b3830'),
('6195d777b2023', 'Local area network', '6195d777b3831'),
('6195d777b2023', 'Personal area network', '6195d777b3832'),
('6195d777b7fb7', 'Four layer', '6195d777b8a0c'),
('6195d777b7fb7', 'Five layer', '6195d777b8a10'),
('6195d777b7fb7', 'Six layer', '6195d777b8a11'),
('6195d777b7fb7', 'Seven layer', '6195d777b8a12'),
('6195d777bc080', 'bits', '6195d777bcc1d'),
('6195d777bc080', 'frames', '6195d777bcc1e'),
('6195d777bc080', 'packets', '6195d777bcc1f'),
('6195d777bc080', 'bytes', '6195d777bcc20'),
('6195d777c0360', 'CDMA', '6195d777c0f03'),
('6195d777c0360', 'CSMA/CA', '6195d777c0f06'),
('6195d777c0360', 'ALOHA', '6195d777c0f07'),
('6195d777c0360', 'CSMA/CD', '6195d777c0f08'),
('6195d985a8457', 'Preprocessor Home Page', '6195d985a903e'),
('6195d985a8457', 'Pretext Hypertext Processor', '6195d985a9044'),
('6195d985a8457', 'Hypertext Preprocessor', '6195d985a9045'),
('6195d985a8457', 'Personal Home Processor', '6195d985a9046'),
('6195d985abcd3', '#', '6195d985ac46a'),
('6195d985abcd3', '//', '6195d985ac46e'),
('6195d985abcd3', '/* */', '6195d985ac46f'),
('6195d985abcd3', 'All of the mentioned', '6195d985ac470'),
('6195d985aedeb', '$3hello', '6195d985af740'),
('6195d985aedeb', '$_hello', '6195d985af746'),
('6195d985aedeb', '$this', '6195d985af747'),
('6195d985aedeb', '$5_hello', '6195d985af748'),
('6195d985b344f', 'Apache and PHP', '6195d985b3cce'),
('6195d985b344f', 'IIS', '6195d985b3cd3'),
('6195d985b344f', 'XAMPP', '6195d985b3cd4'),
('6195d985b344f', 'Any of the mentioned', '6195d985b3cd5'),
('6195d985b7558', 'type', '6195d985b8bad'),
('6195d985b7558', 'blueprints', '6195d985b8bb0'),
('6195d985b7558', 'reference', '6195d985b8bb1'),
('6195d985b7558', 'instances', '6195d985b8bb2');

-- --------------------------------------------------------

--
-- Table structure for table `questions`
--

CREATE TABLE `questions` (
  `eid` text NOT NULL,
  `qid` text NOT NULL,
  `qns` text NOT NULL,
  `choice` int(10) NOT NULL,
  `sn` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `questions`
--

INSERT INTO `questions` (`eid`, `qid`, `qns`, `choice`, `sn`) VALUES
('6195c9f5ee5a5', '6195cbadbf436', 'What is DBMS?', 4, 1),
('6195c9f5ee5a5', '6195cbade58d3', 'Which of the following is not a function of the database?', 4, 2),
('6195c9f5ee5a5', '6195cbade8fdb', 'What does an RDBMS consist of?', 4, 3),
('6195c9f5ee5a5', '6195cbadebd28', 'The DBMS acts as an interface between ______ and ______ of an enterprise-class system.', 4, 4),
('6195c9f5ee5a5', '6195cbadf0521', 'The oldest DB model is _____', 4, 5),
('6195d111a5d35', '6195d20833aeb', 'What is Software Engineering?', 4, 1),
('6195d111a5d35', '6195d20838ad4', '____ is a software development activity that is not a part of software processes.', 4, 2),
('6195d111a5d35', '6195d2083dced', 'Attributes of good software is ___', 4, 3),
('6195d111a5d35', '6195d20841388', 'What is system software?', 4, 4),
('6195d111a5d35', '6195d20845bac', 'What does SDLC stands for?', 4, 5),
('6195d47270110', '6195d5370a097', 'Which statement is true about Java?', 4, 1),
('6195d47270110', '6195d5370da21', 'Which component is used to compile, debug and execute the java programs?', 4, 2),
('6195d47270110', '6195d53712471', 'Which of these cannot be used for a variable name in Java?', 4, 3),
('6195d47270110', '6195d537171dc', 'What is the extension of java code files?', 4, 4),
('6195d47270110', '6195d5371c65c', 'Which of these class is a superclass of every class in Java?', 4, 5),
('6195d6969a9b5', '6195d777ad734', 'Which of the following protocol is used for remote terminal connection service?', 4, 1),
('6195d6969a9b5', '6195d777b2023', 'Bluetooth is an example of', 4, 2),
('6195d6969a9b5', '6195d777b7fb7', 'The application layer of the OSI model is', 4, 3),
('6195d6969a9b5', '6195d777bc080', 'The network layer is concerned with ____ of data.', 4, 4),
('6195d6969a9b5', '6195d777c0360', 'Which multiple access technique is used by IEEE 802.11 standard for wireless LAN?', 4, 5),
('6195d87420a7a', '6195d985a8457', 'What does PHP stand for?', 4, 1),
('6195d87420a7a', '6195d985abcd3', 'Which of the following is the correct way to add a comment in PHP code?', 4, 2),
('6195d87420a7a', '6195d985aedeb', 'Which is the right way of declaring a variable in PHP?', 4, 3),
('6195d87420a7a', '6195d985b344f', 'Which of the following web servers are required to run the PHP script?', 4, 4),
('6195d87420a7a', '6195d985b7558', 'Classes are the ___ of objects.', 4, 5);

-- --------------------------------------------------------

--
-- Table structure for table `exam`
--

CREATE TABLE `exam` (
  `eid` text NOT NULL,
  `title` varchar(100) NOT NULL,
  `right` int(11) NOT NULL,
  `wrong` int(11) NOT NULL,
  `total` int(11) NOT NULL,
  `time` bigint(20) NOT NULL,
  `intro` text NOT NULL,
  `tag` varchar(100) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `exam`
--

INSERT INTO `exam` (`eid`, `title`, `right`, `wrong`, `total`, `time`, `intro`, `tag`, `date`) VALUES
('6195c9f5ee5a5', 'Dbms', 2, 0, 5, 10, '', 'DBMS', '2021-11-18 09:05:17'),
('6195d111a5d35', 'Software Engineering', 2, 0, 5, 10, '', 'SE', '2021-11-18 09:35:37'),
('6195d47270110', 'Java', 2, 0, 5, 10, '', 'JAVA', '2021-11-18 09:50:02'),
('6195d6969a9b5', 'Computer Networking', 2, 0, 5, 10, '', 'Cnt', '2021-11-18 09:59:10'),
('6195d87420a7a', 'Php', 2, 0, 5, 10, '', 'Php', '2021-11-18 10:07:08');
-- --------------------------------------------------------

--
-- Table structure for table `rank`
--

CREATE TABLE `rank` (
  `email` varchar(500) NOT NULL,
  `score` int(11) NOT NULL,
  `time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `rank`
--

INSERT INTO `rank` (`email`, `score`, `time`) VALUES
('ashleshatayade@gmail.com', 9, '2021-10-06 09:31:26'),
('snehalshirude@gmail.com', 8, '2021-10-05 13:32:09'),
('artiwagh@gamil.com', 4, '2021-10-03 14:33:04'),
('chetanwagh@gmail.com', 1, '2021-10-06 16:11:50');

-- --------------------------------------------------------

--
-- Table structure for table `student`
--

CREATE TABLE `student` (
  `name` varchar(500) NOT NULL,
  `gender` varchar(5) NOT NULL,
  `college` varchar(100) NOT NULL,
  `email` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `student`
--

INSERT INTO `student` (`name`, `gender`, `college`, `email`, `dob`, `password`) VALUES
('Snehal Shirude', 'F', 'GCOEJ', 'snehalshirude07@gmail.com', '2001-03-27', 'f8061fa3146e587b673f53604f8bf930'),
('Arti Wagh', 'F', 'GCOEJ', 'artiwagh04@gamil.com', '2001-08-04', 'a5848f1052a3e5f5db706a7567781212'),
('Ashlesha Tayade', 'F', 'GCOEJ', 'ashleshatayade@gmail.com', '2001-07-16', '6e5f4b936a15110c40e6f4ae654a26f6'),
('Ashwini Beldar', 'F', 'GCOEJ', 'ashwinibeldar@gmail.com', '2000-06-12', '45536ee77b86758534bb0daf04baef72'),
('Anurag Patil', 'M', 'GCOEJ', 'anuragpatil@gmail.com', '2002-05-06', '2b374d1b1b95d01859140ae5a85f90dc'),
('Tejaswini Mehta', 'F', 'GCOEJ', 'tejaswinimehta@gmail.com', '2001-04-19', '133482955d78c4dd68e4b106b68cda08'),
('Divya Rajhans', 'F', 'GCOEJ', 'divyarajhans@gmail.com', '2000-12-30', '9d6c49d026bbb5de9b7b6e4faa208520'),
('Chetan Wagh', 'M', 'GCOEJ', 'chetanwagh@gamil.com', '2001-03-12', 'ba0e1dfea8a44a98e755c036338277dc'),
('Yuvraj Jadhav', 'M', 'GCOEJ', 'yuvrajjadhav@gmail.com', '2000-01-15', '3afbbe8462a267c67a4b0dfc98e7eb13');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `examiner`
--
ALTER TABLE `examiner`
  ADD PRIMARY KEY (`examiner_id`);

--
-- Indexes for table `student`
--
ALTER TABLE `student`
  ADD PRIMARY KEY (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `examiner`
--
ALTER TABLE `examiner`
  MODIFY `examiner_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
