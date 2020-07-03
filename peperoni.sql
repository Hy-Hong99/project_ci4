-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 03, 2020 at 09:12 AM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `peperoni`
--

-- --------------------------------------------------------

--
-- Table structure for table `pizzas`
--

CREATE TABLE `pizzas` (
  `id` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `ingredients` varchar(200) NOT NULL,
  `price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `pizzas`
--

INSERT INTO `pizzas` (`id`, `name`, `ingredients`, `price`) VALUES
(18, 'HYPizza', 'Apple, Banana', 90),
(19, 'HongPizza', 'Mango, Water', 80);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` varchar(50) NOT NULL,
  `address` varchar(500) NOT NULL,
  `role` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `email`, `password`, `address`, `role`) VALUES
(4, 'hy@gmail.com', '12', 'Phreh Vihear', NULL),
(5, 'hong@gmail.com', '123', 'Khampong cham', 1),
(6, 'navy@gmail.com', '1234', 'VIP', NULL),
(7, 'hyhong@gmail.com', '1234567', 'PVH', 1),
(8, 'visa@gmail.com', '123', 'PP', 1),
(9, 'hyhong@gmail.com', '123', 'PVH', 1),
(10, 'rady@gmail.com', '1234567', 'BMC', 1),
(11, 'Rahy@gmail.com', '123', 'KPC', 1),
(12, 'ty@gmail.com', '123', 'fgh', 1),
(13, 'hyhongka@gmail.com', '1234567', 'PVH', 1),
(14, 'rado@gmail.com', '123', 'KPC', 1),
(15, 'hyk@gmail.com', '123', 'fgh', NULL),
(16, 'hy2020@gmail.com', '12345', 'PVH', 1),
(17, 'vy@gmail.com', '123', 'KPT', 1),
(18, 'ka@gmail.com', '123', 'PHP', 1),
(19, 'kav@gmail.com', '1234', 'fgfg', 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pizzas`
--
ALTER TABLE `pizzas`
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
-- AUTO_INCREMENT for table `pizzas`
--
ALTER TABLE `pizzas`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
