-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 20, 2025 at 08:26 AM
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
-- Database: `khanjee_canada`
--

-- --------------------------------------------------------

--
-- Table structure for table `favorites`
--

CREATE TABLE `favorites` (
  `id` int(11) NOT NULL,
  `f_id` int(11) NOT NULL,
  `fmenu_name` varchar(50) NOT NULL,
  `fmenu_price` varchar(250) NOT NULL,
  `fmenu_desc` varchar(300) NOT NULL,
  `fmenu_image` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `favorites`
--

INSERT INTO `favorites` (`id`, `f_id`, `fmenu_name`, `fmenu_price`, `fmenu_desc`, `fmenu_image`, `date`) VALUES
(1, 4, 'BEEF NIHARI', '1234', 'Crab / Potatoes / Rice', 'img (1).jpg', '2023-06-06 15:10:03'),
(5, 7, 'BEEF PULAO', '1234', 'Crab / Potatoes / Rice', 'img (8).jpg', '2023-06-07 16:35:08'),
(6, 2, 'CHICKEN BIRYANI', '1234', 'Crab / Potatoes / Rice', 'img (7).jpg', '2023-06-09 15:44:03'),
(7, 8, 'CHICKEN PULAO', '1234', 'Crab / Potatoes / Rice', 'img (11).jpeg', '2023-06-09 15:44:17');

-- --------------------------------------------------------

--
-- Table structure for table `menu`
--

CREATE TABLE `menu` (
  `ID` int(11) NOT NULL,
  `M_Name` varchar(50) NOT NULL,
  `M_Price` varchar(250) NOT NULL,
  `M_Desc` varchar(300) NOT NULL,
  `M_Image` varchar(250) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `menu`
--

INSERT INTO `menu` (`ID`, `M_Name`, `M_Price`, `M_Desc`, `M_Image`, `Date`) VALUES
(1, 'CHICKEN QORMA', '1234', 'Crab / Potatoes / Rice', 'img (5).jpg', '2023-05-05 06:02:29'),
(2, 'CHICKEN BIRYANI', '1234', 'Crab / Potatoes / Rice', 'img (7).jpg', '2023-05-05 06:05:04'),
(3, 'SPECIAL ALU CHANA', '1234', 'Crab / Potatoes / Rice', 'img (6).jpg', '2023-05-05 06:05:40'),
(4, 'BEEF NIHARI', '1234', 'Crab / Potatoes / Rice', 'img (1).jpg', '2023-05-05 06:06:16'),
(5, 'MULTIPLE DISHES', '1234', 'Crab / Potatoes / Rice', 'img (3).jpg', '2023-05-05 06:07:35'),
(6, 'MUTTON KARHAI', '1234', 'Crab / Potatoes / Rice', 'img (10).jpg', '2023-05-05 06:08:09'),
(7, 'BEEF PULAO', '1234', 'Crab / Potatoes / Rice', 'img (8).jpg', '2023-05-05 06:09:01'),
(8, 'CHICKEN PULAO', '1234', 'Crab / Potatoes / Rice', 'img (11).jpeg', '2023-05-05 06:12:44');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `order_name` varchar(250) NOT NULL,
  `order_price` int(11) NOT NULL,
  `c_name1` varchar(50) NOT NULL,
  `c_name2` varchar(50) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `c_phone` int(20) NOT NULL,
  `c_address` varchar(250) NOT NULL,
  `date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `order_id`, `order_name`, `order_price`, `c_name1`, `c_name2`, `c_email`, `c_phone`, `c_address`, `date`) VALUES
(1, 3, 'SPECIAL ALU CHANA', 1234, 'Jiyea', 'Bhutto', 'Abc@gmail.com', 312564897, 'gytfcciudrtrrrrrrrrrrrrc', '2023-06-13 15:05:42'),
(2, 2, 'CHICKEN BIRYANI', 1234, 'Jiyea', 'Bhutto', 'Abc@gmail.com', 312564897, 'gytfcciudrtrrrrrrrrrrrrc', '2023-06-13 15:05:42');

-- --------------------------------------------------------

--
-- Table structure for table `register`
--

CREATE TABLE `register` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Email` varchar(50) DEFAULT NULL,
  `Password` varchar(50) DEFAULT NULL,
  `Role` varchar(50) DEFAULT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `register`
--

INSERT INTO `register` (`ID`, `Name`, `Email`, `Password`, `Role`, `Date`) VALUES
(1, 'Admin', 'admin@gmail.com ', '123', 'admin', '2023-05-05 05:22:38'),
(2, 'Asad', 'asad@gmail.com', '123', 'customer', '2023-05-05 05:23:05');

-- --------------------------------------------------------

--
-- Table structure for table `speciality`
--

CREATE TABLE `speciality` (
  `ID` int(11) NOT NULL,
  `S_Name` varchar(50) NOT NULL,
  `S_Price` varchar(50) NOT NULL,
  `S_Desc` varchar(255) NOT NULL,
  `S_Image` varchar(255) NOT NULL,
  `Date` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `speciality`
--

INSERT INTO `speciality` (`ID`, `S_Name`, `S_Price`, `S_Desc`, `S_Image`, `Date`) VALUES
(1, 'CHICKEN QORMA', '1200', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img (5).jpg', '2023-05-05 05:28:35'),
(2, 'CHICKEN BIRYANI', '1500', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img (7).jpg', '2023-05-05 05:54:18'),
(3, 'SPECIAL ALU CHANA', '1234', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img (6).jpg', '2023-05-05 05:55:12'),
(4, 'BEEF NIHARI', '1234', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img (1).jpg', '2023-05-05 05:56:02'),
(5, 'MULTIPLE DISHES', '1234', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img (3).jpg', '2023-05-05 05:56:58'),
(6, 'CHICKEN PULAO', '1234', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry.', 'img (8).jpg', '2023-05-05 05:57:36');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `favorites`
--
ALTER TABLE `favorites`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `menu`
--
ALTER TABLE `menu`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `register`
--
ALTER TABLE `register`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `speciality`
--
ALTER TABLE `speciality`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `favorites`
--
ALTER TABLE `favorites`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `menu`
--
ALTER TABLE `menu`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `register`
--
ALTER TABLE `register`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `speciality`
--
ALTER TABLE `speciality`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
