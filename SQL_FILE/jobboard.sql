-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 17, 2023 at 05:33 AM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jobboard`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `id` int(3) NOT NULL,
  `adminname` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `mypassword` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`id`, `adminname`, `email`, `mypassword`, `created_at`) VALUES
(1, 'admin5@admin.com', 'admin5@admin.com', '$2y$10$JfrgFUoiK9g4ln9ffMA/uOK3evJekFrYIVSFWk/IsrB/7Vx65U40i', '2023-12-17 00:19:05'),
(2, 'admin23@admin.com', 'admin23@admin.com', '$2y$10$053EWTQDYMxEZd6utz/Y2OYOBuHX.yi8IWft0FjS65laexjax6mLG', '2023-12-17 00:19:05');

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(3) NOT NULL,
  `name` varchar(250) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `created_at`) VALUES
(1, 'Designer', '2023-12-17 00:13:59'),
(2, 'Development', '2023-12-17 00:13:59'),
(3, 'Data Science', '2023-12-17 00:16:36'),
(4, 'Engineer', '2023-12-17 00:16:36');

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` int(3) NOT NULL,
  `job_title` varchar(250) NOT NULL,
  `job_region` varchar(250) NOT NULL,
  `job_type` varchar(250) NOT NULL,
  `vacancy` int(3) NOT NULL,
  `job_category` varchar(250) NOT NULL,
  `experience` varchar(250) NOT NULL,
  `salary` varchar(250) NOT NULL,
  `gender` varchar(250) NOT NULL,
  `application_deadline` varchar(250) NOT NULL,
  `job_description` text NOT NULL,
  `responsibilities` text NOT NULL,
  `education_experience` text NOT NULL,
  `other_benifits` text NOT NULL,
  `company_email` varchar(250) NOT NULL,
  `company_name` varchar(250) NOT NULL,
  `company_id` int(3) NOT NULL,
  `company_image` varchar(250) NOT NULL,
  `status` int(3) NOT NULL DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`id`, `job_title`, `job_region`, `job_type`, `vacancy`, `job_category`, `experience`, `salary`, `gender`, `application_deadline`, `job_description`, `responsibilities`, `education_experience`, `other_benifits`, `company_email`, `company_name`, `company_id`, `company_image`, `status`, `created_at`) VALUES
(1, 'Web Designer', 'Europe', 'Full Time', 5, 'Development', '3-6 years', '$50k - $70k', 'Male', '24-12-2023', 'Provide full stack development of new web applications and new features in existing web applications\r\nMaintain and adapt existing web applications used for large-scale educational assessments from cycle to cycle\r\nEstimate development tasks', 'Builds, designs, and maintains all websites and software applications. Regulates exposure to business stakeholders and executive management as well as other authorities. Designs, writes, and edits website content. Understands UI, cross-browser compatibility, and general web functions and standards.', 'University degree or completed vocational training as a software specialist in IT, Computer Science, or a related subject\r\nExperience with full-stack web development\r\nExcellent knowledge of web page design and web UI development\r\nExcellent programming knowledge in JavaScript\r\nVery good knowledge of web development (preferably Node.js, React, Angular, Vue, .NET Web API)\r\nGood knowledge of C#, Entity Framework, ADO.NET\r\nGood knowledge of database technologies and database design, preferably in MS SQL Server\r\nWorking experience with AWS is desirable\r\nExperience using Git or other version control systems\r\nAnalytical way of thinking and ability to deal with multiple tasks based on priorities\r\nGood communication skills and ability to work both independently and as a team player\r\nAbility to communicate effectively in written and oral form in English', 'This challenging position will provide you with the possibility to gain competencies in the interesting and expanding working field of educational research in which continuous improvement and personal development are stimulated', 'user30@kpmg-ja.com', 'user30', 4, 'web-coding.png', 1, '2023-12-16 19:09:28'),
(2, 'Web developer', 'Jamaica', 'Full Time', 2, '', '1-3 years', '$70k - $100k', 'Male', '24-12-2023', 'Builds, designs, and maintains all websites and software applications. Regulates exposure to business stakeholders and executive management as well as other authorities. Designs, writes, and edits website content. Understands UI, cross-browser compatibility, and general web functions and standards.', 'Provide full stack development of new web applications and new features in existing web applications\r\nMaintain and adapt existing web applications used for large-scale educational assessments from cycle to cycle\r\nEstimate development tasks', 'University degree or successful completion of vocational training as a software specialist in IT, Computer Science, or a related subject\r\nExperience with full-stack web development\r\nExcellent knowledge of web page design and web UI development\r\nExcellent programming knowledge of JavaScript\r\nVery good knowledge of web development (preferably Node.js, React, Angular, Vue, .NET Web API)\r\nGood knowledge of C#, Entity Framework, ADO.NET\r\nGood knowledge of database technologies and database design, preferably in MS SQL Server\r\nWorking experience with AWS is desirable\r\nExperience using Git or other version control systems\r\nAnalytical way of thinking and ability to deal with multiple tasks based on priorities\r\nGood communication skills and ability to work both independently and as a team player\r\nAbility to communicate effectively in written and oral form in English', 'This challenging position will provide you with the possibility to gain competencies in the interesting and expanding working field of educational research in which continuous improvement and personal development are stimulated', 'user30@kpmg-ja.com', 'user30', 4, 'web-coding.png', 0, '2023-12-16 19:12:55');

-- --------------------------------------------------------

--
-- Table structure for table `job_applications`
--

CREATE TABLE `job_applications` (
  `id` int(3) NOT NULL,
  `username` varchar(250) NOT NULL,
  `email` varchar(250) NOT NULL,
  `cv` varchar(250) NOT NULL,
  `worker_id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `job_title` varchar(250) NOT NULL,
  `company_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `job_applications`
--

INSERT INTO `job_applications` (`id`, `username`, `email`, `cv`, `worker_id`, `job_id`, `job_title`, `company_id`, `created_at`) VALUES
(1, 'dreamer', 'dream.job@yahoo.com', '', 9, 1, 'Web Designer', 0, '2023-12-17 00:05:20');

-- --------------------------------------------------------

--
-- Table structure for table `saved_jobs`
--

CREATE TABLE `saved_jobs` (
  `id` int(3) NOT NULL,
  `job_id` int(3) NOT NULL,
  `worker_id` int(3) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `searches`
--

CREATE TABLE `searches` (
  `id` int(3) NOT NULL,
  `keyword` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `searches`
--

INSERT INTO `searches` (`id`, `keyword`, `created_at`) VALUES
(1, 'web Developer', '2023-12-16 23:41:01'),
(2, 'Web Designer', '2023-12-16 23:41:01'),
(3, 'Network Engineer', '2023-12-16 23:42:12'),
(4, 'Software Programmer', '2023-12-16 23:42:12');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `username` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `mypassword` varchar(200) NOT NULL,
  `img` varchar(200) NOT NULL,
  `type` varchar(20) NOT NULL,
  `cv` varchar(250) DEFAULT NULL,
  `title` varchar(200) DEFAULT NULL,
  `bio` varchar(600) DEFAULT NULL,
  `facebook` varchar(300) DEFAULT NULL,
  `twitter` varchar(300) DEFAULT NULL,
  `linkedin` varchar(200) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `mypassword`, `img`, `type`, `cv`, `title`, `bio`, `facebook`, `twitter`, `linkedin`, `created_at`) VALUES
(1, 'username22', 'username22@gmail.com', '$2y$10$JfrgFUoiK9g4ln9ffMA/uOK3evJekFrYIVSFWk/IsrB/7Vx65U40i', 'girl_1.jpg', 'Worker', 'Mohamed_Hassan_Resume.pdf', 'Web developer ', '25 years of experience in the industry. Dedicated and goal-oriented, I always go above and beyond on my projects to ensure that the objectives are achieved.', NULL, NULL, NULL, '2023-12-13 01:26:40'),
(2, 'user12', 'user12@user.com', '$2y$10$vrQgKqaQsEhcf.I27Rf.vuBSjk7Gw4bO7ZMiuoHZp3Q39uNgtQhLO', 'web-coding.png', 'Worker', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-16 15:38:16'),
(3, 'user25', 'user25@ncbjamaica.com', '$2y$10$053EWTQDYMxEZd6utz/Y2OYOBuHX.yi8IWft0FjS65laexjax6mLG', 'wp5670175.jpg', 'Company', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-16 15:39:38'),
(4, 'user30', 'user30@kpmg-ja.com', '$2y$10$ZTOHiviEVVPYWV2vjfaHsenO5KLFg83sOqz2u6xcuPHuPatWLHApy', 'web-coding.png', 'Company', NULL, NULL, NULL, NULL, NULL, NULL, '2023-12-16 15:40:49');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `job_applications`
--
ALTER TABLE `job_applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `searches`
--
ALTER TABLE `searches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `job_applications`
--
ALTER TABLE `job_applications`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `saved_jobs`
--
ALTER TABLE `saved_jobs`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `searches`
--
ALTER TABLE `searches`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
