-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Feb 25, 2026 at 09:32 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.1.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `farasisokogarden`
--

-- --------------------------------------------------------

--
-- Table structure for table `product_details`
--

CREATE TABLE `product_details` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_description` text NOT NULL,
  `product_cost` int(11) NOT NULL,
  `product_photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `product_details`
--

INSERT INTO `product_details` (`product_id`, `product_name`, `product_description`, `product_cost`, `product_photo`) VALUES
(5, 'NIKE AF1', 'iconic all white AF1 ,your daily shoes thats cheap but with style', 2000, 'Nike_Air_Force_1_White_Low_-_44_5-removebg-preview.png'),
(6, 'NEW ERA CPE', 'LA Cole cape,one of the rare items at our shops from the iconic Basketball player Cole', 1500, 'hat2.png'),
(8, 'Stussy T', 'Who said there is no stussy wear in Nairobi,shop with us to get our exclusive items', 2500, 'stussy.png'),
(9, 'Zenmanchen hoody', 'Unique is the way to go with our designer hoodies.Why not stand out?Get yours at an affordable price', 3000, 'Zenmanchen hoodie.png'),
(10, 'Puma xl suede red', 'Why receive a rose on valentines when you can rock the new puma xl suede which are redder than hot iron', 3000, 'suede_xl_red-removebg-preview.png'),
(11, 'Jordan 4', 'some choose is for basketball others for style what will you choose?', 4500, 'Nike__Jordan_s_-removebg-preview.png'),
(12, 'converse all star', 'rocking since the 1980s ,if your gramps could wear them why not you? No better way to feel like a star', 2000, 'Converse_Chuck_Taylor_All_Star_High-Top_Sneaker-removebg-preview.png'),
(13, 'vamp T', 'If your in to opium music then this here is the product of your liking.From an underground singer to a household name ,no one better than playboy carti with his new design the vamp T', 2400, 'teeth.png'),
(14, 'Diesel cape', 'If you cant drive the car wear the cape', 1700, 'hat 3.png'),
(15, 'Y2k sweatshirt', 'Did no one tell your hot ? feel hot with our y2k sweatshirts.Nothings hotter than blue flames', 2000, 'y2k sweatshirt.png'),
(16, 'Y2k vintage', 'This is the only way to be nonchalant and still stand out among many #we vaguely feel many', 2000, 'y2k vintage.png'),
(17, 'Work man glasses', 'You dont have to work construction to wear these bad boys,meant for those who understand fashion and i know you\'re the right person', 1870, 'nike_glasses-removebg-preview.png'),
(18, 'Cartier T', 'Be both the beast and the angel in this classic iconic T', 4000, 'cartier t.png'),
(19, 'Denim red on black', 'Some say baggy is not a fashion, good thing is that they know nothing about fashion.You might not fit into it but your aura will', 3500, 'hiphop jeans.png'),
(20, 'Mules', 'If your into the more casual look this is the right product for you ,be casual yet look good', 2000, 'nike_crocs-removebg-preview.png'),
(21, 'New life T', 'Everday is a new life with this T', 2000, 'beauty print.png'),
(22, 'samba\'s', 'They only see addidas in sports ,why not in fashion?,get your pair now', 3700, 'samba.jpg'),
(23, 'UGGS', 'Good is an understatement for this shoe,elegance is how i can best describe this shoe.Comfort at its finest', 5000, 'ugs p.jpg'),
(24, 'crocs', 'comfort can be for anyone at the right price', 2300, 'gray crocs.jpg'),
(25, 'vintage dior bag', 'The perfect bag for the perfect woman.Feel perfect and stylish at the same time', 8000, 'vintage_dior-removebg-preview.png');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `phone` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `username`, `password`, `email`, `phone`) VALUES
(32, 'Paul', '0987', 'lovendro.p@gmail.com', '25496569447'),
(33, 'Nicol', '0987', 'andiego@gmail.com', '254768624909');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `product_details`
--
ALTER TABLE `product_details`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `product_details`
--
ALTER TABLE `product_details`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;