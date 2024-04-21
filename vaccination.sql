-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 29, 2023 at 04:25 PM
-- Server version: 10.4.18-MariaDB
-- PHP Version: 7.3.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `vaccination`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointment`
--

CREATE TABLE `appointment` (
  `id` int(11) NOT NULL,
  `patient_id` int(11) DEFAULT NULL,
  `vaccine_hospital_id` int(11) DEFAULT NULL,
  `datetime` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'onprogress',
  `token` varchar(1000) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `appointment`
--

INSERT INTO `appointment` (`id`, `patient_id`, `vaccine_hospital_id`, `datetime`, `status`, `token`, `created_at`, `updated_at`) VALUES
(3, 4, 12, '2023-04-07T15:02', 'onprogress', '63f83abea8796', '2023-02-24 04:19:10', '2023-04-05 15:02:55'),
(5, 9, 12, '2023-02-24T18:22', 'decline', '63f84d6b13505', '2023-02-24 05:38:51', '2023-03-01 11:41:11'),
(7, 4, 7, '2023-02-28T17:56', 'decline', '63f84d88a5976', '2023-02-24 05:39:20', '2023-03-14 11:19:58'),
(39, 16, 20, '2023-03-18T01:54', 'onprogress', '6413ffa4df46c', '2023-03-17 05:50:28', '2023-03-17 10:51:27'),
(40, 15, 16, NULL, 'completed', '642d47a3d5750', '2023-04-05 10:04:19', '2023-04-05 15:05:33');

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `contact_no` varchar(50) NOT NULL,
  `status` varchar(50) DEFAULT 'unread',
  `subject` longtext DEFAULT NULL,
  `message` longtext NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`id`, `name`, `email`, `contact_no`, `status`, `subject`, `message`, `created_at`, `updated_at`) VALUES
(3, 'zar', 'khanzar996@gmail.com', '03032563283', 'read', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it t', 'please', '2023-02-03 18:12:23', '2023-02-24 10:15:28'),
(5, 'test', 'test@gmail.com', '0403043034', 'read', 'kcdkczlkklczxkl', ' Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum', '2023-02-07 04:28:31', '2023-02-24 10:17:07'),
(6, 'Zaryab khan', 'kibriyakhan006@gmail.com', '123123', 'read', 'sdfsdf', 'dafdafdsfsdfds', '2023-03-01 12:00:53', '2023-03-01 17:01:07'),
(7, 'Zaryab khan', 'test123@gmail.com', '123123', 'read', '1334', 'dfsdfsfdsfsdfds', '2023-03-02 19:10:07', '2023-03-11 17:51:32');

-- --------------------------------------------------------

--
-- Table structure for table `hospital`
--

CREATE TABLE `hospital` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `address` varchar(100) DEFAULT NULL,
  `contact` varchar(13) DEFAULT NULL,
  `timing_opening` varchar(50) DEFAULT NULL,
  `timing_closing` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `status` varchar(55) DEFAULT 'inactive',
  `map_location` longtext DEFAULT NULL,
  `password` varchar(55) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `hospital`
--

INSERT INTO `hospital` (`id`, `name`, `email`, `address`, `contact`, `timing_opening`, `timing_closing`, `description`, `status`, `map_location`, `password`) VALUES
(2, 'Abbasi Shaheed hospital ', 'abbasishaheed@gmail.com', 'Block 3 Nazimabad, Karachi, Karachi City, Sindh', '2147483647345', '07:36', '12:36', 'Abbasi Shaheed Hospital is a teaching hospital established in 1974 offering finest quality healthcare and medical education', 'Active', NULL, '12345'),
(4, 'Safi', 'safi@gmail.com', '033493949343', 'skdskdskdskkd', '10:43', '22:43', 'testing', 'Active', 'null', '123456'),
(6, 'KIRAN HOSPITAL', 'Kiranhospital@gmail.com', 'D 29, D 29 Kiran Hospital Rd, Gulzar-e-Hijri New Rizvia Society Sector 34 B Gulzar E Hijri Scheme 33', '9482394239829', '09:59', '12:00', 'Karachi Institute of Radiotherapy and Nuclear Medicine is a cancer hospital in Karachi under administrative control of Pakistan Atomic Energy Commission, duly registered with the International Atomic Energy Agency.', 'Active', '', '123'),
(11, 'Sindh Goverment Hospital', 'sindh@gmail.com', 'liaquatabad no 10 karachi', '29348230942', '02:24', '11:29', 'very good hospital ', 'Active', '', '12345'),
(12, 'abbasi', 'abbasi@gmail.com', '5345345345', '3456345', '10:58', '04:54', 'fglfkddjklgjdfgkldfj', 'Active', '', '123');

-- --------------------------------------------------------

--
-- Table structure for table `parent`
--

CREATE TABLE `parent` (
  `id` int(11) NOT NULL,
  `name` varchar(55) DEFAULT NULL,
  `email` varchar(55) DEFAULT NULL,
  `nic` varchar(15) DEFAULT NULL,
  `mobile_no` varchar(15) DEFAULT NULL,
  `status` varchar(55) DEFAULT 'active',
  `password` varchar(55) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parent`
--

INSERT INTO `parent` (`id`, `name`, `email`, `nic`, `mobile_no`, `status`, `password`, `created_at`, `updated_at`) VALUES
(1, 'Zaryab khan', 'kibriyakhan006@gmail.com', '3520114098941', '03032563283', 'Inactive', '12345', '2023-02-14 04:58:45', '2023-03-14 11:14:49'),
(18, 'Zaryab khan', 'khanzar996@gmail.com', '3520136799867', '03032563283', 'active', '12345', '2023-03-14 06:15:46', '2023-03-14 11:15:46'),
(19, 'umer', 'ali1@gmail.com', '4444564', '56456456456', 'active', '123', '2023-03-17 05:46:39', '2023-03-17 10:46:39');

-- --------------------------------------------------------

--
-- Table structure for table `patient`
--

CREATE TABLE `patient` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `father_name` varchar(50) DEFAULT NULL,
  `parent_id` int(11) DEFAULT NULL,
  `nic` varchar(13) DEFAULT NULL,
  `date_of_birth` varchar(10) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `contact` varchar(15) DEFAULT NULL,
  `address` varchar(500) DEFAULT NULL,
  `any_diseases` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `password` varchar(50) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `patient`
--

INSERT INTO `patient` (`id`, `name`, `father_name`, `parent_id`, `nic`, `date_of_birth`, `email`, `contact`, `address`, `any_diseases`, `status`, `password`, `created_at`, `updated_at`) VALUES
(4, 'Zaryab khan', 'aslam khan', 1, '35201-1409894', '31-07-2002', 'khanzar996@gmail.com', '03032563283', '3/8 liaquatabad near bilal masjid karachi', 'cough', 'active', '123456', '2023-02-10 02:34:46', '2023-02-23 12:24:49'),
(9, 'SURAB', NULL, 1, '3514098941222', '12 FEB', 'saf22i@gmail.com', '033493949111', '38 liaquatabad near bilal masjid karachi', 'cough', 'Active', '123', '2023-02-14 05:49:18', '2023-03-14 11:16:15'),
(15, 'kibriyakhan', NULL, 18, '3514098941231', '1998-10-21', 'kibriyakhan006@gmail.com', '0303303030', '38 liaquatabad near bilal masjid karachi', 'no', 'active', '12345', '2023-03-14 06:19:10', '2023-03-14 11:19:10'),
(16, 'huzaifa', NULL, 19, '5678678', '2023-03-07', 'khanzar435@gmail.com', '65675', '67567567', 'no', 'active', '123', '2023-03-17 05:48:18', '2023-03-17 10:48:18');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(55) NOT NULL,
  `email` varchar(55) NOT NULL,
  `password` varchar(55) NOT NULL,
  `status` varchar(55) DEFAULT 'Active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created_at`, `updated_at`) VALUES
(14, 'zaryab khan', 'khanzar996@gmail.com', '12345', 'Active', '2023-03-14 06:14:09', '2023-03-14 11:14:09');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine`
--

CREATE TABLE `vaccine` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `mg` varchar(50) DEFAULT NULL,
  `description` longtext DEFAULT NULL,
  `manufacturing_date` varchar(13) DEFAULT NULL,
  `expire_date` varchar(15) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine`
--

INSERT INTO `vaccine` (`id`, `name`, `mg`, `description`, `manufacturing_date`, `expire_date`, `status`, `created_at`, `updated_at`) VALUES
(2, 'moderna', '500', 'The Moderna COVID‑19 vaccine is used to provide protection against infection by the SARS‑CoV‑2 virus in order to prevent COVID‑19.', '19022000', '19022023', 'Active', '2023-02-09 02:11:41', '2023-03-14 12:14:58'),
(3, 'fizer', '2333', 'sfgddddddddddddddd', '2023-02-15', '2023-02-28', 'Inactive', '2023-02-10 02:53:05', '2023-03-03 09:19:08'),
(4, 'fizzer', '500', 'asl;dkasld;akda;ldka;l', '2023-02-11', '2023-02-15', 'Inactive', '2023-02-10 02:57:07', '2023-03-03 09:19:09'),
(5, 'polio', '200', 'for child', '2023-02-01', '2023-02-20', 'Inactive', '2023-02-10 04:40:52', '2023-03-03 09:20:34'),
(10, 'Moderna', '200', 'The vaccine is safe and effective for all individuals aged 6 months and above. In line with the WHO Prioritization Roadmap  and the WHO Values Framework, older adults, health workers and immunocompromised persons should be prioritised.', '2023-03-22', '2023-03-26', 'active', '2023-03-03 04:37:34', '2023-03-03 09:37:34'),
(11, 'POLIO', '250', 'Polio vaccines are vaccines used to prevent poliomyelitis. Two types are used: an inactivated poliovirus given by injection and a weakened poliovirus given by mouth. The World Health Organization recommends all children be fully vaccinated against polio', '2023-03-01', '2023-03-27', 'active', '2023-03-03 11:38:45', '2023-03-14 11:19:36');

-- --------------------------------------------------------

--
-- Table structure for table `vaccine_hospital`
--

CREATE TABLE `vaccine_hospital` (
  `id` int(11) NOT NULL,
  `vaccine_id` int(11) DEFAULT NULL,
  `hospital_id` int(11) DEFAULT NULL,
  `quantity` varchar(50) DEFAULT NULL,
  `status` varchar(50) DEFAULT 'active',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` datetime DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `vaccine_hospital`
--

INSERT INTO `vaccine_hospital` (`id`, `vaccine_id`, `hospital_id`, `quantity`, `status`, `created_at`, `updated_at`) VALUES
(3, 3, 4, '640000', 'active', '2023-02-10 04:20:22', '2023-02-10 10:17:43'),
(7, 2, 4, '896', 'active', '2023-02-10 04:37:08', '2023-02-10 10:17:43'),
(11, 2, 2, '50150', 'active', '2023-02-10 05:46:08', '2023-03-17 10:59:15'),
(12, 3, 2, '124', 'active', '2023-02-10 05:46:33', '2023-02-25 18:28:10'),
(13, 5, 4, '100', 'active', '2023-02-23 07:01:38', '2023-02-23 12:01:38'),
(16, 5, 2, '50', 'active', '2023-02-25 13:26:17', '2023-02-25 18:26:17'),
(18, 4, 2, '50000', 'active', '2023-03-01 07:21:01', '2023-03-01 12:21:01'),
(19, 2, 6, '100', 'active', '2023-03-02 17:51:26', '2023-03-02 22:51:26'),
(20, 10, 6, '100', 'active', '2023-03-03 11:30:02', '2023-03-03 16:30:02');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointment`
--
ALTER TABLE `appointment`
  ADD PRIMARY KEY (`id`),
  ADD KEY `patient_id` (`patient_id`),
  ADD KEY `vaccine_hospital_id` (`vaccine_hospital_id`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hospital`
--
ALTER TABLE `hospital`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `address` (`address`),
  ADD UNIQUE KEY `contact` (`contact`);

--
-- Indexes for table `parent`
--
ALTER TABLE `parent`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `nic` (`nic`);

--
-- Indexes for table `patient`
--
ALTER TABLE `patient`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `nic` (`nic`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `parent_id` (`parent_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `vaccine`
--
ALTER TABLE `vaccine`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `vaccine_hospital`
--
ALTER TABLE `vaccine_hospital`
  ADD PRIMARY KEY (`id`),
  ADD KEY `vaccine_id` (`vaccine_id`),
  ADD KEY `hospital_id` (`hospital_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointment`
--
ALTER TABLE `appointment`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `hospital`
--
ALTER TABLE `hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `parent`
--
ALTER TABLE `parent`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `patient`
--
ALTER TABLE `patient`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `vaccine`
--
ALTER TABLE `vaccine`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `vaccine_hospital`
--
ALTER TABLE `vaccine_hospital`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `appointment`
--
ALTER TABLE `appointment`
  ADD CONSTRAINT `appointment_ibfk_1` FOREIGN KEY (`patient_id`) REFERENCES `patient` (`id`),
  ADD CONSTRAINT `appointment_ibfk_2` FOREIGN KEY (`vaccine_hospital_id`) REFERENCES `vaccine_hospital` (`id`);

--
-- Constraints for table `patient`
--
ALTER TABLE `patient`
  ADD CONSTRAINT `parent_id` FOREIGN KEY (`parent_id`) REFERENCES `parent` (`id`);

--
-- Constraints for table `vaccine_hospital`
--
ALTER TABLE `vaccine_hospital`
  ADD CONSTRAINT `vaccine_hospital_ibfk_1` FOREIGN KEY (`vaccine_id`) REFERENCES `vaccine` (`id`),
  ADD CONSTRAINT `vaccine_hospital_ibfk_2` FOREIGN KEY (`hospital_id`) REFERENCES `hospital` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
