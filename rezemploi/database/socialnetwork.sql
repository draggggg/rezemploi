-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 18, 2022 at 02:30 PM
-- Server version: 5.7.24
-- PHP Version: 7.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `socialnetwork`
--

-- --------------------------------------------------------

--
-- Table structure for table `friendship`
--

CREATE TABLE `friendship` (
  `user1_id` int(11) NOT NULL,
  `user2_id` int(11) NOT NULL,
  `friendship_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `friendship`
--

INSERT INTO `friendship` (`user1_id`, `user2_id`, `friendship_status`) VALUES
(2, 1, 1),
(2, 1, 1),
(2, 3, 1),
(2, 4, 1),
(1, 5, 1),
(3, 5, 1),
(4, 5, 1),
(7, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `post_caption` text NOT NULL,
  `post_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `post_public` char(1) NOT NULL,
  `post_by` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `post_caption`, `post_time`, `post_public`, `post_by`) VALUES
(4, 'I share my life with u <3', '2022-03-16 13:58:10', 'Y', 1),
(11, 'Hello there!', '2017-12-22 23:50:06', 'Y', 1),
(12, 'Martin Mouly has changed his profile picture.', '2017-12-22 23:50:06', 'N', 2),
(13, 'A new artwork from the upcoming content.', '2017-12-22 23:50:06', 'Y', 3),
(14, 'New Year Eve Fireworks', '2017-12-22 23:50:06', 'Y', 4),
(15, 'Visit our profile to check out the upcoming transfers and rumors for January 2018', '2017-12-22 23:50:06', 'N', 5),
(16, 'Happy new year!', '2017-12-22 23:50:06', 'N', 5),
(17, 'I hire for an internship in my company', '2022-03-17 13:09:07', 'N', 6),
(22, 'Marc Zuckerberg has changed his profile picture.', '2022-03-17 13:57:43', 'N', 6),
(25, 'I made a great Web development project with my collaborators Pierre, Axel, Lucas and Martin.\r\n\r\nThanks to my team, we have made a great linkedin clone.\r\n\r\nThank u guys ;)', '2022-03-18 14:18:52', 'N', 1),
(26, 'pierre l', '2022-03-18 14:19:38', 'N', 4),
(27, 'Pierre la calvitie c chaud la!!! :o', '2022-03-18 14:20:35', 'Y', 4);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_firstname` varchar(20) NOT NULL,
  `user_lastname` varchar(20) NOT NULL,
  `user_nickname` varchar(20) DEFAULT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_gender` char(1) NOT NULL,
  `user_birthdate` date NOT NULL,
  `user_status` char(1) DEFAULT NULL,
  `user_about` text,
  `user_hometown` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_firstname`, `user_lastname`, `user_nickname`, `user_password`, `user_email`, `user_gender`, `user_birthdate`, `user_status`, `user_about`, `user_hometown`) VALUES
(1, 'Ines', 'Guitton', '', '185f51722a8c6d46d53004916e9965a7', 'inesgui@hotmail.fr', 'F', '1999-11-13', 'I', 'Student who enjoyed life', 'Boulogne'),
(2, 'pierre', 'gueveneux', 'pierro', '9cdfb439c7876e703e307864c9167a15', 'pierreguev@hotmail.fr', 'M', '1999-11-13', 'I', 'le plus beau', 'paris'),
(3, 'Lucas', 'Irenee', NULL, '9cdfb439c7876e703e307864c9167a15', 'lucas@gmail.com', 'M', '2001-08-01', 'I', NULL, NULL),
(4, 'Axel', 'Battut', NULL, '9cdfb439c7876e703e307864c9167a15', 'axel@gmail.com', 'M', '2001-08-01', 'I', NULL, NULL),
(5, 'Martin', 'Mouly', 'Pynch', '9cdfb439c7876e703e307864c9167a15', 'martin@gmail.com', 'M', '1998-12-19', 'I', NULL, NULL),
(6, 'Marc', 'Zuckerberg', 'marco', '9cdfb439c7876e703e307864c9167a15', 'marc@gmail.com', 'M', '1996-01-01', 'C', 'Facebook', 'Los Angeles'),
(7, 'Marie', 'Moutand', 'marie', '9cdfb439c7876e703e307864c9167a15', 'marie@gmail.com', 'F', '1975-12-01', 'C', 'Netflix', 'London'),
(8, 'Lina', 'Hosra', 'lina', '9cdfb439c7876e703e307864c9167a15', 'lina@gmail.com', 'F', '1998-05-01', 'I', 'Student in Computer Science\r\n\r\nFormation\r\n\r\nEngineering School --> ESILV (2020-2023)\r\nCollege --> Lycee Dumas (2017-2020)\r\nHigh-School --> College Helene Boucher (2012-2017)\r\n\r\nExperiences:\r\n\r\nWaitress at Germaine in Paris (2months)\r\nBaby Sittor (full-time job - 1,5 years)\r\n\r\n', 'Lyon');

-- --------------------------------------------------------

--
-- Table structure for table `user_phone`
--

CREATE TABLE `user_phone` (
  `user_id` int(11) DEFAULT NULL,
  `user_phone` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `user_phone`
--

INSERT INTO `user_phone` (`user_id`, `user_phone`) VALUES
(5, 789674534),
(5, 656454534);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `friendship`
--
ALTER TABLE `friendship`
  ADD KEY `user1_id` (`user1_id`),
  ADD KEY `user2_id` (`user2_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `post_by` (`post_by`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_phone`
--
ALTER TABLE `user_phone`
  ADD KEY `user_id` (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `friendship`
--
ALTER TABLE `friendship`
  ADD CONSTRAINT `friendship_ibfk_1` FOREIGN KEY (`user1_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `friendship_ibfk_2` FOREIGN KEY (`user2_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`post_by`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `user_phone`
--
ALTER TABLE `user_phone`
  ADD CONSTRAINT `user_phone_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
