-- phpMyAdmin SQL Dump
-- version 4.8.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2018 at 11:22 PM
-- Server version: 10.1.31-MariaDB
-- PHP Version: 7.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `rabbya_final`
--

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `brand_id` int(100) NOT NULL,
  `brand_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`brand_id`, `brand_title`) VALUES
(1, 'Audemars Piguet'),
(2, 'Vacheron Constantin'),
(3, 'Patek Philippe'),
(4, ' Blancpain'),
(5, 'Chopard'),
(6, 'Ulysse Nardin');

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE `cart` (
  `id` int(10) NOT NULL,
  `p_id` int(10) NOT NULL,
  `ip_add` varchar(250) NOT NULL,
  `user_id` int(10) DEFAULT NULL,
  `qty` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `cat_id` int(100) NOT NULL,
  `cat_title` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`cat_id`, `cat_title`) VALUES
(1, 'Ladies Watches'),
(2, 'Mens Watches'),
(3, 'Rolex'),
(4, 'Rado'),
(5, 'Tag Heur'),
(6, 'Montblanc'),
(7, 'Celvin Klein'),
(8, 'Sunglasses'),
(9, 'Royal Watches');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `trx_id` varchar(255) NOT NULL,
  `p_status` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `user_id`, `product_id`, `qty`, `trx_id`, `p_status`) VALUES
(1, 2, 7, 1, '07M47684BS5725041', 'Completed'),
(2, 2, 2, 1, '07M47684BS5725041', 'Completed');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `product_id` int(100) NOT NULL,
  `product_cat` int(100) NOT NULL,
  `product_brand` int(100) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_price` int(100) NOT NULL,
  `product_desc` text NOT NULL,
  `product_image` text NOT NULL,
  `product_keywords` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_cat`, `product_brand`, `product_title`, `product_price`, `product_desc`, `product_image`, `product_keywords`) VALUES
(1, 1, 2, 'Watch 1', 5000, 'Best Watch ', 'img1.jpg', 'watches'),
(2, 1, 3, 'Watch 2', 25000, 'Best Watch ', 'img2.jpg', 'watches'),
(3, 1, 3, 'Watch 3', 30000, 'Best Watch ', 'img3.jpg', 'watches'),
(4, 1, 3, 'Watch 4', 32000, 'Best Watch ', 'img1.jpg', 'watches'),
(5, 1, 2, 'Watch 5', 1000, 'Best Watch ', 'img2.jpg', 'watches'),
(6, 1, 1, 'Watch 6', 5000, 'Best Watch ', 'img3.jpg', 'watches'),
(7, 1, 1, 'Watch 7', 50000, 'Best Watch ', 'img1.jpg', 'watches'),
(8, 1, 4, 'Watch 8', 40000, 'Best Watch ', 'img2.jpg', 'watches'),
(9, 1, 3, 'Watch 9', 12000, 'Best Watch ', 'img3.jpg', 'watches'),
(10, 2, 6, 'Watch 10', 1000, 'Best Watch ', 'img1.jpg', 'watches'),
(11, 2, 6, 'Watch 11', 200, 'Best Watch ', 'img2.jpg', 'watches'),
(12, 2, 6, 'Watch 12', 500, 'Best Watch ', 'img3.jpg', 'watches'),
(13, 2, 6, 'Watch 13', 200, 'Best Watch ', 'img1.jpg', 'watches'),
(14, 2, 6, 'Watch 14', 400, 'Best Watch ', 'img2.jpg', 'watches'),
(15, 2, 6, 'Watch 15', 500, 'Best Watch ', 'img3.jpg', 'watches'),
(16, 3, 6, 'Watch 16', 600, 'Best Watch ', 'img1.jpg', 'watches'),
(17, 3, 6, 'Watch 17', 1000, 'Best Watch ', 'img2.jpg', 'watches'),
(19, 3, 6, 'Watch 18', 8000, 'Best Watch ', 'img3.jpg', 'watches'),
(20, 4, 5, 'Watch 19', 600, 'Best Watch ', 'img1.jpg', 'watches'),
(21, 4, 5, 'Watch 10', 1000, 'Best Watch ', 'img1.jpg', 'watches'),
(22, 4, 5, 'Watch 11', 200, 'Best Watch ', 'img2.jpg', 'watches'),
(23, 5, 6, 'Watch 12', 500, 'Best Watch ', 'img3.jpg', 'watches'),
(24, 5, 6, 'Watch 13', 200, 'Best Watch ', 'img1.jpg', 'watches'),
(25, 6, 6, 'Watch 14', 400, 'Best Watch ', 'img2.jpg', 'watches'),
(26, 6, 3, 'Watch 15', 500, 'Best Watch ', 'img3.jpg', 'watches'),
(27, 7, 3, 'Watch 16', 600, 'Best Watch ', 'img1.jpg', 'watches'),
(28, 7, 4, 'Watch 17', 1000, 'Best Watch ', 'img2.jpg', 'watches'),
(29, 8, 4, 'Watch 18', 8000, 'Best Watch ', 'img3.jpg', 'watches'),
(30, 8, 4, 'Watch 19', 600, 'Best Watch ', 'img1.jpg', 'watches'),
(31, 9, 1, 'Watch 18', 8000, 'Best Watch ', 'img3.jpg', 'watches'),
(32, 9, 1, 'Watch 19', 600, 'Best Watch ', 'img1.jpg', 'watches'),
(33, 9, 2, 'Watch 17', 1000, 'Best Watch ', 'img2.jpg', 'watches');

-- --------------------------------------------------------

--
-- Table structure for table `user_info`
--

CREATE TABLE `user_info` (
  `user_id` int(10) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(300) NOT NULL,
  `password` varchar(300) NOT NULL,
  `mobile` varchar(10) NOT NULL,
  `address1` varchar(300) NOT NULL,
  `address2` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_info`
--

INSERT INTO `user_info` (`user_id`, `first_name`, `last_name`, `email`, `password`, `mobile`, `address1`, `address2`) VALUES
(1, 'Rabbya', 'Manzra', 'uzmakh97@gmail.com', '3175867', '3175867', '15b', 'Karachi'),
(3, 'Rabbya', 'Manzar', 'bajiangle97@gmail.com', '147f5c2397eaec9d7aa7e8ca5d3e98cb', '1233175867', '15b', 'Karachi');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `cart`
--
ALTER TABLE `cart`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`cat_id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `user_info`
--
ALTER TABLE `user_info`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `brands`
--
ALTER TABLE `brands`
  MODIFY `brand_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `cart`
--
ALTER TABLE `cart`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `cat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `product_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=47;

--
-- AUTO_INCREMENT for table `user_info`
--
ALTER TABLE `user_info`
  MODIFY `user_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
