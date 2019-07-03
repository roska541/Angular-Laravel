-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: localhost:8889
-- Generation Time: Jul 03, 2019 at 04:55 PM
-- Server version: 5.7.23
-- PHP Version: 7.2.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Database: `hotels`
--

-- --------------------------------------------------------

--
-- Table structure for table `hotels`
--

CREATE TABLE `hotels` (
  `id` int(11) UNSIGNED NOT NULL,
  `name` varchar(165) DEFAULT NULL,
  `rating` int(1) DEFAULT NULL,
  `address` varchar(165) DEFAULT NULL,
  `city` varchar(65) DEFAULT NULL,
  `state` varchar(5) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `country` varchar(65) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotels`
--

INSERT INTO `hotels` (`id`, `name`, `rating`, `address`, `city`, `state`, `zip`, `country`, `created`, `modified`) VALUES
(1, 'Sunset Key Guest Cottages', 5, '245 Front Street', 'Key West', 'FL', '33040', 'USA', NULL, NULL),
(2, 'Sanibel Sunset Beach Inn', 2, '3287 West Gulf Drive', 'Sanibel', 'FL', '33957', 'USA', NULL, NULL),
(3, 'Setai', 5, '2001 Collins Avenue', 'Miami Beach', 'FL', '33139', 'USA', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_bookings`
--

CREATE TABLE `hotel_bookings` (
  `id` int(11) UNSIGNED NOT NULL,
  `status` enum('processing','paid','cancelled') DEFAULT 'processing',
  `hotel_id` int(16) DEFAULT NULL,
  `room_id` int(16) DEFAULT NULL,
  `first_name` varchar(85) DEFAULT NULL,
  `last_name` varchar(120) DEFAULT NULL,
  `email` varchar(120) DEFAULT NULL,
  `phone` varchar(15) DEFAULT NULL,
  `address_line` varchar(255) DEFAULT NULL,
  `address_line_2` varchar(85) DEFAULT NULL,
  `city` varchar(65) DEFAULT NULL,
  `state` varchar(2) DEFAULT NULL,
  `zip` varchar(5) DEFAULT NULL,
  `cc_number` varchar(120) DEFAULT NULL,
  `cc_exp_month` varchar(2) DEFAULT NULL,
  `cc_exp_year` varchar(4) DEFAULT NULL,
  `price` float(10,2) DEFAULT NULL,
  `taxes` float(10,2) DEFAULT NULL,
  `fees` float(10,2) DEFAULT NULL,
  `total` float(10,2) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_bookings`
--

INSERT INTO `hotel_bookings` (`id`, `status`, `hotel_id`, `room_id`, `first_name`, `last_name`, `email`, `phone`, `address_line`, `address_line_2`, `city`, `state`, `zip`, `cc_number`, `cc_exp_month`, `cc_exp_year`, `price`, `taxes`, `fees`, `total`, `created`, `modified`) VALUES
(2, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 17:57:04', '2019-04-22 17:57:04'),
(3, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 17:59:56', '2019-04-22 17:59:56'),
(4, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:00:33', '2019-04-22 18:00:33'),
(5, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:00:41', '2019-04-22 18:00:41'),
(6, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:04:13', '2019-04-22 18:04:13'),
(7, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:04:19', '2019-04-22 18:04:19'),
(8, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:09:57', '2019-04-22 18:09:57'),
(9, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:10:14', '2019-04-22 18:10:14'),
(10, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:12:25', '2019-04-22 18:12:25'),
(11, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:12:46', '2019-04-22 18:12:46'),
(12, 'paid', 1, 1, 'dafadsf', 'asdfasdf', 'adsf@aol.com', 'asdfadsf', 'asdf', 'adsf', 'asdf', 'FL', '08742', 'fasdfasdf', '2', '2020', 593.00, 83.02, 0.00, 676.00, '2019-04-22 18:14:10', '2019-04-22 18:14:10'),
(13, 'paid', 2, 12, 'adsfads', 'asdfads', 'as@aol.com', 'dasf', 'adsf', 'adsf', 'adsf', 'FL', '213', 'adsfads', '3', '2020', 755.00, 105.70, 0.00, 860.00, '2019-04-22 18:48:51', '2019-04-22 18:48:51'),
(14, 'processing', NULL, NULL, '24234', NULL, '234234', NULL, '2342342', NULL, '234324', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'processing', NULL, NULL, '42342343', '423', '23423423', '23423234', '4234234234', '23423', NULL, NULL, NULL, NULL, NULL, 'year', NULL, NULL, NULL, NULL, NULL, NULL),
(16, 'processing', NULL, NULL, '312123123', '123123', '221312321', NULL, '1213123', NULL, '123123', NULL, NULL, '123123', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(17, 'processing', NULL, NULL, 'qwewqe', NULL, 'qwewqe', NULL, 'qwewqe', NULL, 'qweqwe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(18, 'processing', NULL, NULL, 'sdasdasd', NULL, 'asdasdasd', NULL, 'adasds', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(19, 'processing', NULL, NULL, 'ad', 'da', 'asdadas', NULL, 'dsadasd', NULL, 'adasd', NULL, NULL, 'adasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(20, 'processing', NULL, NULL, NULL, NULL, 'asdasd', NULL, 'adasdasdas', NULL, 'dasdasdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(21, 'processing', NULL, NULL, 'asdad', 'adasd', 'asdasd', NULL, 'asdasd', NULL, NULL, NULL, NULL, 'asdasd', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(22, 'processing', NULL, NULL, 'qweqwe', 'qwe', 'qweqwe', NULL, 'eqweqwe', NULL, 'qwewq', NULL, NULL, 'qweqwe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(23, 'processing', NULL, NULL, 'asdsad', NULL, 'asdsad', NULL, 'asdsad', NULL, 'asdas', NULL, NULL, 'sadsad', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(24, 'processing', NULL, NULL, 'qwewqe', 'qweqe', 'qeqwe', NULL, 'wqewqe', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(25, 'processing', NULL, NULL, 'asdasd', 'assadasd', 'asdasd', NULL, NULL, NULL, 'asda', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_geo_locations`
--

CREATE TABLE `hotel_geo_locations` (
  `id` int(11) UNSIGNED NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `lat` varchar(12) DEFAULT NULL,
  `lon` varchar(12) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_geo_locations`
--

INSERT INTO `hotel_geo_locations` (`id`, `hotel_id`, `lat`, `lon`, `created`, `modified`) VALUES
(1, 1, '24.558010', '-81.806702', NULL, NULL),
(2, 2, '26.427300', '-82.099800', NULL, NULL),
(3, 3, '25.795937', '-80.128591', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `hotel_rooms`
--

CREATE TABLE `hotel_rooms` (
  `id` int(11) UNSIGNED NOT NULL,
  `hotel_id` int(11) DEFAULT NULL,
  `name` varchar(120) DEFAULT NULL,
  `status` enum('On Request','Available','Sold Out') DEFAULT 'Available',
  `price` int(5) DEFAULT NULL,
  `has_promos` tinyint(1) DEFAULT '0',
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `hotel_rooms`
--

INSERT INTO `hotel_rooms` (`id`, `hotel_id`, `name`, `status`, `price`, `has_promos`, `created`, `modified`) VALUES
(1, 1, 'Studio Suite City View', 'Available', 593, 0, NULL, '2019-04-22 18:30:32'),
(2, 1, 'Studio Suite Courtyard View', 'Sold Out', 638, 0, NULL, NULL),
(3, 1, 'Studio Suite Partial Ocean View', 'Available', 685, 0, NULL, NULL),
(5, 1, 'Junior Suite', 'Available', 685, 0, NULL, NULL),
(6, 1, '1 Bedroom Suite City View', 'On Request', 729, 0, NULL, NULL),
(7, 1, '1 Bedroom Suite Courtyard View', 'Sold Out', 777, 0, NULL, NULL),
(8, 1, 'Bi-Level Suite', 'Available', 822, 0, NULL, NULL),
(9, 1, '1 Bedroom Suite Ocean View', 'Available', 1620, 1, NULL, NULL),
(10, 1, '2 Bedroom City & Ocean View Suite', 'Available', 2025, 1, NULL, NULL),
(11, 1, '2 Bedroom Ocean View Suite', 'Available', 2390, 1, NULL, NULL),
(12, 2, 'Studio Suite City View', 'On Request', 755, 1, NULL, '2019-04-22 18:48:51'),
(13, 2, 'Junior Suite', 'On Request', 685, 1, NULL, NULL),
(14, 3, 'Master Suite', 'Available', 2157, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `search_logs`
--

CREATE TABLE `search_logs` (
  `id` int(11) UNSIGNED NOT NULL,
  `keyword` varchar(85) DEFAULT NULL,
  `zip_code` varchar(5) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `uploads`
--

CREATE TABLE `uploads` (
  `id` char(36) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `active` tinyint(1) NOT NULL DEFAULT '0' COMMENT 'Uploaded videos need to wait for the transcoding to be shown on the wall',
  `temp` tinyint(1) DEFAULT '0',
  `indexed` tinyint(1) UNSIGNED NOT NULL DEFAULT '0',
  `filename` varchar(255) CHARACTER SET latin1 NOT NULL DEFAULT '',
  `caption` text,
  `model` varchar(65) CHARACTER SET latin1 DEFAULT NULL,
  `foreign_key` char(36) CHARACTER SET latin1 DEFAULT NULL,
  `type` enum('photo','video','sound','other','document','logo','link','cover_photo') CHARACTER SET latin1 NOT NULL DEFAULT 'other',
  `thumbnail` tinyint(1) DEFAULT '0',
  `width` int(6) DEFAULT NULL,
  `height` int(6) DEFAULT NULL,
  `default` tinyint(3) DEFAULT NULL,
  `created` datetime DEFAULT NULL,
  `modified` datetime DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- Dumping data for table `uploads`
--

INSERT INTO `uploads` (`id`, `active`, `temp`, `indexed`, `filename`, `caption`, `model`, `foreign_key`, `type`, `thumbnail`, `width`, `height`, `default`, `created`, `modified`) VALUES
('1', 1, 0, 0, 'https://s-ec.bstatic.com/images/hotel/max1024x768/880/88090282.jpg', NULL, 'Hotels', '1', 'photo', 0, NULL, NULL, NULL, NULL, NULL),
('2', 1, 0, 0, 'https://www.theinnsofsanibel.com/sunset-beach/images/jqg_1416246979.jpg', NULL, 'Hotels', '2', 'photo', 0, NULL, NULL, NULL, NULL, NULL),
('3', 1, 0, 0, 'https://www.gharieni.it/wp-content/uploads/2017/06/setai_04.jpg', NULL, 'Hotels', '3', 'photo', 0, NULL, NULL, NULL, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `hotels`
--
ALTER TABLE `hotels`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_geo_locations`
--
ALTER TABLE `hotel_geo_locations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `search_logs`
--
ALTER TABLE `search_logs`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploads`
--
ALTER TABLE `uploads`
  ADD PRIMARY KEY (`id`),
  ADD KEY `type` (`type`),
  ADD KEY `model` (`model`),
  ADD KEY `foreign_key` (`foreign_key`),
  ADD KEY `active` (`active`),
  ADD KEY `indexed` (`indexed`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `hotels`
--
ALTER TABLE `hotels`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_bookings`
--
ALTER TABLE `hotel_bookings`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `hotel_geo_locations`
--
ALTER TABLE `hotel_geo_locations`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `hotel_rooms`
--
ALTER TABLE `hotel_rooms`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `search_logs`
--
ALTER TABLE `search_logs`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT;
