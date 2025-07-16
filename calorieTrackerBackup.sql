-- MySQL dump 10.13  Distrib 8.0.34, for Win64 (x86_64)
--
-- Host: localhost    Database: trackcalories
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
-- Table structure for table `calorie_tracker`
--

DROP TABLE IF EXISTS `calorie_tracker`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calorie_tracker` (
  `calorie_id` int NOT NULL,
  `Food` varchar(100) NOT NULL,
  `Unit` float NOT NULL,
  `Unit_Measure` enum('piece','cup','oz','bunch') DEFAULT NULL,
  `calories` int NOT NULL,
  `judgement_id` int NOT NULL,
  PRIMARY KEY (`calorie_id`),
  UNIQUE KEY `Food` (`Food`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calorie_tracker`
--

LOCK TABLES `calorie_tracker` WRITE;
/*!40000 ALTER TABLE `calorie_tracker` DISABLE KEYS */;
INSERT INTO `calorie_tracker` VALUES (1,'twizzlers',3,'piece',120,1),(2,'rice pudding',0.5,'cup',302,1),(3,'marshmallows',5,'piece',124,1),(4,'cashews',1,'oz',155,2),(5,'almonds',1,'cup',546,2),(6,'broccoli',1,'bunch',207,3),(7,'green beans',1,'cup',34,3);
/*!40000 ALTER TABLE `calorie_tracker` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `judgement_`
--

DROP TABLE IF EXISTS `judgement_`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `judgement_` (
  `judgement_id` int NOT NULL,
  `judgement` enum('Very bad','Better','Excellent') DEFAULT NULL,
  PRIMARY KEY (`judgement_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `judgement_`
--

LOCK TABLES `judgement_` WRITE;
/*!40000 ALTER TABLE `judgement_` DISABLE KEYS */;
INSERT INTO `judgement_` VALUES (1,'Very bad'),(2,'Better'),(3,'Excellent');
/*!40000 ALTER TABLE `judgement_` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `my_consumption`
--

DROP TABLE IF EXISTS `my_consumption`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `my_consumption` (
  `calorie_id` int NOT NULL,
  `how_many_units` int NOT NULL,
  `Dates` date NOT NULL,
  PRIMARY KEY (`calorie_id`),
  CONSTRAINT `tacker_consumption_fk` FOREIGN KEY (`calorie_id`) REFERENCES `calorie_tracker` (`calorie_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `my_consumption`
--

LOCK TABLES `my_consumption` WRITE;
/*!40000 ALTER TABLE `my_consumption` DISABLE KEYS */;
INSERT INTO `my_consumption` VALUES (1,2,'2025-10-04'),(2,1,'2025-09-30'),(5,1,'2025-10-04'),(7,1,'2025-09-26');
/*!40000 ALTER TABLE `my_consumption` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2025-07-16 14:32:57
