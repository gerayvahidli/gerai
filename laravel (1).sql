-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 27, 2019 at 09:51 AM
-- Server version: 10.3.16-MariaDB
-- PHP Version: 7.3.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `laravel`
--

DELIMITER $$
--
-- Procedures
--
CREATE DEFINER=`root`@`localhost` PROCEDURE `ins` ()  BEGIN
DECLARE cnt INT;
   SET cnt=1;
WHILE cnt<51 DO
SET @var1 = (select count(*) from users where id=cnt);
INSERT INTO info ( user_id,month_id,day,year,hours,tag)  SELECT cnt,month, day,year,hours,tag FROM static_info
where @var1>0;
 SET cnt=cnt+1;
END WHILE; 
END$$

CREATE DEFINER=`root`@`localhost` PROCEDURE `while_dongusu` (IN `sayi` INT, INOUT `sonuc` TEXT)  BEGIN

  DECLARE x INT;
  SET x = 1;

  WHILE x <= sayi DO
  SET sonuc = CONCAT(sonuc, x, ',');
  SET x = x + 1;
  END WHILE;

END$$

DELIMITER ;

-- --------------------------------------------------------

--
-- Table structure for table `info`
--

CREATE TABLE `info` (
  `info_id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `month_id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `year` varchar(20) NOT NULL,
  `hours` int(11) NOT NULL,
  `tag` enum('R','R/','H','W','S','V','O') NOT NULL DEFAULT 'R',
  `comment` varchar(250) DEFAULT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `info`
--

INSERT INTO `info` (`info_id`, `user_id`, `month_id`, `day`, `year`, `hours`, `tag`, `comment`, `updated_at`) VALUES
(1, 5, 8, '1', '2019', 8, 'R', NULL, '2019-08-27 03:24:28'),
(2, 5, 8, '2', '2019', 8, 'R', NULL, '2019-08-27 03:24:28'),
(3, 5, 8, '3', '2019', 0, 'W', NULL, '2019-08-27 03:24:29'),
(4, 5, 8, '4', '2019', 0, 'W', NULL, '2019-08-27 03:24:29'),
(5, 5, 8, '5', '2019', 8, 'R', NULL, '2019-08-27 03:24:30'),
(6, 5, 8, '6', '2019', 8, 'R', NULL, '2019-08-27 03:24:30'),
(7, 5, 8, '7', '2019', 8, 'R', NULL, '2019-08-27 03:24:30'),
(8, 5, 8, '8', '2019', 8, 'R', NULL, '2019-08-27 03:24:30'),
(9, 5, 8, '9', '2019', 8, 'R', NULL, '2019-08-27 03:24:30'),
(10, 5, 8, '10', '2019', 0, 'W', NULL, '2019-08-27 03:24:30'),
(11, 5, 8, '11', '2019', 0, 'W', NULL, '2019-08-27 03:24:31'),
(12, 5, 8, '12', '2019', 0, 'H', NULL, '2019-08-27 03:24:31'),
(13, 5, 8, '13', '2019', 0, 'H', NULL, '2019-08-27 03:24:31'),
(14, 5, 8, '14', '2019', 8, 'R', NULL, '2019-08-27 03:24:31'),
(15, 5, 8, '15', '2019', 8, 'R', NULL, '2019-08-27 03:24:31'),
(16, 5, 8, '16', '2019', 8, 'R', NULL, '2019-08-27 03:24:32'),
(17, 5, 8, '17', '2019', 0, 'W', NULL, '2019-08-27 03:24:32'),
(18, 5, 8, '18', '2019', 0, 'W', NULL, '2019-08-27 03:24:32'),
(19, 5, 8, '19', '2019', 8, 'R', NULL, '2019-08-27 03:24:32'),
(20, 5, 8, '20', '2019', 8, 'R', NULL, '2019-08-27 03:24:33'),
(21, 5, 8, '21', '2019', 8, 'R', NULL, '2019-08-27 03:24:33'),
(22, 5, 8, '22', '2019', 8, 'R', NULL, '2019-08-27 03:24:33'),
(23, 5, 8, '23', '2019', 8, 'R', NULL, '2019-08-27 03:24:33'),
(24, 5, 8, '24', '2019', 0, 'W', NULL, '2019-08-27 03:24:33'),
(25, 5, 8, '25', '2019', 0, 'W', NULL, '2019-08-27 03:24:33'),
(26, 5, 8, '26', '2019', 8, 'R', NULL, '2019-08-27 03:24:34'),
(27, 5, 8, '27', '2019', 8, 'R', NULL, '2019-08-27 03:24:34'),
(28, 5, 8, '28', '2019', 8, 'R', NULL, '2019-08-27 03:24:34'),
(29, 5, 8, '29', '2019', 8, 'R', NULL, '2019-08-27 03:24:34'),
(30, 5, 8, '30', '2019', 8, 'R', NULL, '2019-08-27 03:24:34'),
(31, 5, 8, '31', '2019', 0, 'W', NULL, '2019-08-27 03:24:34'),
(32, 6, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(33, 6, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(34, 6, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(35, 6, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(36, 6, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(37, 6, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(38, 6, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(39, 6, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(40, 6, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(41, 6, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(42, 6, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(43, 6, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(44, 6, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(45, 6, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(46, 6, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(47, 6, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(48, 6, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(49, 6, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(50, 6, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(51, 6, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(52, 6, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(53, 6, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(54, 6, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(55, 6, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(56, 6, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(57, 6, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(58, 6, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(59, 6, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(60, 6, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(61, 6, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(62, 6, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(63, 8, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(64, 8, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(65, 8, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(66, 8, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(67, 8, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(68, 8, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(69, 8, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(70, 8, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(71, 8, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(72, 8, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(73, 8, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(74, 8, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(75, 8, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(76, 8, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(77, 8, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(78, 8, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(79, 8, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(80, 8, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(81, 8, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(82, 8, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(83, 8, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(84, 8, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(85, 8, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(86, 8, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(87, 8, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(88, 8, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(89, 8, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(90, 8, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(91, 8, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(92, 8, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(93, 8, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(94, 9, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(95, 9, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(96, 9, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(97, 9, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(98, 9, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(99, 9, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(100, 9, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(101, 9, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(102, 9, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(103, 9, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(104, 9, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(105, 9, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(106, 9, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(107, 9, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(108, 9, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(109, 9, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(110, 9, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(111, 9, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(112, 9, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(113, 9, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(114, 9, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(115, 9, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(116, 9, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(117, 9, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(118, 9, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(119, 9, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(120, 9, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(121, 9, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(122, 9, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(123, 9, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(124, 9, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(125, 10, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(126, 10, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(127, 10, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(128, 10, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(129, 10, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(130, 10, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(131, 10, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(132, 10, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(133, 10, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(134, 10, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(135, 10, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(136, 10, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(137, 10, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(138, 10, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(139, 10, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(140, 10, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(141, 10, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(142, 10, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(143, 10, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(144, 10, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(145, 10, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(146, 10, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(147, 10, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(148, 10, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(149, 10, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(150, 10, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(151, 10, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(152, 10, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(153, 10, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(154, 10, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(155, 10, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(156, 12, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(157, 12, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(158, 12, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(159, 12, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(160, 12, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(161, 12, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(162, 12, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(163, 12, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(164, 12, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(165, 12, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(166, 12, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(167, 12, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(168, 12, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(169, 12, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(170, 12, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(171, 12, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(172, 12, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(173, 12, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(174, 12, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(175, 12, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(176, 12, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(177, 12, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(178, 12, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(179, 12, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(180, 12, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(181, 12, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(182, 12, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(183, 12, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(184, 12, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(185, 12, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(186, 12, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(187, 13, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(188, 13, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(189, 13, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(190, 13, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(191, 13, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(192, 13, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(193, 13, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(194, 13, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(195, 13, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(196, 13, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(197, 13, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(198, 13, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(199, 13, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(200, 13, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(201, 13, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(202, 13, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(203, 13, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(204, 13, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(205, 13, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(206, 13, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(207, 13, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(208, 13, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(209, 13, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(210, 13, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(211, 13, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(212, 13, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(213, 13, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(214, 13, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(215, 13, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(216, 13, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(217, 13, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(218, 14, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(219, 14, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(220, 14, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(221, 14, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(222, 14, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(223, 14, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(224, 14, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(225, 14, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(226, 14, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(227, 14, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(228, 14, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(229, 14, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(230, 14, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(231, 14, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(232, 14, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(233, 14, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(234, 14, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(235, 14, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(236, 14, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(237, 14, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(238, 14, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(239, 14, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(240, 14, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(241, 14, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(242, 14, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(243, 14, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(244, 14, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(245, 14, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(246, 14, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(247, 14, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(248, 14, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(249, 15, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(250, 15, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(251, 15, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(252, 15, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(253, 15, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(254, 15, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(255, 15, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(256, 15, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(257, 15, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(258, 15, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(259, 15, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(260, 15, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(261, 15, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(262, 15, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(263, 15, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(264, 15, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(265, 15, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(266, 15, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(267, 15, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(268, 15, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(269, 15, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(270, 15, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(271, 15, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(272, 15, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(273, 15, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(274, 15, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(275, 15, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(276, 15, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(277, 15, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(278, 15, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(279, 15, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53'),
(280, 16, 8, '1', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(281, 16, 8, '2', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(282, 16, 8, '3', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(283, 16, 8, '4', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(284, 16, 8, '5', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(285, 16, 8, '6', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(286, 16, 8, '7', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(287, 16, 8, '8', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(288, 16, 8, '9', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(289, 16, 8, '10', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(290, 16, 8, '11', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(291, 16, 8, '12', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(292, 16, 8, '13', '2019', 3, 'H', NULL, '2019-08-26 12:31:53'),
(293, 16, 8, '14', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(294, 16, 8, '15', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(295, 16, 8, '16', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(296, 16, 8, '17', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(297, 16, 8, '18', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(298, 16, 8, '19', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(299, 16, 8, '20', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(300, 16, 8, '21', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(301, 16, 8, '22', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(302, 16, 8, '23', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(303, 16, 8, '24', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(304, 16, 8, '25', '2019', 3, 'W', NULL, '2019-08-26 12:31:53'),
(305, 16, 8, '26', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(306, 16, 8, '27', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(307, 16, 8, '28', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(308, 16, 8, '29', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(309, 16, 8, '30', '2019', 1, 'R', NULL, '2019-08-26 12:31:53'),
(310, 16, 8, '31', '2019', 1, 'W', NULL, '2019-08-26 12:31:53');

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(3, '2019_08_04_142855_info', 2),
(7, '2019_08_09_065415_create_roles_table', 4),
(9, '2019_08_09_070629_create_role_admins_table', 5),
(12, '2019_08_09_070605_create_roles_table', 6),
(13, '2019_08_09_072100_create_role_admins_table', 6),
(24, '2019_08_01_134825_create_users_table', 7),
(25, '2019_08_01_134837_create_password_resets_table', 7),
(26, '2019_08_04_145257_create_country_state_city_tables', 7),
(27, '2019_08_09_063522_create_roles_table', 7),
(28, '2019_08_09_063631_create_role_admins_table', 7),
(29, '2019_08_15_073829_add_permission_to_users', 8),
(30, '2019_08_15_075027_add_permisson_to_users', 9),
(31, '2019_08_16_061329_add_teamleader_id_to_users', 10);

-- --------------------------------------------------------

--
-- Table structure for table `months`
--

CREATE TABLE `months` (
  `month_id` int(11) NOT NULL,
  `month_name` varchar(50) NOT NULL,
  `month_days` varchar(50) NOT NULL,
  `month_status` enum('0','1') NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `months`
--

INSERT INTO `months` (`month_id`, `month_name`, `month_days`, `month_status`) VALUES
(1, 'January', '31', '1'),
(2, 'February', '28', '1'),
(3, 'March', '31', '1'),
(4, 'Aprel', '30', '1'),
(5, 'May', '31', '1'),
(6, 'June', '30', '1'),
(7, 'July', '31', '1'),
(8, 'August', '31', '1'),
(9, 'September', '30', '1'),
(10, 'October', '31', '1'),
(11, 'November', '30', '1'),
(12, 'December ', '31', '1');

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `static_info`
--

CREATE TABLE `static_info` (
  `id` int(11) NOT NULL,
  `day` varchar(20) NOT NULL,
  `month` int(11) NOT NULL,
  `year` int(11) NOT NULL,
  `hours` enum('8','7','0') DEFAULT '8',
  `tag` enum('R','R/','H','W','S','V') NOT NULL DEFAULT 'R',
  `last_edited` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `static_info`
--

INSERT INTO `static_info` (`id`, `day`, `month`, `year`, `hours`, `tag`, `last_edited`) VALUES
(1, '1', 8, 2019, '8', 'R', '2019-08-19 12:01:28'),
(2, '2', 8, 2019, '8', 'R', '2019-08-19 12:03:07'),
(3, '3', 8, 2019, '0', 'W', '2019-08-19 12:03:07'),
(4, '4', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(5, '5', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(6, '6', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(7, '7', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(8, '8', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(9, '9', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(10, '10', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(11, '11', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(12, '12', 8, 2019, '0', 'H', '2019-08-19 12:10:51'),
(13, '13', 8, 2019, '0', 'H', '2019-08-19 12:10:51'),
(14, '14', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(15, '15', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(16, '16', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(17, '17', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(18, '18', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(19, '19', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(20, '20', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(21, '21', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(22, '22', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(23, '23', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(24, '24', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(25, '25', 8, 2019, '0', 'W', '2019-08-19 12:10:51'),
(26, '26', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(27, '27', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(28, '28', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(29, '29', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(30, '30', 8, 2019, '8', 'R', '2019-08-19 12:10:51'),
(31, '31', 8, 2019, '8', 'W', '2019-08-19 12:10:51');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(10) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `permisson` int(11) DEFAULT 0,
  `teamleader_id` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`, `permisson`, `teamleader_id`) VALUES
(5, 'Gerai Vahidli', 'gerayvahildi@gmail.com', NULL, '$2y$10$DXCbio9h7YYHh8Fkj2rWPeFKGC2Raar0F25hi7sj0XB1iIN9X7y9G', NULL, '2019-08-09 07:03:29', '2019-08-09 07:03:29', 5, 0),
(6, 'Elxan Mammadov', 'rq7@gmail.com', NULL, '$2y$10$vmOmfJonvQt3THryDdXOSu3Eg0qa5H0dF/zLJlC.LAqNOZyiRPDje', NULL, '2019-08-09 07:07:03', '2019-08-09 07:07:03', 0, 0),
(8, 'Vagif Javadov', 'gerayvahidli@mail.ru', NULL, '$2y$10$cpCRE4lDfYF717eREqVK4euwK/Zz6WSx8Le31x260IUfhVhfL1te2', NULL, '2019-08-16 01:21:28', '2019-08-16 01:21:28', 0, 6),
(9, 'Rauf Aliyev', 'rauf@gmail.com', NULL, '$2y$10$F0VBCPaFwwevtpOG0BQsxunHwL0ZW2IoXVrIj6SRzkj6WpgCbi.LO', NULL, '2019-08-16 01:22:32', '2019-08-16 01:22:32', 0, 6),
(10, 'Emin Mahmudov', 'emin@gmail.com', NULL, '$2y$10$VmVLECW2lqTHEBOLubmSw.bhGG4hbSkr9gdI6Xtu0KGozUx.APJVq', NULL, '2019-08-16 01:23:08', '2019-08-16 01:23:08', 0, 6),
(12, 'Rashad Amirov', 'rashad@gmail.com', NULL, '$2y$10$F./.4uMLr4kQ72a57eX3suBgJc.GYpYsaleyX12x9TFAlJ7zLYOvy', NULL, '2019-08-16 01:26:23', '2019-08-16 01:26:23', 0, 15),
(13, 'Parviz Xanlarov', 'parviz@gmail.com', NULL, '$2y$10$e1P6yRea6X5tCIWqfouOD.60SuXZZg8VcoNYHXRI7SWXvXaXMdx66', NULL, '2019-08-16 01:27:29', '2019-08-16 01:27:29', 0, 15),
(14, 'Rufat Axundov', 'rufat@gmail.com', NULL, '$2y$10$oNot2LNtf/DzBdskwski8e83zl7yU63k64AdagzPekSZkMG23pJvO', NULL, '2019-08-16 01:28:53', '2019-08-16 01:28:53', 0, 15),
(15, 'Kerim Novruzov', 'karim@gmail.com', NULL, '$2y$10$v3xkyB9lmFgXEYUb/8UpHOwMga29oCzDRZHqN5IhTZFhYR5xoLMdK', NULL, '2019-08-16 01:46:14', '2019-08-16 01:46:14', 0, 0),
(16, 'Ruslan Esedov', 'ruslan@gmail.com', NULL, '$2y$10$dpTS6mnh3ri5SS3Hl/vPu.c2Qp3m0E3ma6Pw5LvQhDgj.M0qrXSrq', NULL, '2019-08-20 08:56:24', '2019-08-20 08:56:24', 0, 15);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `info`
--
ALTER TABLE `info`
  ADD PRIMARY KEY (`info_id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `months`
--
ALTER TABLE `months`
  ADD PRIMARY KEY (`month_id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `static_info`
--
ALTER TABLE `static_info`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `info`
--
ALTER TABLE `info`
  MODIFY `info_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=311;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `months`
--
ALTER TABLE `months`
  MODIFY `month_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `static_info`
--
ALTER TABLE `static_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
