-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 15, 2024 at 08:45 PM
-- Server version: 10.4.27-MariaDB
-- PHP Version: 8.1.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `face_recognition`
--

-- --------------------------------------------------------

--
-- Table structure for table `face_detection`
--

CREATE TABLE `face_detection` (
  `id` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `x1` int(11) NOT NULL,
  `y1` int(11) NOT NULL,
  `x2` int(11) NOT NULL,
  `y2` int(11) NOT NULL,
  `detection_time` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `face_detection`
--

INSERT INTO `face_detection` (`id`, `name`, `x1`, `y1`, `x2`, `y2`, `detection_time`) VALUES
(1, 'Jeff Bezoz', 116, 72, 260, 216, '2024-01-15 18:02:49'),
(2, 'Jeff Bezoz', 52, 56, 196, 200, '2024-01-15 18:02:50'),
(3, 'Jeff Bezoz', 84, 56, 228, 200, '2024-01-15 18:02:51'),
(4, 'NTAMBARA Etienne', 180, 156, 428, 404, '2024-01-15 18:02:55'),
(5, 'NTAMBARA Etienne', 180, 128, 428, 376, '2024-01-15 18:02:55'),
(6, 'NTAMBARA Etienne', 180, 128, 428, 376, '2024-01-15 18:02:56'),
(7, 'NTAMBARA Etienne', 180, 156, 428, 404, '2024-01-15 18:02:58'),
(8, 'NTAMBARA Etienne', 220, 196, 424, 404, '2024-01-15 18:02:58'),
(9, 'NTAMBARA Etienne', 196, 220, 404, 428, '2024-01-15 18:03:00'),
(10, 'NTAMBARA Etienne', 220, 220, 424, 428, '2024-01-15 18:03:02'),
(11, 'NTAMBARA Etienne', 240, 220, 448, 428, '2024-01-15 18:03:03'),
(12, 'NTAMBARA Etienne', 236, 260, 412, 432, '2024-01-15 18:03:08'),
(13, 'NTAMBARA Etienne', 220, 244, 424, 452, '2024-01-15 18:03:09'),
(14, 'NTAMBARA Etienne', 220, 268, 424, 472, '2024-01-15 18:03:09'),
(15, 'NTAMBARA Etienne', 220, 244, 424, 452, '2024-01-15 18:03:10'),
(16, 'NTAMBARA Etienne', 220, 220, 424, 428, '2024-01-15 18:03:11'),
(17, 'NTAMBARA Etienne', 240, 196, 448, 404, '2024-01-15 18:03:12'),
(18, 'NTAMBARA Etienne', 220, 196, 424, 404, '2024-01-15 18:03:13'),
(19, 'NTAMBARA Etienne', 264, 220, 472, 428, '2024-01-15 18:03:22'),
(20, 'NTAMBARA Etienne', 264, 196, 472, 404, '2024-01-15 18:03:23'),
(21, 'NTAMBARA Etienne', 276, 260, 448, 432, '2024-01-15 18:03:24'),
(22, 'NTAMBARA Etienne', 276, 280, 448, 452, '2024-01-15 18:03:28'),
(23, 'NTAMBARA Etienne', 264, 288, 472, 480, '2024-01-15 18:03:29'),
(24, 'NTAMBARA Etienne', 276, 296, 448, 472, '2024-01-15 18:03:30'),
(25, 'NTAMBARA Etienne', 276, 280, 448, 452, '2024-01-15 18:03:32'),
(26, 'NTAMBARA Etienne', 240, 244, 448, 452, '2024-01-15 18:03:32'),
(27, 'NTAMBARA Etienne', 220, 220, 424, 428, '2024-01-15 18:03:33'),
(28, 'NTAMBARA Etienne', 240, 244, 448, 452, '2024-01-15 18:03:34'),
(29, 'NTAMBARA Etienne', 240, 244, 448, 452, '2024-01-15 18:03:35'),
(30, 'NTAMBARA Etienne', 240, 244, 448, 452, '2024-01-15 18:03:35'),
(31, 'NTAMBARA Etienne', 240, 244, 448, 452, '2024-01-15 18:03:36');

-- --------------------------------------------------------

--
-- Table structure for table `face_detection_with_image`
--

CREATE TABLE `face_detection_with_image` (
  `id` int(11) NOT NULL,
  `name` varchar(255) DEFAULT NULL,
  `x1` int(11) DEFAULT NULL,
  `y1` int(11) DEFAULT NULL,
  `x2` int(11) DEFAULT NULL,
  `y2` int(11) DEFAULT NULL,
  `detection_time` datetime DEFAULT NULL,
  `face_image` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `face_detection_with_image`
--

INSERT INTO `face_detection_with_image` (`id`, `name`, `x1`, `y1`, `x2`, `y2`, `detection_time`, `face_image`) VALUES
(382, 'NTAMBARA Etienne', 236, 260, 412, 432, '2024-01-16 03:38:10', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-10_1.jpg'),
(383, 'Elon Musk', 164, 216, 308, 360, '2024-01-16 03:38:18', 'detected_faces\\face_detection_with_image-Elon Musk_2024-01-16_03-38-18_2.jpg'),
(384, 'Elon Musk', 196, 216, 340, 360, '2024-01-16 03:38:19', 'detected_faces\\face_detection_with_image-Elon Musk_2024-01-16_03-38-19_3.jpg'),
(385, 'Elon Musk', 212, 216, 356, 360, '2024-01-16 03:38:19', 'detected_faces\\face_detection_with_image-Elon Musk_2024-01-16_03-38-19_4.jpg'),
(386, 'Ryan Reynolds', 84, 56, 228, 200, '2024-01-16 03:38:29', 'detected_faces\\face_detection_with_image-Ryan Reynolds_2024-01-16_03-38-29_5.jpg'),
(387, 'Ryan Reynolds', 100, 88, 244, 232, '2024-01-16 03:38:30', 'detected_faces\\face_detection_with_image-Ryan Reynolds_2024-01-16_03-38-30_6.jpg'),
(388, 'Ryan Reynolds', 100, 72, 244, 216, '2024-01-16 03:38:30', 'detected_faces\\face_detection_with_image-Ryan Reynolds_2024-01-16_03-38-30_7.jpg'),
(389, 'NTAMBARA Etienne', 220, 240, 392, 412, '2024-01-16 03:38:35', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-35_8.jpg'),
(390, 'NTAMBARA Etienne', 220, 240, 392, 412, '2024-01-16 03:38:36', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-36_9.jpg'),
(391, 'NTAMBARA Etienne', 220, 240, 392, 412, '2024-01-16 03:38:37', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-37_10.jpg'),
(392, 'NTAMBARA Etienne', 236, 260, 412, 432, '2024-01-16 03:38:38', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-38_11.jpg'),
(393, 'NTAMBARA Etienne', 220, 260, 392, 432, '2024-01-16 03:38:41', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-41_12.jpg'),
(394, 'NTAMBARA Etienne', 220, 280, 392, 452, '2024-01-16 03:38:43', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-43_13.jpg'),
(395, 'NTAMBARA Etienne', 220, 280, 392, 452, '2024-01-16 03:38:44', 'detected_faces\\face_detection_with_image-NTAMBARA Etienne_2024-01-16_03-38-44_14.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `face_detection`
--
ALTER TABLE `face_detection`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `face_detection_with_image`
--
ALTER TABLE `face_detection_with_image`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `face_detection`
--
ALTER TABLE `face_detection`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `face_detection_with_image`
--
ALTER TABLE `face_detection_with_image`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=396;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
