CREATE DATABASE  IF NOT EXISTS `final_db` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `final_db`;
-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: final_db
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
-- Table structure for table `agree_order`
--

DROP TABLE IF EXISTS `agree_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `agree_order` (
  `Order_num2` int NOT NULL,
  `Wash_type2` varchar(45) NOT NULL,
  `Dry_type2` varchar(45) NOT NULL,
  `Fold2` varchar(45) NOT NULL,
  `Iron2` varchar(45) NOT NULL,
  `Delivery_go2` varchar(45) NOT NULL,
  `Delivery_out2` varchar(45) DEFAULT NULL,
  `go_date2` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Order_num2`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `agree_order`
--

LOCK TABLES `agree_order` WRITE;
/*!40000 ALTER TABLE `agree_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `agree_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `award` (
  `Co2_award` varchar(45) NOT NULL,
  `times_award` varchar(45) NOT NULL,
  PRIMARY KEY (`Co2_award`,`times_award`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `before_order`
--

DROP TABLE IF EXISTS `before_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `before_order` (
  `Order_num1` int NOT NULL,
  `go_date1` datetime NOT NULL,
  `Wash_type1` int NOT NULL,
  `Dry_type1` varchar(45) NOT NULL,
  `Fold1` tinyint(1) NOT NULL,
  `Iron1` tinyint(1) NOT NULL,
  `Delivery_go1` varchar(45) NOT NULL,
  `Delivery_out1` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Order_num1`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `before_order`
--

LOCK TABLES `before_order` WRITE;
/*!40000 ALTER TABLE `before_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `before_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bill`
--

DROP TABLE IF EXISTS `bill`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bill` (
  `Bill_num` varchar(45) NOT NULL,
  `Order_num` varchar(45) NOT NULL,
  `rand_num` varchar(45) NOT NULL,
  `bill_open` datetime DEFAULT NULL,
  `shop` varchar(45) DEFAULT NULL,
  `item` varchar(45) DEFAULT NULL,
  `price_detail` int DEFAULT NULL,
  `save` int DEFAULT NULL,
  `Get_point` int NOT NULL,
  `Total_money` int NOT NULL,
  PRIMARY KEY (`Bill_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bill`
--

LOCK TABLES `bill` WRITE;
/*!40000 ALTER TABLE `bill` DISABLE KEYS */;
/*!40000 ALTER TABLE `bill` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `center_cabn`
--

DROP TABLE IF EXISTS `center_cabn`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `center_cabn` (
  `Cabn_num` varchar(45) NOT NULL,
  `Cabn_addr` varchar(45) NOT NULL,
  PRIMARY KEY (`Cabn_num`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `center_cabn`
--

LOCK TABLES `center_cabn` WRITE;
/*!40000 ALTER TABLE `center_cabn` DISABLE KEYS */;
/*!40000 ALTER TABLE `center_cabn` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `member` (
  `Member_acc` varchar(10) NOT NULL,
  `Member_phone` varchar(45) NOT NULL,
  `Member_pwd` varchar(45) NOT NULL,
  `Member_name` varchar(45) DEFAULT NULL,
  `Member_address` varchar(45) DEFAULT NULL,
  `Member_email` varchar(45) DEFAULT NULL,
  `Member_bill` varchar(45) DEFAULT NULL,
  `card_num` varchar(45) DEFAULT NULL,
  `DDL_M` date DEFAULT NULL,
  `DDL_Y` date DEFAULT NULL,
  `Safe_num` varchar(5) DEFAULT NULL,
  `holder` varchar(45) DEFAULT NULL,
  `bank_num` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`Member_acc`,`Member_phone`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wash_bag`
--

DROP TABLE IF EXISTS `wash_bag`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `wash_bag` (
  `bag_ID` varchar(45) NOT NULL,
  `bag_state` varchar(1) NOT NULL,
  `use_member` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`bag_ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wash_bag`
--

LOCK TABLES `wash_bag` WRITE;
/*!40000 ALTER TABLE `wash_bag` DISABLE KEYS */;
/*!40000 ALTER TABLE `wash_bag` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-02  3:26:12
