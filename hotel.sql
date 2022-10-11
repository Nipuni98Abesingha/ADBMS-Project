use hotel;
--

DROP TABLE IF EXISTS `customer`;
CREATE TABLE IF NOT EXISTS `customer` (
  `C_id` int NOT NULL AUTO_INCREMENT,
  `C_Fname` text NOT NULL,
  `C_Lname` text NOT NULL,
  `C_Address` text NOT NULL,
  `C_Email` text NOT NULL,
  `C_Vehicle` text NOT NULL,
  `C_NIC` text NOT NULL,
  PRIMARY KEY (`C_id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customer`
--

INSERT INTO `customer` (`C_id`, `C_Fname`, `C_Lname`, `C_Address`, `C_Email`, `C_Vehicle`, `C_NIC`) VALUES
(1, 'Prarthana ', 'Wijesiri', 'No.78 Athurugiriya homagama', 'prarthana896@gmail.com', 'WP-KN793E', '973480787v'),
(2, 'Mihir', 'Mewan', 'No43, Fadhik rd, Colmbo 6', 'Mihir78@gmial.com', 'WP-KI7803', '784380787x');

-- --------------------------------------------------------

--
-- Table structure for table `discount`
--

DROP TABLE IF EXISTS `discount`;
CREATE TABLE IF NOT EXISTS `discount` (
  `Dis_id` int NOT NULL AUTO_INCREMENT,
  `DisName` text NOT NULL,
  `Percentage` float NOT NULL,
  PRIMARY KEY (`Dis_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `discount`
--

INSERT INTO `discount` (`Dis_id`, `DisName`, `Percentage`) VALUES
(1, 'Christmas ', 12.5);

-- --------------------------------------------------------

--
-- Table structure for table `events`
--

DROP TABLE IF EXISTS `events`;
CREATE TABLE IF NOT EXISTS `events` (
  `Ev_id` int NOT NULL AUTO_INCREMENT,
  `Ev_type` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `MenuType` varchar(20) NOT NULL,
  `Price` float NOT NULL,
  `Dis_id` int NOT NULL,
  `C_id` int NOT NULL,
  PRIMARY KEY (`Ev_id`),
  KEY `Dis_id` (`Dis_id`),
  KEY `C_id` (`C_id`)
) ENGINE=MyISAM AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `events`
--

INSERT INTO `events` (`Ev_id`, `Ev_type`, `MenuType`, `Price`, `Dis_id`, `C_id`) VALUES
(1, 'Bparty', 'Lite', 16500, 1, 1);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
