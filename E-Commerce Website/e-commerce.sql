-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 07, 2020 at 07:18 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e-commerce`
--

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `price` int(11) NOT NULL,
  `id` int(4) NOT NULL,
  `name` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`price`, `id`, `name`) VALUES
(36000, 1, 'Cannon EOS'),
(40000, 2, 'Nikon EOS'),
(50000, 3, 'Sony DSLR'),
(50000, 4, 'Olympus DSLR'),
(13000, 5, 'Titan Model 301'),
(3000, 6, 'Titan Model 201'),
(8000, 7, 'HMT Milan'),
(18000, 8, 'Faber Luda 111'),
(800, 9, 'H&W'),
(1000, 10, 'Luis Phil'),
(1500, 11, 'John Zok'),
(1300, 12, 'Jhalsani');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(30) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` varchar(30) NOT NULL,
  `contact` varchar(10) NOT NULL,
  `city` varchar(20) NOT NULL,
  `address` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `contact`, `city`, `address`) VALUES
(1, 'smit ', 'smitshah9102000@gmail.com', '25d55ad283aa400af464c76d713c07', '9904567894', 'Vadodara', 'Karelibaug'),
(2, 'jn', 'xyz@gmail.com', '25f9e794323b453885f5181f1b624d', '9856865432', 'dccd', 'qwwdweq'),
(3, 'rushil', 'rush@gmail.com', '7ac66c0f148de9519b8bd264312c4d', '9904567894', 'amdavad', 'gujarat'),
(4, 'sm', 'abc@gmail.com', '25f9e794323b453885f5181f1b624d', '9865343532', 'ascssa', 'dcsdc'),
(5, 'efrf', 'pqr@gmail.com', '25f9e794323b453885f5181f1b624d', '9876543212', 'sdcdsc', 'ascscsa'),
(6, 'jn', 'effewf@gmail.com', '8605fe02afd974f6833ae37b9861c8', '9856865432', 'weede', 'dvresre'),
(7, 'dfg', 'dfg@gmail.com', '25f9e794323b453885f5181f1b624d', '9856865432', 'weede', 'qwwdweq'),
(8, 'sdcdcd', 'asdvarev@gmail.com', 'ee59273cfd938f7b8105f26795210d', '9043223456', 'asacbdsivbd vds', 'j dcjbhcdc'),
(9, 'ss', 'eweffnewn@gmail.com', '25f9e794323b453885f5181f1b624d', '9904567894', 'Vadodara', 'Jdbdhhdh, Bhgg'),
(10, 'rererereer', 'rereererer@gmail.com', '25f9e794323b453885f5181f1b624d', '9887665433', 'asgrehrbrev', 'QWDEWFWEAGRHNTRB'),
(11, 'rdfghgrtit', 'harsh@gmaill.com', '25f9e794323b453885f5181f1b624d', '8765432190', 'ojenccoiewnc', 'aowjefnfwepicfn'),
(12, '', 'harsh@gmail.com', '123456789', '', '', ''),
(13, '', 'harsh@gmail.com', '12345678', '', '', ''),
(14, '', 'harsh@gmail.com', '65335799', '', '', ''),
(15, 'abcd', 'abcd@gmail.com', '25f9e794323b453885f5181f1b624d', '9876543210', 'abcd', 'abcd'),
(16, 'bddeiedn', 'asdfg@gmail.com', '25f9e794323b453885f5181f1b624d', '9876543210', 'ejhbeec', 'jwehabfienf'),
(17, 'pop', 'pop@gmail.com', '25f9e794323b453885f5181f1b624d', '9876543201', 'poppopopo', 'pokopli'),
(18, 'aash', 'aash@gmail.com', '25f9e794323b453885f5181f1b624d', '9876543201', 'qwcewwecwcwc', 'Jdbdhhdh, Bhgg'),
(19, 'kk', 'kk@gmail.com', '25f9e794323b453885f5181f1b624d', '9870654321', 'waccwec', 'wecwec'),
(20, 'mm', 'mm@gmail.com', '25f9e794323b453885f5181f1b624d', '8765432190', 'iubyuctyd', 'jkhjj');

-- --------------------------------------------------------

--
-- Table structure for table `users_items`
--

CREATE TABLE `users_items` (
  `user_id` int(100) NOT NULL,
  `item_id` int(100) NOT NULL,
  `status` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users_items`
--

INSERT INTO `users_items` (`user_id`, `item_id`, `status`) VALUES
(5, 2, 'Added to cart'),
(5, 3, 'Added to cart'),
(5, 1, 'Added to cart'),
(7, 2, 'Added to cart'),
(7, 3, 'Added to cart'),
(8, 2, 'Added to cart'),
(8, 3, 'Added to cart'),
(10, 1, 'Added to cart'),
(10, 2, 'Added to cart'),
(10, 3, 'Added to cart'),
(15, 4, 'Added to cart'),
(15, 8, 'Added to cart'),
(15, 1, 'Added to cart'),
(15, 5, 'Added to cart'),
(15, 6, 'Added to cart'),
(15, 9, 'Added to cart'),
(15, 10, 'Added to cart'),
(15, 11, 'Added to cart'),
(15, 12, 'Confirmed'),
(17, 10, 'Added to cart'),
(0, 2, 'Added to cart'),
(20, 6, 'Confirmed');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `items`
--
ALTER TABLE `items`
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
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
