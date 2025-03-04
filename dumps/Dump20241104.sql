CREATE DATABASE  IF NOT EXISTS `fbs` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `fbs`;
-- MySQL dump 10.13  Distrib 8.0.40, for Win64 (x86_64)
--
-- Host: localhost    Database: fbs
-- ------------------------------------------------------
-- Server version	8.0.40

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
-- Table structure for table `booking`
--

DROP TABLE IF EXISTS `booking`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking` (
  `booking_id` int NOT NULL,
  `booking_date` date DEFAULT NULL,
  `seats` int DEFAULT NULL,
  `pay_status` int NOT NULL,
  `flight_number` int DEFAULT NULL,
  PRIMARY KEY (`booking_id`),
  KEY `FKe9q6gsb7fsi2ivtqo1dkidohq` (`flight_number`),
  CONSTRAINT `FKe9q6gsb7fsi2ivtqo1dkidohq` FOREIGN KEY (`flight_number`) REFERENCES `flight` (`flight_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking`
--

LOCK TABLES `booking` WRITE;
/*!40000 ALTER TABLE `booking` DISABLE KEYS */;
INSERT INTO `booking` VALUES (2001,'2024-11-03',1,1,1001),(2052,'2024-11-03',1,1,1039),(2102,'2024-11-03',1,1,1051),(2152,'2024-11-04',0,0,1056),(2153,'2024-11-04',5,0,1056),(2154,'2024-11-04',1,1,1056),(2155,'2024-11-04',1,1,1048);
/*!40000 ALTER TABLE `booking` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `booking_seq`
--

DROP TABLE IF EXISTS `booking_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `booking_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `booking_seq`
--

LOCK TABLES `booking_seq` WRITE;
/*!40000 ALTER TABLE `booking_seq` DISABLE KEYS */;
INSERT INTO `booking_seq` VALUES (2251);
/*!40000 ALTER TABLE `booking_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight`
--

DROP TABLE IF EXISTS `flight`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight` (
  `flight_number` int NOT NULL,
  `arrival_time` time DEFAULT NULL,
  `available_seats` int NOT NULL,
  `departure_time` time DEFAULT NULL,
  `destination` varchar(255) DEFAULT NULL,
  `price` double NOT NULL,
  `source` varchar(255) DEFAULT NULL,
  `travel_date` date DEFAULT NULL,
  PRIMARY KEY (`flight_number`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight`
--

LOCK TABLES `flight` WRITE;
/*!40000 ALTER TABLE `flight` DISABLE KEYS */;
INSERT INTO `flight` VALUES (1001,'10:30:00',49,'08:00:00','Delhi',300,'Chennai','2024-11-04'),(1002,'12:45:00',75,'10:15:00','Mumbai',250,'Delhi','2024-11-04'),(1003,'15:00:00',100,'12:30:00','Kolkata',220,'Mumbai','2024-11-04'),(1004,'17:15:00',60,'15:00:00','Goa',150,'Kolkata','2024-11-04'),(1005,'09:30:00',55,'07:00:00','Pune',200,'Goa','2024-11-04'),(1006,'11:45:00',80,'09:15:00','Jaipur',180,'Pune','2024-11-04'),(1007,'14:30:00',40,'12:00:00','Bangalore',130,'Jaipur','2024-11-04'),(1008,'16:45:00',65,'14:15:00','Cochin',160,'Bangalore','2024-11-04'),(1009,'19:00:00',85,'16:30:00','Ahmadabad',175,'Cochin','2024-11-04'),(1010,'21:30:00',70,'19:00:00','Chennai',210,'Ahmadabad','2024-11-04'),(1011,'10:30:00',50,'08:00:00','Mumbai',310,'Chennai','2024-11-05'),(1012,'12:45:00',75,'10:15:00','Kolkata',260,'Delhi','2024-11-05'),(1013,'15:00:00',100,'12:30:00','Goa',230,'Mumbai','2024-11-05'),(1014,'17:15:00',60,'15:00:00','Pune',160,'Kolkata','2024-11-05'),(1015,'09:30:00',55,'07:00:00','Jaipur',210,'Goa','2024-11-05'),(1016,'11:45:00',80,'09:15:00','Bangalore',190,'Pune','2024-11-05'),(1017,'14:30:00',40,'12:00:00','Cochin',140,'Jaipur','2024-11-05'),(1018,'16:45:00',65,'14:15:00','Ahmadabad',170,'Bangalore','2024-11-05'),(1019,'19:00:00',85,'16:30:00','Delhi',185,'Cochin','2024-11-05'),(1020,'21:30:00',70,'19:00:00','Bangalore',220,'Ahmadabad','2024-11-05'),(1021,'08:30:00',45,'06:00:00','Delhi',300,'Chennai','2024-11-06'),(1022,'11:00:00',70,'08:30:00','Mumbai',250,'Delhi','2024-11-06'),(1023,'13:30:00',60,'11:00:00','Kolkata',275,'Mumbai','2024-11-06'),(1024,'15:00:00',50,'12:30:00','Goa',220,'Kolkata','2024-11-06'),(1025,'17:45:00',40,'15:15:00','Pune',180,'Goa','2024-11-06'),(1026,'19:00:00',65,'16:30:00','Jaipur',190,'Pune','2024-11-06'),(1027,'20:30:00',55,'18:00:00','Bangalore',210,'Jaipur','2024-11-06'),(1028,'21:45:00',70,'19:15:00','Cochin',160,'Bangalore','2024-11-06'),(1029,'23:00:00',60,'20:30:00','Ahmadabad',195,'Cochin','2024-11-06'),(1030,'23:59:00',50,'21:15:00','Chennai',210,'Ahmadabad','2024-11-06'),(1031,'09:00:00',50,'06:30:00','Mumbai',320,'Chennai','2024-11-07'),(1032,'11:30:00',65,'09:00:00','Kolkata',270,'Delhi','2024-11-07'),(1033,'13:00:00',80,'10:30:00','Goa',240,'Mumbai','2024-11-07'),(1034,'15:15:00',70,'12:45:00','Pune',230,'Kolkata','2024-11-07'),(1035,'17:45:00',55,'15:15:00','Jaipur',200,'Goa','2024-11-07'),(1036,'18:30:00',60,'16:00:00','Bangalore',210,'Pune','2024-11-07'),(1037,'20:15:00',75,'17:45:00','Cochin',185,'Jaipur','2024-11-07'),(1038,'22:00:00',65,'19:30:00','Ahmadabad',195,'Bangalore','2024-11-07'),(1039,'23:30:00',59,'21:00:00','Delhi',215,'Cochin','2024-11-07'),(1040,'23:59:00',55,'21:30:00','Chennai',225,'Ahmadabad','2024-11-07'),(1041,'08:15:00',50,'06:00:00','Goa',280,'Chennai','2024-11-08'),(1042,'10:30:00',55,'08:00:00','Pune',260,'Delhi','2024-11-08'),(1043,'12:45:00',70,'10:15:00','Jaipur',245,'Mumbai','2024-11-08'),(1044,'14:00:00',65,'11:30:00','Bangalore',250,'Kolkata','2024-11-08'),(1045,'16:30:00',60,'13:45:00','Cochin',230,'Goa','2024-11-08'),(1046,'18:15:00',75,'15:45:00','Ahmadabad',225,'Pune','2024-11-08'),(1047,'20:00:00',80,'17:30:00','Chennai',235,'Jaipur','2024-11-08'),(1048,'22:15:00',54,'19:45:00','Delhi',270,'Bangalore','2024-11-08'),(1049,'23:45:00',65,'21:15:00','Mumbai',260,'Cochin','2024-11-08'),(1050,'23:59:00',70,'21:30:00','Kolkata',255,'Ahmadabad','2024-11-08'),(1051,'07:30:00',44,'05:00:00','Jaipur',290,'Chennai','2024-11-09'),(1052,'10:00:00',60,'07:30:00','Bangalore',275,'Delhi','2024-11-09'),(1053,'12:15:00',70,'09:45:00','Cochin',255,'Mumbai','2024-11-09'),(1054,'14:30:00',55,'12:00:00','Ahmadabad',265,'Kolkata','2024-11-09'),(1055,'16:00:00',65,'13:30:00','Chennai',240,'Goa','2024-11-09'),(1056,'18:45:00',44,'16:15:00','Delhi',275,'Pune','2024-11-09'),(1057,'20:15:00',80,'17:45:00','Mumbai',230,'Jaipur','2024-11-09'),(1058,'21:30:00',75,'19:00:00','Kolkata',250,'Bangalore','2024-11-09'),(1059,'23:15:00',60,'20:45:00','Goa',220,'Cochin','2024-11-09'),(1060,'23:59:00',55,'21:30:00','Pune',235,'Ahmadabad','2024-11-09');
/*!40000 ALTER TABLE `flight` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `flight_seq`
--

DROP TABLE IF EXISTS `flight_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `flight_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `flight_seq`
--

LOCK TABLES `flight_seq` WRITE;
/*!40000 ALTER TABLE `flight_seq` DISABLE KEYS */;
INSERT INTO `flight_seq` VALUES (1001);
/*!40000 ALTER TABLE `flight_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenegr_seq`
--

DROP TABLE IF EXISTS `passenegr_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenegr_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenegr_seq`
--

LOCK TABLES `passenegr_seq` WRITE;
/*!40000 ALTER TABLE `passenegr_seq` DISABLE KEYS */;
INSERT INTO `passenegr_seq` VALUES (251);
/*!40000 ALTER TABLE `passenegr_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `passenger`
--

DROP TABLE IF EXISTS `passenger`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `passenger` (
  `pid` int NOT NULL,
  `age` int NOT NULL,
  `gender` varchar(255) DEFAULT NULL,
  `pass_name` varchar(255) DEFAULT NULL,
  `booking_id` int DEFAULT NULL,
  PRIMARY KEY (`pid`),
  KEY `FKtco0omesfld1qi5sw76eomvt4` (`booking_id`),
  CONSTRAINT `FKtco0omesfld1qi5sw76eomvt4` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `passenger`
--

LOCK TABLES `passenger` WRITE;
/*!40000 ALTER TABLE `passenger` DISABLE KEYS */;
INSERT INTO `passenger` VALUES (1,20,'Male','XYZ',2001),(52,20,'Male','XYZ',2052),(102,20,'Male','yash',2102),(152,20,'Male','yash',2154),(153,20,'','yash',2155),(154,20,'Male','yash',2155);
/*!40000 ALTER TABLE `passenger` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket`
--

DROP TABLE IF EXISTS `ticket`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket` (
  `ticket_number` int NOT NULL,
  `booking_date` date DEFAULT NULL,
  `total_pay` double NOT NULL,
  `booking_id` int DEFAULT NULL,
  `user_id` int DEFAULT NULL,
  PRIMARY KEY (`ticket_number`),
  KEY `FKrg7x158t96nucwslhq2bad6qm` (`booking_id`),
  KEY `FKdvt57mcco3ogsosi97odw563o` (`user_id`),
  CONSTRAINT `FKdvt57mcco3ogsosi97odw563o` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`),
  CONSTRAINT `FKrg7x158t96nucwslhq2bad6qm` FOREIGN KEY (`booking_id`) REFERENCES `booking` (`booking_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket`
--

LOCK TABLES `ticket` WRITE;
/*!40000 ALTER TABLE `ticket` DISABLE KEYS */;
INSERT INTO `ticket` VALUES (5001,'2024-11-03',300,2001,1),(5052,'2024-11-03',215,2052,1),(5102,'2024-11-03',290,2102,1),(5152,'2024-11-04',275,2154,1),(5153,'2024-11-04',275,2154,1),(5154,'2024-11-04',270,2155,1);
/*!40000 ALTER TABLE `ticket` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ticket_seq`
--

DROP TABLE IF EXISTS `ticket_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ticket_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ticket_seq`
--

LOCK TABLES `ticket_seq` WRITE;
/*!40000 ALTER TABLE `ticket_seq` DISABLE KEYS */;
INSERT INTO `ticket_seq` VALUES (5251);
/*!40000 ALTER TABLE `ticket_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user` (
  `user_id` int NOT NULL,
  `email` varchar(255) DEFAULT NULL,
  `user_fullname` varchar(255) DEFAULT NULL,
  `isadmin` int NOT NULL,
  `password` varchar(255) DEFAULT NULL,
  `phone` varchar(255) DEFAULT NULL,
  `username` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES (1,'yg3575@srmist.edu.in','yaswanth',0,'QWRtaW4xMjM=','789456123','Yaswanth');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user_seq`
--

DROP TABLE IF EXISTS `user_seq`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `user_seq` (
  `next_val` bigint DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user_seq`
--

LOCK TABLES `user_seq` WRITE;
/*!40000 ALTER TABLE `user_seq` DISABLE KEYS */;
INSERT INTO `user_seq` VALUES (101);
/*!40000 ALTER TABLE `user_seq` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'fbs'
--

--
-- Dumping routines for database 'fbs'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-11-04 22:54:00
