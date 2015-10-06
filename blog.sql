-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Oct 06, 2015 at 07:28 PM
-- Server version: 5.6.25
-- PHP Version: 5.5.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(50) NOT NULL,
  `name` varchar(24) NOT NULL
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`) VALUES
(1, 'Uncategorized'),
(2, 'PHP'),
(4, 'test'),
(5, 'CSS'),
(7, '11111'),
(8, 'poem'),
(9, 'English');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(56) NOT NULL,
  `cat_id` int(50) NOT NULL,
  `title` varchar(255) NOT NULL,
  `contents` text NOT NULL,
  `date_posted` datetime NOT NULL DEFAULT '0000-00-00 00:00:00'
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `cat_id`, `title`, `contents`, `date_posted`) VALUES
(1, 1, 'First post', 'Awesome post yey', '2015-09-23 13:36:57'),
(2, 1, 'Second post', 'Very useful post', '2015-09-23 13:38:47'),
(3, 2, 'PHP tutorial', 'It is a php tutorial', '2015-09-23 13:39:20'),
(5, 5, 'CSS Style', 'Three types:\r\n1.inline\r\n2.internal\r\n3.external', '2015-09-24 20:49:32'),
(7, 8, 'Bangla poem', 'I like to read bengali poems.I love it', '2015-09-25 20:52:35'),
(8, 9, 'Enhlish Poem', 'fasKFK HDFGAG', '2015-09-29 10:25:18'),
(9, 2, 'Fifth Post', 'tyewew', '2015-09-29 12:31:02');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `id` int(100) NOT NULL,
  `username` varchar(24) NOT NULL,
  `email` varchar(24) NOT NULL,
  `password` varchar(24) NOT NULL,
  `regtime` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `email`, `password`, `regtime`) VALUES
(3, 'chanpa', 'chanpacste@gmail.com', '81dc9bdb52d04dc20036dbd8', '2015-09-24 09:43:49'),
(16, 'dolan', 'dolan@yahoo.com', '698d51a19d8a121ce581499d', '2015-09-29 09:52:16'),
(17, 'lopa', 'lopamajumder27@gmail.com', '6512bd43d9caa6e02c990b0a', '2015-09-29 10:23:30'),
(18, 'sazzad', 's@gmail.com', '550a141f12de6341fba65b0a', '2015-09-29 11:15:37'),
(19, 'poly', 'polycste@gmail.com', 'c505a69ec179afb91b357bbb', '2015-09-29 11:16:40');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `name` (`name`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(50) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(56) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=20;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
