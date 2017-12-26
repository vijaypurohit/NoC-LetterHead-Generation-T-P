-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 27, 2017 at 03:44 PM
-- Server version: 10.1.21-MariaDB
-- PHP Version: 5.6.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `t&p17`
--

-- --------------------------------------------------------

--
-- Table structure for table `cit_company`
--

CREATE TABLE `cit_company` (
  `id` int(11) NOT NULL,
  `c_designation` varchar(15) NOT NULL COMMENT 'designation',
  `c_company` varchar(255) NOT NULL COMMENT 'Name of Comapny',
  `c_st_addr` varchar(500) NOT NULL,
  `c_city` varchar(50) NOT NULL,
  `c_state` varchar(50) NOT NULL,
  `c_pincode` int(6) NOT NULL,
  `c_mobile` varchar(11) NOT NULL,
  `c_email` varchar(100) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit_company`
--

INSERT INTO `cit_company` (`id`, `c_designation`, `c_company`, `c_st_addr`, `c_city`, `c_state`, `c_pincode`, `c_mobile`, `c_email`, `created_at`) VALUES
(1, 'HR', 'Sofcon India Pvt Ltd', 'Sofcon India Pvt. Ltd., 405, 4th Floor, Sukhsagar Complex, Near Fortune Landmark Hotel, Usmanpura, Ashram Road, Ahmedabad-380013', 'Ahmedabad', 'Gujrat', 380013, '9998487798', 'ahmedabad@sofcontraining.com', '2017-03-09 11:29:15'),
(3, 'HR', 'Modern Insulators Ltd.', 'Modern Insulators Ltd. Talheti,  Abu Road (Rajasthan) India', 'Abu Road', 'Rajasthan', 307026, '2974-22804', 'milabu@moderninsulators.com', '2017-03-09 12:09:56'),
(4, 'HR', 'Jodhpur Vidyut Vitran Nigam Limited (JdVVNL)', 'Jodhpur Vidyut Vitran Nigam Limited (JdVVNL), New Power House, Industrial  Area  Jodhpur-342003', 'Jodhpur', 'Rajasthan', 342003, '0291-26512', 'mdjodhpurdiscom@gmail.com', '2017-03-09 12:15:05'),
(9, 'MR. ANIL VE', 'BSNL,Ghaziabad', 'ALTTC (BSNL),Rajnagar', 'Ghaziabad', 'Uttar Pradesh', 201002, '9868855522', 'anilkumar@bsnl.co.in', '2017-03-10 12:41:25'),
(54, 'L.G. RAO', 'Binani cement', 'Pindwada', 'Pindwada', 'Rajsthan', 307026, '8003895352', 'bcl@binanicement.co.in', '2017-03-14 09:24:22'),
(56, 'L.G.RAO', 'Binani cement', 'Binani Gram', 'Pindwara', 'Rajasthan', 307031, '8003895352', 'lgrao@binanicement.co.in', '2017-03-15 05:40:29'),
(57, 'LOKESH KUMAR SH', 'NTPC Ltd.', 'C-34,Dev Nagar,Tonk Road', 'Jaipur', 'Rajasthan', 332015, '9650992157', 'lksharma01@ntpc.co.in', '2017-03-15 06:36:16'),
(58, 'SR. MANAGER', 'NTPC', 'C-34, Dev Nagar, Tonk Road', 'Jaipur', 'Rajasthan', 302015, '9650992157', 'lksharma01@ntpc.co.in', '2017-03-15 13:59:12'),
(59, 'MANAGER(COMM)', 'NTPC Limited', 'C-34, Dev Nagar, Tonk Road', 'Jaipur', 'Rajasthan', 302015, '9650992157', 'lksharma01@ntpc.co.in', '2017-03-16 05:53:33'),
(61, 'SACHIN RANKA', 'Modern Insulator Ltd.', 'Taleheti', 'Aburoad', 'Rajasthan', 307026, '0297422804', 'milabu@moderninsulators.com', '2017-03-16 09:09:46'),
(62, 'ASIF K SHAIR', 'JK LAXMI CEMENT', 'PINDWADA DIST SIROHI', 'SIROHI', 'RAJASTHAN', 307022, '9785455567', 'akshair@lc.jkmail.com', '2017-03-16 12:41:36'),
(63, 'HEAD', 'BSNL ', 'BSNL GUJRAT CIRCLE AHMEDABAD', 'AHMEDABAD', 'GUJRAT', 380009, '9426630100', 'rttcahmedabad@bsnl.co.in', '2017-03-16 13:04:07'),
(64, 'A.K. SAHIR', 'J K LAKSHAMI CEMENT', 'JK PURAM, TESHIL -PINDHWARA, Sirohi - 307019, Rajasthan,', 'Pindawada', 'Rajasthan', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-16 14:21:25'),
(65, 'SR. MANAGER', 'NTPC', 'C-34, DEV NAGAR, TONK ROAD', 'Jaipur', 'Rajasthan', 302019, '9650992157', 'lksharma01@ntpc.co.in', '2017-03-16 14:35:17'),
(66, 'HR', 'Jodhpur Vidyut Vitran Nigam Limited', 'New Power House, Industrial Area', 'Jodhpur', 'Rajasthan', 342003, '0291-26512', 'mdjodhpurdiscom@gmail.com', '2017-03-16 14:46:25'),
(67, 'ASIF K SAHIR', 'JK LAKSHMI CEMENT LTD', 'JK PURAM , TEHSIL - PINDWARA ,  DISTRICT - SIROHI', 'SIROHI', 'RAJASTHAN', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-16 16:12:12'),
(68, 'ASIF K SAHIR', 'JK LAKSHMI CEMENT LTD', 'JK PURAM TEHSIL PINDWARA ', 'SIROHI', 'RAJASTHAN', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-17 07:23:18'),
(69, 'HR', '220KV GSS RVPNL', 'Sirohi', 'Sirohi', 'Rajasthan', 307001, '9414061000', 'athaiya.manish@rvpn.co.in', '2017-03-17 07:26:49'),
(70, 'MANAGER(COMM)', 'LTPC Limited', 'C-34,Dev Nagar,Tonk Road', 'Jaipur', 'Rajasthan', 302015, '9549361212', 'lksharma11@ntpc.co.in', '2017-03-17 07:40:54'),
(71, 'CHIEF ENGINEER', '220 KV GSS DEBARI', 'RRVPNL AJMER', 'AJMER', 'RAJASTHAN', 305001, '094140 040', 'avvnl0145@yahoo.com', '2017-03-17 07:47:42'),
(72, 'HR', 'MODERN INSULATOR LIMITED', 'Talheti,  Abu Road (Rajasthan) India', 'ABU ROAD', 'RAJASTHAN', 307026, '2974228044', 'milabu@vsnl.com', '2017-03-17 08:09:29'),
(73, 'HR', 'MODERN INSULATOR LIMITED', 'Talheti ', 'Aburoad', 'Rajasthan', 307026, '2974228044', 'milabu@vsnl.com', '2017-03-17 08:54:25'),
(74, 'L.G.RAO', 'Binani Cement', 'Binanigram', 'Pindwara', 'Rajasthan', 307031, '8003895352', 'lgrao@binanicement.co.in', '2017-03-17 14:39:47'),
(75, 'SR. DME', 'Sr. Diesel Shed Abu Road', 'Sr. Diesel Shed, Ghandhi Nagar', 'Abu Road', 'Rajasthan', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-18 04:22:17'),
(76, 'MR ANIL VERMA', 'BSNL Ghaziabad', 'ALTTC(BSNL) , Rajnagar', 'Ghaziabad', 'Uttar Pradesh', 201002, '9868855522', 'anilkumar@bsnl.co.in', '2017-03-20 04:16:01'),
(77, 'ZONAL CHIEF ENG', 'GSS', 'T AND C JODHPUR', 'JODHPUR', 'RAJASTHAN', 342001, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-20 05:03:22'),
(78, 'SUPERIDNT. ENGG', 'GSS', 'T AND C SIROHI', 'SIROHI', 'RAJASTHAN', 307001, '2972221639', 'se.tcc8@rvpn.co.in', '2017-03-20 05:07:37'),
(79, 'SR. MANAGER', 'NTPC', 'Sodala', 'Jaipur', 'Rajasthan', 302019, '9650992157', 'lksharma01@ntpc.co.in', '2017-03-20 06:23:35'),
(80, 'K.C. SHARAMA', 'MODERN INSULATORS LTD. ', 'TALHETI', 'ABUROAD', 'RAJASTHAN', 307026, '2974228044', 'MILABU@MODERNINSULATORS.COM', '2017-03-20 06:31:50'),
(81, 'THE A.K. SAHIR', 'J K LAKSHAMI CEMENT', 'JK PURAM,PINDHWARA', 'SIROHI', 'RAJASTHAN', 307019, '3300114212', 'jklc.customercare@jkmail.com', '2017-03-20 07:11:19'),
(83, 'HR', 'Modern Insulators Ltd.', 'Modern Insulators Ltd. Talheti, Abu Road (Rajasthan) India', 'Abu Road', 'Rajasthan', 307026, '2974228044', 'milabu@vsnl.com', '2017-03-20 14:07:20'),
(84, 'ZONAL CHIEF ENG', 'RRVPNL', 'R.Office Vidyut Bhavan, Maarwali Road', 'Ajmet', 'Rajasthan', 305004, '0145-26700', 'zce_t&c_ajmer@rvpn.co.in', '2017-03-20 14:42:34'),
(85, 'THE A K SAHIR', 'J K LAKSHMI CEMENT', 'JK PURAM, PINDHWARA', 'SIROHI', 'RAJASTHAN', 307026, '3300114212', 'jklc.customercare@jkmail.com', '2017-03-20 15:07:52'),
(86, 'ASIF KARIM SAHI', 'J K laxmi cement', 'J K Puram', 'Basantgarh', 'Rajasthan', 307019, '9785545556', 'aksahir@lc.jkmail.com', '2017-03-21 06:58:54'),
(87, 'BHARAT PATEL', 'PATEL TRANSFORMER  CORPORATION', '23,CHANDISAR, GIDC,CHANDISAR PALANPUR', 'PALANPUR', 'GUJARAT', 385001, '7383750000', 'bharatbhai_patel2005@yahoo.com', '2017-03-22 09:46:31'),
(88, 'BHARAT PATEL', 'PATEL TRANSFORMER CORPORATION', '23,CHANDISAR GIDC,CHANDISAR,PALANPUR', 'PALANPUR', 'GUJARAT', 385001, '7383750000', 'bharatbhai_patel2005@yahoo.com', '2017-03-22 09:46:57'),
(89, 'ZONAL CHIEF ENG', '220 KV GSS, PINDWARA', 'NEW POWERHOUSE INDUSTRIAL AREA', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-22 10:12:17'),
(90, 'ZONAL CHIEF ENG', '220 KV GSS,PINDWARA', 'NEW POWER HOUSE INDUSTRIAL AREA JODHPUR', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-22 10:15:19'),
(91, 'MR. VISHWKANT ', 'HEIDELBERG CEMENT INDIA LIMITED', 'VILL. MADORA,POST-BARATA KALAN GWALIOR KANPUR HIGHWAY BARAGOAN JHANSI', 'JHANSI', 'UTTAR PRADESH', 284001, '8130605553', 'vishwkant.mishra@heidelbergcement.in', '2017-03-22 10:25:20'),
(92, 'A.K. SAHIL', 'Jk Lakshmi Cement ', 'Jaykaypuram, Basantgrah', 'Banas', 'Rrajathan', 307019, '0978457168', 'jklc.customercare@jkmail.com', '2017-03-22 11:45:13'),
(93, 'DGM A.K. SAHIL', 'JK LAKSHMI CEMENT', 'Jaykaypuram, Basantgarh', 'Banas', 'Rrajathan', 307019, '9784571684', 'jklc.customercare@jkmail.com', '2017-03-22 12:32:16'),
(94, 'JONAL CHIEF ER.', 'R.V.P.N.L.', 'NEW POWER HOUSE JODHPUR', 'JODHPUR', 'Rajasthan', 342003, '2912203089', 'zec.jodh@rvpn.co.in', '2017-03-22 14:31:26'),
(95, 'S.R. DME', ' Diesel Shed ', 'SR DME Diesel Shed ,ghandhinagar', 'Aburoad', 'Rajasthan', 307026, '1425244443', 'dieselshedfl@yahoo.co.in', '2017-03-22 14:41:52'),
(96, 'HR', 'MORDERN INSULATORS LTD.', 'Modern Insulators Ltd. Talheti, ', 'Aburoad', 'Rajasthan', 307026, '2974228044', 'milabu@vsnl.com', '2017-03-22 14:47:15'),
(97, 'ZONAL CHIEF ENG', '220 KV GSS, PINDWARA', 'NEW POWER HOUSE INDUSTRIAL AREA, JODHPUR', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-22 15:53:03'),
(98, 'THE A. K. SAHIR', 'J K LAKSHAMI CEMENT', 'JK PURAM, PINDWARA', 'SIROHI', 'RAJASTHAN', 307019, '3300114212', 'jklc.customercare@jkmail.com', '2017-03-22 16:15:18'),
(99, 'A.K.SAHIR', 'J K Lakshmi Cement', 'J K Puram,Basantgarh', 'Sirohi', 'Rajasthan', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-22 16:17:14'),
(100, 'THE A.K. SAHIR', 'JK LAKSHMI CEMENT', 'JK PURAM, PINDHWARA', 'SIROHI', 'RAJASTHAN', 307019, '3300114212', 'jklc.customercare@jkmail.com', '2017-03-22 16:22:55'),
(101, 'A. K. SAHIR', 'J K laxmi cement', 'J K Puram', 'Basantgarh', 'Rajasthan', 307019, '9785545556', 'aksahir@lc.jkmail.com', '2017-03-22 16:57:02'),
(102, 'S.R. DME', 'SR DIEDEL SHED ABUROAD', 'SR Diesel Shed Ghandhinagar', 'Aburoad', 'Rajasthan', 307026, '1425244443', 'dieselshedfl@yahoo.co.in', '2017-03-22 17:25:27'),
(103, 'HR', 'Modern Insulators Ltd.', 'Modern Insulators Ltd. Talheti,  Abu Road (Rajasthan) India', 'Aburoad', 'Rajasthan', 307026, '2912203089', 'milabu@vsnl.com', '2017-03-22 17:36:22'),
(105, 'HR', 'NBE MOTORS PVT. LTD', 'Tirupati Industrial Estate, Opp. Bombay Housing, Everest-milan Road, Saraspur,  Ahmedabad', 'AHAMEDABAD', 'GUJARAT', 380024, '9327049213', 'newbharat_nbe@rediffmail.com', '2017-03-22 18:02:19'),
(106, 'HR', 'SWATI SWITCHGEAR PVT. LTD', '36, Subhlalaxmi Industrial Estate,Opp-Sakal Industrial Estate,vill-moraiya,sarkhej-bavla Highway,changodar', 'AHAMEDABAD', 'GUJARAT', 382210, '2717645195', 'elecpnl@swatiswitchgears.com', '2017-03-22 18:15:44'),
(107, 'ZONAL CHIEF ENG', '220 KV GSS, PINDWARA', 'NEW POWER HOUSE, INDUSTRIAL AREA ,JODHPUR', 'JODHPUR', 'Rajasthan', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-23 07:11:10'),
(108, 'ZONAL CHIEF ENG', '132 KV GSS, REODAR', 'NEW POWER HOUSE, INDUSTRIAL AREA ,JODHPUR', 'JODHPUR', 'Rajasthan', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-23 07:32:47'),
(109, 'ZONAL CHIEF ENG', '220 KV GSS, SIROHI', 'NEW POWER HOUSE, INDUSTRIAL AREA ,JODHPUR', 'JODHPUR', 'Rajasthan', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-23 07:36:06'),
(110, 'ASIF K SAHIR', 'J K LAKSHAMI CEMENT', 'JK PURAM, TESHIL -PINDHWARA, Sirohi - 307019, Rajasthan,', 'Pindawada', 'Rajasthan', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-23 07:38:30'),
(111, 'A.K.SAHIR', 'J.K.Lakshmi Cement', 'J.K.Puram,Basantgarh', 'Sirohi', 'Rajasthan', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-23 14:43:28'),
(112, 'ZONAL CHIEF ENG', '220 KV GSS, PINDWARA', 'NEW POWER HOUSE, INDUSTRIAL AREA ,JODHPUR', 'Pindawada', 'Rajasthan', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-24 07:16:14'),
(113, 'ZONAL CHIEF ENG', '220 KV GSS,  sirohi', 'NEW POWER HOUSE, INDUSTRIAL AREA ,JODHPUR', 'JODHPUR', 'Rajasthan', 342003, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-24 07:21:14'),
(114, 'JONAL CHIEF ER.', '220 KV GSS, SIROHI', 'NEW POWER HOUSE, INDUSTRIAL AREA ,JODHPUR', 'JODHPUR', 'Rajasthan', 342003, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-24 07:22:51'),
(115, 'ZONAL CHIEF ER.', '220kv GSS ,SIROHI', 'NEW POWER HOUSE,INDUSTRIAL AREA,JODHPUR', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-24 07:39:24'),
(116, 'SENIOR DME(D)', 'SR DIESEL SHED ABUROAD', 'DIESEL SHED LOCOMOTIVE GANDHINAGAR ABUROAD', 'ABUROAD', 'Rajasthan', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-24 07:39:46'),
(118, 'SENIOR DME(D)', 'SR DIESEL SHED ABUROAD', 'DIESEL  LOCOMOTIVE SHED GANDHINAGAR ABUROAD', 'ABUROAD', 'Rajasthan', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-24 07:46:39'),
(119, 'ZONAL CHIEF ER.', '220 KV GSS , SIROHI', 'NEW POWER HOUSE , INDUSTRIAL AREA , JODHPUR', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-24 08:37:36'),
(120, 'SR DME', 'Diesel lokomotive shed abu road', 'Diesel  Shed Gandhi Nagar Abu Road', 'Abu road', 'Rajasthan', 307026, '9001196564', 'sr.dmedsl@allrailnetgov.in', '2017-03-24 11:12:20'),
(121, 'SR. DME  (D)', 'SR DIESEL SHED ABUROAD', 'DIESEL LOCOMOTIVE SHED GANDHINAGAR ABUROAD', 'ABUROAD', 'RAJASTHAN', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-24 11:56:13'),
(122, 'R.K. SHARMA', 'Modern Insulator ltd.', 'Taleheti', 'Aburoad', 'Rajasthan ', 307026, '0297422804', 'milabu@moderninsulators.com', '2017-03-24 12:23:26'),
(124, 'SR. DME', 'DIESEL SHED  ABUROAD', 'GANDHI NAGAR   ABU ROAD', 'ABUROAD', 'RAJASTHAN', 307026, '9001196564', 'sr.dmesl@allrailnetgov.in', '2017-03-24 17:40:46'),
(125, 'ZONAL CHIEF ER.', 'R.V.P.N.L.', 'NEW POWER HOUSE JODHPUR', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-25 03:31:30'),
(127, 'ZONAL CHIEF ER', 'R.V.P.N.L.', 'NEW POWER HOUSE JODHPUR', 'JODHPUR', 'RAJASTHAN', 342003, '9414061338', 'zce.jodh@rvpn.co.in', '2017-03-25 04:30:33'),
(128, 'ZONALCHIEF ENG.', 'R>V>P>N>L>', 'New Power House Bhagat Ki Kithi Jodhpur', 'Jodhpur', 'RAJASTHAN', 347003, '9414061338', 'Zce.jodh@Rvpn.com', '2017-03-25 06:51:55'),
(129, 'DGM A.K. SAHIL', 'JK LAXMI CEMENT', 'Jaykaypuram , Basantgarh', 'Banas', 'Rajasthan', 307019, '9784571684', 'jklc.customercare@jkmail.com', '2017-03-25 08:04:27'),
(130, 'SR. DME(D)', 'SR DIESEL SHED, ABUROAD', 'DIESEL LOCOMOTIVE SHED, GHANDHI NAGAR', 'ABUROAD', 'RAJASTHAN', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-25 10:10:11'),
(131, 'SR.DME (D)', 'SR DIESEL SHED ABUROAD', 'DIESEL LOCOMOTIVE SHED GANDHINAGAR ABUROAD', 'ABUROAD', 'RAJASTHAN', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-25 10:27:15'),
(132, 'SR. DME (D)', 'SR. DIESEL SHED, ABUROAD ', 'DIESEL LOCOMOTIVE SHED, GANDHINAGAR', 'ABUROAD', 'RAJASTHAN', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-25 10:52:18'),
(133, 'SR. DME (D)', 'SR. DIESEL SHED, ABUROAD', 'DIESEL LOCOMOTIVE  SHED GANDHINAGAR ', 'ABUROAD', 'RAJASTHAN', 307026, '2974222164', 'dieselshedfl@yahoo.co.in', '2017-03-25 11:00:39'),
(134, 'SR. DME', 'DME DIESEL SHED GANDHI NAGAR ABU ROAD', 'Near Railway Colony, Gandhi Nagar , Abu Road', 'Abu Road', 'Rajasthan', 307026, '9001196564', 'sr.dmedsl@allrailnetgov.in', '2017-03-26 07:01:42'),
(135, 'ZONALCHIEF ENG.', 'R.V.P.N.L.', 'New Power House Bhagat Ki Kithi Jodhpur', 'Jodhpur', 'RAJASTHAN', 347003, '9414061338', 'Zce.jodh@Rvpn.com', '2017-03-26 12:18:49'),
(136, 'ZONALCHIEF ENG.', 'R.V.P.N.L.', 'New Power House Bhagat Ki Kithi Jodhpur', 'Jodhpur', 'RAJASTHAN', 302003, '9414061338', 'Zce.jodh@Rvpn.com', '2017-03-26 12:20:22'),
(137, 'AJAY SHARMA', 'DIESEL SHED ', 'GANDHI NAGAR', 'ABUROAD', 'RAJASTHAN', 307026, '9461444565', 'sr.dmedsl@allrailnet.gov.in', '2017-03-26 14:50:17'),
(138, 'SR. DME', 'Diesel Loco Shed, Aburoad', 'Aburoad, District - Sirohi ', 'Aburoad', 'Rajasthan', 307026, '9001196407', 'Srdmedsl@aii.railnet.gov.in', '2017-03-26 16:04:30'),
(139, 'A.K.SHAIR', 'J.k laxmi cement ', 'Jk Puram Banas Pindawara', 'Sirohi', 'Rajasthan', 307019, '9785455567', 'aksahir@lc.jkmail.com', '2017-03-27 04:45:35'),
(140, 'SENIOR  DME (D)', 'SR DIEDEL SHED ABUROAD', 'DIESEL SHED LOCOMOTIVE GANDHINAGAR ABUROAD', 'ABUROAD', 'RAJASTHAN', 307026, '2974222162', 'dieselshedfl@yahoo.com', '2017-03-27 07:13:51'),
(141, 'ZONAL CHIEF ENG', 'R.v.p.n.l', 'New Power House Jodhpur', 'Jodhpur', 'Rajasthan', 342003, '9414061338', 'mdjodhpurdiscom@gmail.com', '2017-03-27 07:17:44'),
(142, 'MR. AJAY SHARMA', 'diesel shad aburoad', 'Gandhinagar,aburoad', 'Aburoad', 'Rajasthan', 307026, '9461444565', 'sr.deeds@allrailnetgov.in', '2017-03-27 13:24:45'),
(143, 'MR. AJAY SHARMA', 'diesel shed aburoad', 'Gandhinagar', 'Aburoad', 'Rajasthan', 307026, '9461444565', 'sr.deeds@allrailnetgov.in', '2017-03-27 13:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `cit_letter_generated`
--

CREATE TABLE `cit_letter_generated` (
  `id` int(11) NOT NULL,
  `user_rtu_roll` varchar(10) NOT NULL,
  `c_id` int(11) NOT NULL,
  `unique_id` int(11) DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit_letter_generated`
--

INSERT INTO `cit_letter_generated` (`id`, `user_rtu_roll`, `c_id`, `unique_id`, `created_at`) VALUES
(1, '14ECAEE028', 1, 2281, '2017-03-09 11:29:15'),
(3, '14ECAEE028', 3, 2282, '2017-03-09 12:09:57'),
(4, '14ECAEE028', 4, 2283, '2017-03-09 12:15:05'),
(9, '14ECACS010', 9, 1101, '2017-03-10 12:41:25'),
(34, '14ECAME017', 54, 3171, '2017-03-14 09:24:22'),
(36, '14ECAME017', 56, 3172, '2017-03-15 05:40:29'),
(37, '14ECAME025', 57, 3251, '2017-03-15 06:36:16'),
(38, '14ECAME014', 58, 3141, '2017-03-15 13:59:12'),
(39, '14ECAME011', 59, 3111, '2017-03-16 05:53:33'),
(66, '14ECAEE011', 61, 2111, '2017-03-16 09:09:46'),
(67, '14ECAME044', 58, 3441, '2017-03-16 12:18:06'),
(68, '14ECAME021', 58, 3211, '2017-03-16 12:33:53'),
(69, '14ECAEE035', 62, 2351, '2017-03-16 12:41:36'),
(70, '14ECAME007', 58, 3071, '2017-03-16 12:42:39'),
(71, '14ECAEC007', 63, 4071, '2017-03-16 13:04:07'),
(72, '14ECAME045', 58, 3451, '2017-03-16 13:07:42'),
(73, '15ECAEE202', 64, 12021, '2017-03-16 14:21:25'),
(74, '14ECAME020', 65, 3201, '2017-03-16 14:35:17'),
(75, '14ECAEE025', 66, 2251, '2017-03-16 14:46:25'),
(76, '14ECAEE008', 67, 2081, '2017-03-16 16:12:12'),
(77, '15ECAEE203', 67, 12031, '2017-03-16 16:33:31'),
(78, '14ECAEE011', 68, 2112, '2017-03-17 07:23:18'),
(79, '14ECAEE030', 69, 2301, '2017-03-17 07:26:49'),
(80, '14ECAME024', 70, 3241, '2017-03-17 07:40:54'),
(81, '14ECAEE030', 71, 2302, '2017-03-17 07:47:42'),
(82, '14ECAEE018', 72, 2181, '2017-03-17 08:09:29'),
(83, '14ECAEE030', 73, 2303, '2017-03-17 08:54:25'),
(84, '14ECAEE025', 73, 2252, '2017-03-17 09:02:23'),
(85, '14ECAME006', 74, 3061, '2017-03-17 14:39:47'),
(86, '14ECAEE019', 75, 2191, '2017-03-18 04:22:17'),
(87, '14ECAEE015', 62, 2151, '2017-03-18 04:23:00'),
(88, '14ECAEE033', 75, 2331, '2017-03-18 04:44:56'),
(89, '14ECACS011', 76, 1111, '2017-03-20 04:16:01'),
(90, '14ECAEE035', 77, 2352, '2017-03-20 05:03:22'),
(91, '14ECAEE035', 78, 2353, '2017-03-20 05:07:37'),
(92, '14ECAME022', 79, 3221, '2017-03-20 06:23:35'),
(93, '14ECAEE007', 80, 2071, '2017-03-20 06:31:50'),
(94, '14ECAEE036', 81, 2361, '2017-03-20 07:11:19'),
(99, '14ECAEE028', 83, 2284, '2017-03-20 14:07:20'),
(100, '14ECAEE033', 83, 2332, '2017-03-20 14:12:59'),
(101, '14ECAEE030', 84, 2304, '2017-03-20 14:42:34'),
(102, '14ECAEE030', 85, 2305, '2017-03-20 15:07:52'),
(103, '14ECAME016', 74, 3161, '2017-03-21 05:14:21'),
(104, '14ECAME017', 86, 3173, '2017-03-21 06:58:54'),
(105, '14ECAEE003', 81, 2031, '2017-03-21 07:34:56'),
(106, '14ECAEE025', 81, 2253, '2017-03-21 07:36:11'),
(107, '14ECAEE030', 81, 2306, '2017-03-21 07:40:33'),
(108, '14ECAEE004', 81, 2041, '2017-03-21 07:46:28'),
(109, '14ECAEE031', 81, 2311, '2017-03-21 07:48:37'),
(110, '14ECAEE030', 87, 2307, '2017-03-22 09:46:31'),
(111, '14ECAEE036', 88, 2362, '2017-03-22 09:46:57'),
(112, '14ECAEE018', 87, 2182, '2017-03-22 09:51:03'),
(113, '14ECAEE025', 88, 2254, '2017-03-22 09:54:22'),
(114, '14ECAEE003', 87, 2032, '2017-03-22 09:54:58'),
(115, '14ECAEE031', 88, 2312, '2017-03-22 10:02:54'),
(116, '14ECAEE004', 88, 2042, '2017-03-22 10:06:30'),
(117, '14ECAEE037', 88, 2371, '2017-03-22 10:09:22'),
(118, '14ECAEE030', 89, 2308, '2017-03-22 10:12:17'),
(119, '14ECAEE018', 89, 2183, '2017-03-22 10:14:29'),
(120, '14ECAEE025', 90, 2255, '2017-03-22 10:15:19'),
(121, '14ECAEE003', 89, 2033, '2017-03-22 10:16:19'),
(122, '14ECAEE036', 90, 2363, '2017-03-22 10:16:28'),
(123, '14ECAEE037', 90, 2372, '2017-03-22 10:17:17'),
(124, '14ECAEE004', 90, 2043, '2017-03-22 10:19:19'),
(125, '14ECAEE031', 90, 2313, '2017-03-22 10:21:27'),
(126, '14ECAEC005', 91, 4051, '2017-03-22 10:25:20'),
(127, '14ECAEE025', 89, 2256, '2017-03-22 10:29:05'),
(128, '14ECAME048', 92, 3481, '2017-03-22 11:45:13'),
(129, '14ECAME005', 93, 3051, '2017-03-22 12:32:16'),
(130, '15ECAEE202', 94, 12022, '2017-03-22 14:31:26'),
(131, '15ECAEE202', 95, 12023, '2017-03-22 14:41:52'),
(132, '15ECAEE202', 96, 12024, '2017-03-22 14:47:15'),
(133, '14ECAEE020', 75, 2201, '2017-03-22 14:58:54'),
(134, '15ECAME200', 93, 13001, '2017-03-22 15:52:31'),
(135, '14ECAEE036', 97, 2364, '2017-03-22 15:53:03'),
(136, '14ECAEE003', 97, 2034, '2017-03-22 15:55:26'),
(137, '14ECAME048', 93, 3482, '2017-03-22 15:57:03'),
(138, '14ECAEE018', 97, 2184, '2017-03-22 16:00:37'),
(139, '14ECAEE037', 97, 2373, '2017-03-22 16:04:32'),
(140, '14ECAEE031', 97, 2314, '2017-03-22 16:06:13'),
(141, '14ECAEE004', 97, 2044, '2017-03-22 16:07:43'),
(142, '14ECAEE018', 98, 2185, '2017-03-22 16:15:18'),
(143, '14ECAME006', 99, 3062, '2017-03-22 16:17:14'),
(144, '14ECAEE018', 100, 2186, '2017-03-22 16:22:55'),
(145, '14ECAME017', 101, 3174, '2017-03-22 16:57:02'),
(146, '15ECAEE204', 102, 12041, '2017-03-22 17:25:27'),
(147, '15ECAEE204', 64, 12042, '2017-03-22 17:29:58'),
(148, '15ECAEE204', 103, 12043, '2017-03-22 17:36:22'),
(149, '15ECAEE204', 94, 12044, '2017-03-22 17:41:04'),
(150, '15ECAEE204', 105, 12045, '2017-03-22 17:46:03'),
(151, '15ECAEE202', 105, 12025, '2017-03-22 18:02:19'),
(152, '15ECAEE202', 106, 12026, '2017-03-22 18:15:44'),
(153, '15ECAEE204', 106, 12046, '2017-03-22 18:18:11'),
(154, '14ECAEE008', 107, 2082, '2017-03-23 07:11:10'),
(155, '15ECAEE203', 107, 12032, '2017-03-23 07:13:23'),
(156, '14ECAEE007', 107, 2072, '2017-03-23 07:15:12'),
(157, '14ECAEE011', 107, 2113, '2017-03-23 07:17:27'),
(158, '14ECAEE035', 107, 2354, '2017-03-23 07:19:05'),
(159, '15ECAEE201', 107, 12011, '2017-03-23 07:26:36'),
(160, '14ECAEE010', 107, 2101, '2017-03-23 07:29:29'),
(161, '14ECAEE005', 108, 2051, '2017-03-23 07:32:47'),
(162, '14ECAEE005', 109, 2052, '2017-03-23 07:36:06'),
(163, '14ECAEE010', 110, 2102, '2017-03-23 07:38:30'),
(164, '14ECAME016', 111, 3162, '2017-03-23 14:43:28'),
(165, '15ECAEE201', 64, 12012, '2017-03-23 16:16:04'),
(166, '14ECAEE009', 64, 2091, '2017-03-24 07:09:41'),
(167, '14ECAEE002', 64, 2021, '2017-03-24 07:11:59'),
(168, '14ECAEE002', 107, 2022, '2017-03-24 07:14:32'),
(169, '14ECAEE009', 112, 2092, '2017-03-24 07:16:14'),
(170, '14ECAEE035', 113, 2355, '2017-03-24 07:21:14'),
(171, '15ECAEE203', 114, 12033, '2017-03-24 07:22:51'),
(172, '14ECAEE008', 115, 2083, '2017-03-24 07:39:24'),
(173, '14ECAME027', 116, 3271, '2017-03-24 07:39:46'),
(174, '15ECAEE201', 118, 12013, '2017-03-24 07:42:57'),
(175, '14ECAEE010', 118, 2103, '2017-03-24 07:46:39'),
(176, '14ECAEE031', 118, 2315, '2017-03-24 08:31:53'),
(177, '14ECAEE005', 119, NULL, '2017-03-24 08:37:36'),
(178, '14ECAEE005', 119, 2054, '2017-03-24 08:37:36'),
(179, '14ECAEE010', 119, 2104, '2017-03-24 08:39:34'),
(180, '15ECAEE201', 119, 12014, '2017-03-24 08:41:25'),
(181, '14ECAME001', 120, 3011, '2017-03-24 11:12:21'),
(182, '14ECAME024', 120, 3242, '2017-03-24 11:16:03'),
(183, '15ECAEE201', 121, 12015, '2017-03-24 11:56:13'),
(184, '14ECAEE011', 122, 2114, '2017-03-24 12:23:26'),
(185, '15ECAEE201', 125, 12016, '2017-03-24 12:24:16'),
(186, '14ECAME035', 124, 3351, '2017-03-24 17:40:46'),
(187, '15ECAEE203', 125, 12034, '2017-03-25 03:31:30'),
(188, '14ECAEE035', 125, 2356, '2017-03-25 03:39:31'),
(189, '15ECAEE203', 125, 12035, '2017-03-25 03:42:13'),
(190, '14ECAEE005', 125, 2055, '2017-03-25 03:56:34'),
(191, '14ECAEE035', 127, 2357, '2017-03-25 04:30:33'),
(192, '14ECAEE008', 125, 2084, '2017-03-25 04:34:39'),
(193, '14ECAEE008', 127, 2085, '2017-03-25 04:37:31'),
(194, '14ECAEE015', 128, 2152, '2017-03-25 06:51:55'),
(195, '15ECAME200', 129, 13002, '2017-03-25 08:04:27'),
(196, '14ECAME025', 130, 3252, '2017-03-25 10:10:11'),
(197, '14ECAME050', 131, 3501, '2017-03-25 10:27:15'),
(198, '14ECAME015', 132, 3151, '2017-03-25 10:52:18'),
(199, '14ECAME050', 133, 3502, '2017-03-25 11:00:39'),
(200, '14ECAME003', 134, 3031, '2017-03-26 07:01:42'),
(201, '14ECAME047', 134, 3471, '2017-03-26 07:17:02'),
(202, '14ECAEE015', 135, 2153, '2017-03-26 12:18:49'),
(203, '14ECAEE015', 136, 2154, '2017-03-26 12:20:22'),
(204, '14ECAEE010', 125, 2105, '2017-03-26 14:20:35'),
(205, '14ECAME010', 137, 3101, '2017-03-26 14:50:17'),
(206, '14ECAME011', 138, 3112, '2017-03-26 16:04:30'),
(207, '14ECAEE007', 139, 2073, '2017-03-27 04:45:35'),
(208, '14ECAME032', 140, 3321, '2017-03-27 07:13:51'),
(209, '14ECAEE009', 141, 2093, '2017-03-27 07:17:44'),
(210, '14ECAEE002', 140, 2023, '2017-03-27 07:19:37'),
(211, '14ECAEE013', 136, 2131, '2017-03-27 07:21:34'),
(212, '14ECAEE006', 136, 2061, '2017-03-27 07:23:21'),
(213, '14ECAME018', 142, 3181, '2017-03-27 13:24:45'),
(214, '14ECAME018', 143, 3182, '2017-03-27 13:34:05');

-- --------------------------------------------------------

--
-- Table structure for table `cit_users`
--

CREATE TABLE `cit_users` (
  `id` int(11) NOT NULL,
  `rtu_roll` varchar(10) NOT NULL,
  `name` varchar(110) NOT NULL,
  `fname` varchar(110) DEFAULT NULL,
  `branch` varchar(50) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `mobile` varchar(11) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `m_otp` int(11) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `cit_users`
--

INSERT INTO `cit_users` (`id`, `rtu_roll`, `name`, `fname`, `branch`, `gender`, `mobile`, `email`, `m_otp`, `created_at`, `updated_at`) VALUES
(1, '14ECACS002', 'Chanchal', 'Mohan Lal Saini', 'CSE', 'Female', '7728997939', 'chanchalsaini7742@gmail.com', 690323, '2017-03-09 06:38:51', '2017-03-14 13:33:09'),
(2, '14ECACS003', 'Deeksha Rawal', 'Ramesh Rawal', 'CSE', 'Female', '7727850071', NULL, NULL, '2017-03-09 06:38:51', NULL),
(3, '14ECACS004', 'Deepika Yadav', 'Vijendra Singh Yadav', 'CSE', 'Female', '9694540826', NULL, NULL, '2017-03-09 06:38:51', NULL),
(4, '14ECACS005', 'Divya Umak', 'Wasudev Umak', 'CSE', 'Female', '7665254422', NULL, NULL, '2017-03-09 06:38:51', NULL),
(5, '14ECACS009', 'Manish Kumar', 'Shankar Dayal', 'CSE', 'Male', '9680073012', 'manishkumar456@outlook.com', 777188, '2017-03-09 06:38:51', '2017-03-10 21:26:57'),
(6, '14ECACS010', 'Mansi Gupta', 'Sanjay Gupta', 'CSE', 'Female', '9680958459', 'mansig130@gmail.com', 685404, '2017-03-09 06:38:51', '2017-03-11 09:46:28'),
(7, '14ECACS011', 'Minsu Anna Thomas', 'Thomas Varughese', 'CSE', 'Female', '9929777427', 'minsuanna@gmail.com', 860238, '2017-03-09 06:38:51', '2017-03-20 09:44:17'),
(8, '14ECACS012', 'Naresh Kumar Prajapat', 'Mana Ram Prajapat', 'CSE', 'Male', '7728973403', NULL, NULL, '2017-03-09 06:38:51', NULL),
(9, '14ECACS013', 'Navneet Tiwari', 'Jai Prakash Tiwari', 'CSE', 'Male', '7728934450', 'NAVNEETTIWARI30.NT@OUTLOOK.COM', 537267, '2017-03-09 06:38:51', '2017-03-11 10:17:55'),
(10, '14ECACS015', 'Praveen Kumar', 'Shankar Lal', 'CSE', 'Male', '8696348330', NULL, NULL, '2017-03-09 06:38:51', NULL),
(11, '14ECACS016', 'Rajendra Kumar', 'Babu lal', 'CSE', 'Male', '9549621750', NULL, NULL, '2017-03-09 06:38:51', NULL),
(12, '14ECACS017', 'Ratan Kumar', 'Devaram', 'CSE', 'Male', '9799851215', NULL, NULL, '2017-03-09 06:38:51', NULL),
(13, '14ECACS018', 'Shalu Gupta', 'Subhash Gupta', 'CSE', 'Female', '8107797600', 'guptashalu831@gmail.com', 407349, '2017-03-09 06:38:51', '2017-03-14 13:32:58'),
(14, '14ECACS019', 'Sharul Agarwal', 'Govind Agrawal', 'CSE', 'Female', '7023669650', NULL, NULL, '2017-03-09 06:38:51', NULL),
(15, '14ECACS020', 'Vishal Borana', 'Anil Borana', 'CSE', 'Male', '8696552793', 'vishal2develop@gmail.com', 708875, '2017-03-09 06:38:51', '2017-03-10 15:45:02'),
(16, '15ECACS200', 'Pathan Sajidkhan', NULL, 'CSE', 'Male', '9898665520', 'sajidkhan98986@gmail.com', 596697, '2017-03-09 06:38:51', '2017-03-11 12:09:00'),
(17, '15ECACS201', 'Praveen Kumar', NULL, 'CSE', 'Male', NULL, NULL, NULL, '2017-03-09 06:38:51', NULL),
(18, '15ECACS202', 'Shailesh Thakur', NULL, 'CSE', 'Male', NULL, NULL, NULL, '2017-03-09 06:38:51', NULL),
(19, '14ECAEC001', 'Abhay Kumar', 'Vinod Kumar', 'ECE', 'Male', '8875305459', NULL, NULL, '2017-03-09 06:38:51', NULL),
(20, '14ECAEC002', 'Agrawal Priyankkumar', 'Mahendra bhai', 'ECE', 'Male', '9427600299', 'priyankbansal576@gmail.com', 755171, '2017-03-09 06:38:51', '2017-03-21 12:55:36'),
(21, '14ECAEC003', 'Kanishk Bansal', 'Arun Bansal', 'ECE', 'Male', '8432294906', 'bkanishk96@gmail.com', 221271, '2017-03-09 06:38:51', '2017-03-10 11:05:29'),
(22, '14ECAEC004', 'Manish Rana', 'Chamna Ram', 'ECE', 'Male', '9950023734', NULL, NULL, '2017-03-09 06:38:51', NULL),
(23, '14ECAEC005', 'Prashant Sen', 'Ramesh Sen', 'ECE', 'Male', '8875308802', 'prashantsen25@gmail.com', 56332, '2017-03-09 06:38:51', '2017-03-22 15:47:17'),
(24, '14ECAEC006', 'Pravin Singh Dahiya', NULL, 'ECE', 'Male', '9680736048', NULL, NULL, '2017-03-09 06:38:51', NULL),
(25, '14ECAEC007', 'Sanjay Solanki', 'Prema Ram', 'ECE', 'Male', '7665090100', 'sanjaysrk7@gmail.com', 830296, '2017-03-09 06:38:51', '2017-03-16 18:28:55'),
(26, '14ECAEC008', 'Sejal Kumari', 'Lal Chand Bairwa', 'ECE', 'Female', '9413408788', NULL, 289549, '2017-03-09 06:38:51', '2017-03-17 14:41:45'),
(27, '14ECAEE002', 'Amit Kumar', 'Baccha Singh', 'EE', 'Male', '7734838338', 'amitkumar838338@gmail.com', 617849, '2017-03-09 06:38:51', '2017-03-27 12:47:20'),
(28, '14ECAEE003', 'Arvind Kumar Patel', 'Narendra Kumar Patel', 'EE', 'Male', '9636190907', 'ARVINDPATEL21@GMAIL.COM', 38370, '2017-03-09 06:38:51', '2017-03-22 21:24:37'),
(29, '14ECAEE004', 'Ashutosh Sharma', 'Sunil Kumar Sharma', 'EE', 'Male', '9587152249', 'ashutosh11096@gmail.com', 721421, '2017-03-09 06:38:51', '2017-03-26 17:46:14'),
(30, '14ECAEE005', 'Ashwin Kumar Suriyal', 'Meetha Lal Suriyal', 'EE', 'Male', '8963853281', 'ashwin.suriyal@yahoo.com', 958977, '2017-03-09 06:38:51', '2017-03-25 09:24:54'),
(31, '14ECAEE006', 'Asraf Khan', 'Ramjan Khan', 'EE', 'Male', '7410915958', 'Asrfkhanmansuri@gmail.com', 825426, '2017-03-09 06:38:51', '2017-03-27 12:59:20'),
(32, '14ECAEE007', 'Bhopal Singh', 'Girdhar Singh', 'EE', 'Male', '9784634314', 'bhopals509@gmail.com', 608092, '2017-03-09 06:38:51', '2017-03-27 10:07:19'),
(33, '14ECAEE008', 'Bhupendra Kumar', 'Deva Ram Suthar', 'EE', 'Male', '8769172204', 'bhupendrakumarsuthar2014@gmail.com', 834557, '2017-03-09 06:38:51', '2017-03-25 10:05:56'),
(34, '14ECAEE009', 'Devi Singh', 'Bhoor Singh', 'EE', 'Male', '9001665593', 'devraj73226@gmail.com', 410976, '2017-03-09 06:38:51', '2017-03-27 12:38:06'),
(35, '14ECAEE010', 'Dipesh Kumar', 'Jagdish Kumar', 'EE', 'Male', '9784737588', 'dipeshmeena11@gmail.com', 569662, '2017-03-09 06:38:51', '2017-03-26 19:43:53'),
(36, '14ECAEE011', 'Gajendra Singh', 'Raghunath Singh', 'EE', 'Male', '8769595904', 'deoragajendrasingh20@gmail.com', 456961, '2017-03-09 06:38:51', '2017-03-24 17:47:10'),
(37, '14ECAEE013', 'Govind Kumar Meghwal', 'Pratapa Ram', 'EE', 'Male', '9649361045', 'govind.solanki107@gmail.com', 469725, '2017-03-09 06:38:51', '2017-03-27 12:58:40'),
(38, '14ECAEE015', 'Kailash Kumar', 'Visa Ram', 'EE', 'Male', '9928986322', 'royalrathore022@gmail.com', 834211, '2017-03-09 06:38:51', '2017-03-27 18:21:42'),
(39, '14ECAEE017', 'Krishan Pal Singh', 'Mala Ram', 'EE', 'Male', '9549355664', NULL, NULL, '2017-03-09 06:38:51', NULL),
(40, '14ECAEE018', 'Krupali', 'Vinod Kumar Mundhwa', 'EE', 'Female', '7665535514', 'mundhwakrupali@gmail.com', 89968, '2017-03-09 06:38:51', '2017-03-22 21:51:13'),
(41, '14ECAEE019', 'Kushal Bhati', 'Arjun Bhati', 'EE', 'Male', '9460809925', 'kushbhati82@gmail.com', 184182, '2017-03-09 06:38:51', '2017-03-22 20:33:30'),
(42, '14ECAEE020', 'Mayank Pandey', 'Dilip Pandey', 'EE', 'Male', '7023211311', 'rohit.chouhan020@gmail.com', 524108, '2017-03-09 06:38:51', '2017-03-22 20:27:12'),
(43, '14ECAEE022', 'Mohmmad Aslam', 'Abdul Majid', 'EE', 'Male', '9413788160', NULL, NULL, '2017-03-09 06:38:51', NULL),
(44, '14ECAEE023', 'Nandani', 'Madan Lal Marmat', 'EE', 'Male', '9649730443', NULL, NULL, '2017-03-09 06:38:51', NULL),
(45, '14ECAEE025', 'Nikhil Nayak', 'Chetan Nayak', 'EE', 'Male', '8560078959', 'nikhilnayak023@gmail.com', 437574, '2017-03-09 06:38:51', '2017-03-23 20:08:41'),
(46, '14ECAEE026', 'Pankaj', 'Mana Ram', 'EE', 'Male', '7793075869', NULL, NULL, '2017-03-09 06:38:51', NULL),
(47, '14ECAEE027', 'Pradeep Kumar', 'Babu Lal', 'EE', 'Male', '7742750629', NULL, NULL, '2017-03-09 06:38:51', NULL),
(48, '14ECAEE028', 'Prakash Kumar Chouhan', 'Jaikishan', 'EE', 'Male', '7221870378', 'pckumar6249@gmail.com', 70551, '2017-03-09 06:38:51', '2017-03-20 19:05:37'),
(49, '14ECAEE029', 'Prashant', 'Jhumar Lal', 'EE', 'Male', '9782776506', NULL, NULL, '2017-03-09 06:38:51', NULL),
(50, '14ECAEE030', 'Priyanka Jain', 'Rajendra Kumar Jain', 'EE', 'Female', '8239661066', 'jainp2594@gmail.com', 395680, '2017-03-09 06:38:51', '2017-03-22 15:35:37'),
(51, '14ECAEE031', 'Rahul Kumar', 'Ranjit Kumar', 'EE', 'Male', '9950066737', 'rahulr@gmail.com', 403328, '2017-03-09 06:38:51', '2017-03-24 14:00:24'),
(52, '14ECAEE033', 'Rohit Chouhan', 'Prakash Chouhan', 'EE', 'Male', '7023431612', 'pkc6249@hotmail.com', 629558, '2017-03-09 06:38:51', '2017-03-20 19:41:50'),
(53, '14ECAEE034', 'Shanker Lal Devasi', 'Manak Ram Devasi', 'EE', 'Male', '9549514598', NULL, 801847, '2017-03-09 06:38:51', '2017-03-17 17:24:11'),
(54, '14ECAEE035', 'Subhash D. Parmar', 'Darja Ram Parmar', 'EE', 'Male', '8741923654', 'SP6020034@GMAIL.COM', 524895, '2017-03-09 06:38:51', '2017-03-25 09:58:52'),
(55, '14ECAEE036', 'Suresh Kumar', 'Harish Chandra', 'EE', 'Male', '7728964843', 'sureshlohar1256@gmail.com', 838728, '2017-03-09 06:38:51', '2017-03-22 21:20:22'),
(56, '14ECAEE037', 'Vijay Singh Parihar', 'Rajendra Singh Parihar', 'EE', 'Male', '8949819694', 'vijaysingh4p4@gmail.com', 100595, '2017-03-09 06:38:51', '2017-03-22 21:34:07'),
(57, '15ECAEE200', 'Govind S', NULL, 'ME', 'Male', NULL, NULL, NULL, '2017-03-09 06:38:51', NULL),
(58, '15ECAEE201', 'Jayesh Kumar', 'Jeevan Ram ', 'EE', 'Male', '9636212481', 'jaic6422@gmail.com', 517675, '2017-03-09 06:38:51', '2017-03-26 19:55:16'),
(59, '15ECAEE202', 'Pankaj Kumar', 'Badaram', 'EE', 'Male', '9602620915', 'pankaj9602620915@gmail.com', 146069, '2017-03-09 06:38:51', '2017-03-23 20:21:05'),
(60, '15ECAEE203', 'Pradeep Kumar', 'Narayan Lal', 'EE', 'Male', '9929926127', 'prajapatpardeep@gmail.com', 897000, '2017-03-09 06:38:51', '2017-03-25 09:10:15'),
(61, '15ECAEE204', 'Suraj Kumar', 'Raga Ram ', 'EE', 'Male', '9950351710', 'bamniyasuraj95@gmail.com', 484794, '2017-03-09 06:38:51', '2017-03-23 13:31:41'),
(62, '15ECAEE205', 'Vikash Kumar', NULL, 'ME', 'Male', NULL, NULL, NULL, '2017-03-09 06:38:51', NULL),
(63, '14ECAME001', 'Ajay Raj', 'Raghunath', 'ME', 'Male', '7790809685', 'ajayrajgharu@gmail.com', 138980, '2017-03-09 06:38:51', '2017-03-24 16:35:58'),
(64, '14ECAME002', 'Akshay Bohra', 'Ravindra Nath Bohra', 'ME', 'Male', '97824657042', NULL, NULL, '2017-03-09 06:38:51', NULL),
(65, '14ECAME003', 'Amit Kumar', 'Dharam Pal', 'ME', 'Male', '7791961489', 'www.amitkk66@gmail.com', 438005, '2017-03-09 06:38:51', '2017-03-26 12:37:07'),
(66, '14ECAME004', 'Ankit Dixit', 'Mukesh', 'ME', 'Male', '9462884952', NULL, 93232, '2017-03-09 06:38:51', '2017-03-27 18:59:52'),
(67, '14ECAME005', 'Arjun Kumar Prajapat', 'Chhagan Lal', 'ME', 'Male', '8559849595', 'prajapatiarjun77@gmail.com', 159268, '2017-03-09 06:38:51', '2017-03-22 17:50:36'),
(68, '14ECAME006', 'Ashif Ali', 'Noor Mohammad', 'ME', 'Male', '9828623168', 'ashif.1151ali@gmail.com', 604344, '2017-03-09 06:38:51', '2017-03-23 20:17:45'),
(69, '14ECAME007', 'Ashish Joshi', 'Rajendra Kumar', 'ME', 'Male', '9660481327', 'kartikmaru16@gmail.com', 890447, '2017-03-09 06:38:51', '2017-03-16 18:11:13'),
(70, '14ECAME008', 'Bhagirath Ram', 'Mukhna Ram', 'ME', 'Male', '7615093993', 'bhagirathgoyal0@gmail.com', 177063, '2017-03-09 06:38:51', '2017-03-27 11:41:15'),
(71, '14ECAME009', 'Bhawani Singh', 'Dalpat Singh', 'ME', 'Male', '9772292865', NULL, NULL, '2017-03-09 06:38:51', NULL),
(72, '14ECAME010', 'Bhupendra Singh Tanwar', 'S.P. Singh', 'ME', 'Male', '8107779721', 'BUNTYR27@GMAIL.COM', 264633, '2017-03-09 06:38:51', '2017-03-26 20:17:52'),
(73, '14ECAME011', 'Brajesh Suthar', 'kapuraRam', 'ME', 'Male', '9649122969', 'brajeshsuthar123@gmail.com', 861919, '2017-03-09 06:38:51', '2017-03-26 21:26:27'),
(74, '14ECAME012', 'Dala Ram', 'Parkharam', 'ME', 'Male', '9928851416', NULL, NULL, '2017-03-09 06:38:51', NULL),
(75, '14ECAME014', 'Girish More', 'Pawan More', 'ME', 'Male', '9649471785', 'girishmr4.gm@gmail.com', 119464, '2017-03-09 06:38:51', '2017-03-15 19:25:37'),
(76, '14ECAME015', 'Hardik Kumar Agarwal', 'Hasmukh Lal', 'ME', 'Male', '8946885228', 'ahardik876@gmail.com', 130631, '2017-03-09 06:38:51', '2017-03-25 16:17:39'),
(77, '14ECAME016', 'Hemendra Singh', 'Mahendra Singh', 'ME', 'Male', '7877914953', 'hamendra56@gmail.com', 104610, '2017-03-09 06:38:51', '2017-03-23 20:09:47'),
(78, '14ECAME017', 'Hitendra Singh', 'Nag Singh', 'ME', 'Male', '8769096362', 'bdeora62@gmail.com', 910995, '2017-03-09 06:38:51', '2017-03-22 22:21:29'),
(79, '14ECAME018', 'Jitendra Kumar Kalbi', 'Kamlesh Kumar', 'ME', 'Male', '9660918471', 'jitendrakalbi0@gmail.com', 117306, '2017-03-09 06:38:51', '2017-03-27 19:02:09'),
(80, '14ECAME020', 'Karan Kumar', 'Chhagan Lal', 'ME', 'Male', '9680393805', 'kral9680393905@gmail.com', 598224, '2017-03-09 06:38:51', '2017-03-16 20:03:37'),
(81, '14ECAME021', 'Kartik Maru', 'Bhagwan Das Maru', 'ME', 'Male', '9001799069', 'kartikmaru70@gmail.com', 158846, '2017-03-09 06:38:51', '2017-03-16 18:02:19'),
(82, '14ECAME022', 'Kritik Vashishth', 'Ashok Sharma', 'ME', 'Male', '9783728902', 'kritikvashishtha.abu@gmail.com', 135157, '2017-03-09 06:38:51', '2017-03-20 11:52:45'),
(83, '14ECAME023', 'Lalit Charan', 'Premlata', 'ME', 'Male', '9782775811', NULL, NULL, '2017-03-09 06:38:51', NULL),
(84, '14ECAME024', 'Manish Kumar Saini', 'Shivnath Saini', 'ME', 'Male', '9549492836', 'mhskk66@gmail.com', 582130, '2017-03-09 06:38:51', '2017-03-24 16:44:54'),
(85, '14ECAME025', 'Manish Kumar Sharma', 'Manoj', 'ME', 'Male', '8502903573', 'manishkumar14me@gmail.com', 50924, '2017-03-09 06:38:51', '2017-03-25 15:34:23'),
(86, '14ECAME027', 'Naresh', 'Mohan Lal', 'ME', 'Male', '8094605065', 'NKP35991@GMAIL.COM', 156363, '2017-03-09 06:38:51', '2017-03-24 13:05:12'),
(87, '14ECAME028', 'Nikhil Singh', 'Swarup Singh', 'ME', 'Male', '8003949281', 'nikhilsinghdeora.7@gmail.com', 149264, '2017-03-09 06:38:51', '2017-03-21 12:59:33'),
(88, '14ECAME032', 'Pankaj Kumar', 'ShreeNath', 'ME', 'Male', '9785902519', 'pankajupadhyay12915@gmail.com', 318672, '2017-03-09 06:38:51', '2017-03-27 12:53:04'),
(89, '14ECAME033', 'Paresh Kumar', 'MuraRam', 'ME', 'Male', '9672072503', NULL, NULL, '2017-03-09 06:38:51', NULL),
(90, '14ECAME034', 'Prathvee Singh Chouhan', 'Jaswant Singh', 'ME', 'Male', '8696894421', 'PSCSIROHI@GMAIL.COM', 616001, '2017-03-09 06:38:51', '2017-03-20 22:01:40'),
(91, '14ECAME035', 'Rahul Kumar', 'Ramesh Kumar', 'ME', 'Male', '9166126569', 'rahulprajapat26477@gmail.com', 826128, '2017-03-09 06:38:51', '2017-03-24 23:02:14'),
(92, '14ECAME036', 'Rahul Kumar Bairwa', 'Dinesh Singh', 'ME', 'Male', '7665399777', NULL, NULL, '2017-03-09 06:38:51', NULL),
(93, '14ECAME037', 'Rahul Soni', 'Vijay raj', 'ME', 'Male', '7023291222', 'sonirahul4874@gmail.com', 565688, '2017-03-09 06:38:51', '2017-03-27 13:06:00'),
(94, '14ECAME038', 'Rahul Suthar', 'Ganesh mal', 'ME', 'Male', '8875305268', NULL, NULL, '2017-03-09 06:38:51', NULL),
(95, '14ECAME040', 'Ranjeet Singh Sindal', 'Gajendra Pal Singh', 'ME', 'Male', '9784585166', NULL, NULL, '2017-03-09 06:38:51', NULL),
(96, '14ECAME041', 'Ravi Kumar', 'Bhabhutaram', 'ME', 'Male', '9414375019', NULL, NULL, '2017-03-09 06:38:51', NULL),
(97, '14ECAME042', 'Ravi Kumar', 'PopatLal', 'ME', 'Male', '7611953342', 'ravisuthar211@gmail.com', 938219, '2017-03-09 06:38:51', '2017-03-15 14:34:48'),
(98, '14ECAME044', 'Saransh Sharma', 'Vinod', 'ME', 'Male', '9116006562', 'ssharma.sharma64@gmail.com', 108282, '2017-03-09 06:38:51', '2017-03-16 17:45:07'),
(99, '14ECAME045', 'Sawailal Jangid', 'NandRam', 'ME', 'Male', '8890643707', 'isawailaljangid@gmail.com', 713135, '2017-03-09 06:38:51', '2017-03-16 18:36:23'),
(100, '14ECAME046', 'Shailendra Singh Chouhan', 'Surendra', 'ME', 'Male', '8963851911', NULL, NULL, '2017-03-09 06:38:51', NULL),
(101, '14ECAME047', 'Shailesh Rathore', 'Amar singh Rathore', 'ME', 'Male', '9571721482', 'shailesh29rathore@gmail.com', 590189, '2017-03-09 06:38:51', '2017-03-26 12:45:21'),
(102, '14ECAME048', 'Tarun Kumar', 'Mitha lal', 'ME', 'Male', '9783916164', 'kumartarun9783@gmail.com', 961630, '2017-03-09 06:38:51', '2017-03-22 21:25:18'),
(103, '14ECAME049', 'Utkarsh Sharma', 'Anita Sharma', 'ME', 'Male', '9414374097', NULL, NULL, '2017-03-09 06:38:51', NULL),
(104, '14ECAME050', 'Yogesh Kumar', 'Peetam Singh', 'ME', 'Male', '7791969630', 'ysingh14999@gmail.com', 351641, '2017-03-09 06:38:51', '2017-03-25 16:27:18'),
(105, '15ECAME200', 'Avinash Singh', NULL, 'ME', 'Male', '8890322102', 'atc.atiya@gmail.com', 91091, '2017-03-09 06:38:51', '2017-03-25 13:37:21'),
(106, '15ECAME201', 'Sharad Bhardwaj', NULL, 'ME', 'Male', NULL, '', NULL, '2017-03-09 06:38:51', NULL),
(107, '15XCACS009', 'Mritunjay Singh Khichi', 'MSK', 'CSE', 'Male', '9549199160', 'null', 96084, '2017-03-09 06:38:51', '2017-03-15 10:37:01'),
(108, '15XCACS029', 'Vijay Purohit', 'VP', 'CSE', 'Male', '7568300515', 'vijay.pu9@gmail.com', 387444, '2017-03-09 06:38:51', '2017-03-26 09:17:18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `cit_company`
--
ALTER TABLE `cit_company`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cit_letter_generated`
--
ALTER TABLE `cit_letter_generated`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `unique_id` (`unique_id`),
  ADD KEY `company_id` (`c_id`),
  ADD KEY `rtu_roll` (`user_rtu_roll`);

--
-- Indexes for table `cit_users`
--
ALTER TABLE `cit_users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `rtu_roll_u` (`rtu_roll`),
  ADD UNIQUE KEY `email` (`email`),
  ADD UNIQUE KEY `mobile` (`mobile`(10));

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `cit_company`
--
ALTER TABLE `cit_company`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=144;
--
-- AUTO_INCREMENT for table `cit_letter_generated`
--
ALTER TABLE `cit_letter_generated`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;
--
-- AUTO_INCREMENT for table `cit_users`
--
ALTER TABLE `cit_users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `cit_letter_generated`
--
ALTER TABLE `cit_letter_generated`
  ADD CONSTRAINT `company_id` FOREIGN KEY (`c_id`) REFERENCES `cit_company` (`id`),
  ADD CONSTRAINT `rtu_roll` FOREIGN KEY (`user_rtu_roll`) REFERENCES `cit_users` (`rtu_roll`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
