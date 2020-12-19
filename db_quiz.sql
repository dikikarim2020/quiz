-- --------------------------------------------------------
-- Host:                         localhost
-- Server version:               10.3.15-MariaDB-log - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.2.0.5599
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

-- Dumping structure for table db_quiz.tbl_ans
CREATE TABLE IF NOT EXISTS `tbl_ans` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `rightAns` int(11) NOT NULL DEFAULT 0,
  `ans` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

-- Dumping data for table db_quiz.tbl_ans: ~24 rows (approximately)
/*!40000 ALTER TABLE `tbl_ans` DISABLE KEYS */;
INSERT INTO `tbl_ans` (`id`, `quesNo`, `rightAns`, `ans`) VALUES
	(1, 1, 0, '10'),
	(2, 1, 0, '50'),
	(3, 1, 1, '100'),
	(4, 1, 0, '25'),
	(5, 2, 0, '51'),
	(6, 2, 0, '52'),
	(7, 2, 0, '53'),
	(8, 2, 1, '54'),
	(9, 3, 0, '10'),
	(10, 3, 0, '20'),
	(11, 3, 0, '30'),
	(12, 3, 1, '40'),
	(13, 4, 0, '21'),
	(14, 4, 0, '22'),
	(15, 4, 0, '23'),
	(16, 4, 1, '24'),
	(17, 5, 1, '1'),
	(18, 5, 0, '2'),
	(19, 5, 0, '3'),
	(20, 5, 0, '4'),
	(21, 6, 0, '24'),
	(22, 6, 0, '4'),
	(23, 6, 1, '6'),
	(24, 6, 0, '50');
/*!40000 ALTER TABLE `tbl_ans` ENABLE KEYS */;

-- Dumping structure for table db_quiz.tbl_ques
CREATE TABLE IF NOT EXISTS `tbl_ques` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `quesNo` int(11) NOT NULL,
  `ques` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

-- Dumping data for table db_quiz.tbl_ques: ~6 rows (approximately)
/*!40000 ALTER TABLE `tbl_ques` DISABLE KEYS */;
INSERT INTO `tbl_ques` (`id`, `quesNo`, `ques`) VALUES
	(1, 1, 'Berapakah hasil perhitungan berikut ?  5 x 5 x 2 x 2'),
	(2, 2, 'Berapakah hasil perhitungan berikut ?  5 x 5 + 2 x 2'),
	(3, 3, 'Berapakah hasil perhitungan berikut ?  5 + 5 x 2 x 2'),
	(4, 4, 'Berapakah hasil perhitungan berikut ?  5 + 5 + 2 x 2'),
	(5, 5, 'Berapakah hasil perhitungan berikut ?  5 / 5 x 2 / 2'),
	(6, 6, 'Berapakah hasil perhitungan berikut ?  5 / 5 + 2 x 2');
/*!40000 ALTER TABLE `tbl_ques` ENABLE KEYS */;

-- Dumping structure for table db_quiz.tbl_user
CREATE TABLE IF NOT EXISTS `tbl_user` (
  `userid` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(32) NOT NULL,
  `email` varchar(255) NOT NULL,
  `status` int(11) NOT NULL DEFAULT 0,
  PRIMARY KEY (`userid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

-- Dumping data for table db_quiz.tbl_user: ~1 rows (approximately)
/*!40000 ALTER TABLE `tbl_user` DISABLE KEYS */;
INSERT INTO `tbl_user` (`userid`, `name`, `username`, `password`, `email`, `status`) VALUES
	(7, 'DIKI KARIM', 'edp', '0ee6f51597df43ee92b3bda5291e7f5d', 'dq_sakti@yahoo.com', 0);
/*!40000 ALTER TABLE `tbl_user` ENABLE KEYS */;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
