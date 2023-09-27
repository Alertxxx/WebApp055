-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 27, 2023 at 06:57 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopdvd`
--

-- --------------------------------------------------------

--
-- Table structure for table `actor`
--

CREATE TABLE `actor` (
  `a_name` varchar(50) NOT NULL,
  `a_lastname` varchar(50) NOT NULL,
  `a_nickname` varchar(10) NOT NULL,
  `a_age` int(10) NOT NULL,
  `a_movie` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `actor`
--

INSERT INTO `actor` (`a_name`, `a_lastname`, `a_nickname`, `a_age`, `a_movie`) VALUES
('เนฟ', 'แคมป์เบิล', 'เนฟ', 48, 'Scream'),
('พอล', 'ดาโน่', 'พอล', 39, 'The Batman'),
('แอนเดรส', 'มัสเชียต', 'แอนเดรส', 47, 'The Flash');

-- --------------------------------------------------------

--
-- Table structure for table `movie`
--

CREATE TABLE `movie` (
  `m_name` varchar(50) NOT NULL,
  `m_id` varchar(10) NOT NULL,
  `m_date` date NOT NULL,
  `m_detail` varchar(500) NOT NULL,
  `m_price` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `movie`
--

INSERT INTO `movie` (`m_name`, `m_id`, `m_date`, `m_detail`, `m_price`) VALUES
('Scream', '001', '2023-09-07', 'ฆาตกรหน้ากากผีกลับมาอีกครั้งแล้ว โดยในภาคที่ 5 นี้ ได้คู่หูผู้กำกับจากภาพยนตร์เรื่อง Ready Or Not มากำกับแทน เวส เครเวน (Wes Craven) ผู้ล่วงลับ ตัวหนังเลยเล่าเรื่อง 25 ปีให้หลังจากภาคก่อนหน้า ทำให้มีกลุ่มวัยรุ่นยุคใหม่ต้องรับคำชี้แนะจากกลุ่มผู้รอดชีวิตจากเหตุการณ์ร้ายในเมืองวู้ดส์โบโรอีกครั้ง และฆาตกรคนใหม่ก็เหมือนจะคุ้นเคยกับเหยื่อทั้งรุ่นเก่าและรุ่นใหม่เสียด้วย เกมการไล่ล่าครั้งนี้จะจบลงเช่นไร ?!', 35),
('The Batman', '003', '2023-01-24', 'The Batman เดินเรื่องอยู่ในช่วงที่อัศวินรัตติกาลออกปฏิบัติการต่อสู้กับอาชญากรรมเป็นปีที่สอง ตำรวจยังไม่ไว้ใจมนุษย์ค้างคาวแบบเต็มเปี่ยม แต่ก็ยอมรับศักยภาพของเขา และในช่วงนั้นเอง Riddler คนร้ายสายปริศนาก็ท้าทายทั้งมนุษย์ค้างคาวด้วยคำถามที่เกี่ยวพันกับชีวิตส่วนตัวของ Bruce Wayne อีกด้วย และทำเหตุการณ์ในเมือง Gotham ดูยุ่งเหยิงขึ้นไปอีกหลายขั้น\r\n\r\n', 35),
('The Flash', '002', '2023-04-04', 'จักรวาลภาพยนตร์ฝั่ง DCEU ดูเงียบหายกันไประยะหนึ่ง เนื่องจากมีปัญหาหลายประการ จนกระทั่งภาพยนตร์ Shazam ทำให้ทาง DC Filmes พอจะตั้งกระบวนได้ว่าภาพยนตร์เรื่องต่อๆ ไปของจักรวาลจะไปทางไหน และทำให้ภาพยนตร์เรื่องหนึ่งของฝั่ง DCEU ที่จะฉายในปี ค.ศ.2020 อย่าง The Flash น่าจะเป็นความหวังใหม่ทั้งผู้สร้างและคนดูเลย', 35);

-- --------------------------------------------------------

--
-- Table structure for table `order`
--

CREATE TABLE `order` (
  `o_name` varchar(500) NOT NULL,
  `o_lastname` varchar(50) NOT NULL,
  `email` varchar(100) NOT NULL,
  `o_movie` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `name` varchar(50) NOT NULL,
  `lastname` varchar(50) NOT NULL,
  `address` varchar(100) NOT NULL,
  `id` int(4) NOT NULL,
  `phone` varchar(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`name`, `lastname`, `address`, `id`, `phone`) VALUES
('asd', 'asd', 'asd', 0, 'asd'),
('sad', 'a', 's', 1, 'dd'),
('A', 'B', 'BKK', 101, '0123456789'),
('B', 'C', 'BKK', 102, '0123456788'),
('C', 'D', 'BKK', 103, '0123456787'),
('D', 'E', 'BKK', 104, '0123456786'),
('jhk', 'ghj', 'ffg', 112, 'hfgh');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `actor`
--
ALTER TABLE `actor`
  ADD PRIMARY KEY (`a_movie`);

--
-- Indexes for table `movie`
--
ALTER TABLE `movie`
  ADD PRIMARY KEY (`m_name`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
