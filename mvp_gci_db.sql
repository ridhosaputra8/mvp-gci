# ************************************************************
# Antares - SQL Client
# Version 0.5.19
# 
# https://antares-sql.app/
# https://github.com/antares-sql/antares
# 
# Host: 127.0.0.1 (Ubuntu 22.04 10.6.7)
# Database: mvp_gci
# Generation time: 2022-11-06T21:22:51+07:00
# ************************************************************


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
SET NAMES utf8mb4;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


# Dump of table bayar
# ------------------------------------------------------------

DROP TABLE IF EXISTS `bayar`;

CREATE TABLE `bayar` (
  `paidId` int(11) NOT NULL AUTO_INCREMENT,
  `payDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `payId` int(11) DEFAULT NULL,
  `paidKind` varchar(100) DEFAULT NULL,
  `paidSemester` varchar(20) DEFAULT NULL,
  `paidTotal` decimal(20,0) DEFAULT NULL,
  PRIMARY KEY (`paidId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





# Dump of table tagihan
# ------------------------------------------------------------

DROP TABLE IF EXISTS `tagihan`;

CREATE TABLE `tagihan` (
  `payId` int(11) NOT NULL AUTO_INCREMENT,
  `payDate` date DEFAULT NULL,
  `userId` int(11) DEFAULT NULL,
  `payKind` varchar(100) DEFAULT NULL,
  `paySemester` varchar(20) DEFAULT NULL,
  `payTotal` decimal(20,0) DEFAULT NULL,
  `payStatus` enum('aktif','belum aktif') DEFAULT NULL,
  `payKet` enum('Belum Lunas','Lunas') DEFAULT NULL,
  PRIMARY KEY (`payId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;





# Dump of table user
# ------------------------------------------------------------

DROP TABLE IF EXISTS `user`;

CREATE TABLE `user` (
  `userId` int(11) NOT NULL AUTO_INCREMENT,
  `userNIM` int(20) DEFAULT NULL,
  `userNama` varchar(100) DEFAULT NULL,
  `userRole` enum('pemimpin','bendahara','mahasiswa') DEFAULT NULL,
  `userEmail` varchar(100) DEFAULT NULL,
  `userPass` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`userId`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4;

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;

INSERT INTO `user` (`userId`, `userNIM`, `userNama`, `userRole`, `userEmail`, `userPass`) VALUES
	(1, 908999, "Ridho Saputra", "pemimpin", "ridhosaputraaa8@gmail.com", "semogaLolos"),
	(2, 915141, "Nadiah Ulfah Riyani", "bendahara", "nadiahulfahryn@gmail.com", "semogaRidhoLolos"),
	(3, 1457301001, "Apriantoni", "mahasiswa", "apriantoni@gmail.com", "semogaLolosKerja"),
	(4, 1457301002, "Mohd. Firmansyah", "mahasiswa", "firmansyah@gmail.com", "semogaLolosKerja"),
	(5, 1457301003, "Rafi Andika", "mahasiswa", "rafiandika@gmail.com", "semogaLolosKerja"),
	(6, 1457301004, "Randi Mukti Ramadhan", "mahasiswa", "randimukti@gmail.com", "semogaLolosKerja"),
	(7, 1457301005, "Sufendi", "mahasiswa", "sufendi@gmail.com", "semogaLolosKerja"),
	(8, 1457301006, "Sugato Dharmali", "mahasiswa", "sugato@gmail.com", "semogaLolosKerja");

/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;



# Dump of views
# ------------------------------------------------------------

# Creating temporary tables to overcome VIEW dependency errors


/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;

# Dump completed on 2022-11-06T21:22:51+07:00
