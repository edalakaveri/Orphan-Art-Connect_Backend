-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 21, 2026 at 08:25 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `orphan_art_connect`
--

-- --------------------------------------------------------

--
-- Table structure for table `artworks`
--

CREATE TABLE `artworks` (
  `id` int(11) NOT NULL,
  `title` varchar(100) DEFAULT NULL,
  `price` decimal(10,2) DEFAULT NULL,
  `status` varchar(50) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `category` varchar(100) DEFAULT NULL,
  `image` varchar(255) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `artworks`
--

INSERT INTO `artworks` (`id`, `title`, `price`, `status`, `description`, `category`, `image`, `created_at`) VALUES
(1, 'Thread Art', 2200.00, 'pending', NULL, 'Wall Art', NULL, '2025-12-15 17:37:32'),
(3, 'Updated Thread Painting', 2200.00, 'approved', NULL, 'Wall Art', 'thread_art.jpg', '2025-12-16 07:13:33'),
(4, 'Paper Craft', 900.00, 'pending', NULL, 'Handmade', 'paper.jpg', '2025-12-16 07:13:33');

-- --------------------------------------------------------

--
-- Table structure for table `checkout_address`
--

CREATE TABLE `checkout_address` (
  `id` int(11) UNSIGNED NOT NULL,
  `user_id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(50) DEFAULT NULL,
  `address` text NOT NULL,
  `city` varchar(100) DEFAULT NULL,
  `zip_code` varchar(20) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `checkout_address`
--

INSERT INTO `checkout_address` (`id`, `user_id`, `full_name`, `email`, `phone`, `address`, `city`, `zip_code`, `created_at`) VALUES
(1, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-05 09:03:54'),
(2, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'maseed street', 'rly kodur', '516101', '2026-01-05 09:15:22'),
(3, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'maseed street', 'rly kodur', '516101', '2026-01-05 09:21:49'),
(4, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 04:15:56'),
(5, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 04:24:36'),
(6, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 07:48:59'),
(7, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:16:35'),
(8, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:19:15'),
(9, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:19:27'),
(10, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:25:17'),
(11, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:25:20'),
(12, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:25:59'),
(13, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:29:42'),
(14, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:29:43'),
(15, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:29:43'),
(16, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:30:57'),
(17, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:44:43'),
(18, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:45:15'),
(19, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:45:36'),
(20, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:45:39'),
(21, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:47:53'),
(22, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:49:47'),
(23, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:14'),
(24, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:14'),
(25, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:14'),
(26, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:15'),
(27, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:15'),
(28, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:16'),
(29, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:16'),
(30, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:40'),
(31, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 08:50:41'),
(32, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 09:17:56'),
(33, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 09:18:08'),
(34, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 09:18:21'),
(35, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 15:43:53'),
(36, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 15:43:54'),
(37, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 15:46:04'),
(38, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 15:53:20'),
(39, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 15:53:29'),
(40, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 15:58:54'),
(41, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:10:44'),
(42, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:10:56'),
(43, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:18:12'),
(44, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:25:05'),
(45, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:28:13'),
(46, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:32:08'),
(47, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:40:49'),
(48, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 16:45:03'),
(49, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:11:35'),
(50, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:12:11'),
(51, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:17:02'),
(52, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:17:02'),
(53, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:17:02'),
(54, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:22:16'),
(55, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:35:38'),
(56, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:41:33'),
(57, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:50:45'),
(58, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:50:46'),
(59, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 17:55:59'),
(60, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:01:30'),
(61, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:05:24'),
(62, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:11:22'),
(63, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:17:09'),
(64, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:22:54'),
(65, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:28:48'),
(66, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 18:59:05'),
(67, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-06 19:17:18'),
(68, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-07 04:59:35'),
(69, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-07 06:44:44'),
(70, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-07 06:49:31'),
(71, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-09 04:18:53'),
(72, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-09 04:18:55'),
(73, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-09 04:18:55'),
(74, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-14 15:22:00'),
(75, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-21 04:49:54'),
(76, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-21 04:49:54'),
(77, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-21 04:49:54'),
(78, 14, 'joo joo', 'jo@gmail.com', '9618730525', 'massed street', 'rly kodur', '516101', '2026-01-21 05:29:12');

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

CREATE TABLE `events` (
  `id` int(11) NOT NULL,
  `event_name` varchar(100) DEFAULT NULL,
  `location` varchar(100) DEFAULT NULL,
  `event_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`id`, `event_name`, `location`, `event_date`) VALUES
(1, 'Orphan Art Expo', 'Hyderabad', '2025-03-01'),
(2, 'Orphan Art Expo', 'Hyderabad', '2025-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `event_artworks`
--

CREATE TABLE `event_artworks` (
  `mapping_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `artwork_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_artworks`
--

INSERT INTO `event_artworks` (`mapping_id`, `event_id`, `artwork_id`) VALUES
(1, 1, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `event_registrations`
--

CREATE TABLE `event_registrations` (
  `id` int(11) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `num_guests` int(11) DEFAULT 0,
  `registration_fee` decimal(10,2) NOT NULL,
  `special_requests` text DEFAULT NULL,
  `payment_status` enum('Pending','Paid','Failed') DEFAULT 'Pending',
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `event_visitors`
--

CREATE TABLE `event_visitors` (
  `visitor_id` int(11) NOT NULL,
  `event_id` int(11) DEFAULT NULL,
  `visitor_name` varchar(100) DEFAULT NULL,
  `visitor_email` varchar(100) DEFAULT NULL,
  `registration_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `event_visitors`
--

INSERT INTO `event_visitors` (`visitor_id`, `event_id`, `visitor_name`, `visitor_email`, `registration_date`) VALUES
(1, 1, 'John Doe', 'john@gmail.com', '2025-12-16 08:49:22'),
(2, 2, 'Alice Smith', 'alice@gmail.com', '2025-12-16 08:51:23');

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `amount` int(11) DEFAULT NULL,
  `payment_status` varchar(50) DEFAULT NULL,
  `total_amount` decimal(10,2) DEFAULT NULL,
  `status` varchar(20) DEFAULT 'PENDING'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `user_id`, `amount`, `payment_status`, `total_amount`, `status`) VALUES
(1, 1, 1200, 'paid', NULL, 'DELIVERED'),
(2, 1, NULL, NULL, 500.00, 'PENDING'),
(3, 1, 500, NULL, NULL, 'PENDING'),
(4, 1, NULL, NULL, 500.00, 'PENDING');

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `id` int(11) NOT NULL,
  `order_id` int(11) DEFAULT NULL,
  `payment_mode` varchar(50) DEFAULT NULL,
  `transaction_id` varchar(100) DEFAULT NULL,
  `payment_status` enum('success','failed') DEFAULT 'success',
  `paid_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `payments`
--

INSERT INTO `payments` (`id`, `order_id`, `payment_mode`, `transaction_id`, `payment_status`, `paid_at`) VALUES
(1, 1, 'UPI', 'TXN12345', 'success', '2025-12-16 07:29:23'),
(2, 1, 'UPI', 'TXN12345', 'success', '2025-12-16 07:30:39'),
(3, 1, 'UPI', 'TXN12345', 'success', '2025-12-16 07:30:45'),
(4, 1, 'UPI', 'TXN12345', 'success', '2025-12-16 07:34:42'),
(5, 1, 'UPI', 'TXN12345', 'success', '2025-12-16 07:38:18'),
(6, 1, 'UPI', 'TXN12345', 'success', '2025-12-16 07:48:48');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) DEFAULT NULL,
  `email` varchar(100) DEFAULT NULL,
  `password` varchar(255) DEFAULT NULL,
  `role` enum('admin','child_artist','buyer','event_manager') DEFAULT NULL,
  `is_verified` tinyint(4) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `role`, `is_verified`, `created_at`) VALUES
(13, 'Kaveri Edala', 'edalakaveri@gmail.com', '1', 'admin', 0, '2026-01-05 07:47:46'),
(14, 'joo joo', 'jo@gmail.com', '123', 'buyer', 0, '2026-01-05 07:52:43'),
(15, 'bhumika', 'amara@gmail.com', '12345', 'admin', 0, '2026-01-06 17:28:34');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `artworks`
--
ALTER TABLE `artworks`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `checkout_address`
--
ALTER TABLE `checkout_address`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `events`
--
ALTER TABLE `events`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_artworks`
--
ALTER TABLE `event_artworks`
  ADD PRIMARY KEY (`mapping_id`);

--
-- Indexes for table `event_registrations`
--
ALTER TABLE `event_registrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `event_visitors`
--
ALTER TABLE `event_visitors`
  ADD PRIMARY KEY (`visitor_id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_order` (`order_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `artworks`
--
ALTER TABLE `artworks`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `checkout_address`
--
ALTER TABLE `checkout_address`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=79;

--
-- AUTO_INCREMENT for table `events`
--
ALTER TABLE `events`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_artworks`
--
ALTER TABLE `event_artworks`
  MODIFY `mapping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `event_registrations`
--
ALTER TABLE `event_registrations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `event_visitors`
--
ALTER TABLE `event_visitors`
  MODIFY `visitor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `payments`
--
ALTER TABLE `payments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `fk_order` FOREIGN KEY (`order_id`) REFERENCES `orders` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
