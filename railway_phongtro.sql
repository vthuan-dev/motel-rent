CREATE DATABASE  IF NOT EXISTS `phong_tro` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `phong_tro`;
-- MySQL dump 10.13  Distrib 8.0.38, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: phong_tro
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
-- Table structure for table `Areas`
--

DROP TABLE IF EXISTS `Areas`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Areas` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order` int DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Areas`
--

LOCK TABLES `Areas` WRITE;
/*!40000 ALTER TABLE `Areas` DISABLE KEYS */;
INSERT INTO `Areas` VALUES (1,1,'1','Viet nam','2024-12-03 22:53:40','2024-12-17 22:53:43');
/*!40000 ALTER TABLE `Areas` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Attributes`
--

DROP TABLE IF EXISTS `Attributes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Attributes` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `price` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `acreage` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `published` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `hashtag` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Attributes`
--

LOCK TABLES `Attributes` WRITE;
/*!40000 ALTER TABLE `Attributes` DISABLE KEYS */;
INSERT INTO `Attributes` VALUES ('24152c30-e6a2-490b-b4fc-9d54f7602f2e','12 đồng/tháng','3 m2','21/12/2024','#740123','2024-12-21 16:24:04','2024-12-21 16:24:04'),('56b63223-3f81-4e19-95fb-127078cd7908','123.00000000000001 đồng/tháng','123 m2','22/12/2024','#623805','2024-12-22 08:09:42','2024-12-22 08:09:42'),('622cc40c-a0b1-472f-93cd-380097928bdd','123.00000000000001 đồng/tháng','123 m2','22/12/2024','#433722','2024-12-22 08:09:10','2024-12-22 08:09:10'),('7fd4ec9f-0110-4cb1-b432-9f4b80d650eb','12 đồng/tháng','3 m2','21/12/2024','#519165','2024-12-21 16:23:31','2024-12-21 16:23:31'),('8fcd4687-07de-43ef-9ddf-037876b38161','12221 đồng/tháng','12 m2','22/12/2024','#262572','2024-12-22 07:10:56','2024-12-22 07:10:56'),('a3a1bc63-1f63-45d3-ae68-b2f5fe7a62d7','123.00000000000001 đồng/tháng','123 m2','22/12/2024','#731223','2024-12-22 08:07:55','2024-12-22 08:07:55'),('b0b57258-9971-4329-923b-b60d1cb4edac','123.00000000000001 đồng/tháng','123 m2','22/12/2024','#933220','2024-12-22 08:08:02','2024-12-22 08:08:02'),('bf222486-9246-4323-af12-a37a531a0a7e','12 đồng/tháng','3 m2','21/12/2024','#544018','2024-12-21 16:24:26','2024-12-21 16:24:26');
/*!40000 ALTER TABLE `Attributes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Categories`
--

DROP TABLE IF EXISTS `Categories`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Categories` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `header` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `subheader` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Categories`
--

LOCK TABLES `Categories` WRITE;
/*!40000 ALTER TABLE `Categories` DISABLE KEYS */;
INSERT INTO `Categories` VALUES (1,'ChungCu','Chung cư ','2','2','2024-12-03 22:53:12','2024-12-09 22:53:14'),(3,'NhaCap4','Nhà cấp 4','3','3','2024-12-10 15:17:13','2024-12-17 15:17:16'),(4,'Trọ','Trọ ','33','2','2024-12-23 15:18:42','2024-12-23 15:18:45');
/*!40000 ALTER TABLE `Categories` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Images`
--

DROP TABLE IF EXISTS `Images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Images` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `image` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Images`
--

LOCK TABLES `Images` WRITE;
/*!40000 ALTER TABLE `Images` DISABLE KEYS */;
INSERT INTO `Images` VALUES ('1b8381b9-b2d6-4774-b6a2-75fa09b70bd7','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:07:55','2024-12-22 08:07:55'),('1b98bcc2-38a6-4906-a7fd-e2ce5f62fea0','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734857775/phongtrosv/ssjdjf1st6zpgyjeiwv4.jpg\"]','2024-12-22 08:57:51','2024-12-22 08:57:51'),('335fa33e-4e20-42df-b042-8b71ff32b13e','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:14:37','2024-12-22 08:14:37'),('38ac7790-fe08-4175-bed2-fc258213044c','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:09:10','2024-12-22 08:09:10'),('45ed9f2a-78a6-4c90-8712-de0f874e054c','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734856071/phongtrosv/nlktlwq9fwim4qr8gaya.png\"]','2024-12-22 08:27:56','2024-12-22 08:27:56'),('7cb1280f-c304-4e75-a7c0-1e50bfce7afc','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:15:15','2024-12-22 08:15:15'),('88b32f60-576b-4129-8893-d076f945c6af','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:08:02','2024-12-22 08:08:02'),('a97c652a-f071-4c7f-ab59-d7c4e797d0be','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734856365/phongtrosv/onjs8ivj2dsokdiq9h7s.png\"]','2024-12-22 08:32:52','2024-12-22 08:32:52'),('af8669e6-3bdc-4ea0-9178-b1312613b408','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734857092/phongtrosv/cucpgvnms9vxifw0hnce.jpg\"]','2024-12-22 08:47:46','2024-12-22 08:47:46'),('bc348b5a-d244-48f6-aeec-7c803d86bfcf','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734797880/phongtrosv/nz8rmbg0k5npmervowda.png\"]','2024-12-21 16:24:26','2024-12-21 16:24:26'),('bd05b5cc-c8af-400c-936e-481b6043fbb4','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734797880/phongtrosv/nz8rmbg0k5npmervowda.png\"]','2024-12-21 16:23:32','2024-12-21 16:23:32'),('cea49cdd-f86c-4c75-b341-2758efc54d24','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:14:06','2024-12-22 08:14:06'),('d8e40547-0d51-4d8d-9a81-eeca48a656e0','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:12:27','2024-12-22 08:12:27'),('e441d354-fb97-42db-a1b2-89cd5fd77228','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734854871/phongtrosv/rur8dlzp1ma8vfv6oiwm.png\"]','2024-12-22 08:09:42','2024-12-22 08:09:42'),('f1da0006-372c-48ec-8445-a4ed05ca3bf7','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734797880/phongtrosv/nz8rmbg0k5npmervowda.png\"]','2024-12-21 16:24:04','2024-12-21 16:24:04'),('faa98225-b400-49fe-978a-214e51c2b94e','[\"https://res.cloudinary.com/dou22rzv1/image/upload/v1734851451/phongtrosv/jyu7f34t4w1tsz3dyuxu.png\"]','2024-12-22 07:10:56','2024-12-22 07:10:56');
/*!40000 ALTER TABLE `Images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Labels`
--

DROP TABLE IF EXISTS `Labels`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Labels` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Labels`
--

LOCK TABLES `Labels` WRITE;
/*!40000 ALTER TABLE `Labels` DISABLE KEYS */;
/*!40000 ALTER TABLE `Labels` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Overviews`
--

DROP TABLE IF EXISTS `Overviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Overviews` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `area` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `target` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `bonus` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `created` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `expired` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Overviews`
--

LOCK TABLES `Overviews` WRITE;
/*!40000 ALTER TABLE `Overviews` DISABLE KEYS */;
INSERT INTO `Overviews` VALUES ('0fdaabfc-c217-4839-8a18-20f6f6710cb0','#740123','Chung cư undefined',NULL,'Nam','Tin thường','Thứ 7, 23:24 21/12/2024','Thứ 2, 23:24 23/12/2024','2024-12-21 16:24:04','2024-12-21 16:24:04'),('11342a50-2da8-4b83-8e80-e4a1c6d1e522','#933220','Chung cư undefined',NULL,'Nam','Tin thường','Chủ nhật, 15:8 22/12/2024','Thứ 6, 15:8 3/1/2025','2024-12-22 08:08:02','2024-12-22 08:08:02'),('435e292b-67bd-4912-83d2-d527f91da1af','#544018','Chung cư undefined',NULL,'Nam','Tin thường','Thứ 7, 23:24 21/12/2024','Thứ 7, 23:24 4/1/2025','2024-12-21 16:24:26','2024-12-21 16:24:26'),('4f4d6526-d3fe-495d-9df2-cbe1cc422cbf','#433722','Chung cư undefined',NULL,'Nam','Tin thường','Chủ nhật, 15:9 22/12/2024','Thứ 3, 15:9 24/12/2024','2024-12-22 08:09:10','2024-12-22 08:09:10'),('5b6e362c-bdfc-4ce6-a310-6227cc9e7e41','#257216','Chung cư undefined',NULL,'Nam','Tin thường','Chủ nhật, 15:14 22/12/2024','Chủ nhật, 15:14 5/1/2025','2024-12-22 08:14:37','2024-12-22 08:14:37'),('5d1b0711-ff66-4744-b0b4-77787c0fac59','#731223','Chung cư undefined',NULL,'Nam','Tin thường','Chủ nhật, 15:7 22/12/2024','Thứ 2, 15:7 30/12/2024','2024-12-22 08:07:55','2024-12-22 08:07:55'),('c76c0dfc-f049-4a60-aa40-ad80bf445398','#623805','Chung cư undefined',NULL,'Nam','Tin thường','Chủ nhật, 15:9 22/12/2024','Thứ 5, 15:9 2/1/2025','2024-12-22 08:09:42','2024-12-22 08:09:42'),('fcabd4d8-3e0c-4457-8638-4f6e953a2039','#262572','Chung cư undefined',NULL,'Nam','Tin thường','Chủ nhật, 14:10 22/12/2024','Thứ 4, 14:10 8/1/2025','2024-12-22 07:10:56','2024-12-22 07:10:56'),('fe210d49-2b9b-4e01-874f-e05042559bc4','#519165','Chung cư undefined',NULL,'Nam','Tin thường','Thứ 7, 23:23 21/12/2024','Thứ 5, 23:23 9/1/2025','2024-12-21 16:23:32','2024-12-21 16:23:32');
/*!40000 ALTER TABLE `Overviews` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Posts`
--

DROP TABLE IF EXISTS `Posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Posts` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `star` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT '0',
  `labelCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `address` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `attributesId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `categoryCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `priceCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `areaCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `provinceCode` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci,
  `userId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `overviewId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `imagesId` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `priceNumber` float DEFAULT NULL,
  `areaNumber` float DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Posts`
--

LOCK TABLES `Posts` WRITE;
/*!40000 ALTER TABLE `Posts` DISABLE KEYS */;
INSERT INTO `Posts` VALUES ('a5305fae-2bc6-44f0-a8b3-54b18e832f8e','Cho Thuê Phòng MT Quận 12 ,40m2, full nội thất, ban con 40m2 .','0','123','Quận Ba Đình, Thành phố Hà Nội','ae057439-cb69-479e-86c4-575c98621458','Trọ',NULL,NULL,'123','\"Chính chủ Cho Thuê phòng Mặt tiền full nội thất sang trọng , ban con siêu đẹp và rộng .\\n- Không chung chủ , giờ giấc tự do , dưới nhà là quán cà phê .\\n?Phòng 40m², có thêm sân thượng to 40m². Đầy đủ nội thất như trong hình. Giá ưu đãi trong tháng cuối năm chỉ 4.2 triệu / tháng đang giảm giá còn 3.8 triệu .\\nĐ/c: Mặt tiền đường Nguyễn Thị Tràng, P. Hiệp Thành, Q.12\"','1bd5ddae-ca88-4f41-a6e1-ccb7e2ad7f40','8f1dba07-9723-4872-adc7-5154b8f047cc','af8669e6-3bdc-4ea0-9178-b1312613b408',100,50,'2024-12-22 08:47:46','2024-12-22 08:47:46'),('b04419d9-cf35-4e08-9320-17a0228ed9f9','✅BAN CÔNG LỚN + Full NỘI THẤT + GÁC CAO 2M + PHẠM VĂN CHIÊU','0','123','Thành phố Cao Bằng, Tỉnh Cao Bằng','72225c59-cf1f-4f82-a06a-d3dbf32c4910','NhaCap4',NULL,NULL,'123','\"?198 Đường số 3, phường 9, Gò Vấp\\n\\nGiá 1 người 1 xe giảm giá lộc lá.\\n\\nNội thất: máy lạnh, tủ lạnh, tủ quần áo, kệ bếp, lò vi sóng, ấm điện, bếp điện, nước nóng lạnh…\\n\\nTiện ích: giờ giấc tự do, không chung chủ, ra vào vân tay, camra an ninh, máy giặt chung.\\n\\nChi phí: điện 3k5, nước 70k/người, rác + wifi 120k/phòng, giặt sấy 50k/người, free 2 xe\"','1bd5ddae-ca88-4f41-a6e1-ccb7e2ad7f40','84f51936-9274-4aac-b86b-b2f44648706d','1b98bcc2-38a6-4906-a7fd-e2ce5f62fea0',12.234,12,'2024-12-22 08:57:51','2024-12-22 08:57:51');
/*!40000 ALTER TABLE `Posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Prices`
--

DROP TABLE IF EXISTS `Prices`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Prices` (
  `id` int NOT NULL AUTO_INCREMENT,
  `order` int DEFAULT NULL,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Prices`
--

LOCK TABLES `Prices` WRITE;
/*!40000 ALTER TABLE `Prices` DISABLE KEYS */;
/*!40000 ALTER TABLE `Prices` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Provinces`
--

DROP TABLE IF EXISTS `Provinces`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Provinces` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `value` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Provinces`
--

LOCK TABLES `Provinces` WRITE;
/*!40000 ALTER TABLE `Provinces` DISABLE KEYS */;
/*!40000 ALTER TABLE `Provinces` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Users`
--

DROP TABLE IF EXISTS `Users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `Users` (
  `id` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `zalo` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `fbUrl` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `avatar` longblob,
  `createdAt` datetime NOT NULL,
  `updatedAt` datetime NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Users`
--

LOCK TABLES `Users` WRITE;
/*!40000 ALTER TABLE `Users` DISABLE KEYS */;
INSERT INTO `Users` VALUES ('1bd5ddae-ca88-4f41-a6e1-ccb7e2ad7f40','Super Admin','$2a$12$aTRxFbmmkrGjRbPzTDG4me9yuKck6kyXzAe0OjP6huRigwnNIVJyi','0999999999',NULL,NULL,NULL,'2024-12-21 15:49:32','2024-12-21 15:49:32'),('5a0df6db-cf4f-4b16-89ba-d2bca999e82d','Nguyễn Văn Thuần','$2a$12$khJeIT3hPnxzUPP4QXKR9OWA/FMUPiycI40jOSLRvDt9N5wGwiRny','0706871283',NULL,NULL,NULL,'2024-12-23 22:25:17','2024-12-23 22:25:17');
/*!40000 ALTER TABLE `Users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequelizemeta`
--

DROP TABLE IF EXISTS `sequelizemeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `sequelizemeta` (
  `name` varchar(255) CHARACTER SET utf8mb3 COLLATE utf8mb3_unicode_ci NOT NULL,
  PRIMARY KEY (`name`) USING BTREE,
  UNIQUE KEY `name` (`name`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci ROW_FORMAT=DYNAMIC;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequelizemeta`
--

LOCK TABLES `sequelizemeta` WRITE;
/*!40000 ALTER TABLE `sequelizemeta` DISABLE KEYS */;
INSERT INTO `sequelizemeta` VALUES ('create-area.js'),('create-attribute.js'),('create-category.js'),('create-image.js'),('create-label.js'),('create-overview.js'),('create-post.js'),('create-price.js'),('create-province.js'),('create-user.js');
/*!40000 ALTER TABLE `sequelizemeta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-12-24  5:33:30
