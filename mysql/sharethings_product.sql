-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: sharethings
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `productNo` int NOT NULL AUTO_INCREMENT,
  `customerNo` int DEFAULT NULL,
  `productCategory` varchar(45) DEFAULT NULL,
  `productName` varchar(45) DEFAULT NULL,
  `productImgURL` varchar(200) DEFAULT NULL,
  `lendingPeriod` varchar(20) DEFAULT NULL,
  `exchangeProduct` varchar(50) DEFAULT NULL,
  `productInformation` varchar(300) DEFAULT NULL,
  `price` varchar(10) DEFAULT NULL,
  `uploadTime` datetime DEFAULT NULL,
  `productLike` int DEFAULT '0',
  `deal` tinyint(1) DEFAULT '0',
  `opponentproduct` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`productNo`),
  KEY `customerNo` (`customerNo`),
  CONSTRAINT `product_ibfk_1` FOREIGN KEY (`customerNo`) REFERENCES `customer` (`customerNo`)
) ENGINE=InnoDB AUTO_INCREMENT=23 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES (1,1,'clothing','?????????','?????????.jpg','50???',NULL,'????????? 10??? ?????? ??????????????????. ???????????? ???????????????','10000???','2020-12-13 19:10:21',0,0,NULL),(2,1,'clothing','??????','??????.jpg','10???',NULL,'?????? ??????????????????. 30????????? 90000???????????????. ?????? ?????? ????????? ?????? ???????????????.','3000???','2020-12-13 19:11:22',0,0,NULL),(3,1,'clothing','????????????','??????1.jpg','20???',NULL,'??????????????? ???????????? ????????????. 20??? ?????? ?????? ????????????. ???????????? ???????????????',NULL,'2020-12-13 19:11:59',0,0,'????????????'),(4,1,'tool','?????????????????????','???????????? ?????????.jpg','48???',NULL,'?????? ?????? ???????????? ?????? ???????????????. ???????????? ????????? ?????? ????????? ?????? ???????????? ????????? ?????? ???????????? ???????????????. ???????????? ????????? ?????? ???????????????.',NULL,'2020-12-13 19:12:46',0,0,'???????????????'),(5,1,'others','???????????? ?????????','?????????????????????.jpg','14???',NULL,'??????????????? ????????? ??????. ?????? ???????????? ???????????? ???????????????',NULL,'2020-12-13 19:13:18',1,0,'?????????'),(6,2,'furniture','????????????','??????3.jpg','22???',NULL,'???????????? ??????????????????. ????????? ?????? ???????????? ?????? ???????????????.','19000???','2020-12-13 19:14:05',0,0,NULL),(7,2,'furniture','??????','??????1.jpg','35???',NULL,'????????? ????????? ????????? ???????????? ??????????????? ????????????.',NULL,'2020-12-13 19:14:56',0,0,'??????'),(8,2,'electronics','???????????? ????????? ?????????','???????????????.png','43???',NULL,'80??? ?????? ??????????????? ??? ?????????. ????????? ???????????????.','7000???','2020-12-13 19:15:32',0,0,NULL),(9,2,'electronics','?????????','?????????.jpg','43???',NULL,'????????? ??????????????????.','5000???','2020-12-13 19:15:52',0,0,NULL),(10,2,'electronics','?????? ?????????','???????????????.jpg','60???',NULL,'?????? ????????? ?????????. ?????? ??????????????????.',NULL,'2020-12-13 19:16:24',0,0,'?????? ?????????'),(11,1,'clothing','?????????','?????????.jpg','18???',NULL,'????????? ??????????????????. ???????????? L??????????????? ?????? 93?????????.','2000???','2020-12-13 20:20:56',0,0,NULL),(12,1,'clothing','?????????','?????????.jpg','7???',NULL,'???????????? ????????? ???????????? ????????? ?????????!!',NULL,'2020-12-13 20:21:26',0,0,'?????? ?????????'),(13,1,'clothing','?????????','????????????????????? ?????????.jpg','123???',NULL,'????????????????????? ????????? ???????????? ???????????????.','12000???','2020-12-13 20:21:59',0,0,NULL),(14,1,'furniture','??????','??????.jpg','123???',NULL,'?????? ???????????????. ????????? ????????? ?????? ????????????.','25000???','2020-12-13 20:22:38',0,0,NULL),(15,1,'others','3?????? ??????','??????11.jpg','233???',NULL,'3?????? ???????????? ??????????????????. ???????????? ????????? ?????? ??? ????????? ????????? ????????? ????????? ?????? ?????????????????????.','30000???','2020-12-13 20:24:01',0,0,NULL),(16,1,'clothing','?????????','?????????.jpg','71???',NULL,'????????? ??????????????????','3000???','2020-12-13 20:24:28',0,0,NULL),(17,1,'electronics','?????? ?????????','?????? ?????????.jpg','22???',NULL,'?????? ?????????. ????????????????????? ?????? ?????? ?????????. ?????? ????????? ????????? ?????????.!!! ????????? ?????? ????????????, ??????????????? ?????? ?????????.',NULL,'2020-12-13 20:25:24',0,0,'??????'),(18,1,'clothing','?????????','???????????????.jpg','60???',NULL,'???????????? ?????????!! ?????? ?????????. ?????????????????????. ???????????????.','1400???','2020-12-13 20:26:24',0,0,NULL),(19,1,'clothing','????????? ?????? ??????','?????????????????????.gif','5???',NULL,'????????? ?????? ????????? ?????? ?????????.',NULL,'2020-12-13 20:27:11',0,0,'????????? ??????'),(20,3,'others','???','???.jpg','55???',NULL,'?????? ???????????? ??? ???????????????.','1600???','2020-12-13 20:28:11',0,0,NULL),(21,1,'clothing','??????????????????','??????????????????.jpg','10???',NULL,'????????? 8000????????? ??????????????????. ?????? ????????????!! ???????????????.','8000???','2020-12-13 20:44:07',0,0,NULL),(22,2,'clothing','????????? ??????','??????.jpg','39???',NULL,'??????????????????. ????????? ???????????? ??? ????????? ?????????.','20000???','2020-12-13 22:26:24',0,0,NULL);
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-12-13 22:39:49
