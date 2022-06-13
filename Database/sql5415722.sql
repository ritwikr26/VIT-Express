-- phpMyAdmin SQL Dump
-- version 4.7.1
-- https://www.phpmyadmin.net/
--
-- Host: sql5.freesqldatabase.com
-- Generation Time: Jun 03, 2021 at 08:40 AM
-- Server version: 5.5.62-0ubuntu0.14.04.1
-- PHP Version: 7.0.33-0ubuntu0.16.04.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sql5415722`
--

-- --------------------------------------------------------

--
-- Table structure for table `dislikes`
--

CREATE TABLE `dislikes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `dislikes`
--

INSERT INTO `dislikes` (`id`, `user_id`, `post_id`) VALUES
(1, 4, 1),
(2, 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `likes`
--

CREATE TABLE `likes` (
  `id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `likes`
--

INSERT INTO `likes` (`id`, `user_id`, `post_id`) VALUES
(1, 2, 2),
(2, 3, 2),
(4, 3, 5),
(5, 4, 5),
(6, 7, 5),
(7, 7, 2);

-- --------------------------------------------------------

--
-- Table structure for table `newsletter`
--

CREATE TABLE `newsletter` (
  `nl_id` int(11) NOT NULL,
  `post_date` date DEFAULT NULL,
  `heading` varchar(50) DEFAULT NULL,
  `sub_heading1` varchar(50) DEFAULT NULL,
  `content1` varchar(400) DEFAULT NULL,
  `sub_heading2` varchar(50) DEFAULT NULL,
  `content2` varchar(400) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `newsletter`
--

INSERT INTO `newsletter` (`nl_id`, `post_date`, `heading`, `sub_heading1`, `content1`, `sub_heading2`, `content2`) VALUES
(1, '2021-06-01', 'Some random newsletter', 'lgjai', 'some random content1', 'asfaw', 'content2');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `post_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `class` varchar(30) DEFAULT NULL,
  `title` varchar(50) DEFAULT NULL,
  `content` varchar(400) DEFAULT NULL,
  `approval` tinyint(1) DEFAULT NULL,
  `image` text,
  `likes` int(11) DEFAULT NULL,
  `dislikes` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`post_id`, `user_id`, `class`, `title`, `content`, `approval`, `image`, `likes`, `dislikes`) VALUES
(1, 4, 'Headline', 'What is Lorem Ipsum?', 'Lorem Ipsum is simply dummy text of the printing ', 1, 'newsletter.png', 0, 2),
(2, 3, 'Headline', 'VITEEE', 'Vit is conducting vitee with 3rd eye feature.', 1, 'vit.jpg', 3, 0),
(4, 2, 'Headline', 'Summer Semester', 'Summer Semester Special 2020-21 Term IV Course Wishlist link is open from 10:00 AM of 02-JUN-2021 to mid night of 04-JUN-2021', 1, 'newsletter.png', NULL, NULL),
(5, 3, 'Headline', 'VIT Rank', 'Vellore Institute of Technology (VIT) is ranked one among the top 12 institutions of India in Engineering and Technology.', 1, 'newsletter.png', 3, 0),
(7, 4, 'Headline', 'VITEEE 2021: Institute Warns Students', 'The Vellore Institute of Technology (VIT) has said all actions during the entrance exam â€“ VITEEE â€“ are recorded and will be analysed for fixing the eligibility of applicants for participating in the admission process. ', 0, 'mal.PNG', NULL, NULL),
(8, 2, 'Headline', 'FAT Winter Semester 2020-21', 'FAT are going to be conducted from 10th june to 25th June 2021 on codetantra platform.', 0, 'newsletter.png', NULL, NULL),
(9, 2, 'Rumour', 'FEE CONCESSION', 'Seeing the ongoing pandemic situation VIT has decided to reduce the academic fees for the Fall semester 2021-22.', 0, 'newsletter.png', NULL, NULL),
(10, 3, 'Rumour', 'VIT FAT CANCELLATION', 'VIT has decided to cancel its FAT examination for the winter semester 2020-21 seeing the current ongoing situation of COVID-19.', 0, 'cancel.PNG', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `reviews`
--

CREATE TABLE `reviews` (
  `rev_id` int(11) NOT NULL,
  `post_id` int(11) DEFAULT NULL,
  `user_id` int(10) DEFAULT NULL,
  `comment` varchar(200) DEFAULT NULL,
  `comm_date` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `reviews`
--

INSERT INTO `reviews` (`rev_id`, `post_id`, `user_id`, `comment`, `comm_date`) VALUES
(1, 1, 4, 'comment!', '2021-05-29'),
(2, 2, 2, 'Nice (:-|)', '2021-05-29'),
(3, 2, 3, 'FAT  might get conducted in same way.', '2021-05-29'),
(5, 5, 3, 'WOW!', '2021-06-03'),
(6, 5, 4, 'Great News!', '2021-06-03'),
(7, 5, 2, 'Nice', '2021-06-03'),
(8, 5, 7, 'Awesome !!', '2021-06-03');

-- --------------------------------------------------------

--
-- Table structure for table `saved`
--

CREATE TABLE `saved` (
  `sav_id` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `post_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `saved`
--

INSERT INTO `saved` (`sav_id`, `user_id`, `post_id`) VALUES
(1, 2, 2),
(2, 2, 1),
(4, 2, 5);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `user` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `pic` text,
  `subscriber` tinyint(1) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `user`, `password`, `pic`, `subscriber`, `email`) VALUES
(1, 'admin', 'admin', 'admin', 'null.png', 0, 'admin@gmail.com'),
(2, 'ankit1242', 'Ankit Prakash', 'abc123', 'prof.jpeg', 1, 'ankit.prakash83@gmail.com'),
(3, 'sanskar', 'Sanskar Agarwal', 'agarwal', 'sans.jpg', 1, 'sanskaragarwal1@gmail.com'),
(4, 'kkm', 'Krishna Karthik Madduri', 'kkm123', 'kar.jpg', 1, 'kkarthikmadduri1729@gmail.com'),
(7, 'ritwikr26', 'Ritwik Rishabh', 'ritwik', 'rit.jpeg', 1, 'ritwik.rishabh26@gmail.com');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `likes`
--
ALTER TABLE `likes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `newsletter`
--
ALTER TABLE `newsletter`
  ADD PRIMARY KEY (`nl_id`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`post_id`),
  ADD KEY `user_id` (`user_id`);

--
-- Indexes for table `reviews`
--
ALTER TABLE `reviews`
  ADD PRIMARY KEY (`rev_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `saved`
--
ALTER TABLE `saved`
  ADD PRIMARY KEY (`sav_id`),
  ADD KEY `user_id` (`user_id`),
  ADD KEY `post_id` (`post_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dislikes`
--
ALTER TABLE `dislikes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `likes`
--
ALTER TABLE `likes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `newsletter`
--
ALTER TABLE `newsletter`
  MODIFY `nl_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `post_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `reviews`
--
ALTER TABLE `reviews`
  MODIFY `rev_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `saved`
--
ALTER TABLE `saved`
  MODIFY `sav_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `dislikes`
--
ALTER TABLE `dislikes`
  ADD CONSTRAINT `dislikes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `dislikes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Constraints for table `likes`
--
ALTER TABLE `likes`
  ADD CONSTRAINT `likes_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `likes_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Constraints for table `posts`
--
ALTER TABLE `posts`
  ADD CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`);

--
-- Constraints for table `reviews`
--
ALTER TABLE `reviews`
  ADD CONSTRAINT `reviews_ibfk_1` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);

--
-- Constraints for table `saved`
--
ALTER TABLE `saved`
  ADD CONSTRAINT `saved_ibfk_1` FOREIGN KEY (`user_id`) REFERENCES `users` (`user_id`),
  ADD CONSTRAINT `saved_ibfk_2` FOREIGN KEY (`post_id`) REFERENCES `posts` (`post_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
