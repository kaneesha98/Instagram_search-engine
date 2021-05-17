-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Generation Time: May 11, 2020 at 06:36 PM
-- Server version: 5.7.24
-- PHP Version: 7.2.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `instagram`
--

-- --------------------------------------------------------

--
-- Table structure for table `post_comment`
--

DROP TABLE IF EXISTS `post_comment`;
CREATE TABLE IF NOT EXISTS `post_comment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `post_id` varchar(150) NOT NULL,
  `post_comments` varchar(150) NOT NULL,
  `post_date` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `post_like`
--

DROP TABLE IF EXISTS `post_like`;
CREATE TABLE IF NOT EXISTS `post_like` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `post_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post_like`
--

INSERT INTO `post_like` (`id`, `user_id`, `post_id`) VALUES
(2, '4', '1'),
(3, '4', '2'),
(4, '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
CREATE TABLE IF NOT EXISTS `user` (
  `user_id` int(11) NOT NULL AUTO_INCREMENT,
  `fullname` varchar(150) NOT NULL,
  `username` varchar(150) NOT NULL,
  `user_image` varchar(150) DEFAULT NULL,
  `website` varchar(150) DEFAULT NULL,
  `bio` varchar(250) DEFAULT NULL,
  `gender` varchar(100) DEFAULT NULL,
  `phonenumber` varchar(20) DEFAULT NULL,
  `email` varchar(150) NOT NULL,
  `password` varchar(150) NOT NULL,
  `date` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`user_id`, `fullname`, `username`, `user_image`, `website`, `bio`, `gender`, `phonenumber`, `email`, `password`, `date`) VALUES
(2, 'naus', 'nas', '', '', '', '', '', 'naus@gmail.com', '123456', NULL),
(3, 'n', 'n', NULL, NULL, NULL, NULL, NULL, 'n@gmail.com', '1234', NULL),
(4, 'Naushil Engineer', 'naushil', 'http://192.168.43.100/social/instagram_profileimage/photo-1480365501497-199581be0e66.jpg', 'n@gmail.com', 'hii', 'male', '7984225226', 'naushilengineer@gmail.com', '1234', NULL),
(5, 'na', 'na', NULL, NULL, NULL, NULL, NULL, 'naushil@gmail.com', '123455', NULL),
(6, 'Naushil En', 'u17co005', NULL, NULL, NULL, NULL, NULL, 'naushilengineer@gmail.com', '123', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user_follow`
--

DROP TABLE IF EXISTS `user_follow`;
CREATE TABLE IF NOT EXISTS `user_follow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `follow_id` varchar(150) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_follow`
--

INSERT INTO `user_follow` (`id`, `user_id`, `follow_id`) VALUES
(1, '4', '2'),
(6, '4', '3'),
(7, '4', '5');

-- --------------------------------------------------------

--
-- Table structure for table `user_post`
--

DROP TABLE IF EXISTS `user_post`;
CREATE TABLE IF NOT EXISTS `user_post` (
  `post_id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` varchar(150) NOT NULL,
  `caption` varchar(150) NOT NULL,
  `post_url` varchar(150) NOT NULL,
  `date` varchar(150) DEFAULT NULL,
  PRIMARY KEY (`post_id`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_post`
--

INSERT INTO `user_post` (`post_id`, `user_id`, `caption`, `post_url`, `date`) VALUES
(1, '4', 'Hii', 'http://192.168.43.100/social/posts/instagram_name.png', '2020-03-1706:48:14'),
(2, '4', 'hello', 'http://192.168.43.100/social/posts/photo-1480365501497-199581be0e66.jpg', '2020-03-1706:51:17'),
(3, '4', '#img', 'http://192.168.43.100/social/posts/profile_image.jpg', '2020-03-1707:00:21'),
(4, '4', 'h', 'https://unsplash.com/photos/FKyHyNowp-4', NULL),
(5, '4', 'n', 'https://cdn.pixabay.com/photo/2015/02/24/15/41/dog-647528_960_720.jpg', NULL);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
