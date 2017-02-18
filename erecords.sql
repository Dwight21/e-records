-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 18, 2017 at 06:53 AM
-- Server version: 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `erecords`
--

-- --------------------------------------------------------

--
-- Table structure for table `attendance_criteria`
--

CREATE TABLE `attendance_criteria` (
  `ac_id` int(11) NOT NULL,
  `ac_subject` varchar(255) NOT NULL,
  `ac_section` varchar(255) NOT NULL,
  `ac_score` int(11) NOT NULL,
  `date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `class_routing`
--

CREATE TABLE `class_routing` (
  `classID` int(11) NOT NULL,
  `classroomNumber` varchar(255) NOT NULL,
  `classSemester` enum('1st Semester','2nd Semester','Summer') NOT NULL,
  `classYear` year(4) NOT NULL,
  `classSubject` varchar(255) NOT NULL,
  `classSection` varchar(255) NOT NULL,
  `classYearLevel` varchar(255) NOT NULL,
  `teacherLink` int(255) NOT NULL,
  `Timestart` time NOT NULL,
  `Timeend` time NOT NULL,
  `creat` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `exam_criteria`
--

CREATE TABLE `exam_criteria` (
  `ex_id` int(255) NOT NULL,
  `ex_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `ex_totalScore` int(255) NOT NULL DEFAULT '0',
  `exam_section` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `exam_term` varchar(255) CHARACTER SET utf8 NOT NULL,
  `start` time NOT NULL,
  `end` time NOT NULL,
  `subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `day` varchar(255) CHARACTER SET utf8 NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `project_criteria`
--

CREATE TABLE `project_criteria` (
  `proj_id` int(255) NOT NULL,
  `proj_name` int(255) NOT NULL DEFAULT '0',
  `proj_totalScore` int(255) NOT NULL DEFAULT '0',
  `proj_section` varchar(255) CHARACTER SET utf8 NOT NULL,
  `proj_subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `proj_term` varchar(255) CHARACTER SET utf8 NOT NULL,
  `proj_created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `quiz_criteria`
--

CREATE TABLE `quiz_criteria` (
  `q_id` int(255) NOT NULL,
  `q_name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `q_totalScore` int(255) NOT NULL DEFAULT '0',
  `q_section` varchar(255) CHARACTER SET utf8 NOT NULL,
  `q_subject` varchar(255) CHARACTER SET utf8 NOT NULL,
  `q_term` varchar(255) NOT NULL,
  `q_created` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentattendance`
--

CREATE TABLE `studentattendance` (
  `satt_id` int(255) NOT NULL,
  `attendance_id` int(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentexam`
--

CREATE TABLE `studentexam` (
  `se_id` int(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `exam_id` int(255) NOT NULL,
  `s_score` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentproject`
--

CREATE TABLE `studentproject` (
  `sp_id` int(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `project_id` int(255) NOT NULL,
  `score` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `studentquiz`
--

CREATE TABLE `studentquiz` (
  `sq_id` int(255) NOT NULL,
  `student_id` int(255) NOT NULL,
  `quiz_id` int(255) NOT NULL,
  `score` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subject_routing`
--

CREATE TABLE `subject_routing` (
  `sr_id` int(11) NOT NULL,
  `sr_section` varchar(255) NOT NULL,
  `sr_subject` varchar(255) NOT NULL,
  `sr_teacher` int(255) NOT NULL,
  `sr_room` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbladmin`
--

CREATE TABLE `tbladmin` (
  `adminID` int(11) NOT NULL,
  `adminUsername` varchar(255) NOT NULL,
  `adminPassword` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblparent`
--

CREATE TABLE `tblparent` (
  `parentID` int(11) NOT NULL,
  `parentFname` varchar(255) NOT NULL,
  `parentMname` varchar(255) NOT NULL,
  `parentLname` varchar(255) NOT NULL,
  `parentContact` bigint(11) NOT NULL,
  `parentEmail` varchar(255) NOT NULL,
  `parentUsername` varchar(255) NOT NULL,
  `parentPassword` varchar(255) NOT NULL,
  `parentStudent` int(255) NOT NULL,
  `parentGender` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblroom`
--

CREATE TABLE `tblroom` (
  `roomID` int(11) NOT NULL,
  `roomName` varchar(255) NOT NULL,
  `roomLimit` int(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsection`
--

CREATE TABLE `tblsection` (
  `sectionID` int(11) NOT NULL,
  `sectionName` varchar(255) NOT NULL,
  `sectionLimit` int(11) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblstudent`
--

CREATE TABLE `tblstudent` (
  `studentID` int(10) NOT NULL,
  `studentFname` varchar(255) NOT NULL,
  `studentMinitial` char(1) NOT NULL,
  `studentLname` varchar(255) NOT NULL,
  `studentContact` bigint(11) NOT NULL,
  `studentEmail` varchar(255) NOT NULL,
  `studentDOB` date NOT NULL,
  `studentPassword` varchar(255) NOT NULL,
  `studentYearlevel` int(255) NOT NULL,
  `studentSection` varchar(255) NOT NULL,
  `studentGender` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblsubject`
--

CREATE TABLE `tblsubject` (
  `subjectID` int(11) NOT NULL,
  `subjectName` varchar(255) NOT NULL,
  `subjectCode` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tblteacher`
--

CREATE TABLE `tblteacher` (
  `teacherID` int(10) NOT NULL,
  `teacherFname` varchar(255) NOT NULL,
  `teacherMinitial` char(1) NOT NULL,
  `teacherLname` varchar(255) NOT NULL,
  `teacherContact` bigint(11) NOT NULL,
  `teacherEmail` varchar(255) NOT NULL,
  `teacherPassword` varchar(255) NOT NULL,
  `teacherGender` varchar(255) NOT NULL,
  `created_on` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `attendance_criteria`
--
ALTER TABLE `attendance_criteria`
  ADD PRIMARY KEY (`ac_id`),
  ADD KEY `ac_subject` (`ac_subject`),
  ADD KEY `ac_section` (`ac_section`);

--
-- Indexes for table `class_routing`
--
ALTER TABLE `class_routing`
  ADD PRIMARY KEY (`classID`),
  ADD UNIQUE KEY `courseFk` (`classID`,`classroomNumber`),
  ADD KEY `teacherLink` (`teacherLink`),
  ADD KEY `classSection` (`classSection`),
  ADD KEY `room_FK` (`classroomNumber`),
  ADD KEY `classSubject` (`classSubject`);

--
-- Indexes for table `exam_criteria`
--
ALTER TABLE `exam_criteria`
  ADD PRIMARY KEY (`ex_id`),
  ADD KEY `FK_exam_section` (`exam_section`),
  ADD KEY `subject` (`subject`);

--
-- Indexes for table `project_criteria`
--
ALTER TABLE `project_criteria`
  ADD PRIMARY KEY (`proj_id`),
  ADD KEY `proj_section` (`proj_section`,`proj_subject`),
  ADD KEY `pc_Subject_fk` (`proj_subject`);

--
-- Indexes for table `quiz_criteria`
--
ALTER TABLE `quiz_criteria`
  ADD PRIMARY KEY (`q_id`),
  ADD KEY `q_section` (`q_section`),
  ADD KEY `q_subject` (`q_subject`);

--
-- Indexes for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD PRIMARY KEY (`satt_id`),
  ADD KEY `FK_studentattendance_attendance` (`attendance_id`),
  ADD KEY `FK_studentattendance_student` (`student_id`);

--
-- Indexes for table `studentexam`
--
ALTER TABLE `studentexam`
  ADD PRIMARY KEY (`se_id`),
  ADD KEY `FK_studentExam_student` (`student_id`),
  ADD KEY `FK_studentExam_exam` (`exam_id`);

--
-- Indexes for table `studentproject`
--
ALTER TABLE `studentproject`
  ADD PRIMARY KEY (`sp_id`),
  ADD KEY `FK_studentProject_student` (`student_id`),
  ADD KEY `FK_studentProject_project` (`project_id`);

--
-- Indexes for table `studentquiz`
--
ALTER TABLE `studentquiz`
  ADD PRIMARY KEY (`sq_id`),
  ADD KEY `FK_studentQuiz_student` (`student_id`),
  ADD KEY `FK_studentquiz_quiz` (`quiz_id`);

--
-- Indexes for table `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD PRIMARY KEY (`sr_id`),
  ADD KEY `sr_subject` (`sr_subject`,`sr_teacher`,`sr_room`),
  ADD KEY `sr_section` (`sr_section`),
  ADD KEY `sr_room_fk` (`sr_room`),
  ADD KEY `sr_teacher_fk` (`sr_teacher`);

--
-- Indexes for table `tbladmin`
--
ALTER TABLE `tbladmin`
  ADD PRIMARY KEY (`adminID`);

--
-- Indexes for table `tblparent`
--
ALTER TABLE `tblparent`
  ADD PRIMARY KEY (`parentID`),
  ADD KEY `parentStudent` (`parentID`,`parentStudent`),
  ADD KEY `parentStudentFK` (`parentStudent`);

--
-- Indexes for table `tblroom`
--
ALTER TABLE `tblroom`
  ADD PRIMARY KEY (`roomID`),
  ADD KEY `roomName` (`roomName`);

--
-- Indexes for table `tblsection`
--
ALTER TABLE `tblsection`
  ADD PRIMARY KEY (`sectionID`),
  ADD KEY `sectionName` (`sectionName`);

--
-- Indexes for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD PRIMARY KEY (`studentID`),
  ADD KEY `studentSection` (`studentSection`);

--
-- Indexes for table `tblsubject`
--
ALTER TABLE `tblsubject`
  ADD PRIMARY KEY (`subjectID`),
  ADD KEY `subjectName` (`subjectName`);

--
-- Indexes for table `tblteacher`
--
ALTER TABLE `tblteacher`
  ADD PRIMARY KEY (`teacherID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `attendance_criteria`
--
ALTER TABLE `attendance_criteria`
  MODIFY `ac_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `class_routing`
--
ALTER TABLE `class_routing`
  MODIFY `classID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `exam_criteria`
--
ALTER TABLE `exam_criteria`
  MODIFY `ex_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `project_criteria`
--
ALTER TABLE `project_criteria`
  MODIFY `proj_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `quiz_criteria`
--
ALTER TABLE `quiz_criteria`
  MODIFY `q_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentattendance`
--
ALTER TABLE `studentattendance`
  MODIFY `satt_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentexam`
--
ALTER TABLE `studentexam`
  MODIFY `se_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentproject`
--
ALTER TABLE `studentproject`
  MODIFY `sp_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `studentquiz`
--
ALTER TABLE `studentquiz`
  MODIFY `sq_id` int(255) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `subject_routing`
--
ALTER TABLE `subject_routing`
  MODIFY `sr_id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tbladmin`
--
ALTER TABLE `tbladmin`
  MODIFY `adminID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblparent`
--
ALTER TABLE `tblparent`
  MODIFY `parentID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblroom`
--
ALTER TABLE `tblroom`
  MODIFY `roomID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsection`
--
ALTER TABLE `tblsection`
  MODIFY `sectionID` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tblsubject`
--
ALTER TABLE `tblsubject`
  MODIFY `subjectID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `attendance_criteria`
--
ALTER TABLE `attendance_criteria`
  ADD CONSTRAINT `ac_section_Fk` FOREIGN KEY (`ac_section`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ac_subject_Fk` FOREIGN KEY (`ac_subject`) REFERENCES `tblsubject` (`subjectName`) ON UPDATE CASCADE;

--
-- Constraints for table `class_routing`
--
ALTER TABLE `class_routing`
  ADD CONSTRAINT `room_FK` FOREIGN KEY (`classroomNumber`) REFERENCES `tblroom` (`roomName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `section_FK` FOREIGN KEY (`classSection`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `subject_FK` FOREIGN KEY (`classSubject`) REFERENCES `tblsubject` (`subjectName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `teacher_FK` FOREIGN KEY (`teacherLink`) REFERENCES `tblteacher` (`teacherID`) ON UPDATE CASCADE;

--
-- Constraints for table `exam_criteria`
--
ALTER TABLE `exam_criteria`
  ADD CONSTRAINT `ec_section_FK` FOREIGN KEY (`exam_section`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `ec_subject_FK` FOREIGN KEY (`subject`) REFERENCES `tblsubject` (`subjectName`) ON UPDATE CASCADE;

--
-- Constraints for table `project_criteria`
--
ALTER TABLE `project_criteria`
  ADD CONSTRAINT `pc_Section_fk` FOREIGN KEY (`proj_section`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `pc_Subject_fk` FOREIGN KEY (`proj_subject`) REFERENCES `tblsubject` (`subjectName`) ON UPDATE CASCADE;

--
-- Constraints for table `quiz_criteria`
--
ALTER TABLE `quiz_criteria`
  ADD CONSTRAINT `qc_Section_Fk` FOREIGN KEY (`q_section`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `qc_Subject_Fk` FOREIGN KEY (`q_subject`) REFERENCES `tblsubject` (`subjectName`) ON UPDATE CASCADE;

--
-- Constraints for table `studentattendance`
--
ALTER TABLE `studentattendance`
  ADD CONSTRAINT `attendance_Student` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`studentID`) ON UPDATE CASCADE,
  ADD CONSTRAINT `attendance_fk` FOREIGN KEY (`attendance_id`) REFERENCES `attendance_criteria` (`ac_id`) ON UPDATE CASCADE;

--
-- Constraints for table `studentexam`
--
ALTER TABLE `studentexam`
  ADD CONSTRAINT `exam_criteria_fk` FOREIGN KEY (`exam_id`) REFERENCES `exam_criteria` (`ex_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `student_exam_criteria_fk` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`studentID`) ON UPDATE CASCADE;

--
-- Constraints for table `studentproject`
--
ALTER TABLE `studentproject`
  ADD CONSTRAINT `project_critetia_Fk` FOREIGN KEY (`project_id`) REFERENCES `project_criteria` (`proj_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `project_student_Fk` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`studentID`) ON UPDATE CASCADE;

--
-- Constraints for table `studentquiz`
--
ALTER TABLE `studentquiz`
  ADD CONSTRAINT `quiz_criteria_fk` FOREIGN KEY (`quiz_id`) REFERENCES `quiz_criteria` (`q_id`) ON UPDATE CASCADE,
  ADD CONSTRAINT `quiz_student_Fk` FOREIGN KEY (`student_id`) REFERENCES `tblstudent` (`studentID`) ON UPDATE CASCADE;

--
-- Constraints for table `subject_routing`
--
ALTER TABLE `subject_routing`
  ADD CONSTRAINT `sr_Section_fk` FOREIGN KEY (`sr_section`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sr_room_fk` FOREIGN KEY (`sr_room`) REFERENCES `tblroom` (`roomName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sr_subject_fk` FOREIGN KEY (`sr_subject`) REFERENCES `tblsubject` (`subjectName`) ON UPDATE CASCADE,
  ADD CONSTRAINT `sr_teacher_fk` FOREIGN KEY (`sr_teacher`) REFERENCES `tblteacher` (`teacherID`) ON UPDATE CASCADE;

--
-- Constraints for table `tblparent`
--
ALTER TABLE `tblparent`
  ADD CONSTRAINT `parentStudentFK` FOREIGN KEY (`parentStudent`) REFERENCES `tblstudent` (`studentID`) ON UPDATE CASCADE;

--
-- Constraints for table `tblstudent`
--
ALTER TABLE `tblstudent`
  ADD CONSTRAINT `student_Section_FK` FOREIGN KEY (`studentSection`) REFERENCES `tblsection` (`sectionName`) ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
