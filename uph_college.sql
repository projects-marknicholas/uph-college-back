-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 24, 2024 at 02:24 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uph_college`
--

-- --------------------------------------------------------

--
-- Table structure for table `applications`
--

CREATE TABLE `applications` (
  `id` int(11) NOT NULL,
  `application_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `created_at` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `applications`
--

INSERT INTO `applications` (`id`, `application_id`, `user_id`, `form_id`, `form_type`, `status`, `created_at`) VALUES
(78, 'application-2', '93b3924484a5f028689bc98408746946', 'form-2', '28e8ad4a23651a99270ee66ee5a054ed', 'accepted', '2024-09-23 13:23:00'),
(79, 'application-3', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'form-3', '0eff149bc9b92236ea76c7531811d128', 'pending', '2024-09-23 13:23:00'),
(80, 'application-4', '2467a1a1838d62bd49df6fe82f77cc27', 'form-4', '53beacaeb007f8b9e0e634fc5822c7da', 'accepted', '2024-09-23 13:23:00'),
(81, 'application-1', '93b3924484a5f028689bc98408746946', 'form-1', '28e8ad4a23651a99270ee66ee5a054ed', 'pending', '2024-09-23 13:23:00'),
(82, 'application-5', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'form-5', '573a6317be978d6d06a79071f7b19cd9', 'declined', '2024-09-23 13:23:00');

-- --------------------------------------------------------

--
-- Table structure for table `deans_list`
--

CREATE TABLE `deans_list` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `application_id` varchar(255) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `suffix` varchar(255) NOT NULL,
  `program` varchar(255) NOT NULL,
  `year_level` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `deans_list`
--

INSERT INTO `deans_list` (`id`, `user_id`, `application_id`, `form_id`, `form_type`, `semester`, `suffix`, `program`, `year_level`, `contact_number`, `created_at`) VALUES
(1, 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'application-123', 'form-123', '28e8ad4a23651a99270ee66ee5a054ed', '2nd', 'Jr.', '[program]', '3rd', '09123456789', '2024-09-24 13:06:51');

-- --------------------------------------------------------

--
-- Table structure for table `entrance_scholarship`
--

CREATE TABLE `entrance_scholarship` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `application_id` varchar(255) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `semester` varchar(255) NOT NULL,
  `academic_year` varchar(255) NOT NULL,
  `course` varchar(255) DEFAULT NULL,
  `contact_number` varchar(255) NOT NULL,
  `honors_received` varchar(255) NOT NULL,
  `gwa` varchar(255) NOT NULL,
  `signature` varchar(255) DEFAULT NULL,
  `date_applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `entrance_scholarship`
--

INSERT INTO `entrance_scholarship` (`id`, `user_id`, `application_id`, `form_id`, `form_type`, `semester`, `academic_year`, `course`, `contact_number`, `honors_received`, `gwa`, `signature`, `date_applied`) VALUES
(1, '84dc1424f0066e995ec64d9d3c39d323', 'application-123', 'form-123', '28e8ad4a23651a99270ee66ee5a054ed', '2nd', '2023-2024', 'Bachelor of Science in Information Technology', '09123456789', 'test, sample, example', '1.0', NULL, '2024-09-22 07:35:53');

-- --------------------------------------------------------

--
-- Table structure for table `scholarship_types`
--

CREATE TABLE `scholarship_types` (
  `id` int(11) NOT NULL,
  `scholarship_type_id` varchar(255) NOT NULL,
  `scholarship_type` varchar(255) NOT NULL,
  `category` varchar(255) DEFAULT NULL,
  `type` varchar(255) DEFAULT NULL,
  `description` text NOT NULL,
  `eligibility` text NOT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `scholarship_types`
--

INSERT INTO `scholarship_types` (`id`, `scholarship_type_id`, `scholarship_type`, `category`, `type`, `description`, `eligibility`, `created_at`) VALUES
(3, '28e8ad4a23651a99270ee66ee5a054ed', 'Entrance Scholarship', 'internal', 'academic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum. Sed auctor, lectus in cursus auctor, felis turpis fermentum dolor, id scelerisque libero nisl at quam. Fusce eget velit non felis tempus hendrerit. Nullam nec efficitur urna, at pharetra risus. Proin sit amet vestibulum nisl. Nulla facilisi. Donec venenatis, eros a congue fermentum, lorem felis sodales nisl, vitae iaculis libero nunc a nisi.', 'samples', '2024-09-21 08:30:34'),
(4, '0eff149bc9b92236ea76c7531811d128', 'Dean\'s List', 'internal', 'academic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum. Sed auctor, lectus in cursus auctor, felis turpis fermentum dolor, id scelerisque libero nisl at quam. Fusce eget velit non felis tempus hendrerit. Nullam nec efficitur urna, at pharetra risus. Proin sit amet vestibulum nisl. Nulla facilisi. Donec venenatis, eros a congue fermentum, lorem felis sodales nisl, vitae iaculis libero nunc a nisi.', 'samples', '2024-09-21 08:49:25'),
(5, 'e1f49238ab0a983ed2af577024437cd8', 'Supreme Student Council', 'internal', 'academic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum. Sed auctor, lectus in cursus auctor, felis turpis fermentum dolor, id scelerisque libero nisl at quam. Fusce eget velit non felis tempus hendrerit. Nullam nec efficitur urna, at pharetra risus. Proin sit amet vestibulum nisl. Nulla facilisi. Donec venenatis, eros a congue fermentum, lorem felis sodales nisl, vitae iaculis libero nunc a nisi.', 'samples', '2024-09-21 08:49:30'),
(6, '697d9f842372cec119481fca193e63d6', 'Student Assistanship', 'Internal', 'Academic', 'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus lacinia odio vitae vestibulum. Sed auctor, lectus in cursus auctor, felis turpis fermentum dolor, id scelerisque libero nisl at quam. Fusce eget velit non felis tempus hendrerit. Nullam nec efficitur urna, at pharetra risus. Proin sit amet vestibulum nisl. Nulla facilisi. Donec venenatis, eros a congue fermentum, lorem felis sodales nisl, vitae iaculis libero nunc a nisi.\n', '[Eligibility]', '2024-09-22 08:00:42'),
(7, '573a6317be978d6d06a79071f7b19cd9', 'The Perpetualite Archives', 'Internal', 'Co-Curricular', '[Description]', '[Eligibility]', '2024-09-23 11:54:00'),
(8, 'f76b905a4c6731df38caebc53ae4bfe7', 'College Council Presidents', 'Internal', 'Co-Curricular', '[Description]', '[Eligibility]', '2024-09-23 11:54:13'),
(9, '53beacaeb007f8b9e0e634fc5822c7da', 'Presidential/Board of Directors Scholars', 'Internal', 'Co-Curricular', '[Description]', '[Eligibility]', '2024-09-23 11:54:26'),
(10, 'f31040dfd734a87c94445c6d40c78eb3', 'Government', 'External', 'Co-Curricular', '[Description]', '[Eligibility]', '2024-09-23 11:54:40'),
(11, '70f8cfb8ac08902483c9aa083ba68170', 'Private', 'External', 'Co-Curricular', '[Description]', '[Eligibility]', '2024-09-23 11:54:47');

-- --------------------------------------------------------

--
-- Table structure for table `student_assistanship`
--

CREATE TABLE `student_assistanship` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `application_id` varchar(255) NOT NULL,
  `form_id` varchar(255) NOT NULL,
  `form_type` varchar(255) NOT NULL,
  `citizenship` varchar(255) NOT NULL,
  `gender` varchar(255) NOT NULL,
  `name_of_father` varchar(255) NOT NULL,
  `name_of_mother` varchar(255) NOT NULL,
  `occupation_of_father` varchar(255) NOT NULL,
  `occupation_of_mother` varchar(255) NOT NULL,
  `contact_number` varchar(255) NOT NULL,
  `special_skills` varchar(255) NOT NULL,
  `copy_of_registration_form` varchar(255) NOT NULL,
  `barangay_clearance` varchar(255) NOT NULL,
  `good_moral` varchar(255) NOT NULL,
  `copy_of_grades` varchar(255) NOT NULL,
  `medical_clearance` varchar(255) NOT NULL,
  `itr` varchar(255) NOT NULL,
  `resume` varchar(255) NOT NULL,
  `signature` varchar(255) NOT NULL,
  `date_applied` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_assistanship`
--

INSERT INTO `student_assistanship` (`id`, `user_id`, `application_id`, `form_id`, `form_type`, `citizenship`, `gender`, `name_of_father`, `name_of_mother`, `occupation_of_father`, `occupation_of_mother`, `contact_number`, `special_skills`, `copy_of_registration_form`, `barangay_clearance`, `good_moral`, `copy_of_grades`, `medical_clearance`, `itr`, `resume`, `signature`, `date_applied`) VALUES
(1, '765523c9e9bc2dc61d0911768e08c49f', 'application-1234', 'form-1234', '0eff149bc9b92236ea76c7531811d128', 'filipino', 'male', 'john doe sr.', 'jane doe ms.', 'programmer', 'accounting', '09123456789', 'playing guitar', 'path/to/form', 'path/to/form', 'path/to/form', 'path/to/form', 'path/to/form', 'path/to/form', 'path/to/form', 'path/to/form', '2024-09-22 07:52:53');

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `subject_id` varchar(255) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `subject_name` varchar(255) NOT NULL,
  `subject_code` varchar(255) NOT NULL,
  `grade` float DEFAULT NULL,
  `units` float DEFAULT NULL,
  `created_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `subject_id`, `user_id`, `subject_name`, `subject_code`, `grade`, `units`, `created_at`) VALUES
(1, 'subject-1', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'subject_1', 'sub1', 3, 1, '2024-09-22 15:05:40'),
(2, 'subject-2', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'subject_2', 'sub2', 1.75, 2, '2024-09-22 15:05:40'),
(3, 'subject-3', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'subject_3', 'sub3', 2.25, 3, '2024-09-22 15:05:40'),
(4, 'subject-4', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'subject_4', 'sub_4', 1, 1, '2024-09-22 15:07:03'),
(5, 'subject-5', 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'subject_5', 'sub_5', 2.75, 2, '2024-09-22 15:07:03');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `user_id` varchar(255) NOT NULL,
  `profile` varchar(255) DEFAULT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) DEFAULT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_of_birth` varchar(255) DEFAULT NULL,
  `place_of_birth` varchar(255) DEFAULT NULL,
  `academic_year` varchar(255) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `role` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `security_key` varchar(255) DEFAULT NULL,
  `last_login` datetime NOT NULL,
  `joined_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `user_id`, `profile`, `first_name`, `middle_name`, `last_name`, `date_of_birth`, `place_of_birth`, `academic_year`, `email`, `password`, `role`, `token`, `security_key`, `last_login`, `joined_at`) VALUES
(13, '93b3924484a5f028689bc98408746946', 'https://lh3.googleusercontent.com/a/ACg8ocKetm6E898FBy7hsx8xgTGnWTTt1UK6k9erEgfah9fpYV7DjeI=s96-c', 'Mark nicholas', NULL, 'Razon', NULL, NULL, NULL, 'razonmarknicholas.cdlb@gmail.com', '$2y$10$KTiKHq3sAbePLmpc5xRhJud6vrnKCllXA90eVgOXYqityUrlqoLWa', 'admin', '', 'a5b11310b0fbda7f6bdaa1c801a6fdb7', '2024-09-24 20:13:19', '2024-09-23 19:37:49'),
(16, 'ca0fc1d6228299bf3e4092c9a4bc6fea', 'https://lh3.googleusercontent.com/a/ACg8ocLoNSZQV9TgNB6u9iYjQ2fZoMgRTF9asN0HUte_pKqm64k-dg=s96-c', 'Alfie', NULL, 'Figuracion', NULL, NULL, NULL, 'alfiefiguracion1108@gmail.com', '$2y$10$Kscy0ph1yJOmmmR1y6T3Oe24u0uDJejeR7z/RSAq2rIGAiDx7MNAG', 'student', '', 'caa5ec2f8f87c77980dfba6e8b631570', '2024-09-24 08:59:51', '2024-09-23 22:23:34'),
(21, '41f3befda27a72c81a6ae14274d7bda1', 'https://lh3.googleusercontent.com/a/ACg8ocK2WN4a_f-dGbBTFAgEgCe2ZrFc0OGmbMCvZXKO8KY-whvsU3k6=s96-c', 'Romeo', NULL, 'Razon', NULL, NULL, NULL, 'romeorazon0225@gmail.com', '$2y$10$NmQ4KHnqFepj7w1UsUR0x.giadepLZ05ebfMVRepyxWdAP1yLzEtW', 'admin', '', 'eab7d003edb4d44b035e093d352a5ad4', '2024-09-24 20:19:47', '2024-09-24 20:18:42');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `applications`
--
ALTER TABLE `applications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `deans_list`
--
ALTER TABLE `deans_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `entrance_scholarship`
--
ALTER TABLE `entrance_scholarship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `scholarship_types`
--
ALTER TABLE `scholarship_types`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_assistanship`
--
ALTER TABLE `student_assistanship`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
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
-- AUTO_INCREMENT for table `applications`
--
ALTER TABLE `applications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=83;

--
-- AUTO_INCREMENT for table `deans_list`
--
ALTER TABLE `deans_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `entrance_scholarship`
--
ALTER TABLE `entrance_scholarship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `scholarship_types`
--
ALTER TABLE `scholarship_types`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `student_assistanship`
--
ALTER TABLE `student_assistanship`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
