-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 20, 2014 at 06:40 PM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `nodeproject`
--
CREATE DATABASE IF NOT EXISTS `nodeproject` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `nodeproject`;

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE IF NOT EXISTS `category` (
  `category_id` int(11) NOT NULL AUTO_INCREMENT,
  `category_name` varchar(50) NOT NULL,
  `category_description` varchar(100) NOT NULL,
  `lft_value` int(10) NOT NULL,
  `rght_value` int(10) NOT NULL,
  PRIMARY KEY (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_description`, `lft_value`, `rght_value`) VALUES
(1, 'clothing', 'This is fine cloth', 1, 22),
(2, 'men', 'Men''s Clothing', 2, 9),
(3, 'suits', 'Men''s suits', 3, 8),
(4, 'slacks', 'Men''s Slacks', 4, 5),
(5, 'jackets', 'Men''s Jacket', 6, 7),
(6, 'women', 'Women''s Clothing', 10, 21),
(7, 'dress', 'Women''s Dress', 11, 16),
(8, 'evening gown', 'Women''s Evening Gown', 12, 13),
(9, 'sundress', 'Women''s Sun Dress', 14, 15),
(10, 'skirts', 'Women''s Skirts', 17, 18),
(11, 'Jeans', 'Women''s Jeans', 19, 20);

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE IF NOT EXISTS `products` (
  `product_id` int(11) NOT NULL AUTO_INCREMENT,
  `product_name` varchar(50) NOT NULL,
  `product_description` varchar(100) NOT NULL,
  `category_id` int(11) NOT NULL,
  `quantity` int(10) NOT NULL,
  PRIMARY KEY (`product_id`),
  KEY `category_id` (`category_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=14 ;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`product_id`, `product_name`, `product_description`, `category_id`, `quantity`) VALUES
(1, 'Pepe Jeans', 'Women Jeans', 11, 10),
(2, 'BlueFly Gown', 'Women Evenin Gown', 8, 10),
(3, 'US POLO Jackets', 'Men Jacket', 5, 10),
(4, 'Spykar Shirts', 'Men shirt', 4, 10),
(5, 'LEE Skirts', 'Women Skirts', 10, 10),
(6, 'Fuck Shirts', 'Men Shirt', 4, 10),
(7, 'Elite Sun Dress', 'Women Sun Dress', 9, 10),
(8, 'Jealous 18 ', 'Women Jeans', 11, 10),
(9, 'Zennat Gown', 'Women Gown', 8, 10),
(10, 'Nike Jackets', 'Men JAcket', 5, 10),
(11, 'Elle Skirts', 'Women Skirts', 10, 10),
(12, 'Indian terrain Shirts', 'Men Shirt', 4, 10),
(13, 'Elite Sun Dress', 'Women Sun Dress', 9, 10);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
