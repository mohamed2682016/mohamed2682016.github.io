-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 11, 2017 at 12:01 AM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taskbasic`
--

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `name` varchar(255) CHARACTER SET utf8 NOT NULL,
  `username` varchar(255) CHARACTER SET utf8 NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `mobile` varchar(15) NOT NULL,
  `gender` tinyint(4) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `name`, `username`, `password`, `email`, `mobile`, `gender`, `created_at`, `updated_at`) VALUES
(1, 'mohamed ali', 'mohamed', '123456', 'engkoko@yahoo.com', '01274663818', 0, '2017-04-08 03:52:18', '2017-04-08 04:13:23'),
(2, 'samy', 'ali', '12345', 'cscs@yahoo.com', '123456', 1, '2017-04-08 11:12:34', '2017-04-08 11:12:34'),
(7, 'ahmed', 'samy', 'hady', 'cscs@yahodddo.com', '888888888888', 1, '2017-04-08 11:32:53', '2017-04-08 11:32:53'),
(8, 'اسلام محمد', 'الجندي', '123456', 'eslam@gmail.com', '0123456778', 1, '2017-04-10 19:11:43', '2017-04-10 19:11:43'),
(9, 'معتز الشامي', 'الدمرداش', '654321', 'motaz@yahoo.com', '98765432', 0, '2017-04-10 19:13:02', '2017-04-10 19:13:02'),
(11, 'ahmed nady ', 'nady', '123456', 'engnady@yahoo.com', '244444444444444', 1, '2017-04-10 19:43:32', '2017-04-10 19:43:32'),
(12, 'vdsvds', 'affffffffffffffffffffffff', '22222444444444', 'hhhhhhhhh@sd.com', '42222222222', 1, '2017-04-10 20:14:27', '2017-04-10 20:14:27'),
(13, 'taha', 'tahateto', '32329329292', 'dsdsd@hhhhhhhh.com', '223223', 1, '2017-04-10 20:16:38', '2017-04-10 20:16:38'),
(14, 'hhhhhhhhh', 'hhhhhhhhhhhh', '777777777777777', '8888888@yahoo.com', '234444444', 0, '2017-04-10 21:17:39', '2017-04-10 21:17:39');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
