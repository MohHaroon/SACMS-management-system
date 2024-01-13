-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: sacm_system
-- ------------------------------------------------------
-- Server version	8.0.35

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `attendance`
--

DROP TABLE IF EXISTS `attendance`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `attendance` (
  `EventID` int NOT NULL,
  `StudentID` varchar(8) NOT NULL,
  `Attendance` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `attendance`
--

LOCK TABLES `attendance` WRITE;
/*!40000 ALTER TABLE `attendance` DISABLE KEYS */;
INSERT INTO `attendance` VALUES (9,'stu11111',1),(9,'stu12121',1),(11,'stu11111',0),(11,'stu12345',0);
/*!40000 ALTER TABLE `attendance` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club`
--

DROP TABLE IF EXISTS `club`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club` (
  `ClubID` int NOT NULL AUTO_INCREMENT,
  `ClubName` varchar(25) NOT NULL,
  `ClubAbbreviation` varchar(5) NOT NULL,
  `ClubOriginDate` date NOT NULL,
  `ClubDescription` text NOT NULL,
  PRIMARY KEY (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club`
--

LOCK TABLES `club` WRITE;
/*!40000 ALTER TABLE `club` DISABLE KEYS */;
INSERT INTO `club` VALUES (19,'Q Q Q clubs is this','QQQ','2023-11-28','sdss asd as a sda adsa a'),(20,'Hello World','HOW','2023-11-28','Hello World Club '),(21,'Create Test Club','CTC','2023-11-28','this is a test club'),(22,'Interact Club','IRC','2023-11-28','Interact Club is a club'),(23,'Ane haiytyoo','AFDD','2023-11-28','asda as sad a ss as sdasdadsa');
/*!40000 ALTER TABLE `club` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_advisor`
--

DROP TABLE IF EXISTS `club_advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_advisor` (
  `StaffID` varchar(7) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_advisor`
--

LOCK TABLES `club_advisor` WRITE;
/*!40000 ALTER TABLE `club_advisor` DISABLE KEYS */;
INSERT INTO `club_advisor` VALUES ('stf1234','asdasddd','asdasddd','asdasd@asd.asdd','asdasd!'),('stf1238','asdasd','asdasd','asdasd@ads.da','asdasd!'),('stf3333','uziii','arafa','asd@asd.asd','asdasd.'),('stf4444','asdasd','asdasd','asd@asd.asd','asdasd!'),('stf6666','First','Last','asdasd@asd.asd','asdasd!'),('stf9999','asdasd','asdasd','asdasd@ad.asd','asdasd!');
/*!40000 ALTER TABLE `club_advisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_and_club_advisor`
--

DROP TABLE IF EXISTS `club_and_club_advisor`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_and_club_advisor` (
  `ClubID` int NOT NULL,
  `StaffID` varchar(7) NOT NULL,
  `JoinDate` date NOT NULL,
  PRIMARY KEY (`ClubID`,`StaffID`),
  KEY `StaffID` (`StaffID`),
  CONSTRAINT `StaffID` FOREIGN KEY (`StaffID`) REFERENCES `club_advisor` (`StaffID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_and_club_advisor`
--

LOCK TABLES `club_and_club_advisor` WRITE;
/*!40000 ALTER TABLE `club_and_club_advisor` DISABLE KEYS */;
INSERT INTO `club_and_club_advisor` VALUES (19,'stf1234','2023-11-28'),(19,'stf3333','2023-11-28'),(20,'stf1234','2023-11-28'),(21,'stf3333','2023-11-28'),(21,'stf6666','2023-11-28'),(22,'stf3333','2023-11-28'),(22,'stf6666','2023-11-28'),(23,'stf6666','2023-11-28');
/*!40000 ALTER TABLE `club_and_club_advisor` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `club_and_student`
--

DROP TABLE IF EXISTS `club_and_student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `club_and_student` (
  `ClubID` int NOT NULL,
  `StudentID` varchar(8) NOT NULL,
  `JoinDate` date NOT NULL,
  PRIMARY KEY (`ClubID`,`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `club_and_student`
--

LOCK TABLES `club_and_student` WRITE;
/*!40000 ALTER TABLE `club_and_student` DISABLE KEYS */;
INSERT INTO `club_and_student` VALUES (19,'stu11111','2023-11-28'),(19,'stu12121','2023-11-28'),(20,'stu11111','2023-11-28'),(20,'stu12121','2023-11-28'),(21,'stu12121','2023-11-28'),(21,'stu12345','2023-11-28'),(22,'stu11111','2023-11-28'),(22,'stu12121','2023-11-28'),(22,'stu12345','2023-11-28');
/*!40000 ALTER TABLE `club_and_student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `EventID` int NOT NULL AUTO_INCREMENT,
  `ClubID` int NOT NULL,
  `EventName` varchar(20) NOT NULL,
  `EventDate` date NOT NULL,
  `EventStartTime` time NOT NULL,
  `EventEndTime` time NOT NULL,
  `EventDescription` text,
  PRIMARY KEY (`EventID`,`ClubID`),
  KEY `ClubID` (`ClubID`),
  CONSTRAINT `event_ibfk_1` FOREIGN KEY (`ClubID`) REFERENCES `club` (`ClubID`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (5,19,'strs asd  asd a','2023-12-09','22:22:00','23:23:00','asd as dsada as sad asd a dad a'),(6,19,'New Event','2025-11-14','11:22:00','22:11:00','asd sad ad asd s ad sas sda asd a '),(7,20,'Hello Event','2025-11-14','11:22:00','22:11:00','hello world club event is this'),(9,20,'This is Hello Event','2022-11-06','11:11:00','11:34:00','Chnage Hello Description'),(10,23,'Ane Event','2024-11-13','11:33:00','11:43:00','asdd assa a s aadsa as as dd'),(11,20,'Aasd a Dad','2023-12-09','11:22:00','22:22:00','asd a asdasdaasdasdasasdadasdadadsa ');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `StudentID` varchar(8) NOT NULL,
  `FirstName` varchar(10) NOT NULL,
  `LastName` varchar(10) NOT NULL,
  `Grade` varchar(2) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Password` varchar(10) NOT NULL,
  PRIMARY KEY (`StudentID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES ('stu11111','asdasd','asdasd','11','asdasd@asd.asd','asdasd!'),('stu12121','Uzman','Arfan','8','seyed@gmail.com','asdasd!'),('stu12345','Seyed','Ahamed','11','asdads@asd.ad','asdasd!');
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-11-29 16:48:30
