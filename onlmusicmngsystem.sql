CREATE DATABASE  IF NOT EXISTS `onlmusicmngsystem` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `onlmusicmngsystem`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: onlmusicmngsystem
-- ------------------------------------------------------
-- Server version	8.0.31

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
-- Table structure for table `admin`
--

DROP TABLE IF EXISTS `admin`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `admin` (
  `id` int NOT NULL AUTO_INCREMENT,
  `admin_username` varchar(45) DEFAULT NULL,
  `admin_passward` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `admin`
--

LOCK TABLES `admin` WRITE;
/*!40000 ALTER TABLE `admin` DISABLE KEYS */;
INSERT INTO `admin` VALUES (1,'admin','admin');
/*!40000 ALTER TABLE `admin` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `e_Name` varchar(50) NOT NULL,
  `e_Code` varchar(45) DEFAULT NULL,
  `t_Cost` varchar(45) DEFAULT NULL,
  `e_dis` varchar(45) DEFAULT NULL,
  `a_Dicession` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`e_Name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
INSERT INTO `bill` VALUES ('adsd','234234','22323','2312','rejected'),('dasdas','42342','12443','4214','approved'),('fffffffff','4444444444444','4444444444444','44444444444','approved'),('fwe','132','412','31','rejected'),('haam','5555555','555555','5555566','approved'),('hfghgfh','45656','456546','546546','rejected'),('xdvxcvcbv','456456','45454','43545','rejected');
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `event`
--

DROP TABLE IF EXISTS `event`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `event` (
  `id` int NOT NULL AUTO_INCREMENT,
  `ename` varchar(100) DEFAULT NULL,
  `edate` date DEFAULT NULL,
  `ecode` varchar(45) DEFAULT NULL,
  `ecgory` varchar(60) DEFAULT NULL,
  `etheme` varchar(60) DEFAULT NULL,
  `evenue` varchar(60) DEFAULT NULL,
  `edescript` varchar(60) DEFAULT NULL,
  `eorgname` varchar(60) DEFAULT NULL,
  `eorgdt` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `event`
--

LOCK TABLES `event` WRITE;
/*!40000 ALTER TABLE `event` DISABLE KEYS */;
INSERT INTO `event` VALUES (3,'xvxcvxdfvdfvb','2022-11-10','45453','dancing','null','null','helper','xD','2022-11-17'),(6,'cbcbcb','2022-11-24','3453454','dancing','null','null','BFBFBFBFBFBFBFBFBFBFBFB','GFGFGFGFGFGF','2022-11-16'),(7,'cbcbcb','2022-11-24','3453454','dancing','Local','dfgdfgfdg','gdfgdfgdfgdgdfgdfgdfgfdgdfg','fgdfgdfg','2022-11-16');
/*!40000 ALTER TABLE `event` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventplanner`
--

DROP TABLE IF EXISTS `eventplanner`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventplanner` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `emp_name` varchar(60) DEFAULT NULL,
  `emp_cnt` varchar(60) DEFAULT NULL,
  `emp_email` varchar(60) DEFAULT NULL,
  `emp_jroll` varchar(60) DEFAULT NULL,
  PRIMARY KEY (`emp_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventplanner`
--

LOCK TABLES `eventplanner` WRITE;
/*!40000 ALTER TABLE `eventplanner` DISABLE KEYS */;
INSERT INTO `eventplanner` VALUES (2,'dfgfdg','dfgdf','fdg','dfgfg'),(3,'ddfgdfg','fgdfgfdg','dfgfdg','fdgfg'),(5,'fgdfgdf','45645645645','cbcb@gmail.com','gdfgdfgd'),(7,'dada','4234','k@gmail.com','dafd2'),(8,'fsda','242','k@gmail.com','www'),(9,'hgfd','423423','d@gmail.com','wfds'),(10,'ggg','333','d@gmail.com','ggg');
/*!40000 ALTER TABLE `eventplanner` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `eventuploader`
--

DROP TABLE IF EXISTS `eventuploader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `eventuploader` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(50) DEFAULT NULL,
  `Email_address` varchar(50) DEFAULT NULL,
  `contact` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `eventuploader`
--

LOCK TABLES `eventuploader` WRITE;
/*!40000 ALTER TABLE `eventuploader` DISABLE KEYS */;
INSERT INTO `eventuploader` VALUES (2,'sample12','user2','user22','u1234','user1@gmail.com','323234324'),(4,'test','user','tuser123','u1234','assignmenthelpers@proton.me','0764465200'),(6,'dew','ewq','dew','dew','dew@gmail.com','12123'),(9,'loop','loop','loop','loop','kkk@adas','1555'),(10,'if','if','if','if','if@gmail.com','124242'),(12,'rrr','rrr','rrr','rrr','rr@gmail.com','2342342423');
/*!40000 ALTER TABLE `eventuploader` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-11-11  5:17:30
