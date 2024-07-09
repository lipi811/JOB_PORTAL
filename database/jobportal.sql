-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Apr 19, 2023 at 02:40 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jobportal`
--
CREATE DATABASE IF NOT EXISTS `jobportal` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `jobportal`;

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE IF NOT EXISTS `admin` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `name`, `email`, `password`) VALUES
(1, 'Proteen Das', 'admin@admin.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE IF NOT EXISTS `employer` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`id`, `name`, `email`, `password`) VALUES
(4, 'Wipro Technologies ', 'admin@wipro.com', 'password'),
(10, 'Mahindra', 'admin@mahindra.com', 'password'),
(11, 'Tata Consultancy Services', 'admin@tcs.com', 'password'),
(14, 'Infosys', 'admin@infosys.com', 'password'),
(15, 'Paladion Networks', 'admin@paladion.com', 'password'),
(16, 'Accenture', 'admin@accenture.com', 'password'),
(26, 'Microsoft', 'admin@microsoft.com', 'password'),
(27, 'Spark Foundation', 'admin@sf.com', 'password'),
(28, 'Facebook', 'admin@facebook.com', 'password'),
(29, 'Intel', 'admin@intel.com', 'password'),
(30, 'LTI Mindtree', 'admin@lti.com', 'password');

-- --------------------------------------------------------

--
-- Table structure for table `jobsapplied`
--

CREATE TABLE IF NOT EXISTS `jobsapplied` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` date NOT NULL,
  `pid` int(11) NOT NULL,
  `sid` int(11) NOT NULL,
  `status` varchar(500) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jobapplied_seekerFK` (`sid`),
  KEY `pid` (`pid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `jobsapplied`
--

INSERT INTO `jobsapplied` (`id`, `date`, `pid`, `sid`, `status`) VALUES
(36, '2023-04-15', 40, 36, 'Accepted'),
(38, '2023-04-15', 43, 36, 'Rejected'),
(39, '2023-04-19', 43, 43, 'Applied'),
(40, '2023-04-19', 41, 40, 'Applied'),
(41, '2023-04-19', 8, 36, 'Applied'),
(42, '2023-04-19', 41, 38, 'Applied'),
(43, '2023-04-19', 8, 38, 'Applied'),
(44, '2023-04-19', 44, 38, 'Applied');

-- --------------------------------------------------------

--
-- Table structure for table `logpost`
--

CREATE TABLE IF NOT EXISTS `logpost` (
  `lpid` int(11) NOT NULL AUTO_INCREMENT,
  `pid` int(11) NOT NULL,
  `eid` int(11) NOT NULL,
  `name` varchar(500) NOT NULL,
  `category` varchar(500) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(100) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(500) NOT NULL,
  `action` varchar(500) NOT NULL,
  `cdate` datetime NOT NULL,
  PRIMARY KEY (`lpid`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=19 ;

--
-- Dumping data for table `logpost`
--

INSERT INTO `logpost` (`lpid`, `pid`, `eid`, `name`, `category`, `industry`, `role`, `employmentType`, `status`, `action`, `cdate`) VALUES
(7, 40, 4, 'Product Manager', 'Business Intelligence Jobs', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open', 'INSERTED', '2023-02-02 10:46:59'),
(8, 41, 29, 'Graphic Designer', 'Graphic Designer Jobs', 'Animation , Gaming', 'Intern', 'Permanent', 'Open', 'INSERTED', '2023-02-02 10:53:40'),
(9, 42, 28, 'Python Developer', 'IT Jobs', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open', 'INSERTED', '2023-02-02 11:03:24'),
(10, 6, 14, 'Team Lead (Technical)', 'IT Jobs', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open', 'UPDATED', '2023-02-02 11:07:48'),
(11, 8, 16, 'Accounts Manager', 'Accounting Jobs', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open', 'UPDATED', '2023-02-02 11:09:58'),
(12, 43, 30, 'Software Engineer', 'IT Jobs', 'IT-Software , Software Services', 'Backend Engg.', 'Permanent', 'Open', 'INSERTED', '2023-04-15 03:22:03'),
(13, 6, 14, 'Team Lead (Technical)', 'IT Jobs', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open', 'UPDATED', '2023-04-19 13:58:53'),
(14, 8, 16, 'Accounts Manager', 'Accounting Jobs', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open', 'UPDATED', '2023-04-19 13:59:02'),
(15, 40, 4, 'Product Manager', 'Business Intelligence Jobs', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open', 'UPDATED', '2023-04-19 13:59:06'),
(16, 41, 29, 'Graphic Designer', 'Graphic Designer Jobs', 'Animation , Gaming', 'Intern', 'Permanent', 'Open', 'UPDATED', '2023-04-19 13:59:11'),
(17, 42, 28, 'Python Developer', 'IT Jobs', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open', 'UPDATED', '2023-04-19 13:59:17'),
(18, 44, 11, 'Backend Intern', 'System Programming Jobs', 'IT-Software , Software Services', 'Intern', 'Permanent', 'Open', 'INSERTED', '2023-04-19 15:13:19');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE IF NOT EXISTS `post` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `eid` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `category` varchar(500) NOT NULL,
  `minexp` varchar(100) NOT NULL,
  `desc` varchar(5000) NOT NULL,
  `salary` varchar(200) NOT NULL,
  `industry` varchar(500) NOT NULL,
  `role` varchar(500) NOT NULL,
  `employmentType` varchar(500) NOT NULL,
  `status` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `id_2` (`id`),
  KEY `employer_postFK` (`eid`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=45 ;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`id`, `date`, `eid`, `name`, `category`, `minexp`, `desc`, `salary`, `industry`, `role`, `employmentType`, `status`) VALUES
(6, '2023-01-04 18:30:00', 14, 'Team Lead (Technical)', 'IT Jobs', '8', 'Aid a group of programmers.', '100000-150000', 'IT-Software , Software Services', 'Team Lead', 'Permanent', 'open'),
(8, '2023-01-04 18:30:00', 16, 'Accounts Manager', 'Accounting Jobs', '6', 'Experience with accounting software. General Math skills.', '70000-80000', 'Accounting , Finance', 'Accounts Manager', 'Permanent', 'open'),
(40, '2023-02-01 18:30:00', 4, 'Product Manager', 'Business Intelligence Jobs', '3', 'Communication Skills, Technical Knowledge', '40000-60000', 'IT-Software , Software Services', 'Lead', 'Permanent', 'Open'),
(41, '2023-02-01 18:30:00', 29, 'Graphic Designer', 'Graphic Designer Jobs', '3', '3D Animation, Adobe products.', '30000-50000', 'Animation , Gaming', 'Intern', 'Permanent', 'Open'),
(42, '2023-02-01 18:30:00', 28, 'Python Developer', 'IT Jobs', '2', 'Proficiency in Python, Test software components', '40000-60000', 'IT-Software , Software Services', 'Asst. Python Developer ', 'Permanent', 'Open'),
(43, '2023-04-14 18:30:00', 30, 'Software Engineer', 'IT Jobs', '3 years', 'B.Tech', '20000', 'IT-Software , Software Services', 'Backend Engg', 'Permanent', 'Open'),
(44, '2023-04-18 18:30:00', 11, 'Backend Intern', 'System Programming Jobs', '1-1.5 years', 'MERN', '25000 - 30000', 'IT-Software , Software Services', 'Intern', 'Permanent', 'Open');

--
-- Triggers `post`
--
DROP TRIGGER IF EXISTS `Existing Row Deleted`;
DELIMITER //
CREATE TRIGGER `Existing Row Deleted` AFTER DELETE ON `post`
 FOR EACH ROW INSERT INTO logpost VALUES(null, OLD.id, OLD.eid, OLD.name, OLD.category, OLD.industry, OLD.role, OLD.employmentType, OLD.status, 'DELETED', NOW())
//
DELIMITER ;
DROP TRIGGER IF EXISTS `Existing Row Updated`;
DELIMITER //
CREATE TRIGGER `Existing Row Updated` AFTER UPDATE ON `post`
 FOR EACH ROW INSERT INTO logpost VALUES(null, NEW.id, NEW.eid, NEW.name, NEW.category, NEW.industry, NEW.role, NEW.employmentType, NEW.status, 'UPDATED', NOW())
//
DELIMITER ;
DROP TRIGGER IF EXISTS `New Row Inserted`;
DELIMITER //
CREATE TRIGGER `New Row Inserted` AFTER INSERT ON `post`
 FOR EACH ROW INSERT INTO logpost VALUES(null, NEW.id, NEW.eid, NEW.name, NEW.category, NEW.industry, NEW.role, NEW.employmentType, NEW.status, 'INSERTED', NOW())
//
DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `seeker`
--

CREATE TABLE IF NOT EXISTS `seeker` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(200) NOT NULL,
  `qualification` varchar(500) NOT NULL,
  `dob` date NOT NULL,
  `skills` varchar(2000) NOT NULL,
  `resume` varchar(500) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=44 ;

--
-- Dumping data for table `seeker`
--

INSERT INTO `seeker` (`id`, `name`, `email`, `password`, `qualification`, `dob`, `skills`, `resume`) VALUES
(36, 'Nishit Killa', 'nishit@gmail.com', 'password', 'BE', '2001-06-21', 'C++, JAVA', ''),
(37, 'Tushar Jain', 'tushar@gmail.com', 'password', 'BE', '2001-07-04', 'HTML, CSS, JS', ''),
(38, 'Sreeleena Ganguli', 'sreeleena@gmail.com', 'password', 'MTech', '2001-09-05', 'Backend Engg.', ''),
(39, 'Riteek Rakesh', 'riteek@gmail.com', 'password', 'BE', '2001-06-02', 'Circuit Design', ''),
(40, 'Sayantan Podder', 'sayantan@gmail.com', 'password', 'BE', '1995-07-19', 'Machine Learning', ''),
(41, 'Sampurna Ghosh', 'sampurna@gmail.com', 'password', 'B.Sc.', '1995-11-23', 'Physiotherapy', ''),
(42, 'Rahul Adhikary', 'rahul@gmail.com', 'password', 'BBA', '1991-08-12', 'International Business', ''),
(43, 'Mariam Meerza', 'mariam@gmail.com', 'password', 'BE', '1998-03-07', 'Computer Applications', '');

-- --------------------------------------------------------

--
--table structure for jobApplication


/*
CREATE TABLE IF NOT EXISTS jobApplication (
    app_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    phone VARCHAR(15),
    education TEXT,
    experience TEXT,
    skills VARCHAR(255),
    resume_path VARCHAR(255) NOT NULL
);
8*/

-- --------------------------------------------------------

--
-- Table structure for table `job_categories`
--
CREATE TABLE job_categories (
    id INT PRIMARY KEY,
    category_name VARCHAR(255) NOT NULL
);

INSERT INTO job_categories (id, category_name) VALUES
(1, 'Accounting Jobs'),
(2, 'Interior Design Jobs'),
(3, 'Bank Jobs'),
(4, 'Content Writing Jobs'),
(5, 'Consultant Jobs'),
(6, 'Engineering Jobs'),
(7, 'Export Import Jobs'),
(8, 'Merchandiser Jobs'),
(9, 'Security Jobs'),
(10, 'HR Jobs'),
(11, 'Hotel Jobs'),
(12, 'Application Programming Jobs'),
(13, 'Client Server Jobs'),
(14, 'DBA Jobs'),
(15, 'Ecommerce Jobs'),
(16, 'ERP Jobs'),
(17, 'VLSI Jobs'),
(18, 'Mainframe Jobs'),
(19, 'Middleware Jobs'),
(20, 'Mobile Jobs'),
(21, 'Network administrator Jobs'),
(22, 'IT Jobs'),
(23, 'Testing Jobs'),
(24, 'System Programming Jobs'),
(25, 'EDP Jobs'),
(26, 'Telecom Software Jobs'),
(27, 'Telecom Jobs'),
(28, 'BPO Jobs'),
(29, 'Legal Jobs'),
(30, 'Marketing Jobs'),
(31, 'Packaging Jobs'),
(32, 'Pharma Jobs'),
(33, 'Maintenance Jobs'),
(34, 'Logistics Jobs'),
(35, 'Sales Jobs'),
(36, 'Secretary Jobs'),
(37, 'Corporate Planning Jobs'),
(38, 'Site Engineering Jobs'),
(39, 'Film Jobs'),
(40, 'Teacher Jobs'),
(41, 'Airline Jobs'),
(42, 'Graphic Designer Jobs'),
(43, 'Shipping Jobs'),
(44, 'Analytics Jobs'),
(45, 'Business Intelligence Jobs');

/*
CREATE TABLE IF NOT EXISTS `users` (
  `SeekersAndEmployers` bigint(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

--INSERT INTO `users` (`SeekersAndEmployers`) VALUES
--(19);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
