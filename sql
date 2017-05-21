-- phpMyAdmin SQL Dump
-- version 4.6.6
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 21, 2017 at 02:05 PM
-- Server version: 5.6.35
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `wikibetDaoldOne`
--

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

CREATE TABLE `sports` (
  `sportid` int(2) NOT NULL,
  `sport` varchar(20) NOT NULL DEFAULT '',
  `subsport` varchar(20) NOT NULL,
  `periods` int(2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` (`sportid`, `sport`, `subsport`, `periods`) VALUES
(1, 'Australian Rules', '', 4),
(2, 'Basketball', '', 4),
(3, 'Cricket', 'Test', 0),
(4, 'Golf', '', 0),
(5, 'Racing', '', 0),
(7, 'Rugby League', '', 2),
(8, 'Rugby Union', '', 2),
(9, 'Football', '', 2),
(10, 'Tennis', '', 3),
(11, 'American Football', '', 4),
(12, 'Baseball', '', 9),
(13, 'Boxing', '', 0),
(14, 'Cycling', '', 0),
(15, 'Darts', '', 0),
(16, 'Politics', '', 0),
(17, 'Entertainment', '', 0),
(18, 'Motor Racing', '', 0),
(19, 'Netball', '', 4),
(20, 'Running Doubles', '', 0),
(21, 'Financial', '', 0),
(22, 'Snooker', '', 0),
(23, 'Special Events', '', 0),
(24, 'Swimming', '', 0),
(25, 'Surfing', '', 0),
(26, 'Greyhound Racing', '', 0),
(27, 'Harness Racing', '', 0),
(28, 'Ice Hockey', '', 3),
(29, 'Mixed Martial Arts', '', 0),
(30, 'Volleyball', '', 5),
(31, 'Lotto', '', 0),
(32, 'To Happen 1st', '', 0),
(33, 'Gaelic Football', '', 2),
(34, 'Poker', '', 0),
(35, 'Field Hockey', '', 2),
(36, 'Athletics', '', 0),
(37, 'Handball', '', 0),
(38, 'Olympics Games', '', 0),
(39, 'Commonwealth Games', '', 0),
(40, 'Badminton', '', 0),
(41, 'Bandy', '', 0),
(42, 'Water Polo', '', 0),
(43, 'Yacht Racing', '', 0),
(86, 'Ski Jumping', '', 0),
(88, 'Alpine Skiing', '', 0),
(104, 'Curling', '', 0),
(105, 'The Weather ', '', 0),
(106, 'Iron Man', '', 0),
(107, 'Live Betting', '', 0),
(108, 'Current Affairs', '', 0),
(111, 'Yes or No', '', 0),
(112, 'Table Tennis', '', 0),
(113, 'Cricket', 'ODI', 0),
(114, 'Cricket', 'T20', 0),
(116, 'Tennis', '5 Set Men', 5),
(118, 'Tennis', 'Women', 3),
(119, 'Tennis', 'Season', 0),
(120, 'Basketball', 'NBA', 4),
(121, 'Winter Olympics', '', 0),
(122, 'Lawn Bowls', '', 0),
(123, 'Biathlon', '', 0),
(124, 'Chess', '', 0),
(125, 'Judo', '', 0),
(127, 'Racing Features', '', 0),
(128, 'Racing Specials', '', 0),
(135, 'Year To Happen', '', 0),
(134, 'Awards', '', 0),
(133, 'Hurling', '', 2),
(138, 'Special Odds', '', 0),
(139, 'Ice Hockey', '60 Minute', 3),
(140, 'Basketball', 'College', 2),
(141, 'Live Betting(No Use)', '', 0),
(142, 'Select or Type Sport', '', 0),
(143, 'Quick Multis', '', 0),
(144, 'Football', 'Additional 1', 2),
(145, 'Football', 'Additional 2', 2),
(146, 'Football', 'Additional 3', 2),
(147, 'Australian Rules', 'Brownlow Medal', 0),
(148, 'Beach Volleyball', '', 0),
(149, 'Pool', '', 0),
(150, 'Lacrosse', '', 0),
(151, 'Pesapallo', '', 0),
(152, 'Fencing', '', 0),
(153, 'Wrestling', '', 0),
(154, 'Taekwondo', '', 0),
(155, 'Biathlon', '', 0),
(156, 'Cross Country Skiing', '', 0),
(157, 'Kayaking', '', 0),
(158, 'Shooting', '', 0),
(159, 'Triathlon', '', 0),
(160, 'Diving', '', 0),
(161, 'Rowing', '', 0),
(162, 'Equestrian', '', 0),
(163, 'Weightlifting', '', 0),
(164, 'Gymnastics', '', 0),
(169, 'Tennis', 'ITF 3 Set', 3),
(165, 'Sumo Wrestling', '', 0),
(166, 'Snowboarding', '', 0),
(167, 'Squash', '', 0),
(168, 'eSports', '', 0),
(170, 'Keno', '', 0),
(171, 'Baseball', 'No Pitcher', 9);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `sports`
--
ALTER TABLE `sports`
  ADD PRIMARY KEY (`sportid`),
  ADD KEY `sport` (`sport`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `sports`
--
ALTER TABLE `sports`
  MODIFY `sportid` int(2) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=172;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
