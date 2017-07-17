-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jul 17, 2017 at 03:00 م
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `school`
--

-- --------------------------------------------------------

--
-- Table structure for table `books`
--

CREATE TABLE `books` (
  `_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `author` varchar(250) NOT NULL,
  `path` text NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professors`
--

CREATE TABLE `professors` (
  `_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `birthdate` int(11) NOT NULL,
  `address` varchar(500) NOT NULL,
  `gender` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `professors_subjects`
--

CREATE TABLE `professors_subjects` (
  `professor_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `nationality` varchar(50) NOT NULL,
  `gender` varchar(1) NOT NULL,
  `address` varchar(500) NOT NULL,
  `grade` int(11) NOT NULL,
  `age` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`_id`, `name`, `nationality`, `gender`, `address`, `grade`, `age`) VALUES
(1, '', '', '', '', 0, 0),
(2, 'Ahmed', '', '', '', 0, 1111),
(3, 'hadir', '', '', '', 0, 23),
(4, 'hadir', '', '', '', 0, 23),
(5, 'hadir', '', '', '', 0, 23);

-- --------------------------------------------------------

--
-- Table structure for table `students_subjects`
--

CREATE TABLE `students_subjects` (
  `school` varchar(255) DEFAULT NULL,
  `_id` int(11) NOT NULL,
  `subject_id` int(11) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` int(11) DEFAULT NULL,
  `address` varchar(255) DEFAULT NULL,
  `famsize` varchar(255) DEFAULT NULL,
  `Pstatus` varchar(255) DEFAULT NULL,
  `Medu` int(11) DEFAULT NULL,
  `Fedu` int(11) DEFAULT NULL,
  `Mjob` varchar(255) DEFAULT NULL,
  `Fjob` varchar(255) DEFAULT NULL,
  `reason` varchar(255) DEFAULT NULL,
  `guardian` varchar(255) DEFAULT NULL,
  `traveltime` int(11) DEFAULT NULL,
  `studytime` int(11) DEFAULT NULL,
  `failures` int(11) DEFAULT NULL,
  `schoolsup` varchar(255) DEFAULT NULL,
  `famsup` varchar(255) DEFAULT NULL,
  `paid` varchar(255) DEFAULT NULL,
  `activities` varchar(255) DEFAULT NULL,
  `nursery` varchar(255) DEFAULT NULL,
  `higher` varchar(255) DEFAULT NULL,
  `internet` varchar(255) DEFAULT NULL,
  `romantic` varchar(255) DEFAULT NULL,
  `famrel` int(11) DEFAULT NULL,
  `freetime` int(11) DEFAULT NULL,
  `goout` int(11) DEFAULT NULL,
  `Dalc` int(11) DEFAULT NULL,
  `Walc` int(11) DEFAULT NULL,
  `health` int(11) DEFAULT NULL,
  `absences` int(11) DEFAULT NULL,
  `G1` varchar(255) DEFAULT NULL,
  `G2` varchar(255) DEFAULT NULL,
  `G3` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `students_subjects`
--

INSERT INTO `students_subjects` (`school`, `_id`, `subject_id`, `sex`, `age`, `address`, `famsize`, `Pstatus`, `Medu`, `Fedu`, `Mjob`, `Fjob`, `reason`, `guardian`, `traveltime`, `studytime`, `failures`, `schoolsup`, `famsup`, `paid`, `activities`, `nursery`, `higher`, `internet`, `romantic`, `famrel`, `freetime`, `goout`, `Dalc`, `Walc`, `health`, `absences`, `G1`, `G2`, `G3`) VALUES
('GP', 1, 0, 'F', 18, 'U', 'GT3', 'A', 4, 4, 'at_home', 'teacher', 'course', 'mother', 2, 2, 0, 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 4, 1, 1, 3, 6, '5', '6', 6),
('GP', 2, 0, 'F', 17, 'U', 'GT3', 'T', 1, 1, 'at_home', 'other', 'course', 'father', 1, 2, 0, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 3, 4, '5', '5', 6),
('GP', 3, 0, 'F', 15, 'U', 'LE3', 'T', 1, 1, 'at_home', 'other', 'other', 'mother', 1, 2, 3, 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 2, 3, 3, 10, '7', '8', 10),
('GP', 4, 0, 'F', 15, 'U', 'GT3', 'T', 4, 2, 'health', 'services', 'home', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 3, 2, 2, 1, 1, 5, 2, '15', '14', 15),
('GP', 5, 0, 'F', 16, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'home', 'father', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 2, 1, 2, 5, 4, '6', '10', 10),
('GP', 6, 0, 'M', 16, 'U', 'LE3', 'T', 4, 3, 'services', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 2, 1, 2, 5, 10, '15', '15', 15),
('GP', 7, 0, 'M', 16, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 1, 1, 3, 0, '12', '12', 11),
('GP', 8, 0, 'F', 17, 'U', 'GT3', 'A', 4, 4, 'other', 'teacher', 'home', 'mother', 2, 2, 0, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 4, 1, 4, 1, 1, 1, 6, '6', '5', 6),
('GP', 9, 0, 'M', 15, 'U', 'LE3', 'A', 3, 2, 'services', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 2, 2, 1, 1, 1, 0, '16', '18', 19),
('GP', 10, 0, 'M', 15, 'U', 'GT3', 'T', 3, 4, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 5, 1, 1, 1, 5, 0, '14', '15', 15),
('GP', 11, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'teacher', 'health', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 3, 1, 2, 2, 0, '10', '8', 9),
('GP', 12, 0, 'F', 15, 'U', 'GT3', 'T', 2, 1, 'services', 'other', 'reputation', 'father', 3, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 2, 2, 1, 1, 4, 4, '10', '12', 12),
('GP', 13, 0, 'M', 15, 'U', 'LE3', 'T', 4, 4, 'health', 'services', 'course', 'father', 1, 1, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 3, 5, 2, '14', '14', 14),
('GP', 14, 0, 'M', 15, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'course', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 5, 4, 3, 1, 2, 3, 2, '10', '10', 11),
('GP', 15, 0, 'M', 15, 'U', 'GT3', 'A', 2, 2, 'other', 'other', 'home', 'other', 1, 3, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 5, 2, 1, 1, 3, 0, '14', '16', 16),
('GP', 16, 0, 'F', 16, 'U', 'GT3', 'T', 4, 4, 'health', 'other', 'home', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 1, 2, 2, 4, '14', '14', 14),
('GP', 17, 0, 'F', 16, 'U', 'GT3', 'T', 4, 4, 'services', 'services', 'reputation', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 2, 3, 1, 2, 2, 6, '13', '14', 14),
('GP', 18, 0, 'F', 16, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'reputation', 'mother', 3, 2, 0, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 5, 3, 2, 1, 1, 4, 4, '8', '10', 10),
('GP', 19, 0, 'M', 17, 'U', 'GT3', 'T', 3, 2, 'services', 'services', 'course', 'mother', 1, 1, 3, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 5, 5, 2, 4, 5, 16, '6', '5', 5),
('GP', 20, 0, 'M', 16, 'U', 'LE3', 'T', 4, 3, 'health', 'other', 'home', 'father', 1, 1, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 1, 3, 1, 3, 5, 4, '8', '10', 10),
('GP', 21, 0, 'M', 15, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 1, 1, 1, 1, 0, '13', '14', 15),
('GP', 22, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'health', 'health', 'other', 'father', 1, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 5, 4, 2, 1, 1, 5, 0, '12', '15', 15),
('GP', 23, 0, 'M', 16, 'U', 'LE3', 'T', 4, 2, 'teacher', 'other', 'course', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 5, 1, 1, 3, 5, 2, '15', '15', 16),
('GP', 24, 0, 'M', 16, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 2, 4, 5, 0, '13', '13', 12),
('GP', 25, 0, 'F', 15, 'R', 'GT3', 'T', 2, 4, 'services', 'health', 'course', 'mother', 1, 3, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 5, 2, '10', '9', 8),
('GP', 26, 0, 'F', 16, 'U', 'GT3', 'T', 2, 2, 'services', 'services', 'home', 'mother', 1, 1, 2, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 1, 2, 2, 1, 3, 5, 14, '6', '9', 8),
('GP', 27, 0, 'M', 15, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'home', 'mother', 1, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 2, 2, 1, 2, 5, 2, '12', '12', 11),
('GP', 28, 0, 'M', 15, 'U', 'GT3', 'T', 4, 2, 'health', 'services', 'other', 'mother', 1, 1, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 2, 2, 4, 2, 4, 1, 4, '15', '16', 15),
('GP', 29, 0, 'M', 16, 'U', 'LE3', 'A', 3, 4, 'services', 'other', 'home', 'mother', 1, 2, 0, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 5, 4, '11', '11', 11),
('GP', 30, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 5, 5, 5, 5, 16, '10', '12', 11),
('GP', 31, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'health', 'services', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 5, 4, 2, 3, 4, 5, 0, '9', '11', 12),
('GP', 32, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'services', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 1, 1, 1, 5, 0, '17', '16', 17),
('GP', 33, 0, 'M', 15, 'R', 'GT3', 'T', 4, 3, 'teacher', 'at_home', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 5, 2, 1, 1, 5, 0, '17', '16', 16),
('GP', 34, 0, 'M', 15, 'U', 'LE3', 'T', 3, 3, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 3, 2, 1, 1, 2, 0, '8', '10', 12),
('GP', 35, 0, 'M', 16, 'U', 'GT3', 'T', 3, 2, 'other', 'other', 'home', 'mother', 1, 1, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 5, 4, 3, 1, 1, 5, 0, '12', '14', 15),
('GP', 36, 0, 'F', 15, 'U', 'GT3', 'T', 2, 3, 'other', 'other', 'other', 'father', 2, 1, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 3, 5, 1, 1, 1, 5, 0, '8', '7', 6),
('GP', 37, 0, 'M', 15, 'U', 'LE3', 'T', 4, 3, 'teacher', 'services', 'home', 'mother', 1, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 3, 1, 1, 4, 2, '15', '16', 18),
('GP', 38, 0, 'M', 16, 'R', 'GT3', 'A', 4, 4, 'other', 'teacher', 'reputation', 'mother', 2, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 2, 4, 3, 1, 1, 5, 7, '15', '16', 15),
('GP', 39, 0, 'F', 15, 'R', 'GT3', 'T', 3, 4, 'services', 'health', 'course', 'mother', 1, 3, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 5, 2, '12', '12', 11),
('GP', 40, 0, 'F', 15, 'R', 'GT3', 'T', 2, 2, 'at_home', 'other', 'reputation', 'mother', 1, 1, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 4, 3, 1, 1, 1, 2, 8, '14', '13', 13),
('GP', 41, 0, 'F', 16, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'home', 'mother', 2, 2, 1, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 3, 3, 3, 1, 2, 3, 25, '7', '10', 11),
('GP', 42, 0, 'M', 15, 'U', 'LE3', 'T', 4, 4, 'teacher', 'other', 'home', 'other', 1, 1, 0, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 5, 4, 3, 2, 4, 5, 8, '12', '12', 12),
('GP', 43, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'teacher', 'course', 'father', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 5, 2, '19', '18', 18),
('GP', 44, 0, 'M', 15, 'U', 'GT3', 'T', 2, 2, 'services', 'services', 'course', 'father', 1, 1, 0, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 4, 1, 1, 1, 1, 0, '8', '8', 11),
('GP', 45, 0, 'F', 16, 'U', 'LE3', 'T', 2, 2, 'other', 'at_home', 'course', 'father', 2, 2, 1, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 2, 5, 14, '10', '10', 9),
('GP', 46, 0, 'F', 15, 'U', 'LE3', 'A', 4, 3, 'other', 'other', 'course', 'mother', 1, 2, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 2, 2, 1, 1, 5, 8, '8', '8', 6),
('GP', 47, 0, 'F', 16, 'U', 'LE3', 'A', 3, 3, 'other', 'services', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 2, 3, 5, 1, 4, 3, 12, '11', '12', 11),
('GP', 48, 0, 'M', 16, 'U', 'GT3', 'T', 4, 3, 'health', 'services', 'reputation', 'mother', 1, 4, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 2, 1, 1, 2, 4, '19', '19', 20),
('GP', 49, 0, 'M', 15, 'U', 'GT3', 'T', 4, 2, 'teacher', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 3, 2, 2, 5, 2, '15', '15', 14),
('GP', 50, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'teacher', 'other', 'father', 1, 2, 1, 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 4, 4, 4, 1, 1, 3, 2, '7', '7', 7),
('GP', 51, 0, 'F', 16, 'U', 'LE3', 'T', 2, 2, 'services', 'services', 'course', 'mother', 3, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 3, 4, 2, '12', '13', 13),
('GP', 52, 0, 'F', 15, 'U', 'LE3', 'T', 4, 2, 'health', 'other', 'other', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 5, 2, '11', '13', 13),
('GP', 53, 0, 'M', 15, 'U', 'LE3', 'A', 4, 2, 'health', 'health', 'other', 'father', 2, 1, 1, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 5, 5, 5, 3, 4, 5, 6, '11', '11', 10),
('GP', 54, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'services', 'course', 'mother', 1, 1, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 4, 2, 3, 5, 0, '8', '10', 11),
('GP', 55, 0, 'F', 15, 'U', 'LE3', 'A', 3, 3, 'other', 'other', 'other', 'mother', 1, 1, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 5, 3, 4, 4, 4, 1, 6, '10', '13', 13),
('GP', 56, 0, 'F', 16, 'U', 'GT3', 'A', 2, 1, 'other', 'other', 'other', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 3, 4, 1, 1, 2, 8, '8', '9', 10),
('GP', 57, 0, 'F', 15, 'U', 'GT3', 'A', 4, 3, 'services', 'services', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 1, 0, '14', '15', 15),
('GP', 58, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'teacher', 'health', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 3, 2, 2, 1, 1, 5, 4, '14', '15', 15),
('GP', 59, 0, 'M', 15, 'U', 'LE3', 'T', 1, 2, 'other', 'at_home', 'home', 'father', 1, 2, 0, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 5, 2, '9', '10', 9),
('GP', 60, 0, 'F', 16, 'U', 'GT3', 'T', 4, 2, 'services', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 2, 3, 1, 1, 5, 2, '15', '16', 16),
('GP', 61, 0, 'F', 16, 'R', 'GT3', 'T', 4, 4, 'health', 'teacher', 'other', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 2, 4, 4, 2, 3, 4, 6, '10', '11', 11),
('GP', 62, 0, 'F', 16, 'U', 'GT3', 'T', 1, 1, 'services', 'services', 'course', 'father', 4, 1, 0, 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 5, 5, 5, 5, 5, 5, 6, '10', '8', 11),
('GP', 63, 0, 'F', 16, 'U', 'LE3', 'T', 1, 2, 'other', 'services', 'reputation', 'father', 1, 2, 0, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 3, 1, 1, 1, 4, '8', '10', 9),
('GP', 64, 0, 'F', 16, 'U', 'GT3', 'T', 4, 3, 'teacher', 'health', 'home', 'mother', 1, 3, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 4, 4, 2, 4, 4, 2, '10', '9', 9),
('GP', 65, 0, 'F', 15, 'U', 'LE3', 'T', 4, 3, 'services', 'services', 'reputation', 'father', 1, 2, 0, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 4, 2, 4, 2, 0, '10', '10', 10),
('GP', 66, 0, 'F', 16, 'U', 'LE3', 'T', 4, 3, 'teacher', 'services', 'course', 'mother', 3, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 3, 1, 2, 1, 2, '16', '15', 15),
('GP', 67, 0, 'M', 15, 'U', 'GT3', 'A', 4, 4, 'other', 'services', 'reputation', 'mother', 1, 4, 0, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 1, 3, 3, 5, 5, 3, 4, '13', '13', 12),
('GP', 68, 0, 'F', 16, 'U', 'GT3', 'T', 3, 1, 'services', 'other', 'course', 'mother', 1, 4, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 2, 5, 4, '7', '7', 6),
('GP', 69, 0, 'F', 15, 'R', 'LE3', 'T', 2, 2, 'health', 'services', 'reputation', 'mother', 2, 2, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 1, 3, 1, 3, 4, 2, '8', '9', 8),
('GP', 70, 0, 'F', 15, 'R', 'LE3', 'T', 3, 1, 'other', 'other', 'reputation', 'father', 2, 4, 0, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 4, 4, 2, 2, 3, 3, 12, '16', '16', 16),
('GP', 71, 0, 'M', 16, 'U', 'GT3', 'T', 3, 1, 'other', 'other', 'reputation', 'father', 2, 4, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 5, 0, '13', '15', 15),
('GP', 72, 0, 'M', 15, 'U', 'GT3', 'T', 4, 2, 'other', 'other', 'course', 'mother', 1, 4, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 3, 1, 1, 3, 0, '10', '10', 10),
('GP', 73, 0, 'F', 15, 'R', 'GT3', 'T', 1, 1, 'other', 'other', 'reputation', 'mother', 1, 2, 2, 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 3, 3, 4, 2, 4, 5, 2, '8', '6', 5),
('GP', 74, 0, 'M', 16, 'U', 'GT3', 'T', 3, 1, 'other', 'other', 'reputation', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 5, 3, 2, 2, 2, 5, 2, '12', '12', 14),
('GP', 75, 0, 'F', 16, 'U', 'GT3', 'T', 3, 3, 'other', 'services', 'home', 'mother', 1, 2, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 4, 5, 54, '11', '12', 11),
('GP', 76, 0, 'M', 15, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 3, 5, 6, '9', '9', 10),
('GP', 77, 0, 'M', 15, 'U', 'GT3', 'T', 4, 0, 'teacher', 'other', 'course', 'mother', 2, 4, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 3, 4, 3, 1, 1, 1, 8, '11', '11', 10),
('GP', 78, 0, 'F', 16, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'reputation', 'mother', 1, 4, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 2, 3, 1, 3, 3, 0, '11', '11', 11),
('GP', 79, 0, 'M', 17, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'home', 'mother', 2, 1, 3, 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 'no', 4, 5, 1, 1, 1, 3, 2, '8', '8', 10),
('GP', 80, 0, 'F', 16, 'U', 'GT3', 'T', 3, 4, 'at_home', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 2, 4, 3, 1, 2, 3, 12, '5', '5', 5),
('GP', 81, 0, 'M', 15, 'U', 'GT3', 'T', 2, 3, 'other', 'services', 'course', 'father', 1, 1, 0, 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 3, 2, 2, 1, 3, 3, 2, '10', '12', 12),
('GP', 82, 0, 'M', 15, 'U', 'GT3', 'T', 2, 3, 'other', 'other', 'home', 'mother', 1, 3, 0, 'yes', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 5, 3, 2, 1, 2, 5, 4, '11', '10', 11),
('GP', 83, 0, 'F', 15, 'U', 'LE3', 'T', 3, 2, 'services', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 1, 1, 5, 10, '7', '6', 6),
('GP', 84, 0, 'M', 15, 'U', 'LE3', 'T', 2, 2, 'services', 'services', 'home', 'mother', 2, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 3, 4, 4, '15', '15', 15),
('GP', 85, 0, 'F', 15, 'U', 'GT3', 'T', 1, 1, 'other', 'other', 'home', 'father', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 4, 3, 2, 2, 3, 4, 2, '9', '10', 10),
('GP', 86, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'services', 'reputation', 'father', 2, 2, 2, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 4, 2, 3, 5, 6, '7', '9', 8),
('GP', 87, 0, 'F', 16, 'U', 'LE3', 'T', 2, 2, 'at_home', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 4, 1, 2, 2, 4, '8', '7', 6),
('GP', 88, 0, 'F', 15, 'U', 'GT3', 'T', 4, 2, 'other', 'other', 'reputation', 'mother', 1, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 3, 1, 4, '13', '14', 14),
('GP', 89, 0, 'M', 16, 'U', 'GT3', 'T', 2, 2, 'services', 'other', 'reputation', 'father', 2, 2, 1, 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 4, 4, 2, 1, 1, 3, 12, '11', '10', 10),
('GP', 90, 0, 'M', 16, 'U', 'LE3', 'A', 4, 4, 'teacher', 'health', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 4, 1, 3, 3, 5, 5, 18, '8', '6', 7),
('GP', 91, 0, 'F', 16, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'home', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 1, 3, 4, 0, '7', '7', 8),
('GP', 92, 0, 'F', 15, 'U', 'GT3', 'T', 4, 3, 'services', 'other', 'reputation', 'mother', 1, 1, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 5, 5, 1, 3, 1, 4, '16', '17', 18),
('GP', 93, 0, 'F', 16, 'U', 'LE3', 'T', 3, 1, 'other', 'other', 'home', 'father', 1, 2, 0, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'no', 3, 3, 3, 2, 3, 2, 4, '7', '6', 6),
('GP', 94, 0, 'F', 16, 'U', 'GT3', 'T', 4, 2, 'teacher', 'services', 'home', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 1, 0, '11', '10', 10),
('GP', 95, 0, 'M', 15, 'U', 'LE3', 'T', 2, 2, 'services', 'health', 'reputation', 'mother', 1, 4, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 4, 1, 1, 4, 6, '11', '13', 14),
('GP', 96, 0, 'F', 15, 'R', 'GT3', 'T', 1, 1, 'at_home', 'other', 'home', 'mother', 2, 4, 1, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 1, 2, 1, 1, 1, 2, '7', '10', 10),
('GP', 97, 0, 'M', 16, 'R', 'GT3', 'T', 4, 3, 'services', 'other', 'reputation', 'mother', 2, 1, 0, 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 3, 3, 3, 1, 1, 4, 2, '11', '15', 15),
('GP', 98, 0, 'F', 16, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'yes', 4, 3, 5, 1, 1, 5, 2, '8', '9', 10),
('GP', 99, 0, 'F', 16, 'U', 'GT3', 'T', 4, 4, 'other', 'other', 'reputation', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 3, 4, 1, 2, 1, 6, '11', '14', 14),
('GP', 100, 0, 'F', 16, 'U', 'GT3', 'T', 4, 3, 'other', 'at_home', 'course', 'mother', 1, 3, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 5, 3, 5, 1, 1, 3, 0, '7', '9', 8),
('GP', 101, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'services', 'services', 'other', 'mother', 1, 1, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 5, 5, 5, 5, 4, 14, '7', '7', 5),
('GP', 102, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'services', 'teacher', 'other', 'father', 1, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 3, 1, 1, 4, 0, '16', '17', 17),
('GP', 103, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'other', 'course', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 5, 4, '10', '13', 14),
('GP', 104, 0, 'F', 15, 'U', 'GT3', 'T', 3, 2, 'services', 'other', 'home', 'mother', 2, 2, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 5, 1, 1, 2, 26, '7', '6', 6),
('GP', 105, 0, 'M', 15, 'U', 'GT3', 'A', 3, 4, 'services', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 1, 1, 1, 0, '16', '18', 18),
('GP', 106, 0, 'F', 15, 'U', 'GT3', 'A', 3, 3, 'other', 'health', 'reputation', 'father', 1, 4, 0, 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 3, 1, 1, 4, 10, '10', '11', 11),
('GP', 107, 0, 'F', 15, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'course', 'mother', 1, 4, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 5, 1, 2, 1, 1, 3, 8, '7', '8', 8),
('GP', 108, 0, 'M', 16, 'U', 'GT3', 'T', 3, 3, 'services', 'other', 'home', 'father', 1, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 5, 2, '16', '18', 18),
('GP', 109, 0, 'M', 15, 'R', 'GT3', 'T', 4, 4, 'other', 'other', 'home', 'father', 4, 4, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 1, 3, 5, 3, 5, 1, 6, '10', '13', 13),
('GP', 110, 0, 'F', 16, 'U', 'LE3', 'T', 4, 4, 'health', 'health', 'other', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 4, 5, 1, 1, 4, 4, '14', '15', 16),
('GP', 111, 0, 'M', 15, 'U', 'LE3', 'A', 4, 4, 'teacher', 'teacher', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 5, 3, 1, 1, 4, 6, '18', '19', 19),
('GP', 112, 0, 'F', 16, 'R', 'GT3', 'T', 3, 3, 'services', 'other', 'reputation', 'father', 1, 3, 1, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 1, 2, 1, 1, 2, 0, '7', '10', 10),
('GP', 113, 0, 'F', 16, 'U', 'GT3', 'T', 2, 2, 'at_home', 'other', 'home', 'mother', 1, 2, 1, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 3, 1, 2, 1, 1, 5, 6, '10', '13', 13),
('GP', 114, 0, 'M', 15, 'U', 'LE3', 'T', 4, 2, 'teacher', 'other', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 5, 2, 1, 1, 3, 10, '18', '19', 19),
('GP', 115, 0, 'M', 15, 'R', 'GT3', 'T', 2, 1, 'health', 'services', 'reputation', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 4, 2, 1, 1, 5, 8, '9', '9', 9),
('GP', 116, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'course', 'father', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 1, 2, 5, 2, '15', '15', 16),
('GP', 117, 0, 'M', 15, 'U', 'GT3', 'T', 4, 4, 'other', 'teacher', 'reputation', 'father', 2, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 4, 4, 3, 1, 1, 2, 2, '11', '13', 14),
('GP', 118, 0, 'M', 16, 'U', 'GT3', 'T', 3, 3, 'other', 'services', 'home', 'father', 2, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 2, 1, 1, 5, 0, '13', '14', 13),
('GP', 119, 0, 'M', 17, 'R', 'GT3', 'T', 1, 3, 'other', 'other', 'course', 'father', 3, 2, 1, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 2, 4, 1, 4, 5, 20, '9', '7', 8),
('GP', 120, 0, 'M', 15, 'U', 'GT3', 'T', 3, 4, 'other', 'other', 'reputation', 'father', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 4, 3, 1, 2, 4, 6, '14', '13', 13),
('GP', 121, 0, 'F', 15, 'U', 'GT3', 'T', 1, 2, 'at_home', 'services', 'course', 'mother', 1, 2, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 3, 2, 3, 1, 2, 1, 2, '16', '15', 15),
('GP', 122, 0, 'M', 15, 'U', 'GT3', 'T', 2, 2, 'services', 'services', 'home', 'father', 1, 4, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 5, 4, 1, 2, 5, 6, '16', '14', 15),
('GP', 123, 0, 'F', 16, 'U', 'LE3', 'T', 2, 4, 'other', 'health', 'course', 'father', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 2, 2, 1, 2, 5, 2, '13', '13', 13),
('GP', 124, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'health', 'other', 'course', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 3, 4, 4, 1, 4, 5, 18, '14', '11', 13),
('GP', 125, 0, 'F', 16, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 4, 4, 1, 1, 5, 0, '8', '7', 8),
('GP', 126, 0, 'M', 15, 'U', 'GT3', 'T', 3, 4, 'services', 'services', 'home', 'father', 1, 1, 0, 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 5, 5, 3, 2, 5, 0, '13', '13', 12),
('GP', 127, 0, 'F', 15, 'U', 'LE3', 'A', 3, 4, 'other', 'other', 'home', 'mother', 1, 2, 0, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 3, 2, 1, 1, 1, 0, '7', '10', 11),
('GP', 128, 0, 'F', 19, 'U', 'GT3', 'T', 0, 1, 'at_home', 'other', 'course', 'other', 1, 2, 3, 'no', 'yes', 'no', 'no', 'no', 'no', 'no', 'no', 3, 4, 2, 1, 1, 5, 2, '7', '8', 9),
('GP', 129, 0, 'M', 18, 'R', 'GT3', 'T', 2, 2, 'services', 'other', 'reputation', 'mother', 1, 1, 2, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 3, 3, 3, 1, 2, 4, 0, '7', '4', 0),
('GP', 130, 0, 'M', 16, 'R', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'course', 'mother', 1, 1, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 5, 5, 2, 5, 4, 8, '18', '18', 18),
('GP', 131, 0, 'F', 15, 'R', 'GT3', 'T', 3, 4, 'services', 'teacher', 'course', 'father', 2, 3, 2, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 2, 2, 2, 2, 5, 0, '12', '0', 0),
('GP', 132, 0, 'F', 15, 'U', 'GT3', 'T', 1, 1, 'at_home', 'other', 'course', 'mother', 3, 1, 0, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 4, 3, 3, 1, 2, 4, 0, '8', '0', 0),
('GP', 133, 0, 'F', 17, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'course', 'father', 1, 1, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 3, 4, 4, 1, 3, 5, 12, '10', '13', 12),
('GP', 134, 0, 'F', 16, 'U', 'GT3', 'A', 3, 4, 'services', 'other', 'course', 'father', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 2, 1, 1, 4, 5, 16, '12', '11', 11),
('GP', 135, 0, 'M', 15, 'R', 'GT3', 'T', 3, 4, 'at_home', 'teacher', 'course', 'mother', 4, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'yes', 5, 3, 3, 1, 1, 5, 0, '9', '0', 0),
('GP', 136, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'services', 'at_home', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 1, 1, 5, 0, '11', '0', 0),
('GP', 137, 0, 'M', 17, 'R', 'GT3', 'T', 3, 4, 'at_home', 'other', 'course', 'mother', 3, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 5, 4, 5, 2, 4, 5, 0, '10', '0', 0),
('GP', 138, 0, 'F', 16, 'U', 'GT3', 'A', 3, 3, 'other', 'other', 'course', 'other', 2, 1, 2, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 4, 3, 2, 1, 1, 5, 0, '4', '0', 0),
('GP', 139, 0, 'M', 16, 'U', 'LE3', 'T', 1, 1, 'services', 'other', 'course', 'mother', 1, 2, 1, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 4, 4, 4, 1, 3, 5, 0, '14', '12', 12),
('GP', 140, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'course', 'mother', 2, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 5, 0, '16', '16', 15),
('GP', 141, 0, 'M', 15, 'U', 'GT3', 'T', 4, 3, 'teacher', 'services', 'course', 'father', 2, 4, 0, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 2, 2, 2, 1, 1, 3, 0, '7', '9', 0),
('GP', 142, 0, 'M', 16, 'U', 'LE3', 'T', 2, 2, 'services', 'services', 'reputation', 'father', 2, 1, 2, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 2, 3, 3, 2, 2, 2, 8, '9', '9', 9),
('GP', 143, 0, 'F', 15, 'U', 'GT3', 'T', 4, 4, 'teacher', 'services', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 2, 1, 1, 5, 2, '9', '11', 11),
('GP', 144, 0, 'F', 16, 'U', 'LE3', 'T', 1, 1, 'at_home', 'at_home', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 4, 4, 3, 3, 1, 2, '14', '14', 13),
('GP', 145, 0, 'M', 17, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'home', 'mother', 1, 1, 3, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 4, 5, 1, 2, 5, 0, '5', '0', 0),
('GP', 146, 0, 'F', 15, 'U', 'GT3', 'T', 1, 1, 'other', 'services', 'course', 'father', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 2, 1, 2, 5, 0, '8', '11', 11),
('GP', 147, 0, 'F', 15, 'U', 'GT3', 'T', 3, 2, 'health', 'services', 'home', 'father', 1, 2, 3, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 2, 1, 1, 3, 0, '6', '7', 0),
('GP', 148, 0, 'F', 15, 'U', 'GT3', 'T', 1, 2, 'at_home', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 5, 2, '10', '11', 11),
('GP', 149, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'course', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 3, 3, 2, 2, 1, 5, 0, '7', '6', 0),
('GP', 150, 0, 'M', 15, 'U', 'LE3', 'A', 2, 1, 'services', 'other', 'course', 'mother', 4, 1, 3, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 5, 5, 2, 5, 5, 0, '8', '9', 10),
('GP', 151, 0, 'M', 18, 'U', 'LE3', 'T', 1, 1, 'other', 'other', 'course', 'mother', 1, 1, 3, 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 2, 3, 5, 2, 5, 4, 0, '6', '5', 0),
('GP', 152, 0, 'M', 16, 'U', 'LE3', 'T', 2, 1, 'at_home', 'other', 'course', 'mother', 1, 1, 1, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 4, 4, 4, 3, 5, 5, 6, '12', '13', 14),
('GP', 153, 0, 'F', 15, 'R', 'GT3', 'T', 3, 3, 'services', 'services', 'reputation', 'other', 2, 3, 2, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 2, 1, 2, 3, 3, 8, '10', '10', 10),
('GP', 154, 0, 'M', 19, 'U', 'GT3', 'T', 3, 2, 'services', 'at_home', 'home', 'mother', 1, 1, 3, 'no', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 4, 5, 4, 1, 1, 4, 0, '5', '0', 0),
('GP', 155, 0, 'F', 17, 'U', 'GT3', 'T', 4, 4, 'other', 'teacher', 'course', 'mother', 1, 1, 0, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'yes', 4, 2, 1, 1, 1, 4, 0, '11', '11', 12),
('GP', 156, 0, 'M', 15, 'R', 'GT3', 'T', 2, 3, 'at_home', 'services', 'course', 'mother', 1, 2, 0, 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 4, 4, 4, 1, 1, 1, 2, '11', '8', 8),
('GP', 157, 0, 'M', 17, 'R', 'LE3', 'T', 1, 2, 'other', 'other', 'reputation', 'mother', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 2, 2, 2, 3, 3, 5, 8, '16', '12', 13),
('GP', 158, 0, 'F', 18, 'R', 'GT3', 'T', 1, 1, 'at_home', 'other', 'course', 'mother', 3, 1, 3, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'no', 'no', 5, 2, 5, 1, 5, 4, 6, '9', '8', 10),
('GP', 159, 0, 'M', 16, 'R', 'GT3', 'T', 2, 2, 'at_home', 'other', 'course', 'mother', 3, 1, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 4, 2, 2, 1, 2, 3, 2, '17', '15', 15),
('GP', 160, 0, 'M', 16, 'U', 'GT3', 'T', 3, 3, 'other', 'services', 'course', 'father', 1, 2, 1, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 5, 5, 4, 4, 5, 4, '10', '12', 12),
('GP', 161, 0, 'M', 17, 'R', 'LE3', 'T', 2, 1, 'at_home', 'other', 'course', 'mother', 2, 1, 2, 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 3, 3, 2, 2, 2, 5, 0, '7', '6', 0),
('GP', 162, 0, 'M', 15, 'R', 'GT3', 'T', 3, 2, 'other', 'other', 'course', 'mother', 2, 2, 2, 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 4, 1, 4, 3, 6, '5', '9', 7),
('GP', 163, 0, 'M', 16, 'U', 'LE3', 'T', 1, 2, 'other', 'other', 'course', 'mother', 2, 1, 1, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 4, 4, 4, 2, 4, 5, 0, '7', '0', 0),
('GP', 164, 0, 'M', 17, 'U', 'GT3', 'T', 1, 3, 'at_home', 'services', 'course', 'father', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 5, 3, 3, 1, 4, 2, 2, '10', '10', 10),
('GP', 165, 0, 'M', 17, 'R', 'LE3', 'T', 1, 1, 'other', 'services', 'course', 'mother', 4, 2, 3, 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 'yes', 5, 3, 5, 1, 5, 5, 0, '5', '8', 7),
('GP', 166, 0, 'M', 16, 'U', 'GT3', 'T', 3, 2, 'services', 'services', 'course', 'mother', 2, 1, 1, 'no', 'yes', 'no', 'yes', 'no', 'no', 'no', 'no', 4, 5, 2, 1, 1, 2, 16, '12', '11', 12),
('GP', 167, 0, 'M', 16, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'course', 'father', 1, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 4, 3, 5, 2, 4, 4, 4, '10', '10', 10),
('GP', 168, 0, 'F', 16, 'U', 'GT3', 'T', 4, 2, 'health', 'services', 'home', 'father', 1, 2, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 2, 3, 1, 1, 3, 0, '14', '15', 16),
('GP', 169, 0, 'F', 16, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 5, 1, 5, 1, 1, 4, 0, '6', '7', 0),
('GP', 170, 0, 'F', 16, 'U', 'GT3', 'T', 4, 4, 'health', 'health', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 2, 1, 1, 3, 0, '14', '14', 14),
('GP', 171, 0, 'M', 16, 'U', 'GT3', 'T', 3, 4, 'other', 'other', 'course', 'father', 3, 1, 2, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 3, 4, 5, 2, 4, 2, 0, '6', '5', 0),
('GP', 172, 0, 'M', 16, 'U', 'GT3', 'T', 1, 0, 'other', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 2, 1, 1, 3, 2, '13', '15', 16),
('GP', 173, 0, 'M', 17, 'U', 'LE3', 'T', 4, 4, 'teacher', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 1, 3, 5, 0, '13', '11', 10),
('GP', 174, 0, 'F', 16, 'U', 'GT3', 'T', 1, 3, 'at_home', 'services', 'home', 'mother', 1, 2, 3, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 4, 3, 5, 1, 1, 3, 0, '8', '7', 0),
('GP', 175, 0, 'F', 16, 'U', 'LE3', 'T', 3, 3, 'other', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 5, 1, 1, 4, 4, '10', '11', 9),
('GP', 176, 0, 'M', 17, 'U', 'LE3', 'T', 4, 3, 'teacher', 'other', 'course', 'mother', 2, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 4, 4, 4, 4, '10', '9', 9),
('GP', 177, 0, 'F', 16, 'U', 'GT3', 'T', 2, 2, 'services', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 3, 4, 4, 1, 4, 5, 2, '13', '13', 11),
('GP', 178, 0, 'M', 17, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'reputation', 'father', 1, 2, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 4, 3, 4, 1, 4, 4, 4, '6', '5', 6),
('GP', 179, 0, 'M', 16, 'R', 'GT3', 'T', 4, 2, 'teacher', 'services', 'other', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 3, 4, 3, 10, '10', '8', 9),
('GP', 180, 0, 'M', 17, 'U', 'GT3', 'T', 4, 3, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 2, 3, 1, 1, 2, 4, '10', '10', 11),
('GP', 181, 0, 'M', 16, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 4, 3, 2, 3, 3, 10, '9', '8', 8),
('GP', 182, 0, 'M', 16, 'U', 'GT3', 'T', 3, 3, 'services', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 2, 3, 1, 2, 3, 2, '12', '13', 12),
('GP', 183, 0, 'F', 17, 'U', 'GT3', 'T', 2, 4, 'services', 'services', 'reputation', 'father', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'no', 5, 4, 2, 2, 3, 5, 0, '16', '17', 17),
('GP', 184, 0, 'F', 17, 'U', 'LE3', 'T', 3, 3, 'other', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 3, 3, 2, 3, 1, 56, '9', '9', 8),
('GP', 185, 0, 'F', 16, 'U', 'GT3', 'T', 3, 2, 'other', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 1, 2, 2, 1, 2, 1, 14, '12', '13', 12),
('GP', 186, 0, 'M', 17, 'U', 'GT3', 'T', 3, 3, 'services', 'services', 'other', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 4, 2, 3, 4, 12, '12', '12', 11),
('GP', 187, 0, 'M', 16, 'U', 'GT3', 'T', 1, 2, 'services', 'services', 'other', 'mother', 1, 1, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 3, 3, 3, 1, 2, 3, 2, '11', '12', 11),
('GP', 188, 0, 'M', 16, 'U', 'LE3', 'T', 2, 1, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 2, 3, 1, 2, 5, 0, '15', '15', 15),
('GP', 189, 0, 'F', 17, 'U', 'GT3', 'A', 3, 3, 'health', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 3, 3, 3, 1, 3, 3, 6, '8', '7', 9),
('GP', 190, 0, 'M', 17, 'R', 'GT3', 'T', 1, 2, 'at_home', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 3, 1, 3, 1, 5, 3, 4, '8', '9', 10),
('GP', 191, 0, 'F', 16, 'U', 'GT3', 'T', 2, 3, 'services', 'services', 'course', 'mother', 1, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 2, 10, '11', '12', 13),
('GP', 192, 0, 'F', 17, 'U', 'GT3', 'T', 1, 1, 'at_home', 'services', 'course', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 3, 0, '8', '8', 9),
('GP', 193, 0, 'M', 17, 'U', 'GT3', 'T', 1, 2, 'at_home', 'services', 'other', 'other', 2, 2, 0, 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 4, 4, 4, 4, 5, 5, 12, '7', '8', 8),
('GP', 194, 0, 'M', 16, 'R', 'GT3', 'T', 3, 3, 'services', 'services', 'reputation', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 3, 4, 5, 8, '8', '9', 10),
('GP', 195, 0, 'M', 16, 'U', 'GT3', 'T', 2, 3, 'other', 'other', 'home', 'father', 2, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 3, 0, '13', '14', 14),
('GP', 196, 0, 'F', 17, 'U', 'LE3', 'T', 2, 4, 'services', 'services', 'course', 'father', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 2, 1, 1, 5, 0, '14', '15', 15),
('GP', 197, 0, 'M', 17, 'U', 'GT3', 'T', 4, 4, 'services', 'teacher', 'home', 'mother', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 2, 3, 1, 2, 5, 4, '17', '15', 16),
('GP', 198, 0, 'M', 16, 'R', 'LE3', 'T', 3, 3, 'teacher', 'other', 'home', 'father', 3, 1, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 3, 4, 3, 5, 3, 8, '9', '9', 10),
('GP', 199, 0, 'F', 17, 'U', 'GT3', 'T', 4, 4, 'services', 'teacher', 'home', 'mother', 2, 1, 1, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 2, 4, 2, 3, 2, 24, '18', '18', 18),
('GP', 200, 0, 'F', 16, 'U', 'LE3', 'T', 4, 4, 'teacher', 'teacher', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 5, 2, 1, 2, 3, 0, '9', '9', 10),
('GP', 201, 0, 'F', 16, 'U', 'GT3', 'T', 4, 3, 'health', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 5, 1, 5, 2, 2, '16', '16', 16),
('GP', 202, 0, 'F', 16, 'U', 'GT3', 'T', 2, 3, 'other', 'other', 'reputation', 'mother', 1, 2, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 4, 4, 3, 1, 3, 4, 6, '8', '10', 10),
('GP', 203, 0, 'F', 17, 'U', 'GT3', 'T', 1, 1, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'no', 'no', 4, 4, 4, 1, 3, 1, 4, '9', '9', 10),
('GP', 204, 0, 'F', 17, 'R', 'GT3', 'T', 2, 2, 'other', 'other', 'reputation', 'mother', 1, 1, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 3, 2, 1, 2, 3, 18, '7', '6', 6),
('GP', 205, 0, 'F', 16, 'R', 'GT3', 'T', 2, 2, 'services', 'services', 'reputation', 'mother', 2, 4, 0, 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 5, 3, 5, 1, 1, 5, 6, '10', '10', 11),
('GP', 206, 0, 'F', 17, 'U', 'GT3', 'T', 3, 4, 'at_home', 'services', 'home', 'mother', 1, 3, 1, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 3, 3, 4, 5, 28, '10', '9', 9),
('GP', 207, 0, 'F', 16, 'U', 'GT3', 'A', 3, 1, 'services', 'other', 'course', 'mother', 1, 2, 3, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 2, 3, 3, 2, 2, 4, 5, '7', '7', 7),
('GP', 208, 0, 'F', 16, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'other', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 1, 3, 2, 1, 1, 1, 10, '11', '12', 13),
('GP', 209, 0, 'F', 16, 'U', 'GT3', 'T', 1, 1, 'at_home', 'other', 'home', 'mother', 2, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 2, 1, 4, 5, 6, '9', '9', 10),
('GP', 210, 0, 'F', 17, 'R', 'GT3', 'T', 4, 3, 'teacher', 'other', 'reputation', 'mother', 2, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 2, 1, 1, 4, 6, '7', '7', 7),
('GP', 211, 0, 'F', 19, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'reputation', 'other', 1, 4, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 2, 3, 10, '8', '8', 8),
('GP', 212, 0, 'M', 17, 'U', 'LE3', 'T', 4, 4, 'services', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 3, 5, 4, 5, 3, 13, '12', '12', 13),
('GP', 213, 0, 'F', 16, 'U', 'GT3', 'A', 2, 2, 'other', 'other', 'reputation', 'mother', 1, 2, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 4, 1, 1, 4, 0, '12', '13', 14),
('GP', 214, 0, 'M', 18, 'U', 'GT3', 'T', 2, 2, 'services', 'other', 'home', 'mother', 1, 2, 1, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 2, 4, 5, 15, '6', '7', 8),
('GP', 215, 0, 'F', 17, 'R', 'LE3', 'T', 4, 4, 'services', 'other', 'other', 'mother', 1, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 5, 2, 1, 1, 2, 3, 12, '8', '10', 10),
('GP', 216, 0, 'F', 17, 'U', 'LE3', 'T', 3, 2, 'other', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 1, 3, 1, 2, '14', '15', 15),
('GP', 217, 0, 'F', 17, 'U', 'GT3', 'T', 4, 3, 'other', 'other', 'reputation', 'mother', 1, 2, 2, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 3, 4, 5, 2, 4, 1, 22, '6', '6', 4),
('GP', 218, 0, 'M', 18, 'U', 'LE3', 'T', 3, 3, 'services', 'health', 'home', 'father', 1, 2, 1, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 2, 4, 2, 4, 4, 13, '6', '6', 8),
('GP', 219, 0, 'F', 17, 'U', 'GT3', 'T', 2, 3, 'at_home', 'other', 'home', 'father', 2, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 3, 3, 3, 1, 4, 3, 3, '7', '7', 8),
('GP', 220, 0, 'F', 17, 'U', 'GT3', 'T', 2, 2, 'at_home', 'at_home', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 4, 4, '9', '10', 10),
('GP', 221, 0, 'F', 17, 'R', 'GT3', 'T', 2, 1, 'at_home', 'services', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 5, 1, 2, 5, 2, '6', '6', 6),
('GP', 222, 0, 'F', 17, 'U', 'GT3', 'T', 1, 1, 'at_home', 'other', 'reputation', 'mother', 1, 3, 1, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 4, 3, 4, 1, 1, 5, 0, '6', '5', 0),
('GP', 223, 0, 'F', 16, 'U', 'GT3', 'T', 2, 3, 'services', 'teacher', 'other', 'mother', 1, 2, 0, 'yes', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 2, 3, 1, 1, 1, 3, 2, '16', '16', 17),
('GP', 224, 0, 'M', 18, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'home', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 3, 5, 5, 4, 0, '12', '13', 13),
('GP', 225, 0, 'F', 16, 'U', 'GT3', 'T', 4, 4, 'teacher', 'services', 'home', 'mother', 1, 3, 0, 'no', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 3, 2, 1, 1, 5, 0, '13', '13', 14),
('GP', 226, 0, 'F', 18, 'R', 'GT3', 'T', 3, 1, 'other', 'other', 'reputation', 'mother', 1, 2, 1, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 3, 3, 1, 1, 4, 16, '9', '8', 7),
('GP', 227, 0, 'F', 17, 'U', 'GT3', 'T', 3, 2, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 3, 4, 1, 3, 3, 10, '16', '15', 15),
('GP', 228, 0, 'M', 17, 'U', 'LE3', 'T', 2, 3, 'services', 'services', 'reputation', 'father', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 5, 3, 3, 1, 3, 3, 2, '12', '11', 12),
('GP', 229, 0, 'M', 18, 'U', 'LE3', 'T', 2, 1, 'at_home', 'other', 'course', 'mother', 4, 2, 0, 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 2, 4, 5, 3, 14, '10', '8', 9),
('GP', 230, 0, 'F', 17, 'U', 'GT3', 'A', 2, 1, 'other', 'other', 'course', 'mother', 2, 3, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 3, 2, 3, 1, 2, 3, 10, '12', '10', 12),
('GP', 231, 0, 'F', 17, 'U', 'LE3', 'T', 4, 3, 'health', 'other', 'reputation', 'father', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 3, 2, 3, 1, 2, 3, 14, '13', '13', 14),
('GP', 232, 0, 'M', 17, 'R', 'GT3', 'T', 2, 2, 'other', 'other', 'course', 'father', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 5, 2, 1, 1, 1, 4, '11', '11', 11),
('GP', 233, 0, 'M', 17, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'reputation', 'mother', 1, 2, 0, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 5, 5, 1, 3, 2, 14, '11', '9', 9),
('GP', 234, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'health', 'other', 'reputation', 'father', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 4, 2, 4, 1, 2, '14', '13', 13),
('GP', 235, 0, 'M', 16, 'U', 'LE3', 'T', 1, 1, 'other', 'other', 'home', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 4, 2, 1, 1, 5, 18, '9', '7', 6),
('GP', 236, 0, 'M', 16, 'U', 'GT3', 'T', 3, 2, 'at_home', 'other', 'reputation', 'mother', 2, 3, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 3, 3, 1, 3, 2, 10, '11', '9', 10),
('GP', 237, 0, 'M', 17, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'home', 'father', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 4, 4, 2, 5, 5, 4, 4, '14', '13', 13),
('GP', 238, 0, 'F', 16, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'home', 'mother', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 5, 2, 1, 1, 5, 20, '13', '12', 12),
('GP', 239, 0, 'F', 17, 'R', 'GT3', 'T', 2, 1, 'at_home', 'services', 'course', 'mother', 3, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 2, 1, 1, 1, 1, 3, 2, '13', '11', 11),
('GP', 240, 0, 'M', 18, 'U', 'GT3', 'T', 2, 2, 'other', 'services', 'reputation', 'father', 1, 2, 1, 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 5, 5, 4, 3, 5, 2, 0, '7', '7', 0),
('GP', 241, 0, 'M', 17, 'U', 'LE3', 'T', 4, 3, 'health', 'other', 'course', 'mother', 2, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 2, 5, 5, 1, 4, 5, 14, '12', '12', 12),
('GP', 242, 0, 'M', 17, 'R', 'LE3', 'A', 4, 4, 'teacher', 'other', 'course', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 3, 2, 3, 4, 2, '10', '11', 12),
('GP', 243, 0, 'M', 16, 'U', 'LE3', 'T', 4, 3, 'teacher', 'other', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 4, 5, 1, 1, 3, 0, '6', '0', 0),
('GP', 244, 0, 'M', 16, 'U', 'GT3', 'T', 4, 4, 'services', 'services', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 2, 1, 2, 5, 0, '13', '12', 12),
('GP', 245, 0, 'F', 18, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'course', 'other', 2, 3, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 4, 4, 4, 1, 1, 3, 0, '7', '0', 0),
('GP', 246, 0, 'M', 16, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'course', 'mother', 3, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 4, 6, '18', '18', 18),
('GP', 247, 0, 'M', 17, 'U', 'GT3', 'T', 2, 3, 'other', 'other', 'course', 'father', 2, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 2, 2, 1, 1, 2, 4, '12', '12', 13),
('GP', 248, 0, 'M', 22, 'U', 'GT3', 'T', 3, 1, 'services', 'services', 'other', 'mother', 1, 1, 3, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 5, 4, 5, 5, 5, 1, 16, '6', '8', 8),
('GP', 249, 0, 'M', 18, 'R', 'LE3', 'T', 3, 3, 'other', 'services', 'course', 'mother', 1, 2, 1, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 1, 3, 5, 8, '3', '5', 5),
('GP', 250, 0, 'M', 16, 'U', 'GT3', 'T', 0, 2, 'other', 'other', 'other', 'mother', 1, 1, 0, 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 4, 3, 2, 2, 4, 5, 0, '13', '15', 15),
('GP', 251, 0, 'M', 18, 'U', 'GT3', 'T', 3, 2, 'services', 'other', 'course', 'mother', 2, 1, 1, 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 4, 4, 5, 2, 4, 5, 0, '6', '8', 8),
('GP', 252, 0, 'M', 16, 'U', 'GT3', 'T', 3, 3, 'at_home', 'other', 'reputation', 'other', 3, 2, 0, 'yes', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 5, 3, 3, 1, 3, 2, 6, '7', '10', 10),
('GP', 253, 0, 'M', 18, 'U', 'GT3', 'T', 2, 1, 'services', 'services', 'other', 'mother', 1, 1, 1, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 3, 2, 5, 2, 5, 5, 4, '6', '9', 8),
('GP', 254, 0, 'M', 16, 'R', 'GT3', 'T', 2, 1, 'other', 'other', 'course', 'mother', 2, 1, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 3, 3, 2, 1, 3, 3, 0, '8', '9', 8),
('GP', 255, 0, 'M', 17, 'R', 'GT3', 'T', 2, 1, 'other', 'other', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 4, 4, 2, 2, 4, 5, 0, '8', '12', 12),
('GP', 256, 0, 'M', 17, 'U', 'LE3', 'T', 1, 1, 'health', 'other', 'course', 'mother', 2, 1, 1, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 1, 2, 5, 2, '7', '9', 8),
('GP', 257, 0, 'F', 17, 'U', 'LE3', 'T', 4, 2, 'teacher', 'services', 'reputation', 'mother', 1, 4, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 3, 1, 1, 4, 6, '14', '12', 13),
('GP', 258, 0, 'M', 19, 'U', 'LE3', 'A', 4, 3, 'services', 'at_home', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 1, 1, 1, 1, 12, '11', '11', 11),
('GP', 259, 0, 'M', 18, 'U', 'GT3', 'T', 2, 1, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 2, 4, 1, 2, 4, 8, '15', '14', 14),
('GP', 260, 0, 'F', 17, 'U', 'LE3', 'T', 2, 2, 'services', 'services', 'course', 'father', 1, 4, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 3, 4, 1, 1, 1, 2, 0, '10', '9', 0),
('GP', 261, 0, 'F', 18, 'U', 'GT3', 'T', 4, 3, 'services', 'other', 'home', 'father', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 3, 1, 2, 1, 3, 2, 21, '17', '18', 18),
('GP', 262, 0, 'M', 18, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'no', 4, 3, 2, 1, 1, 3, 2, '8', '8', 8),
('GP', 263, 0, 'M', 18, 'R', 'GT3', 'T', 3, 2, 'other', 'other', 'course', 'mother', 1, 3, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 5, 3, 2, 1, 1, 3, 1, '13', '12', 12),
('GP', 264, 0, 'F', 17, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'home', 'mother', 1, 3, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'no', 3, 2, 3, 1, 1, 4, 4, '10', '9', 9),
('GP', 265, 0, 'F', 18, 'U', 'GT3', 'T', 2, 2, 'at_home', 'services', 'home', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 1, 1, 3, 0, '9', '10', 0),
('GP', 266, 0, 'M', 18, 'R', 'LE3', 'A', 3, 4, 'other', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 5, 3, 4, 1, 13, '17', '17', 17),
('GP', 267, 0, 'M', 17, 'U', 'GT3', 'T', 3, 1, 'services', 'other', 'other', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 4, 4, 3, 4, 5, 2, '9', '9', 10),
('GP', 268, 0, 'F', 18, 'R', 'GT3', 'T', 4, 4, 'teacher', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 4, 2, 2, 4, 8, '12', '10', 11),
('GP', 269, 0, 'M', 18, 'U', 'GT3', 'T', 4, 2, 'health', 'other', 'reputation', 'father', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 5, 4, 5, 1, 3, 5, 10, '10', '9', 10);
INSERT INTO `students_subjects` (`school`, `_id`, `subject_id`, `sex`, `age`, `address`, `famsize`, `Pstatus`, `Medu`, `Fedu`, `Mjob`, `Fjob`, `reason`, `guardian`, `traveltime`, `studytime`, `failures`, `schoolsup`, `famsup`, `paid`, `activities`, `nursery`, `higher`, `internet`, `romantic`, `famrel`, `freetime`, `goout`, `Dalc`, `Walc`, `health`, `absences`, `G1`, `G2`, `G3`) VALUES
('GP', 270, 0, 'F', 18, 'R', 'GT3', 'T', 2, 1, 'other', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 4, 3, 5, 1, 2, 3, 0, '6', '0', 0),
('GP', 271, 0, 'F', 19, 'U', 'GT3', 'T', 3, 3, 'other', 'services', 'home', 'other', 1, 2, 2, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 5, 3, 3, 5, 15, '9', '9', 9),
('GP', 272, 0, 'F', 18, 'U', 'GT3', 'T', 2, 3, 'other', 'services', 'reputation', 'father', 1, 4, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 5, 5, 1, 3, 2, 4, '15', '14', 14),
('GP', 273, 0, 'F', 18, 'U', 'LE3', 'T', 1, 1, 'other', 'other', 'home', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'no', 'no', 4, 4, 3, 1, 1, 3, 2, '11', '11', 11),
('GP', 274, 0, 'M', 17, 'R', 'GT3', 'T', 1, 2, 'at_home', 'at_home', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'no', 'yes', 3, 5, 2, 2, 2, 1, 2, '15', '14', 14),
('GP', 275, 0, 'F', 17, 'U', 'GT3', 'T', 2, 4, 'at_home', 'health', 'reputation', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 1, 1, 1, 2, '10', '10', 10),
('GP', 276, 0, 'F', 17, 'U', 'LE3', 'T', 2, 2, 'services', 'other', 'course', 'mother', 2, 2, 0, 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 4, 2, 3, 5, 6, '12', '12', 12),
('GP', 277, 0, 'F', 18, 'R', 'GT3', 'A', 3, 2, 'other', 'services', 'home', 'mother', 2, 2, 0, 'no', 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 4, 1, 1, 1, 1, 5, 75, '10', '9', 9),
('GP', 278, 0, 'M', 18, 'U', 'GT3', 'T', 4, 4, 'teacher', 'services', 'home', 'mother', 2, 1, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 2, 4, 1, 4, 3, 22, '9', '9', 9),
('GP', 279, 0, 'F', 18, 'U', 'GT3', 'T', 4, 4, 'health', 'health', 'reputation', 'father', 1, 2, 1, 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 2, 4, 4, 1, 1, 4, 15, '9', '8', 8),
('GP', 280, 0, 'M', 18, 'U', 'LE3', 'T', 4, 3, 'teacher', 'services', 'course', 'mother', 2, 1, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 3, 1, 2, 1, 8, '10', '11', 10),
('GP', 281, 0, 'M', 17, 'U', 'LE3', 'A', 4, 1, 'services', 'other', 'home', 'mother', 2, 1, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 5, 4, 2, 4, 5, 30, '8', '8', 8),
('GP', 282, 0, 'M', 17, 'U', 'LE3', 'A', 3, 2, 'teacher', 'services', 'home', 'mother', 1, 1, 1, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 3, 4, 3, 19, '11', '9', 10),
('GP', 283, 0, 'F', 18, 'R', 'LE3', 'T', 1, 1, 'at_home', 'other', 'reputation', 'mother', 2, 4, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 'no', 5, 2, 2, 1, 1, 3, 1, '12', '12', 12),
('GP', 284, 0, 'F', 18, 'U', 'GT3', 'T', 1, 1, 'other', 'other', 'home', 'mother', 2, 2, 0, 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 1, 1, 4, 4, '8', '9', 10),
('GP', 285, 0, 'F', 17, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 5, 4, 5, 1, 2, 5, 4, '10', '9', 11),
('GP', 286, 0, 'M', 17, 'U', 'GT3', 'T', 1, 1, 'other', 'other', 'reputation', 'father', 1, 2, 0, 'no', 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 4, 3, 3, 1, 2, 4, 2, '12', '10', 11),
('GP', 287, 0, 'F', 18, 'U', 'GT3', 'T', 2, 2, 'at_home', 'at_home', 'other', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 2, 2, 5, '18', '18', 19),
('GP', 288, 0, 'F', 17, 'U', 'GT3', 'T', 1, 1, 'services', 'teacher', 'reputation', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 3, 6, '13', '12', 12),
('GP', 289, 0, 'M', 18, 'U', 'GT3', 'T', 2, 1, 'services', 'services', 'reputation', 'mother', 1, 3, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 2, 4, 1, 3, 2, 6, '15', '14', 14),
('GP', 290, 0, 'M', 18, 'U', 'LE3', 'A', 4, 4, 'teacher', 'teacher', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 3, 1, 1, 2, 9, '15', '13', 15),
('GP', 291, 0, 'M', 18, 'U', 'GT3', 'T', 4, 2, 'teacher', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 2, 1, 4, 5, 11, '12', '11', 11),
('GP', 292, 0, 'F', 17, 'U', 'GT3', 'T', 4, 3, 'health', 'services', 'reputation', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 2, 2, 1, 2, 3, 0, '15', '15', 15),
('GP', 293, 0, 'F', 18, 'U', 'LE3', 'T', 2, 1, 'services', 'at_home', 'reputation', 'mother', 1, 2, 1, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 5, 4, 3, 1, 1, 5, 12, '12', '12', 13),
('GP', 294, 0, 'F', 17, 'R', 'LE3', 'T', 3, 1, 'services', 'other', 'reputation', 'mother', 2, 4, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 3, 1, 2, 1, 1, 3, 6, '18', '18', 18),
('GP', 295, 0, 'M', 18, 'R', 'LE3', 'T', 3, 2, 'services', 'other', 'reputation', 'mother', 2, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 2, 1, 1, 4, 8, '14', '13', 14),
('GP', 296, 0, 'M', 17, 'U', 'GT3', 'T', 3, 3, 'health', 'other', 'home', 'mother', 1, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 3, 1, 3, 5, 4, '14', '12', 11),
('GP', 297, 0, 'F', 19, 'U', 'GT3', 'T', 4, 4, 'health', 'other', 'reputation', 'other', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 2, 3, 4, 2, 3, 2, 0, '10', '9', 0),
('GP', 298, 0, 'F', 18, 'U', 'LE3', 'T', 4, 3, 'other', 'other', 'home', 'other', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 5, 1, 2, 2, 10, '10', '8', 8),
('GP', 299, 0, 'F', 18, 'U', 'GT3', 'T', 4, 3, 'other', 'other', 'reputation', 'father', 1, 4, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 3, 0, '14', '13', 14),
('GP', 300, 0, 'M', 18, 'U', 'LE3', 'T', 4, 4, 'teacher', 'teacher', 'home', 'mother', 1, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 1, 4, 2, 2, 2, 1, 5, '16', '15', 16),
('GP', 301, 0, 'F', 18, 'U', 'LE3', 'A', 4, 4, 'health', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 2, 4, 1, 1, 4, 14, '12', '10', 11),
('GP', 302, 0, 'M', 17, 'U', 'LE3', 'T', 4, 4, 'other', 'teacher', 'home', 'father', 2, 1, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 1, 1, 2, 2, 5, 0, '11', '11', 10),
('GP', 303, 0, 'F', 17, 'U', 'GT3', 'T', 4, 2, 'other', 'other', 'reputation', 'mother', 2, 3, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 1, 3, 0, '15', '12', 14),
('GP', 304, 0, 'F', 17, 'U', 'GT3', 'T', 3, 2, 'health', 'health', 'reputation', 'father', 1, 4, 0, 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 5, 2, 2, 1, 2, 5, 0, '17', '17', 18),
('GP', 305, 0, 'M', 19, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'home', 'other', 1, 2, 1, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 4, 1, 1, 3, 20, '15', '14', 13),
('GP', 306, 0, 'F', 18, 'U', 'GT3', 'T', 2, 4, 'services', 'at_home', 'reputation', 'other', 1, 2, 1, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 3, 1, 1, 3, 8, '14', '12', 12),
('GP', 307, 0, 'M', 20, 'U', 'GT3', 'A', 3, 2, 'services', 'other', 'course', 'other', 1, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 5, 5, 3, 1, 1, 5, 0, '17', '18', 18),
('GP', 308, 0, 'M', 19, 'U', 'GT3', 'T', 4, 4, 'teacher', 'services', 'reputation', 'other', 2, 1, 1, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 3, 4, 1, 1, 4, 38, '8', '9', 8),
('GP', 309, 0, 'M', 19, 'R', 'GT3', 'T', 3, 3, 'other', 'services', 'reputation', 'father', 1, 2, 1, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 4, 5, 3, 1, 2, 5, 0, '15', '12', 12),
('GP', 310, 0, 'F', 19, 'U', 'LE3', 'T', 1, 1, 'at_home', 'other', 'reputation', 'other', 1, 2, 1, 'yes', 'yes', 'no', 'yes', 'no', 'yes', 'yes', 'no', 4, 4, 3, 1, 3, 3, 18, '12', '10', 10),
('GP', 311, 0, 'F', 19, 'U', 'LE3', 'T', 1, 2, 'services', 'services', 'home', 'other', 1, 2, 1, 'no', 'no', 'no', 'yes', 'no', 'yes', 'no', 'yes', 4, 2, 4, 2, 2, 3, 0, '9', '9', 0),
('GP', 312, 0, 'F', 19, 'U', 'GT3', 'T', 2, 1, 'at_home', 'other', 'other', 'other', 3, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'no', 'yes', 'yes', 3, 4, 1, 1, 1, 2, 20, '14', '12', 13),
('GP', 313, 0, 'M', 19, 'U', 'GT3', 'T', 1, 2, 'other', 'services', 'course', 'other', 1, 2, 1, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 4, 5, 2, 2, 2, 4, 3, '13', '11', 11),
('GP', 314, 0, 'F', 19, 'U', 'LE3', 'T', 3, 2, 'services', 'other', 'reputation', 'other', 2, 2, 1, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 4, 2, 2, 1, 2, 1, 22, '13', '10', 11),
('GP', 315, 0, 'F', 19, 'U', 'GT3', 'T', 1, 1, 'at_home', 'health', 'home', 'other', 1, 3, 2, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 4, 1, 2, 1, 1, 3, 14, '15', '13', 13),
('GP', 316, 0, 'F', 19, 'R', 'GT3', 'T', 2, 3, 'other', 'other', 'reputation', 'other', 1, 3, 1, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 1, 2, 1, 1, 3, 40, '13', '11', 11),
('GP', 317, 0, 'F', 18, 'U', 'GT3', 'T', 2, 1, 'services', 'other', 'course', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 2, 1, 0, '8', '8', 0),
('GP', 318, 0, 'F', 18, 'U', 'GT3', 'T', 4, 3, 'other', 'other', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 4, 1, 1, 5, 9, '9', '10', 9),
('GP', 319, 0, 'F', 17, 'R', 'GT3', 'T', 3, 4, 'at_home', 'services', 'course', 'father', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 4, 3, 4, 2, 5, 5, 0, '11', '11', 10),
('GP', 320, 0, 'F', 18, 'U', 'GT3', 'T', 4, 4, 'teacher', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 3, 3, 5, 2, '11', '11', 11),
('GP', 321, 0, 'F', 17, 'U', 'GT3', 'A', 4, 3, 'services', 'services', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 2, 2, 1, 2, 5, 23, '13', '13', 13),
('GP', 322, 0, 'F', 17, 'U', 'GT3', 'T', 2, 2, 'other', 'other', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'yes', 4, 2, 2, 1, 1, 3, 12, '11', '9', 9),
('GP', 323, 0, 'F', 17, 'R', 'LE3', 'T', 2, 2, 'services', 'services', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 3, 3, 2, 2, 2, 3, 3, '11', '11', 11),
('GP', 324, 0, 'F', 17, 'U', 'GT3', 'T', 3, 1, 'services', 'services', 'course', 'father', 1, 3, 0, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 3, 4, 3, 2, 3, 5, 1, '12', '14', 15),
('GP', 325, 0, 'F', 17, 'U', 'LE3', 'T', 0, 2, 'at_home', 'at_home', 'home', 'father', 2, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 3, 3, 2, 3, 2, 0, '16', '15', 15),
('GP', 326, 0, 'M', 18, 'U', 'GT3', 'T', 4, 4, 'other', 'other', 'course', 'mother', 1, 3, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 2, 3, 3, '9', '12', 11),
('GP', 327, 0, 'M', 17, 'U', 'GT3', 'T', 3, 3, 'other', 'services', 'reputation', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 4, 3, 5, 3, 5, 5, 3, '14', '15', 16),
('GP', 328, 0, 'M', 17, 'R', 'GT3', 'T', 2, 2, 'services', 'other', 'course', 'mother', 4, 1, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 5, 5, 5, 4, 8, '11', '10', 10),
('GP', 329, 0, 'F', 17, 'U', 'GT3', 'T', 4, 4, 'teacher', 'services', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 1, 3, 4, 7, '10', '9', 9),
('GP', 330, 0, 'F', 17, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'course', 'mother', 2, 3, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 4, 3, 3, 1, 2, 4, 4, '14', '14', 14),
('GP', 331, 0, 'M', 18, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'course', 'mother', 1, 4, 0, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 5, 5, 2, 4, 5, 2, '9', '8', 8),
('GP', 332, 0, 'F', 17, 'R', 'GT3', 'T', 2, 4, 'at_home', 'other', 'course', 'father', 1, 3, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 4, 3, 1, 1, 5, 7, '12', '14', 14),
('GP', 333, 0, 'F', 18, 'U', 'GT3', 'T', 3, 3, 'services', 'services', 'home', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 5, 3, 4, 1, 1, 4, 0, '7', '0', 0),
('GP', 334, 0, 'F', 18, 'U', 'LE3', 'T', 2, 2, 'other', 'other', 'home', 'other', 1, 2, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 4, 3, 3, 1, 1, 2, 0, '8', '8', 0),
('GP', 335, 0, 'F', 18, 'R', 'GT3', 'T', 2, 2, 'at_home', 'other', 'course', 'mother', 2, 4, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 4, 4, 4, 1, 1, 4, 0, '10', '9', 0),
('GP', 336, 0, 'F', 17, 'U', 'GT3', 'T', 3, 4, 'services', 'other', 'course', 'mother', 1, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 5, 1, 3, 5, 16, '16', '15', 15),
('GP', 337, 0, 'F', 19, 'R', 'GT3', 'A', 3, 1, 'services', 'at_home', 'home', 'other', 1, 3, 1, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'no', 5, 4, 3, 1, 2, 5, 12, '14', '13', 13),
('GP', 338, 0, 'F', 17, 'U', 'GT3', 'T', 3, 2, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 3, 2, 2, 3, 2, 0, '7', '8', 0),
('GP', 339, 0, 'F', 18, 'U', 'LE3', 'T', 3, 3, 'services', 'services', 'home', 'mother', 1, 4, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 3, 3, 1, 1, 1, 7, '16', '15', 17),
('GP', 340, 0, 'F', 17, 'R', 'GT3', 'A', 3, 2, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 3, 2, 4, '9', '10', 10),
('GP', 341, 0, 'F', 19, 'U', 'GT3', 'T', 2, 1, 'services', 'services', 'home', 'other', 1, 3, 1, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 4, 1, 3, 3, 4, '11', '12', 11),
('GP', 342, 0, 'M', 18, 'U', 'GT3', 'T', 4, 4, 'teacher', 'services', 'home', 'father', 1, 2, 1, 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 2, 2, 2, 0, '10', '10', 0),
('GP', 343, 0, 'M', 18, 'U', 'LE3', 'T', 3, 4, 'services', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 3, 3, 1, 3, 5, 11, '16', '15', 15),
('GP', 344, 0, 'F', 17, 'U', 'GT3', 'A', 2, 2, 'at_home', 'at_home', 'home', 'father', 1, 2, 1, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 3, 3, 1, 1, 2, 4, 0, '9', '8', 0),
('GP', 345, 0, 'F', 18, 'U', 'GT3', 'T', 2, 3, 'at_home', 'other', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 2, 3, 4, '11', '10', 10),
('GP', 346, 0, 'F', 18, 'U', 'GT3', 'T', 3, 2, 'other', 'services', 'other', 'mother', 1, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 5, 4, 3, 2, 3, 1, 7, '13', '13', 14),
('GP', 347, 0, 'M', 18, 'R', 'GT3', 'T', 4, 3, 'teacher', 'services', 'course', 'mother', 1, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 5, 3, 2, 1, 2, 4, 9, '16', '15', 16),
('GP', 348, 0, 'M', 18, 'U', 'GT3', 'T', 4, 3, 'teacher', 'other', 'course', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 4, 5, 2, 3, 5, 0, '10', '10', 9),
('GP', 349, 0, 'F', 17, 'U', 'GT3', 'T', 4, 3, 'health', 'other', 'reputation', 'mother', 1, 3, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 3, 1, 3, 4, 0, '13', '15', 15),
('MS', 350, 0, 'M', 18, 'R', 'GT3', 'T', 3, 2, 'other', 'other', 'course', 'mother', 2, 1, 1, 'no', 'yes', 'no', 'no', 'no', 'yes', 'yes', 'no', 2, 5, 5, 5, 5, 5, 10, '11', '13', 13),
('MS', 351, 0, 'M', 19, 'R', 'GT3', 'T', 1, 1, 'other', 'services', 'home', 'other', 3, 2, 3, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 3, 3, 2, 8, '8', '7', 8),
('MS', 352, 0, 'M', 17, 'U', 'GT3', 'T', 3, 3, 'health', 'other', 'course', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 5, 4, 2, 3, 3, 2, '13', '13', 13),
('MS', 353, 0, 'M', 18, 'U', 'LE3', 'T', 1, 3, 'at_home', 'services', 'course', 'mother', 1, 1, 1, 'no', 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 4, 3, 3, 2, 3, 3, 7, '8', '7', 8),
('MS', 354, 0, 'M', 19, 'R', 'GT3', 'T', 1, 1, 'other', 'other', 'home', 'other', 3, 1, 1, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 4, 4, 3, 3, 5, 4, '8', '8', 8),
('MS', 355, 0, 'M', 17, 'R', 'GT3', 'T', 4, 3, 'services', 'other', 'home', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 4, 5, 5, 1, 3, 2, 4, '13', '11', 11),
('MS', 356, 0, 'F', 18, 'U', 'GT3', 'T', 3, 3, 'services', 'services', 'course', 'father', 1, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'no', 'yes', 5, 3, 4, 1, 1, 5, 0, '10', '9', 9),
('MS', 357, 0, 'F', 17, 'R', 'GT3', 'T', 4, 4, 'teacher', 'services', 'other', 'father', 2, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 4, 3, 3, 1, 2, 5, 4, '12', '13', 13),
('MS', 358, 0, 'F', 17, 'U', 'LE3', 'A', 3, 2, 'services', 'other', 'reputation', 'mother', 2, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 1, 2, 3, 1, 2, 5, 2, '12', '12', 11),
('MS', 359, 0, 'M', 18, 'U', 'LE3', 'T', 1, 1, 'other', 'services', 'home', 'father', 2, 1, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 3, 3, 2, 1, 2, 3, 4, '10', '10', 10),
('MS', 360, 0, 'F', 18, 'U', 'LE3', 'T', 1, 1, 'at_home', 'services', 'course', 'father', 2, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 3, 2, 1, 1, 4, 0, '18', '16', 16),
('MS', 361, 0, 'F', 18, 'R', 'LE3', 'A', 1, 4, 'at_home', 'other', 'course', 'mother', 3, 2, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'yes', 4, 3, 4, 1, 4, 5, 0, '13', '13', 13),
('MS', 362, 0, 'M', 18, 'R', 'LE3', 'T', 1, 1, 'at_home', 'other', 'other', 'mother', 2, 2, 1, 'no', 'no', 'no', 'yes', 'no', 'no', 'no', 'no', 4, 4, 3, 2, 3, 5, 2, '13', '12', 12),
('MS', 363, 0, 'F', 18, 'U', 'GT3', 'T', 3, 3, 'services', 'services', 'other', 'mother', 2, 2, 0, 'no', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 4, 3, 2, 1, 3, 3, 0, '11', '11', 10),
('MS', 364, 0, 'F', 17, 'U', 'LE3', 'T', 4, 4, 'at_home', 'at_home', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 2, 3, 4, 1, 1, 1, 0, '16', '15', 15),
('MS', 365, 0, 'F', 17, 'R', 'GT3', 'T', 1, 2, 'other', 'services', 'course', 'father', 2, 2, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 3, 2, 2, 1, 2, 3, 0, '12', '11', 12),
('MS', 366, 0, 'M', 18, 'R', 'GT3', 'T', 1, 3, 'at_home', 'other', 'course', 'mother', 2, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 3, 3, 4, 2, 4, 3, 4, '10', '10', 10),
('MS', 367, 0, 'M', 18, 'U', 'LE3', 'T', 4, 4, 'teacher', 'services', 'other', 'mother', 2, 3, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 2, 2, 2, 2, 5, 0, '13', '13', 13),
('MS', 368, 0, 'F', 17, 'R', 'GT3', 'T', 1, 1, 'other', 'services', 'reputation', 'mother', 3, 1, 1, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 2, 1, 1, 2, 1, 0, '7', '6', 0),
('MS', 369, 0, 'F', 18, 'U', 'GT3', 'T', 2, 3, 'at_home', 'services', 'course', 'father', 2, 1, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 5, 2, 3, 1, 2, 4, 0, '11', '10', 10),
('MS', 370, 0, 'F', 18, 'R', 'GT3', 'T', 4, 4, 'other', 'teacher', 'other', 'father', 3, 2, 0, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 3, 2, 2, 4, 2, 5, 10, '14', '12', 11),
('MS', 371, 0, 'F', 19, 'U', 'LE3', 'T', 3, 2, 'services', 'services', 'home', 'other', 2, 2, 2, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 3, 2, 2, 1, 1, 3, 4, '7', '7', 9),
('MS', 372, 0, 'M', 18, 'R', 'LE3', 'T', 1, 2, 'at_home', 'services', 'other', 'father', 3, 1, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 4, 3, 3, 2, 3, 3, 3, '14', '12', 12),
('MS', 373, 0, 'F', 17, 'U', 'GT3', 'T', 2, 2, 'other', 'at_home', 'home', 'mother', 1, 3, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'yes', 3, 4, 3, 1, 1, 3, 8, '13', '11', 11),
('MS', 374, 0, 'F', 17, 'R', 'GT3', 'T', 1, 2, 'other', 'other', 'course', 'mother', 1, 1, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 3, 5, 5, 1, 3, 1, 14, '6', '5', 5),
('MS', 375, 0, 'F', 18, 'R', 'LE3', 'T', 4, 4, 'other', 'other', 'reputation', 'mother', 2, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 5, 4, 4, 1, 1, 1, 0, '19', '18', 19),
('MS', 376, 0, 'F', 18, 'R', 'GT3', 'T', 1, 1, 'other', 'other', 'home', 'mother', 4, 3, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 2, 1, 2, 4, 2, '8', '8', 10),
('MS', 377, 0, 'F', 20, 'U', 'GT3', 'T', 4, 2, 'health', 'other', 'course', 'other', 2, 3, 2, 'no', 'yes', 'yes', 'no', 'no', 'yes', 'yes', 'yes', 5, 4, 3, 1, 1, 3, 4, '15', '14', 15),
('MS', 378, 0, 'F', 18, 'R', 'LE3', 'T', 4, 4, 'teacher', 'services', 'course', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'no', 5, 4, 3, 3, 4, 2, 4, '8', '9', 10),
('MS', 379, 0, 'F', 18, 'U', 'GT3', 'T', 3, 3, 'other', 'other', 'home', 'mother', 1, 2, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 'yes', 4, 1, 3, 1, 2, 1, 0, '15', '15', 15),
('MS', 380, 0, 'F', 17, 'R', 'GT3', 'T', 3, 1, 'at_home', 'other', 'reputation', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 4, 5, 4, 2, 3, 1, 17, '10', '10', 10),
('MS', 381, 0, 'M', 18, 'U', 'GT3', 'T', 4, 4, 'teacher', 'teacher', 'home', 'father', 1, 2, 0, 'no', 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 3, 2, 4, 1, 4, 2, 4, '15', '14', 14),
('MS', 382, 0, 'M', 18, 'R', 'GT3', 'T', 2, 1, 'other', 'other', 'other', 'mother', 2, 1, 0, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'yes', 4, 4, 3, 1, 3, 5, 5, '7', '6', 7),
('MS', 383, 0, 'M', 17, 'U', 'GT3', 'T', 2, 3, 'other', 'services', 'home', 'father', 2, 2, 0, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'yes', 'no', 4, 4, 3, 1, 1, 3, 2, '11', '11', 10),
('MS', 384, 0, 'M', 19, 'R', 'GT3', 'T', 1, 1, 'other', 'services', 'other', 'mother', 2, 1, 1, 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 'no', 4, 3, 2, 1, 3, 5, 0, '6', '5', 0),
('MS', 385, 0, 'M', 18, 'R', 'GT3', 'T', 4, 2, 'other', 'other', 'home', 'father', 2, 1, 1, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'no', 5, 4, 3, 4, 3, 3, 14, '6', '5', 5),
('MS', 386, 0, 'F', 18, 'R', 'GT3', 'T', 2, 2, 'at_home', 'other', 'other', 'mother', 2, 3, 0, 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 'no', 5, 3, 3, 1, 3, 4, 2, '10', '9', 10),
('MS', 387, 0, 'F', 18, 'R', 'GT3', 'T', 4, 4, 'teacher', 'at_home', 'reputation', 'mother', 3, 1, 0, 'no', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 'yes', 4, 4, 3, 2, 2, 5, 7, '6', '5', 6),
('MS', 388, 0, 'F', 19, 'R', 'GT3', 'T', 2, 3, 'services', 'other', 'course', 'mother', 1, 3, 1, 'no', 'no', 'no', 'yes', 'no', 'yes', 'yes', 'no', 5, 4, 2, 1, 2, 5, 0, '7', '5', 0),
('MS', 389, 0, 'F', 18, 'U', 'LE3', 'T', 3, 1, 'teacher', 'services', 'course', 'mother', 1, 2, 0, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'yes', 'no', 4, 3, 4, 1, 1, 1, 0, '7', '9', 8),
('MS', 390, 0, 'F', 18, 'U', 'GT3', 'T', 1, 1, 'other', 'other', 'course', 'mother', 2, 2, 1, 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 'no', 1, 1, 1, 1, 1, 5, 0, '6', '5', 0),
('MS', 391, 0, 'M', 20, 'U', 'LE3', 'A', 2, 2, 'services', 'services', 'course', 'other', 1, 2, 2, 'no', 'yes', 'yes', 'no', 'yes', 'yes', 'no', 'no', 5, 5, 4, 4, 5, 4, 11, '9', '9', 9),
('MS', 392, 0, 'M', 17, 'U', 'LE3', 'T', 3, 1, 'services', 'services', 'course', 'mother', 2, 1, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 2, 4, 5, 3, 4, 2, 3, '14', '16', 16),
('MS', 393, 0, 'M', 21, 'R', 'GT3', 'T', 1, 1, 'other', 'other', 'course', 'other', 1, 1, 3, 'no', 'no', 'no', 'no', 'no', 'yes', 'no', 'no', 5, 5, 3, 3, 3, 3, 3, '10', '8', 7),
('MS', 394, 0, 'M', 18, 'R', 'LE3', 'T', 3, 2, 'services', 'other', 'course', 'mother', 3, 1, 0, 'no', 'no', 'no', 'no', 'no', 'yes', 'yes', 'no', 4, 4, 1, 3, 4, 5, 0, '11', '12', 10),
('MS', 395, 0, 'M', 19, 'U', 'LE3', 'T', 1, 1, 'other', 'at_home', 'course', 'father', 1, 1, 0, 'no', 'no', 'no', 'no', 'yes', 'yes', 'yes', 'no', 3, 2, 3, 3, 3, 5, 5, '8', '9', 9);

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `_id` int(11) NOT NULL,
  `name` varchar(250) NOT NULL,
  `grade` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`_id`, `name`, `grade`) VALUES
(0, 'Mathematics', 1),
(1, 'science', 0);

-- --------------------------------------------------------

--
-- Table structure for table `videos`
--

CREATE TABLE `videos` (
  `_id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `author` varchar(250) NOT NULL,
  `path` text NOT NULL,
  `subject_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `videos`
--

INSERT INTO `videos` (`_id`, `name`, `author`, `path`, `subject_id`) VALUES
(3, 'I2C', 'graham', '/home/hadir/Videos/How I2C Communication Works and How To Use It with Arduino.mp4', 0),
(4, 'mirror edge', 'van', '/home/hadir/Videos/Mirror\'s Edge- Catalyst OST - Benefactor.mp4', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `books`
--
ALTER TABLE `books`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `subject to book relation` (`subject_id`);

--
-- Indexes for table `professors`
--
ALTER TABLE `professors`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `professors_subjects`
--
ALTER TABLE `professors_subjects`
  ADD PRIMARY KEY (`professor_id`,`subject_id`),
  ADD KEY `subjects binding` (`subject_id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `students_subjects`
--
ALTER TABLE `students_subjects`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`_id`);

--
-- Indexes for table `videos`
--
ALTER TABLE `videos`
  ADD PRIMARY KEY (`_id`),
  ADD KEY `video subject binding` (`subject_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `books`
--
ALTER TABLE `books`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `professors`
--
ALTER TABLE `professors`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `videos`
--
ALTER TABLE `videos`
  MODIFY `_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `books`
--
ALTER TABLE `books`
  ADD CONSTRAINT `subject to book relation` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`_id`);

--
-- Constraints for table `professors_subjects`
--
ALTER TABLE `professors_subjects`
  ADD CONSTRAINT `professor binding` FOREIGN KEY (`professor_id`) REFERENCES `professors` (`_id`),
  ADD CONSTRAINT `subjects binding` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`_id`);

--
-- Constraints for table `videos`
--
ALTER TABLE `videos`
  ADD CONSTRAINT `video subject binding` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
