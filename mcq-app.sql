CREATE DATABASE  IF NOT EXISTS `mcq_app` /*!40100 DEFAULT CHARACTER SET latin1 */;
USE `mcq_app`;
-- MySQL dump 10.13  Distrib 8.0.20, for Win64 (x86_64)
--
-- Host: localhost    Database: mcq_app
-- ------------------------------------------------------
-- Server version	5.7.19-log

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
-- Table structure for table `questions`
--

DROP TABLE IF EXISTS `questions`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `questions` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `question` mediumtext NOT NULL,
  `option1` mediumtext NOT NULL,
  `option2` mediumtext NOT NULL,
  `option3` mediumtext NOT NULL,
  `option4` mediumtext NOT NULL,
  `answer` mediumtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `questions`
--

LOCK TABLES `questions` WRITE;
/*!40000 ALTER TABLE `questions` DISABLE KEYS */;
INSERT INTO `questions` VALUES (1,' Which of the following is generally used for performing tasks like creating the structure?','DML','Query','Relational Schema ','DDL','DDL'),(2,'The term \"FAT\"\" is stands for_____.\"','File Allocation Tree','File Allocation Table','File Allocation Graph','All of the above','File Allocation Table'),(3,'Which one of the following refers to the \"data about data\"\"?\"','Directory','Sub Data','Warehouse','Meta Data','Meta Data'),(4,'To which of the following the term \"DBA\"\" referred?\"','Data Bank Administrator','Database Administrator','Data Administrator','None of the above','Database Administrator'),(5,'In general, a file is basically a collection of all related______.','Rows & Columns','Fields','Database','Records','Records'),(6,'Rows of a relation are known as the _______.','Degree','Tuples','Entity','All of the above','All of the above'),(7,'Which one of the following is a type of Data Manipulation Command?','Create','Alter','Delete','All of the above','Delete'),(8,'Which of the following refers to the number of attributes in a relation?','Degree','Row','Column','All of the above','Degree'),(9,'The term \"DFD\"\" stands for?\"','Data file diagram','Data flow document','Data flow diagram','None of the above','Data flow diagram'),(10,'Which one of the following refers to the total view of the database content?','Conceptual view','Physical view','Internal view','External view','Conceptual view'),(11,'The architecture of a database can be viewed as the ________.','One-level','Two-level','Three-level','Four-level','Three-level'),(12,'In the relation model, the relation are generally termed as ________.','Tuples','Attributes','Rows','Tables','Tables'),(13,'GIT comes from','2005','2006','2007','2008','2005'),(14,'Which of the language is used in GIT?','C','C++','HTML','None of the above','C '),(67,'HTML stands for?','hypertext markup language','hypower markup language','hypertech markup language','hypertext marking language','hypertext markup language');
/*!40000 ALTER TABLE `questions` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `result`
--

DROP TABLE IF EXISTS `result`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `result` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `test_id` int(11) NOT NULL,
  `name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `marks` int(11) NOT NULL,
  `date_time` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  KEY `test_id_idx` (`test_id`),
  CONSTRAINT `test_id` FOREIGN KEY (`test_id`) REFERENCES `test_configuration` (`test_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `result`
--

LOCK TABLES `result` WRITE;
/*!40000 ALTER TABLE `result` DISABLE KEYS */;
INSERT INTO `result` VALUES (1,605879,'harshita','harshita@gmail.com',2,'2021-10-06 19:59:15');
/*!40000 ALTER TABLE `result` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `test_configuration`
--

DROP TABLE IF EXISTS `test_configuration`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `test_configuration` (
  `test_id` int(11) NOT NULL,
  `no_of_questions` int(20) NOT NULL,
  `countdown` int(20) NOT NULL DEFAULT '60',
  PRIMARY KEY (`test_id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `test_configuration`
--

LOCK TABLES `test_configuration` WRITE;
/*!40000 ALTER TABLE `test_configuration` DISABLE KEYS */;
INSERT INTO `test_configuration` VALUES (245742,10,40),(293349,10,50),(295457,10,70),(295528,5,50),(310165,5,50),(346453,10,70),(489375,12,30),(605879,5,50),(730510,14,70),(762340,5,50),(823971,5,50);
/*!40000 ALTER TABLE `test_configuration` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-10-07 15:23:06
