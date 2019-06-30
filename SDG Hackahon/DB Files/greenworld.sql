-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 29, 2019 at 09:27 PM
-- Server version: 10.3.15-MariaDB
-- PHP Version: 7.3.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `greenworld`
--

-- --------------------------------------------------------

--
-- Table structure for table `communities`
--

CREATE TABLE `communities` (
  `id` int(11) NOT NULL,
  `UID` varchar(50) NOT NULL,
  `name` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `location` text NOT NULL,
  `media` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `communities`
--

INSERT INTO `communities` (`id`, `UID`, `name`, `description`, `location`, `media`) VALUES
(1, '6', 'Tudor', 'A small business community in Migory Town', 'migori', 'daylight_vision.jpg'),
(2, '6', 'Kawa Center', 'A small business community in Migory Town', 'migori', 'daylight_vision.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `conversations`
--

CREATE TABLE `conversations` (
  `msgID` int(11) NOT NULL,
  `user_id` varchar(11) NOT NULL,
  `post_id` varchar(50) NOT NULL,
  `community` varchar(50) NOT NULL,
  `messages` text NOT NULL,
  `replies` text NOT NULL,
  `media` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `conversations`
--

INSERT INTO `conversations` (`msgID`, `user_id`, `post_id`, `community`, `messages`, `replies`, `media`) VALUES
(11, '4', 'undefined', 'undefined', 'hi', '', ''),
(12, '4', '1', 'SV', 'joe', '', ''),
(13, '4', 'undefined', 'undefined', 'hey', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `post`
--

CREATE TABLE `post` (
  `PID` int(11) NOT NULL,
  `UID` int(11) NOT NULL,
  `title` text NOT NULL,
  `content` text NOT NULL,
  `location` text NOT NULL,
  `media` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `post`
--

INSERT INTO `post` (`PID`, `UID`, `title`, `content`, `location`, `media`) VALUES
(1, 1, 'Yogesh Singh', '', 'SV', 'tech-startup-roles-ceo.gif'),
(2, 1, 'Test', 'Thanks for this good how-to.\r\nAfter some hours of search on the net this article has resolved all my problems ðŸ™‚', 'Memon', 'NUC.jpg'),
(4, 1, 'New new test', 'Oky, this the finall test.', 'final location', 'Brance.png'),
(5, 1, 'henry', 'my friend', 'new Orleans', 'tech-startup-roles-cso.gif'),
(6, 1, 'BRANCE TECHNOLOGIES TREE PLANTING INITIATIVE', 'Brance Technologies has shared their interest to sponsor the community through a tree planting initiative that will see a greener Mazeras community. Join this green call. To be carried out on 11th July 2019', '@Mazeras', 'logo2.png'),
(7, 3, 'This test', 'hello to this tet', 'home', 'the4Fathers.jpg'),
(8, 3, 'HASSAN', 'GO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\nGO TO HELLL\r\n\r\n\r\n        <div>', 'HERE', 'screenshot7.png'),
(9, 3, 'A COMMUNIY GREEN CALL', 'Design, build, test, and prototype using Bootstrap in real-time from your Web browser. Bootply combines the power of hand-coded HTML, CSS and JavaScript with the benefits of responsive design using Bootstrap. Find and showcase Bootstrap-ready snippets in the 100% free Bootply.com code repository.', 'Kongowea', 'chafu3.jpeg'),
(10, 0, 'My Title...', 'This  is all about my post', 'TUM', 'the4Fathers.jpg'),
(11, 0, 'My Title...', 'This  is all about my post', 'TUM', 'the4Fathers.jpg'),
(12, 0, 'My Title...', 'This  is all about my post', 'TUM', 'the4Fathers.jpg'),
(13, 0, 'My Title...', 'This  is all about my post', 'TUM', 'the4Fathers.jpg'),
(14, 0, 'new post', 'this one', 'Four Plus', 'daylight_vision.jpg'),
(15, 6, 'New comm', 'this is new', 'new Orleans', 'daylight_vision.jpg'),
(16, 6, 'Initiative', 'Share your thoughts with the Community', 'Memon', 'mainWindow.png');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `topic` varchar(255) NOT NULL,
  `files` varchar(255) NOT NULL,
  `tags` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `topic`, `files`, `tags`) VALUES
(23, '', 'john@example.com', ''),
(24, '', 'john@example.com', ''),
(25, '', 'john@example.com', ''),
(26, '', 'john@example.com', ''),
(27, '', 'john@example.com', ''),
(28, '', 'john@example.com', ''),
(29, '', 'john@example.com', ''),
(30, '', 'john@example.com', '');

-- --------------------------------------------------------

--
-- Table structure for table `user5`
--

CREATE TABLE `user5` (
  `id` int(11) UNSIGNED NOT NULL,
  `saved_posts` varchar(30) NOT NULL,
  `my_coms` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user6`
--

CREATE TABLE `user6` (
  `id` int(11) UNSIGNED NOT NULL,
  `saved_posts` varchar(30) NOT NULL,
  `my_coms` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(55) NOT NULL,
  `phone` varchar(15) NOT NULL,
  `email` varchar(55) NOT NULL,
  `location` text NOT NULL,
  `password` varchar(120) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `phone`, `email`, `location`, `password`) VALUES
(1, 'Patrick', '0798272066', 'pass@pass.com', '', 'fe4f81ce926ff7779a4ea03045b84ff0153921e6727808f3256b328a5e15af4d'),
(2, 'Patrick', '0798272066', 'pass@pass.com', '', 'fe4f81ce926ff7779a4ea03045b84ff0153921e6727808f3256b328a5e15af4d'),
(3, 'kibe john', '0790904240', 'me@mail.com', '', 'daaad6e5604e8e17bd9f108d91e26afe6281dac8fda0091040a7a6d7bd9b43b5'),
(4, 'John Doe', '0790904240', 'johnkibemwangi2016@gmail.com', '', '715f6f4262891dd24212983eb3602386304fe52eb90b9dd551ade012cc23e8ba'),
(5, 'Mimo', '123456789', 'mimo@mimo.com', '', 'c22888fee246d3c8091ef2f0a84c70f52928295aaab0bac914461858f61a8301'),
(6, 'new', '7894561230', 'new@new.com', '', '9b21ec9dbe3dec76be9c39f673c8c8971f023be79e02aa3ad1f717aa00afb41c');

-- --------------------------------------------------------

--
-- Table structure for table `user_data`
--

CREATE TABLE `user_data` (
  `uid` int(11) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `usser_data`
--

CREATE TABLE `usser_data` (
  `uid` int(11) NOT NULL,
  `fname` varchar(25) DEFAULT NULL,
  `lname` varchar(25) DEFAULT NULL,
  `country` varchar(25) DEFAULT NULL,
  `img` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `usser_data`
--

INSERT INTO `usser_data` (`uid`, `fname`, `lname`, `country`, `img`) VALUES
(1, 'tom', 'felix', 'kenya', 'Arafat.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `communities`
--
ALTER TABLE `communities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `conversations`
--
ALTER TABLE `conversations`
  ADD PRIMARY KEY (`msgID`);

--
-- Indexes for table `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user5`
--
ALTER TABLE `user5`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `user6`
--
ALTER TABLE `user6`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_data`
--
ALTER TABLE `user_data`
  ADD PRIMARY KEY (`uid`);

--
-- Indexes for table `usser_data`
--
ALTER TABLE `usser_data`
  ADD PRIMARY KEY (`uid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `communities`
--
ALTER TABLE `communities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `conversations`
--
ALTER TABLE `conversations`
  MODIFY `msgID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `post`
--
ALTER TABLE `post`
  MODIFY `PID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user5`
--
ALTER TABLE `user5`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user6`
--
ALTER TABLE `user6`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user_data`
--
ALTER TABLE `user_data`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usser_data`
--
ALTER TABLE `usser_data`
  MODIFY `uid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
