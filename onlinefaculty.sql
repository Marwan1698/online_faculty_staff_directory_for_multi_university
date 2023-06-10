-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Jan 10, 2021 at 09:04 PM
-- Server version: 8.0.17
-- PHP Version: 7.3.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `onlinefaculty`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `UserName` varchar(255) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`UserName`, `Password`) VALUES
('marwan', '20160239'),
('yasmina', '20160286');

-- --------------------------------------------------------

--
-- Table structure for table `course`
--

CREATE TABLE `course` (
  `CourseCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `CourseName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `course`
--

INSERT INTO `course` (`CourseCode`, `CourseName`) VALUES
('is32', 'database'),
('is800', 'files'),
('it22', 'internt technology'),
('it500', 'multimedia');

-- --------------------------------------------------------

--
-- Table structure for table `department`
--

CREATE TABLE `department` (
  `DepartmentCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `DepartmentName` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department`
--

INSERT INTO `department` (`DepartmentCode`, `DepartmentName`) VALUES
('is', 'informationSystem'),
('it', 'information system');

-- --------------------------------------------------------

--
-- Table structure for table `department_course`
--

CREATE TABLE `department_course` (
  `DepartmentCode` varchar(50) NOT NULL,
  `CourseCode` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department_course`
--

INSERT INTO `department_course` (`DepartmentCode`, `CourseCode`) VALUES
('is', 'is32'),
('is', 'is800'),
('it', 'it22'),
('it', 'it500');

-- --------------------------------------------------------

--
-- Table structure for table `department_faculty`
--

CREATE TABLE `department_faculty` (
  `DepartmentCode` varchar(50) NOT NULL,
  `FacultyID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `department_faculty`
--

INSERT INTO `department_faculty` (`DepartmentCode`, `FacultyID`) VALUES
('is', 'fci'),
('it', 'fci');

-- --------------------------------------------------------

--
-- Table structure for table `faculty`
--

CREATE TABLE `faculty` (
  `FacultyCode` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `Name` varchar(100) NOT NULL,
  `AreaOfExperties` varchar(255) NOT NULL,
  `ProfissionalInterst` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faculty`
--

INSERT INTO `faculty` (`FacultyCode`, `Name`, `AreaOfExperties`, `ProfissionalInterst`) VALUES
('fci', 'faculty of computer and information\r\n', 'application development, communication', 'developer, it, web developer');

-- --------------------------------------------------------

--
-- Table structure for table `faculty_course`
--

CREATE TABLE `faculty_course` (
  `CourseCode` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `facultyID` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `faculty_course`
--

INSERT INTO `faculty_course` (`CourseCode`, `facultyID`) VALUES
('is32', 'fci'),
('is800', 'fci'),
('it22', 'fci'),
('it500', 'fci');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD UNIQUE KEY `Index` (`Password`);

--
-- Indexes for table `course`
--
ALTER TABLE `course`
  ADD UNIQUE KEY `CourseCode` (`CourseCode`);

--
-- Indexes for table `department`
--
ALTER TABLE `department`
  ADD UNIQUE KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `department_course`
--
ALTER TABLE `department_course`
  ADD UNIQUE KEY `CourseCode` (`CourseCode`);

--
-- Indexes for table `department_faculty`
--
ALTER TABLE `department_faculty`
  ADD UNIQUE KEY `DepartmentCode` (`DepartmentCode`);

--
-- Indexes for table `faculty`
--
ALTER TABLE `faculty`
  ADD UNIQUE KEY `FacultyCode` (`FacultyCode`),
  ADD KEY `ID` (`FacultyCode`);

--
-- Indexes for table `faculty_course`
--
ALTER TABLE `faculty_course`
  ADD UNIQUE KEY `CourseCode` (`CourseCode`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
