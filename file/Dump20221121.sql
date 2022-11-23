-- MariaDB dump 10.19  Distrib 10.8.3-MariaDB, for osx10.17 (x86_64)
--
-- Host: 127.0.0.1    Database: sql_exam
-- ------------------------------------------------------
-- Server version	10.8.3-MariaDB

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `exam`
--

DROP TABLE IF EXISTS `exam`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam` (
  `exam_id` int(11) NOT NULL AUTO_INCREMENT,
  `sec_id` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `sql` varchar(100) DEFAULT NULL,
  `answer` varchar(1000) NOT NULL,
  `score` int(11) NOT NULL,
  PRIMARY KEY (`exam_id`),
  KEY `exam_id_idx` (`exam_id`),
  KEY `exam_ibfk_1_idx` (`sec_id`),
  CONSTRAINT `exam_ibfk_1_idx` FOREIGN KEY (`sec_id`) REFERENCES `sec` (`sec_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=105 DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam`
--

LOCK TABLES `exam` WRITE;
/*!40000 ALTER TABLE `exam` DISABLE KEYS */;
/*!40000 ALTER TABLE `exam` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exam_db`
--

DROP TABLE IF EXISTS `exam_db`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exam_db` (
  `exam_db_id` varchar(100) NOT NULL,
  `source` longblob NOT NULL,
  PRIMARY KEY (`exam_db_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exam_db`
--

LOCK TABLES `exam_db` WRITE;
/*!40000 ALTER TABLE `exam_db` DISABLE KEYS */;
INSERT INTO `exam_db` VALUES
('1','-- phpMyAdmin SQL Dump\n-- version 5.1.3\n-- https://www.phpmyadmin.net/\n--\n-- Host: 127.0.0.1:3308\n-- Generation Time: Jun 29, 2022 at 09:55 AM\n-- Server version: 10.4.22-MariaDB\n-- PHP Version: 7.4.28\n\nSET SQL_MODE = \"NO_AUTO_VALUE_ON_ZERO\";\nSTART TRANSACTION;\nSET time_zone = \"+00:00\";\n\n\n/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\n/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\n/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\n/*!40101 SET NAMES utf8mb4 */;\n\n--\n-- Database: `flask_api_db`\n--\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `admin`\n--\n\nCREATE TABLE `admin` (\n  `user_id` int(11) NOT NULL,\n  `admin_id` varchar(50) DEFAULT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `admin`\n--\n\nINSERT INTO `admin` (`user_id`, `admin_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'testCode1\', \'Y\', \'2022-04-19 17:56:28\', \'2022-04-19 17:56:28\'),\n(5, \'testId\', \'Y\', \'2022-05-27 15:31:22\', \'2022-05-27 15:31:22\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `courses`\n--\n\nCREATE TABLE `courses` (\n  `course_id` int(11) NOT NULL,\n  `course_name` varchar(100) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `courses`\n--\n\nINSERT INTO `courses` (`course_id`, `course_name`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'2560\', \'Y\', \'2022-06-29 03:28:17\', \'2022-06-29 03:28:17\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `majors`\n--\n\nCREATE TABLE `majors` (\n  `major_id` int(11) NOT NULL,\n  `major_name` varchar(100) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `majors`\n--\n\nINSERT INTO `majors` (`major_id`, `major_name`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'test\', \'Y\', \'2022-05-27 15:45:59\', \'2022-05-27 15:45:59\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `prename_list`\n--\n\nCREATE TABLE `prename_list` (\n  `prename_id` int(11) NOT NULL,\n  `prename_text` varchar(20) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `prename_list`\n--\n\nINSERT INTO `prename_list` (`prename_id`, `prename_text`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'นาย\', \'Y\', \'2022-04-19 17:54:26\', \'2022-04-19 17:54:26\'),\n(2, \'นาง\', \'Y\', \'2022-04-19 17:54:26\', \'2022-04-19 17:54:26\'),\n(3, \'นางสาว\', \'Y\', \'2022-04-19 17:54:55\', \'2022-04-19 17:54:55\'),\n(4, \'อ.ดร\', \'Y\', \'2022-04-19 17:54:55\', \'2022-04-19 17:54:55\'),\n(5, \'ผศ.ดร\', \'Y\', \'2022-04-19 17:55:29\', \'2022-04-19 17:55:29\'),\n(6, \'ศ.ดร\', \'Y\', \'2022-04-19 17:55:29\', \'2022-04-19 17:55:29\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `quiz`\n--\n\nCREATE TABLE `quiz` (\n  `quiz_id` int(11) NOT NULL,\n  `quiz_question` longtext NOT NULL,\n  `quiz_answer` longtext NOT NULL,\n  `quiz_point` decimal(20,2) NOT NULL,\n  `quiz_standard` varchar(15) DEFAULT NULL COMMENT \'RESULT,RESULT_COMMAND\',\n  `quiz_group_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `quiz`\n--\n\nINSERT INTO `quiz` (`quiz_id`, `quiz_question`, `quiz_answer`, `quiz_point`, `quiz_standard`, `quiz_group_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'TEST QUESTION\', \'SELECT QUESTION\', \'10.00\', \'RESULT_COMMAND\', 1, \'Y\', \'2022-06-29 03:30:28\', \'2022-06-29 03:30:28\'),\n(2, \'โจทย์\', \'COMMAND\', \'10.00\', \'RESULT\', 5, \'Y\', \'2022-06-29 04:41:33\', \'2022-06-29 04:41:33\'),\n(3, \'โจทย์\', \'COMMAND\', \'10.00\', \'RESULT\', 6, \'Y\', \'2022-06-29 04:41:53\', \'2022-06-29 04:41:53\'),\n(5, \'โจทย์\', \'COMMAND\', \'10.00\', \'RESULT\', 8, \'Y\', \'2022-06-29 04:54:48\', \'2022-06-29 04:54:48\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `quiz_groups`\n--\n\nCREATE TABLE `quiz_groups` (\n  `quiz_group_id` int(11) NOT NULL,\n  `database_id` int(11) NOT NULL,\n  `quiz_objective` varchar(150) DEFAULT NULL,\n  `quiz_num` int(11) NOT NULL DEFAULT 1,\n  `quiz_type` varchar(10) NOT NULL COMMENT \'SELF,AUTO\',\n  `quiz_start_date` date DEFAULT NULL,\n  `quiz_end_date` date DEFAULT NULL,\n  `quiz_start_time` time NOT NULL,\n  `quiz_end_time` time NOT NULL,\n  `subject_group_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `quiz_groups`\n--\n\nINSERT INTO `quiz_groups` (`quiz_group_id`, `database_id`, `quiz_objective`, `quiz_num`, `quiz_type`, `quiz_start_date`, `quiz_end_date`, `quiz_start_time`, `quiz_end_time`, `subject_group_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, 1, \'test\', 3, \'S\', \'2022-05-01\', \'2022-05-02\', \'10:00:00\', \'09:59:59\', 1, \'Y\', \'2022-06-29 03:29:08\', \'2022-06-29 03:29:08\'),\n(3, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:37:57\', \'2022-06-29 04:37:57\'),\n(4, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:40:11\', \'2022-06-29 04:40:11\'),\n(5, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:41:33\', \'2022-06-29 04:41:33\'),\n(6, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:41:53\', \'2022-06-29 04:41:53\'),\n(8, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:54:48\', \'2022-06-29 04:54:48\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `students`\n--\n\nCREATE TABLE `students` (\n  `user_id` int(11) NOT NULL,\n  `student_id` varchar(50) DEFAULT NULL,\n  `major_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `student_reg_subject_group`\n--\n\nCREATE TABLE `student_reg_subject_group` (\n  `student_reg_subject_group_id` int(11) NOT NULL,\n  `user_student_id` int(11) NOT NULL,\n  `subject_group_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `student_test_result`\n--\n\nCREATE TABLE `student_test_result` (\n  `student_test_result_id` int(11) NOT NULL,\n  `student_reg_id` int(11) NOT NULL,\n  `quiz_id` int(11) NOT NULL,\n  `do_point` decimal(20,2) NOT NULL,\n  `quiz_answer` longtext NOT NULL,\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\'\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `subjects`\n--\n\nCREATE TABLE `subjects` (\n  `subject_id` int(11) NOT NULL,\n  `subject_code` varchar(50) NOT NULL,\n  `subject_name` varchar(150) NOT NULL,\n  `subject_decription` longtext DEFAULT NULL,\n  `course_id` int(11) NOT NULL,\n  `subject_year` varchar(10) DEFAULT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `subjects`\n--\n\nINSERT INTO `subjects` (`subject_id`, `subject_code`, `subject_name`, `subject_decription`, `course_id`, `subject_year`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'0010001\', \'DB\', \'DB\', 1, \'2565\', \'Y\', \'2022-06-29 03:28:36\', \'2022-06-29 03:28:36\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `subject_groups`\n--\n\nCREATE TABLE `subject_groups` (\n  `subject_group_id` int(11) NOT NULL,\n  `subject_group_name` varchar(20) NOT NULL,\n  `user_id_teacher` int(11) NOT NULL,\n  `subject_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `subject_groups`\n--\n\nINSERT INTO `subject_groups` (`subject_group_id`, `subject_group_name`, `user_id_teacher`, `subject_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'700\', 2, 1, \'Y\', \'2022-06-29 03:28:55\', \'2022-06-29 03:28:55\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `system_databases`\n--\n\nCREATE TABLE `system_databases` (\n  `database_id` int(11) NOT NULL,\n  `database_name` varchar(50) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `system_databases`\n--\n\nINSERT INTO `system_databases` (`database_id`, `database_name`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'test\', \'Y\', \'2022-06-28 07:33:18\', \'2022-06-28 07:33:18\'),\n(2, \'test2\', \'Y\', \'2022-06-28 11:02:14\', \'2022-06-28 11:02:14\'),\n(3, \'test2\', \'Y\', \'2022-06-28 11:03:16\', \'2022-06-28 11:03:16\'),\n(4, \'test2\', \'Y\', \'2022-06-28 11:04:48\', \'2022-06-28 11:04:48\'),\n(5, \'test2\', \'Y\', \'2022-06-28 11:05:56\', \'2022-06-28 11:05:56\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `system_tables`\n--\n\nCREATE TABLE `system_tables` (\n  `system_table_id` int(11) NOT NULL,\n  `system_database_id` int(11) NOT NULL,\n  `system_table_name` varchar(150) NOT NULL,\n  `comment` longtext NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `teachers`\n--\n\nCREATE TABLE `teachers` (\n  `user_id` int(11) NOT NULL,\n  `teacher_id` varchar(50) NOT NULL,\n  `teacher_phone` varchar(10) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `teachers`\n--\n\nINSERT INTO `teachers` (`user_id`, `teacher_id`, `teacher_phone`, `enable`, `created_at`, `updated_at`) VALUES\n(2, \'1\', \'0000000000\', \'Y\', \'2022-05-08 21:04:56\', \'2022-05-08 21:04:56\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `templates`\n--\n\nCREATE TABLE `templates` (\n  `template_id` int(11) NOT NULL,\n  `database_id` int(11) NOT NULL,\n  `template_question` longtext NOT NULL,\n  `template_command` longtext NOT NULL,\n  `template_command_type` varchar(15) DEFAULT NULL COMMENT \'SELECT,INSERT,UPDATE,DELETE\',\n  `template_level` varchar(15) DEFAULT NULL COMMENT \'REMEMBER,UNDERSTAND,IMPLEMENT,ANALYSIS\',\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\'\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `users`\n--\n\nCREATE TABLE `users` (\n  `user_id` int(11) NOT NULL,\n  `user_username` varchar(50) NOT NULL,\n  `user_password` varchar(50) NOT NULL,\n  `user_prename` int(11) NOT NULL,\n  `user_firstname` varchar(50) DEFAULT NULL,\n  `user_lastname` varchar(50) DEFAULT NULL,\n  `user_email` varchar(100) DEFAULT NULL,\n  `user_type` varchar(50) DEFAULT NULL COMMENT \'STUDENT,TEACHER,ADMIN\',\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `users`\n--\n\nINSERT INTO `users` (`user_id`, `user_username`, `user_password`, `user_prename`, `user_firstname`, `user_lastname`, `user_email`, `user_type`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'test\', \'test\', 1, \'t\', \'t\', NULL, \'ADMIN\', \'Y\', \'2022-04-19 17:55:55\', \'2022-04-19 17:55:55\'),\n(2, \'test_teacher\', \'test_teacher\', 1, \'test_teacher\', \'test_teacher\', NULL, \'TEACHER\', \'Y\', \'2022-05-08 21:04:14\', \'2022-05-08 21:04:14\'),\n(5, \'test_admin\', \'test_password\', 1, \'ADMIN\', \'ADMIN\', NULL, \'ADMIN\', \'Y\', \'2022-05-27 15:31:22\', \'2022-05-27 15:31:22\');\n\n--\n-- Indexes for dumped tables\n--\n\n--\n-- Indexes for table `admin`\n--\nALTER TABLE `admin`\n  ADD KEY `user_id` (`user_id`),\n  ADD KEY `admin_id` (`admin_id`);\n\n--\n-- Indexes for table `courses`\n--\nALTER TABLE `courses`\n  ADD PRIMARY KEY (`course_id`);\n\n--\n-- Indexes for table `majors`\n--\nALTER TABLE `majors`\n  ADD PRIMARY KEY (`major_id`);\n\n--\n-- Indexes for table `prename_list`\n--\nALTER TABLE `prename_list`\n  ADD PRIMARY KEY (`prename_id`),\n  ADD KEY `prename_text` (`prename_text`);\n\n--\n-- Indexes for table `quiz`\n--\nALTER TABLE `quiz`\n  ADD PRIMARY KEY (`quiz_id`),\n  ADD KEY `quiz_question` (`quiz_question`(768)),\n  ADD KEY `quiz_answer` (`quiz_answer`(768)),\n  ADD KEY `quiz_group_id` (`quiz_group_id`);\n\n--\n-- Indexes for table `quiz_groups`\n--\nALTER TABLE `quiz_groups`\n  ADD PRIMARY KEY (`quiz_group_id`),\n  ADD KEY `database_id` (`database_id`),\n  ADD KEY `quiz_start_date` (`quiz_start_date`),\n  ADD KEY `quiz_end_date` (`quiz_end_date`),\n  ADD KEY `subject_group_id` (`subject_group_id`);\n\n--\n-- Indexes for table `students`\n--\nALTER TABLE `students`\n  ADD KEY `user_id` (`user_id`),\n  ADD KEY `major_id` (`major_id`),\n  ADD KEY `student_id` (`student_id`);\n\n--\n-- Indexes for table `student_reg_subject_group`\n--\nALTER TABLE `student_reg_subject_group`\n  ADD PRIMARY KEY (`student_reg_subject_group_id`),\n  ADD KEY `user_student_id` (`user_student_id`),\n  ADD KEY `subject_group_id` (`subject_group_id`);\n\n--\n-- Indexes for table `student_test_result`\n--\nALTER TABLE `student_test_result`\n  ADD PRIMARY KEY (`student_test_result_id`),\n  ADD KEY `student_reg_id` (`student_reg_id`),\n  ADD KEY `quiz_id` (`quiz_id`);\n\n--\n-- Indexes for table `subjects`\n--\nALTER TABLE `subjects`\n  ADD PRIMARY KEY (`subject_id`),\n  ADD KEY `subject_code` (`subject_code`),\n  ADD KEY `course_id` (`course_id`);\n\n--\n-- Indexes for table `subject_groups`\n--\nALTER TABLE `subject_groups`\n  ADD PRIMARY KEY (`subject_group_id`),\n  ADD KEY `user_id_teacher` (`user_id_teacher`),\n  ADD KEY `subject_id` (`subject_id`);\n\n--\n-- Indexes for table `system_databases`\n--\nALTER TABLE `system_databases`\n  ADD PRIMARY KEY (`database_id`);\n\n--\n-- Indexes for table `system_tables`\n--\nALTER TABLE `system_tables`\n  ADD PRIMARY KEY (`system_table_id`),\n  ADD KEY `system_database_id` (`system_database_id`),\n  ADD KEY `system_table_name` (`system_table_name`),\n  ADD KEY `comment` (`comment`(768));\n\n--\n-- Indexes for table `teachers`\n--\nALTER TABLE `teachers`\n  ADD KEY `user_id` (`user_id`),\n  ADD KEY `teacher_id` (`teacher_id`),\n  ADD KEY `teacher_phone` (`teacher_phone`);\n\n--\n-- Indexes for table `templates`\n--\nALTER TABLE `templates`\n  ADD PRIMARY KEY (`template_id`),\n  ADD KEY `template_command_type` (`template_command_type`),\n  ADD KEY `template_level` (`template_level`),\n  ADD KEY `database_id` (`database_id`);\n\n--\n-- Indexes for table `users`\n--\nALTER TABLE `users`\n  ADD PRIMARY KEY (`user_id`),\n  ADD KEY `user_prename` (`user_prename`),\n  ADD KEY `user_email` (`user_email`);\n\n--\n-- AUTO_INCREMENT for dumped tables\n--\n\n--\n-- AUTO_INCREMENT for table `courses`\n--\nALTER TABLE `courses`\n  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `majors`\n--\nALTER TABLE `majors`\n  MODIFY `major_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `prename_list`\n--\nALTER TABLE `prename_list`\n  MODIFY `prename_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;\n\n--\n-- AUTO_INCREMENT for table `quiz`\n--\nALTER TABLE `quiz`\n  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;\n\n--\n-- AUTO_INCREMENT for table `quiz_groups`\n--\nALTER TABLE `quiz_groups`\n  MODIFY `quiz_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;\n\n--\n-- AUTO_INCREMENT for table `student_reg_subject_group`\n--\nALTER TABLE `student_reg_subject_group`\n  MODIFY `student_reg_subject_group_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `student_test_result`\n--\nALTER TABLE `student_test_result`\n  MODIFY `student_test_result_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `subjects`\n--\nALTER TABLE `subjects`\n  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `subject_groups`\n--\nALTER TABLE `subject_groups`\n  MODIFY `subject_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `system_databases`\n--\nALTER TABLE `system_databases`\n  MODIFY `database_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;\n\n--\n-- AUTO_INCREMENT for table `system_tables`\n--\nALTER TABLE `system_tables`\n  MODIFY `system_table_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `templates`\n--\nALTER TABLE `templates`\n  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `users`\n--\nALTER TABLE `users`\n  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;\n\n--\n-- Constraints for dumped tables\n--\n\n--\n-- Constraints for table `admin`\n--\nALTER TABLE `admin`\n  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `quiz`\n--\nALTER TABLE `quiz`\n  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`quiz_group_id`) REFERENCES `quiz_groups` (`quiz_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `quiz_groups`\n--\nALTER TABLE `quiz_groups`\n  ADD CONSTRAINT `quiz_groups_ibfk_1` FOREIGN KEY (`database_id`) REFERENCES `system_databases` (`database_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `quiz_groups_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`subject_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `students`\n--\nALTER TABLE `students`\n  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `student_reg_subject_group`\n--\nALTER TABLE `student_reg_subject_group`\n  ADD CONSTRAINT `student_reg_subject_group_ibfk_1` FOREIGN KEY (`user_student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `student_reg_subject_group_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`subject_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `student_test_result`\n--\nALTER TABLE `student_test_result`\n  ADD CONSTRAINT `student_test_result_ibfk_1` FOREIGN KEY (`student_reg_id`) REFERENCES `student_reg_subject_group` (`student_reg_subject_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `student_test_result_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `subjects`\n--\nALTER TABLE `subjects`\n  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `subject_groups`\n--\nALTER TABLE `subject_groups`\n  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `subject_groups_ibfk_2` FOREIGN KEY (`user_id_teacher`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `system_tables`\n--\nALTER TABLE `system_tables`\n  ADD CONSTRAINT `system_tables_ibfk_1` FOREIGN KEY (`system_database_id`) REFERENCES `system_databases` (`database_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `teachers`\n--\nALTER TABLE `teachers`\n  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `templates`\n--\nALTER TABLE `templates`\n  ADD CONSTRAINT `templates_ibfk_1` FOREIGN KEY (`database_id`) REFERENCES `system_databases` (`database_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `users`\n--\nALTER TABLE `users`\n  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_prename`) REFERENCES `prename_list` (`prename_id`) ON DELETE CASCADE ON UPDATE CASCADE;\nCOMMIT;\n\n/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;\n/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;\n/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;\n'),
('2','-- phpMyAdmin SQL Dump\n-- version 5.1.3\n-- https://www.phpmyadmin.net/\n--\n-- Host: 127.0.0.1:3308\n-- Generation Time: Jun 29, 2022 at 09:55 AM\n-- Server version: 10.4.22-MariaDB\n-- PHP Version: 7.4.28\n\nSET SQL_MODE = \"NO_AUTO_VALUE_ON_ZERO\";\nSTART TRANSACTION;\nSET time_zone = \"+00:00\";\n\n\n/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;\n/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;\n/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;\n/*!40101 SET NAMES utf8mb4 */;\n\n--\n-- Database: `flask_api_db`\n--\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `admin`\n--\n\nCREATE TABLE `admin` (\n  `user_id` int(11) NOT NULL,\n  `admin_id` varchar(50) DEFAULT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `admin`\n--\n\nINSERT INTO `admin` (`user_id`, `admin_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'testCode1\', \'Y\', \'2022-04-19 17:56:28\', \'2022-04-19 17:56:28\'),\n(5, \'testId\', \'Y\', \'2022-05-27 15:31:22\', \'2022-05-27 15:31:22\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `courses`\n--\n\nCREATE TABLE `courses` (\n  `course_id` int(11) NOT NULL,\n  `course_name` varchar(100) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `courses`\n--\n\nINSERT INTO `courses` (`course_id`, `course_name`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'2560\', \'Y\', \'2022-06-29 03:28:17\', \'2022-06-29 03:28:17\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `majors`\n--\n\nCREATE TABLE `majors` (\n  `major_id` int(11) NOT NULL,\n  `major_name` varchar(100) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `majors`\n--\n\nINSERT INTO `majors` (`major_id`, `major_name`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'test\', \'Y\', \'2022-05-27 15:45:59\', \'2022-05-27 15:45:59\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `prename_list`\n--\n\nCREATE TABLE `prename_list` (\n  `prename_id` int(11) NOT NULL,\n  `prename_text` varchar(20) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `prename_list`\n--\n\nINSERT INTO `prename_list` (`prename_id`, `prename_text`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'นาย\', \'Y\', \'2022-04-19 17:54:26\', \'2022-04-19 17:54:26\'),\n(2, \'นาง\', \'Y\', \'2022-04-19 17:54:26\', \'2022-04-19 17:54:26\'),\n(3, \'นางสาว\', \'Y\', \'2022-04-19 17:54:55\', \'2022-04-19 17:54:55\'),\n(4, \'อ.ดร\', \'Y\', \'2022-04-19 17:54:55\', \'2022-04-19 17:54:55\'),\n(5, \'ผศ.ดร\', \'Y\', \'2022-04-19 17:55:29\', \'2022-04-19 17:55:29\'),\n(6, \'ศ.ดร\', \'Y\', \'2022-04-19 17:55:29\', \'2022-04-19 17:55:29\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `quiz`\n--\n\nCREATE TABLE `quiz` (\n  `quiz_id` int(11) NOT NULL,\n  `quiz_question` longtext NOT NULL,\n  `quiz_answer` longtext NOT NULL,\n  `quiz_point` decimal(20,2) NOT NULL,\n  `quiz_standard` varchar(15) DEFAULT NULL COMMENT \'RESULT,RESULT_COMMAND\',\n  `quiz_group_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `quiz`\n--\n\nINSERT INTO `quiz` (`quiz_id`, `quiz_question`, `quiz_answer`, `quiz_point`, `quiz_standard`, `quiz_group_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'TEST QUESTION\', \'SELECT QUESTION\', \'10.00\', \'RESULT_COMMAND\', 1, \'Y\', \'2022-06-29 03:30:28\', \'2022-06-29 03:30:28\'),\n(2, \'โจทย์\', \'COMMAND\', \'10.00\', \'RESULT\', 5, \'Y\', \'2022-06-29 04:41:33\', \'2022-06-29 04:41:33\'),\n(3, \'โจทย์\', \'COMMAND\', \'10.00\', \'RESULT\', 6, \'Y\', \'2022-06-29 04:41:53\', \'2022-06-29 04:41:53\'),\n(5, \'โจทย์\', \'COMMAND\', \'10.00\', \'RESULT\', 8, \'Y\', \'2022-06-29 04:54:48\', \'2022-06-29 04:54:48\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `quiz_groups`\n--\n\nCREATE TABLE `quiz_groups` (\n  `quiz_group_id` int(11) NOT NULL,\n  `database_id` int(11) NOT NULL,\n  `quiz_objective` varchar(150) DEFAULT NULL,\n  `quiz_num` int(11) NOT NULL DEFAULT 1,\n  `quiz_type` varchar(10) NOT NULL COMMENT \'SELF,AUTO\',\n  `quiz_start_date` date DEFAULT NULL,\n  `quiz_end_date` date DEFAULT NULL,\n  `quiz_start_time` time NOT NULL,\n  `quiz_end_time` time NOT NULL,\n  `subject_group_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `quiz_groups`\n--\n\nINSERT INTO `quiz_groups` (`quiz_group_id`, `database_id`, `quiz_objective`, `quiz_num`, `quiz_type`, `quiz_start_date`, `quiz_end_date`, `quiz_start_time`, `quiz_end_time`, `subject_group_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, 1, \'test\', 3, \'S\', \'2022-05-01\', \'2022-05-02\', \'10:00:00\', \'09:59:59\', 1, \'Y\', \'2022-06-29 03:29:08\', \'2022-06-29 03:29:08\'),\n(3, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:37:57\', \'2022-06-29 04:37:57\'),\n(4, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:40:11\', \'2022-06-29 04:40:11\'),\n(5, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:41:33\', \'2022-06-29 04:41:33\'),\n(6, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:41:53\', \'2022-06-29 04:41:53\'),\n(8, 1, \'\', 1, \'SELF\', \'2022-05-02\', \'2022-05-02\', \'12:20:00\', \'15:19:59\', 1, \'Y\', \'2022-06-29 04:54:48\', \'2022-06-29 04:54:48\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `students`\n--\n\nCREATE TABLE `students` (\n  `user_id` int(11) NOT NULL,\n  `student_id` varchar(50) DEFAULT NULL,\n  `major_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `student_reg_subject_group`\n--\n\nCREATE TABLE `student_reg_subject_group` (\n  `student_reg_subject_group_id` int(11) NOT NULL,\n  `user_student_id` int(11) NOT NULL,\n  `subject_group_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `student_test_result`\n--\n\nCREATE TABLE `student_test_result` (\n  `student_test_result_id` int(11) NOT NULL,\n  `student_reg_id` int(11) NOT NULL,\n  `quiz_id` int(11) NOT NULL,\n  `do_point` decimal(20,2) NOT NULL,\n  `quiz_answer` longtext NOT NULL,\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\'\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `subjects`\n--\n\nCREATE TABLE `subjects` (\n  `subject_id` int(11) NOT NULL,\n  `subject_code` varchar(50) NOT NULL,\n  `subject_name` varchar(150) NOT NULL,\n  `subject_decription` longtext DEFAULT NULL,\n  `course_id` int(11) NOT NULL,\n  `subject_year` varchar(10) DEFAULT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `subjects`\n--\n\nINSERT INTO `subjects` (`subject_id`, `subject_code`, `subject_name`, `subject_decription`, `course_id`, `subject_year`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'0010001\', \'DB\', \'DB\', 1, \'2565\', \'Y\', \'2022-06-29 03:28:36\', \'2022-06-29 03:28:36\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `subject_groups`\n--\n\nCREATE TABLE `subject_groups` (\n  `subject_group_id` int(11) NOT NULL,\n  `subject_group_name` varchar(20) NOT NULL,\n  `user_id_teacher` int(11) NOT NULL,\n  `subject_id` int(11) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `subject_groups`\n--\n\nINSERT INTO `subject_groups` (`subject_group_id`, `subject_group_name`, `user_id_teacher`, `subject_id`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'700\', 2, 1, \'Y\', \'2022-06-29 03:28:55\', \'2022-06-29 03:28:55\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `system_databases`\n--\n\nCREATE TABLE `system_databases` (\n  `database_id` int(11) NOT NULL,\n  `database_name` varchar(50) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `system_databases`\n--\n\nINSERT INTO `system_databases` (`database_id`, `database_name`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'test\', \'Y\', \'2022-06-28 07:33:18\', \'2022-06-28 07:33:18\'),\n(2, \'test2\', \'Y\', \'2022-06-28 11:02:14\', \'2022-06-28 11:02:14\'),\n(3, \'test2\', \'Y\', \'2022-06-28 11:03:16\', \'2022-06-28 11:03:16\'),\n(4, \'test2\', \'Y\', \'2022-06-28 11:04:48\', \'2022-06-28 11:04:48\'),\n(5, \'test2\', \'Y\', \'2022-06-28 11:05:56\', \'2022-06-28 11:05:56\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `system_tables`\n--\n\nCREATE TABLE `system_tables` (\n  `system_table_id` int(11) NOT NULL,\n  `system_database_id` int(11) NOT NULL,\n  `system_table_name` varchar(150) NOT NULL,\n  `comment` longtext NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `teachers`\n--\n\nCREATE TABLE `teachers` (\n  `user_id` int(11) NOT NULL,\n  `teacher_id` varchar(50) NOT NULL,\n  `teacher_phone` varchar(10) NOT NULL,\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `teachers`\n--\n\nINSERT INTO `teachers` (`user_id`, `teacher_id`, `teacher_phone`, `enable`, `created_at`, `updated_at`) VALUES\n(2, \'1\', \'0000000000\', \'Y\', \'2022-05-08 21:04:56\', \'2022-05-08 21:04:56\');\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `templates`\n--\n\nCREATE TABLE `templates` (\n  `template_id` int(11) NOT NULL,\n  `database_id` int(11) NOT NULL,\n  `template_question` longtext NOT NULL,\n  `template_command` longtext NOT NULL,\n  `template_command_type` varchar(15) DEFAULT NULL COMMENT \'SELECT,INSERT,UPDATE,DELETE\',\n  `template_level` varchar(15) DEFAULT NULL COMMENT \'REMEMBER,UNDERSTAND,IMPLEMENT,ANALYSIS\',\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\'\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n-- --------------------------------------------------------\n\n--\n-- Table structure for table `users`\n--\n\nCREATE TABLE `users` (\n  `user_id` int(11) NOT NULL,\n  `user_username` varchar(50) NOT NULL,\n  `user_password` varchar(50) NOT NULL,\n  `user_prename` int(11) NOT NULL,\n  `user_firstname` varchar(50) DEFAULT NULL,\n  `user_lastname` varchar(50) DEFAULT NULL,\n  `user_email` varchar(100) DEFAULT NULL,\n  `user_type` varchar(50) DEFAULT NULL COMMENT \'STUDENT,TEACHER,ADMIN\',\n  `enable` varchar(5) NOT NULL DEFAULT \'Y\',\n  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),\n  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;\n\n--\n-- Dumping data for table `users`\n--\n\nINSERT INTO `users` (`user_id`, `user_username`, `user_password`, `user_prename`, `user_firstname`, `user_lastname`, `user_email`, `user_type`, `enable`, `created_at`, `updated_at`) VALUES\n(1, \'test\', \'test\', 1, \'t\', \'t\', NULL, \'ADMIN\', \'Y\', \'2022-04-19 17:55:55\', \'2022-04-19 17:55:55\'),\n(2, \'test_teacher\', \'test_teacher\', 1, \'test_teacher\', \'test_teacher\', NULL, \'TEACHER\', \'Y\', \'2022-05-08 21:04:14\', \'2022-05-08 21:04:14\'),\n(5, \'test_admin\', \'test_password\', 1, \'ADMIN\', \'ADMIN\', NULL, \'ADMIN\', \'Y\', \'2022-05-27 15:31:22\', \'2022-05-27 15:31:22\');\n\n--\n-- Indexes for dumped tables\n--\n\n--\n-- Indexes for table `admin`\n--\nALTER TABLE `admin`\n  ADD KEY `user_id` (`user_id`),\n  ADD KEY `admin_id` (`admin_id`);\n\n--\n-- Indexes for table `courses`\n--\nALTER TABLE `courses`\n  ADD PRIMARY KEY (`course_id`);\n\n--\n-- Indexes for table `majors`\n--\nALTER TABLE `majors`\n  ADD PRIMARY KEY (`major_id`);\n\n--\n-- Indexes for table `prename_list`\n--\nALTER TABLE `prename_list`\n  ADD PRIMARY KEY (`prename_id`),\n  ADD KEY `prename_text` (`prename_text`);\n\n--\n-- Indexes for table `quiz`\n--\nALTER TABLE `quiz`\n  ADD PRIMARY KEY (`quiz_id`),\n  ADD KEY `quiz_question` (`quiz_question`(768)),\n  ADD KEY `quiz_answer` (`quiz_answer`(768)),\n  ADD KEY `quiz_group_id` (`quiz_group_id`);\n\n--\n-- Indexes for table `quiz_groups`\n--\nALTER TABLE `quiz_groups`\n  ADD PRIMARY KEY (`quiz_group_id`),\n  ADD KEY `database_id` (`database_id`),\n  ADD KEY `quiz_start_date` (`quiz_start_date`),\n  ADD KEY `quiz_end_date` (`quiz_end_date`),\n  ADD KEY `subject_group_id` (`subject_group_id`);\n\n--\n-- Indexes for table `students`\n--\nALTER TABLE `students`\n  ADD KEY `user_id` (`user_id`),\n  ADD KEY `major_id` (`major_id`),\n  ADD KEY `student_id` (`student_id`);\n\n--\n-- Indexes for table `student_reg_subject_group`\n--\nALTER TABLE `student_reg_subject_group`\n  ADD PRIMARY KEY (`student_reg_subject_group_id`),\n  ADD KEY `user_student_id` (`user_student_id`),\n  ADD KEY `subject_group_id` (`subject_group_id`);\n\n--\n-- Indexes for table `student_test_result`\n--\nALTER TABLE `student_test_result`\n  ADD PRIMARY KEY (`student_test_result_id`),\n  ADD KEY `student_reg_id` (`student_reg_id`),\n  ADD KEY `quiz_id` (`quiz_id`);\n\n--\n-- Indexes for table `subjects`\n--\nALTER TABLE `subjects`\n  ADD PRIMARY KEY (`subject_id`),\n  ADD KEY `subject_code` (`subject_code`),\n  ADD KEY `course_id` (`course_id`);\n\n--\n-- Indexes for table `subject_groups`\n--\nALTER TABLE `subject_groups`\n  ADD PRIMARY KEY (`subject_group_id`),\n  ADD KEY `user_id_teacher` (`user_id_teacher`),\n  ADD KEY `subject_id` (`subject_id`);\n\n--\n-- Indexes for table `system_databases`\n--\nALTER TABLE `system_databases`\n  ADD PRIMARY KEY (`database_id`);\n\n--\n-- Indexes for table `system_tables`\n--\nALTER TABLE `system_tables`\n  ADD PRIMARY KEY (`system_table_id`),\n  ADD KEY `system_database_id` (`system_database_id`),\n  ADD KEY `system_table_name` (`system_table_name`),\n  ADD KEY `comment` (`comment`(768));\n\n--\n-- Indexes for table `teachers`\n--\nALTER TABLE `teachers`\n  ADD KEY `user_id` (`user_id`),\n  ADD KEY `teacher_id` (`teacher_id`),\n  ADD KEY `teacher_phone` (`teacher_phone`);\n\n--\n-- Indexes for table `templates`\n--\nALTER TABLE `templates`\n  ADD PRIMARY KEY (`template_id`),\n  ADD KEY `template_command_type` (`template_command_type`),\n  ADD KEY `template_level` (`template_level`),\n  ADD KEY `database_id` (`database_id`);\n\n--\n-- Indexes for table `users`\n--\nALTER TABLE `users`\n  ADD PRIMARY KEY (`user_id`),\n  ADD KEY `user_prename` (`user_prename`),\n  ADD KEY `user_email` (`user_email`);\n\n--\n-- AUTO_INCREMENT for dumped tables\n--\n\n--\n-- AUTO_INCREMENT for table `courses`\n--\nALTER TABLE `courses`\n  MODIFY `course_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `majors`\n--\nALTER TABLE `majors`\n  MODIFY `major_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `prename_list`\n--\nALTER TABLE `prename_list`\n  MODIFY `prename_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;\n\n--\n-- AUTO_INCREMENT for table `quiz`\n--\nALTER TABLE `quiz`\n  MODIFY `quiz_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;\n\n--\n-- AUTO_INCREMENT for table `quiz_groups`\n--\nALTER TABLE `quiz_groups`\n  MODIFY `quiz_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;\n\n--\n-- AUTO_INCREMENT for table `student_reg_subject_group`\n--\nALTER TABLE `student_reg_subject_group`\n  MODIFY `student_reg_subject_group_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `student_test_result`\n--\nALTER TABLE `student_test_result`\n  MODIFY `student_test_result_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `subjects`\n--\nALTER TABLE `subjects`\n  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `subject_groups`\n--\nALTER TABLE `subject_groups`\n  MODIFY `subject_group_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;\n\n--\n-- AUTO_INCREMENT for table `system_databases`\n--\nALTER TABLE `system_databases`\n  MODIFY `database_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;\n\n--\n-- AUTO_INCREMENT for table `system_tables`\n--\nALTER TABLE `system_tables`\n  MODIFY `system_table_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `templates`\n--\nALTER TABLE `templates`\n  MODIFY `template_id` int(11) NOT NULL AUTO_INCREMENT;\n\n--\n-- AUTO_INCREMENT for table `users`\n--\nALTER TABLE `users`\n  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;\n\n--\n-- Constraints for dumped tables\n--\n\n--\n-- Constraints for table `admin`\n--\nALTER TABLE `admin`\n  ADD CONSTRAINT `admin_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `quiz`\n--\nALTER TABLE `quiz`\n  ADD CONSTRAINT `quiz_ibfk_1` FOREIGN KEY (`quiz_group_id`) REFERENCES `quiz_groups` (`quiz_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `quiz_groups`\n--\nALTER TABLE `quiz_groups`\n  ADD CONSTRAINT `quiz_groups_ibfk_1` FOREIGN KEY (`database_id`) REFERENCES `system_databases` (`database_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `quiz_groups_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`subject_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `students`\n--\nALTER TABLE `students`\n  ADD CONSTRAINT `students_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `students_ibfk_2` FOREIGN KEY (`major_id`) REFERENCES `majors` (`major_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `student_reg_subject_group`\n--\nALTER TABLE `student_reg_subject_group`\n  ADD CONSTRAINT `student_reg_subject_group_ibfk_1` FOREIGN KEY (`user_student_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `student_reg_subject_group_ibfk_2` FOREIGN KEY (`subject_group_id`) REFERENCES `subject_groups` (`subject_group_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `student_test_result`\n--\nALTER TABLE `student_test_result`\n  ADD CONSTRAINT `student_test_result_ibfk_1` FOREIGN KEY (`student_reg_id`) REFERENCES `student_reg_subject_group` (`student_reg_subject_group_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `student_test_result_ibfk_2` FOREIGN KEY (`quiz_id`) REFERENCES `quiz` (`quiz_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `subjects`\n--\nALTER TABLE `subjects`\n  ADD CONSTRAINT `subjects_ibfk_1` FOREIGN KEY (`course_id`) REFERENCES `courses` (`course_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `subject_groups`\n--\nALTER TABLE `subject_groups`\n  ADD CONSTRAINT `subject_groups_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,\n  ADD CONSTRAINT `subject_groups_ibfk_2` FOREIGN KEY (`user_id_teacher`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `system_tables`\n--\nALTER TABLE `system_tables`\n  ADD CONSTRAINT `system_tables_ibfk_1` FOREIGN KEY (`system_database_id`) REFERENCES `system_databases` (`database_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `teachers`\n--\nALTER TABLE `teachers`\n  ADD CONSTRAINT `teachers_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `templates`\n--\nALTER TABLE `templates`\n  ADD CONSTRAINT `templates_ibfk_1` FOREIGN KEY (`database_id`) REFERENCES `system_databases` (`database_id`) ON DELETE CASCADE ON UPDATE CASCADE;\n\n--\n-- Constraints for table `users`\n--\nALTER TABLE `users`\n  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`user_prename`) REFERENCES `prename_list` (`prename_id`) ON DELETE CASCADE ON UPDATE CASCADE;\nCOMMIT;\n\n/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;\n/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;\n/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;\n');
/*!40000 ALTER TABLE `exam_db` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `quest`
--

DROP TABLE IF EXISTS `quest`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `quest` (
  `secId` varchar(100) DEFAULT NULL,
  `num` varchar(100) DEFAULT NULL,
  `detail` varchar(100) DEFAULT NULL,
  `answer` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `quest`
--

LOCK TABLES `quest` WRITE;
/*!40000 ALTER TABLE `quest` DISABLE KEYS */;
/*!40000 ALTER TABLE `quest` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `score`
--

DROP TABLE IF EXISTS `score`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `score` (
  `std_id` varchar(100) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  KEY `score_ibfk_1` (`std_id`),
  KEY `exam_id` (`exam_id`),
  CONSTRAINT `exam_id` FOREIGN KEY (`exam_id`) REFERENCES `exam` (`exam_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `score_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `score`
--

LOCK TABLES `score` WRITE;
/*!40000 ALTER TABLE `score` DISABLE KEYS */;
/*!40000 ALTER TABLE `score` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sec`
--

DROP TABLE IF EXISTS `sec`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sec` (
  `sec_id` int(11) NOT NULL,
  `subject_id` varchar(100) NOT NULL,
  `teacher_id` varchar(100) NOT NULL,
  PRIMARY KEY (`sec_id`),
  KEY `sec_id_idx` (`sec_id`),
  KEY `sec_ibfk_1` (`subject_id`),
  KEY `sec_ibfk_2` (`teacher_id`),
  CONSTRAINT `sec_ibfk_1` FOREIGN KEY (`subject_id`) REFERENCES `subject` (`subject_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `sec_ibfk_2` FOREIGN KEY (`teacher_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sec`
--

LOCK TABLES `sec` WRITE;
/*!40000 ALTER TABLE `sec` DISABLE KEYS */;
INSERT INTO `sec` VALUES
(1,'subject1','teacher1'),
(2,'subject2','teacher2'),
(3,'subject3','teacher3');
/*!40000 ALTER TABLE `sec` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `student` (
  `std_id` varchar(100) NOT NULL,
  `sec_id` int(11) NOT NULL,
  KEY `student_ibfk_1` (`std_id`),
  KEY `student_ibfk_2_idx` (`sec_id`),
  CONSTRAINT `student_ibfk_1` FOREIGN KEY (`std_id`) REFERENCES `user` (`user_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `student_ibfk_2` FOREIGN KEY (`sec_id`) REFERENCES `sec` (`sec_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subject`
--

DROP TABLE IF EXISTS `subject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `subject` (
  `subject_id` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  `des` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`subject_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subject`
--

LOCK TABLES `subject` WRITE;
/*!40000 ALTER TABLE `subject` DISABLE KEYS */;
INSERT INTO `subject` VALUES
('subject1','subject1','subject1'),
('subject2','subject2','subject2'),
('subject3','subject3','subject3');
/*!40000 ALTER TABLE `subject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test`
--

DROP TABLE IF EXISTS `test`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `test` (
  `test_id` varchar(100) NOT NULL,
  `exam_db_id` varchar(100) NOT NULL,
  `sec_id` int(11) NOT NULL,
  PRIMARY KEY (`test_id`),
  KEY `test_id_idx` (`test_id`),
  KEY `test_ibfk_1` (`exam_db_id`),
  KEY `test_ibfk_2_idx` (`sec_id`),
  CONSTRAINT `test_ibfk_1` FOREIGN KEY (`exam_db_id`) REFERENCES `exam_db` (`exam_db_id`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `test_ibfk_2` FOREIGN KEY (`sec_id`) REFERENCES `sec` (`sec_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test`
--

LOCK TABLES `test` WRITE;
/*!40000 ALTER TABLE `test` DISABLE KEYS */;
/*!40000 ALTER TABLE `test` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `user` (
  `user_id` varchar(100) NOT NULL,
  `firstname` varchar(100) NOT NULL,
  `lastname` varchar(100) NOT NULL,
  `number` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `role` varchar(100) NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(100) NOT NULL,
  `bio` varchar(100) DEFAULT NULL,
  `avatar` varchar(1000) DEFAULT NULL,
  `disabled` tinyint(1) DEFAULT 0,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES
('01','Super','Admin','0953427376','mossamursamur@gmail.com','admin','admin','$2b$12$ykaCDDacNvLxnw8n8N8VbOpptOf9cYKq3wZxBMAwbv2LVp/v/AMBG','I am a super administrator','https://icon-library.com/images/human-icon/human-icon-22.jpg',0),
('student1','student1','student1','student1','student1','student','student1','$2b$12$t0bB1L8NhWfJUtJF6Y5qOuGN2kZUY5PxrBZRKu.ufydCvxY9H4CvC',NULL,'https://icon-library.com/images/human-icon/human-icon-22.jpg',0),
('student2','student2','student2','student2','student2','student','student2','$2b$12$PtU7XHRm/QMYI2vMqkKPK.aHz7OaGSk5EfLw40SgJXsbNsPYvOlgu',NULL,'https://icon-library.com/images/human-icon/human-icon-22.jpg',0),
('student3','student3','student3','student3','student3','student','student3','$2b$12$tkhqSvhVjVzOz1kGexSODevl44In82eVFa3GhV8lU3VZBedxntd16',NULL,'https://icon-library.com/images/human-icon/human-icon-22.jpg',0),
('teacher1','teacher1','teacher1','teacher1','teacher1','teacher','teacher1','$2b$12$usebYCS1OUOCi86Ult7QpeqLLcYp/.6oW150OCa9Zc9emhZTvlAD6',NULL,'https://icon-library.com/images/human-icon/human-icon-22.jpg',0),
('teacher2','teacher2','teacher2','teacher2','teacher2','teacher','teacher2','$2b$12$ypGkPn7MqQNPhFquW95QyO8gX22Jqfms/dqGRYXwvRPfklq2nrAkO',NULL,'https://icon-library.com/images/human-icon/human-icon-22.jpg',0),
('teacher3','teacher3','teacher3','teacher3','teacher3','teacher','teacher3','$2b$12$x5VfOasKabSdQfLmnheKC.L0aGsTYjtlxqaksIXI.2w5PWuqj47Ae',NULL,'https://icon-library.com/images/human-icon/human-icon-22.jpg',0);
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-21  8:56:55
