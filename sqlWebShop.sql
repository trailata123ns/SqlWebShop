-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: localhost    Database: newschema1
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `tbl_blogs`
--

DROP TABLE IF EXISTS `tbl_blogs`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_blogs` (
  `id` int NOT NULL AUTO_INCREMENT,
  `avatar` varchar(200) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `title` varchar(45) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `content` varchar(1000) CHARACTER SET utf8 COLLATE utf8_bin NOT NULL,
  `status` tinyint(1) DEFAULT '1',
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_blogs`
--

LOCK TABLES `tbl_blogs` WRITE;
/*!40000 ALTER TABLE `tbl_blogs` DISABLE KEYS */;
/*!40000 ALTER TABLE `tbl_blogs` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_category`
--

DROP TABLE IF EXISTS `tbl_category`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_category` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `description` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `parent_id` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_internal_idx` (`parent_id`),
  CONSTRAINT `fk_internal` FOREIGN KEY (`parent_id`) REFERENCES `tbl_category` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_category`
--

LOCK TABLES `tbl_category` WRITE;
/*!40000 ALTER TABLE `tbl_category` DISABLE KEYS */;
INSERT INTO `tbl_category` VALUES (22,'Tee ','Áo cộc tay Tee',NULL,NULL,NULL,NULL,NULL,1,NULL),(44,'Áo HOODIE','Áo HOODIE',NULL,NULL,NULL,NULL,NULL,1,NULL),(47,'Quần Jogger','Quần Jogger',NULL,NULL,NULL,NULL,NULL,1,NULL),(48,'Áo Polo','Áo Polo',NULL,NULL,NULL,NULL,NULL,1,NULL),(49,'Áo ngắn tay','Áo ngắn tay',NULL,NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tbl_category` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_contact`
--

DROP TABLE IF EXISTS `tbl_contact`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_contact` (
  `id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `last_name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `request_type` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `message` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=35 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin liên hệ';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_contact`
--

LOCK TABLES `tbl_contact` WRITE;
/*!40000 ALTER TABLE `tbl_contact` DISABLE KEYS */;
INSERT INTO `tbl_contact` VALUES (16,'viet','viet','lethilinh20192019@gmail.com','Bị lỗi ','Gửi hỗ trợ',NULL,NULL,NULL,NULL,1),(32,'viet1','viet1','phamducviet0509@gmail.com','Muốn hủy đơn hàng','Hủy đơn hàng với mã đơn hàng là 70 , do không còn nhu cầu.',NULL,NULL,NULL,NULL,1),(33,'viet','viet','lethilinh20192019@gmail.com','Muốn hủy đơn hàng','Mã đơn hàng 80',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_contact` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products`
--

DROP TABLE IF EXISTS `tbl_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(1000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `price` decimal(13,2) NOT NULL,
  `price_sale` decimal(13,2) DEFAULT NULL,
  `short_description` varchar(3000) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `detail_description` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `avatar` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `category_id` int DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `seo` varchar(1000) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `is_hot` tinyint(1) DEFAULT '0',
  `size` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `quantity` int NOT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_category_products_idx` (`category_id`),
  CONSTRAINT `fk_category_products` FOREIGN KEY (`category_id`) REFERENCES `tbl_category` (`id`) ON DELETE RESTRICT
) ENGINE=InnoDB AUTO_INCREMENT=103 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa danh mục sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products`
--

LOCK TABLES `tbl_products` WRITE;
/*!40000 ALTER TABLE `tbl_products` DISABLE KEYS */;
INSERT INTO `tbl_products` VALUES (82,'INSPACE TEE',420000.00,410000.00,'THÔNG TIN\r\n• Regular fit\r\n• Chi tiết in lụa \r\n• Graphic in kéo lụa tràn thân\r\n• Logo Hades thêu nổi ở tay\r\n• Chất liệu: Cotton 2 chiều','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Regular fit<br style=\"margin: 0px; padding: 0px;\">• Chi tiết in lụa&nbsp;<br style=\"margin: 0px; padding: 0px;\">• Graphic in kéo lụa tràn thân<br style=\"margin: 0px; padding: 0px;\">• Logo Hades thêu nổi ở tay<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Cotton 2 chiều</p></div>','product/avatar/inspace_b_0b4fdd50668d4d3d904ce2441ca5c00a.webp',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,47),(83,'PREMIER TEE',380000.00,350000.00,'THÔNG TIN\r\n• Regular fit\r\n• Chi tiết in nổi\r\n• Chất liệu: Cotton 2 chiều','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Regular fit<br style=\"margin: 0px; padding: 0px;\">• Chi tiết in nổi<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Cotton 2 chiều</p></div>','product/avatar/prr1.webp',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50),(85,'MULTI ZIP HOODIE',650000.00,600000.00,'THÔNG TIN\r\n• Nón dây rút có khớp nối. Dây kéo zip full áo\r\n• Phần tay áo xếp li gấp vải\r\n• Chữ Hades ngay cổ tay hiệu ứng rách\r\n• Logo Hades và biểu tượng Sói được thêu nổi\r\n• Chất liệu: Vải chân cua','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Nón dây rút có khớp nối.&nbsp;Dây kéo zip full áo<br style=\"margin: 0px; padding: 0px;\">• Phần tay áo xếp li gấp vải<br style=\"margin: 0px; padding: 0px;\">• Chữ Hades ngay cổ tay hiệu ứng rách<br style=\"margin: 0px; padding: 0px;\">• Logo Hades và biểu tượng Sói được thêu nổi<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Vải chân cua</p></div>','product/avatar/pr1.webp',44,NULL,NULL,NULL,NULL,1,NULL,1,NULL,46),(86,'AFTERGLOW TEE',420000.00,410000.00,'THÔNG TIN\r\n• Áo bo cổ\r\n• Hình in to bản được in kéo lụa\r\n• Regular fit\r\n• Logo thêu nổi ở tay áo\r\n• Chất liệu: Cotton 2 chiều ','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Áo bo cổ<br style=\"margin: 0px; padding: 0px;\">• Hình in to bản được&nbsp;in kéo lụa<br style=\"margin: 0px; padding: 0px;\">• Regular&nbsp;fit<br style=\"margin: 0px; padding: 0px;\">• Logo thêu nổi ở tay áo<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Cotton 2 chiều&nbsp;</p></div>','product/avatar/afterglow_12b2f0a4e77c472f8595de2fb1cfe0661.webp',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,49),(87,'DINOSAUR TEE',380000.00,350000.00,'THÔNG TIN\r\n• Regular fit\r\n• Chi tiết trên trên áo áp dụng kỹ thuật in nổi.\r\n• Đường chỉ raw phần thân áo và tay áo\r\n• Chất liệu: Cotton 2 chiều','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Regular fit<br style=\"margin: 0px; padding: 0px;\">• Chi tiết trên trên áo áp dụng kỹ thuật in nổi.<br style=\"margin: 0px; padding: 0px;\">• Đường chỉ raw phần thân áo và tay áo<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Cotton 2 chiều</p></div>','product/avatar/dinasour_10a2bdb0589f4664815706e4a06df4b9.webp',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50),(88,'DESTRUCTION TEE',380000.00,370000.00,'THÔNG TIN\r\n• Áo bo cổ\r\n• Hình in bản to được in kéo lụa\r\n• Regular fit\r\n• Logo thêu nổi ở tay áo\r\n• Chất liệu: Cotton 2 chiều ','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Áo bo cổ<br style=\"margin: 0px; padding: 0px;\">• Hình in bản to&nbsp;được&nbsp;in kéo lụa<br style=\"margin: 0px; padding: 0px;\">• Regular fit<br style=\"margin: 0px; padding: 0px;\">• Logo thêu nổi ở tay áo<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Cotton 2 chiều&nbsp;</p></div>','product/avatar/destruction_tee_5836315bdcb44e03ae3f9462d5c52dd4.webp',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50),(89,'COSMIC RAY TEE',380000.00,370000.00,'THÔNG TIN\r\n• Regular fit\r\n• Hình in bản to được sử dụng công nghệ in kéo lụa\r\n• Logo được in ngay ngực và mặt sau áo\r\n• Chất liệu: Cotton 2 chiều','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Regular fit<br style=\"margin: 0px; padding: 0px;\">• Hình in bản to được sử dụng công nghệ in kéo lụa<br style=\"margin: 0px; padding: 0px;\">• Logo được in ngay ngực và mặt sau áo<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Cotton 2 chiều</p></div>','product/avatar/cosmic_ray_tee_811e4430c0e14fbc94f94eb4ae814755.jpg',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50),(90,'STAMPED TORN HOODIE',650000.00,640000.00,'THÔNG TIN\r\n• Xử lý hiệu ứng rách dọc thân\r\n• Logo Hades ngay nón và tay áo\r\n• Túi ngay giữa thân áo\r\n• Hình in sử dụng kỹ thuật in kéo lụa','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Xử lý hiệu ứng rách dọc thân<br style=\"margin: 0px; padding: 0px;\">• Logo Hades ngay nón và tay áo<br style=\"margin: 0px; padding: 0px;\">• Túi ngay giữa thân áo<br style=\"margin: 0px; padding: 0px;\">• Hình in sử dụng kỹ thuật in kéo lụa</p></div>','product/avatar/hades_hoodie_acda9d7713594b6baaeb90e64e776710.webp',44,NULL,NULL,NULL,NULL,1,NULL,1,NULL,0),(91,'CULBURN HOODIE',650000.00,635000.00,'THÔNG TIN\r\n• Họa tiết in nổi giữa áo và tay áo\r\n• Túi kangaroo\r\n• Phần nón thêu logo Hades có dây rút điều chỉnh\r\n• Chất liệu: Nỉ bông','<h2 class=\"font-oswald\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Họa tiết in nổi giữa áo và tay áo<br style=\"margin: 0px; padding: 0px;\">• Túi kangaroo<br style=\"margin: 0px; padding: 0px;\">• Phần nón thêu logo Hades có dây rút điều chỉnh<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Nỉ bông</p></div>','product/avatar/61_2_2f54bf37bf2b45d4b2d75bb1d70ab755.jpg',44,NULL,NULL,NULL,NULL,1,NULL,0,NULL,50),(96,'ok',10.00,9.00,'ok','<p>ok</p>','product/avatar/vinh-tai-banner-5-1_92.jpg',22,NULL,NULL,NULL,NULL,1,NULL,1,NULL,0),(97,'ORDINARY TRACK PANTS',490000.00,480000.00,'THÔNG TIN\r\n• Mang kiểu dáng sporty\r\n• Logo Hades thêu nổi\r\n• Bo chun cổ chân\r\n• Dây rút và lưng thun ngay eo\r\n• Chất liệu: Nỉ chân cua\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.','<h2 keylanguage=\"thong_tin\" class=\"font-oswald lang\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Mang kiểu dáng sporty<br style=\"margin: 0px; padding: 0px;\">• Logo Hades thêu nổi<br style=\"margin: 0px; padding: 0px;\">• Bo chun cổ chân<br style=\"margin: 0px; padding: 0px;\">• Dây rút và lưng thun ngay eo<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Nỉ chân cua</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Vận chuyển từ 2-3 ngày.&nbsp;<br style=\"margin: 0px; padding: 0px;\">Thiết kế và sản xuất bởi HADES.</p></div>','product/avatar/ORDINARY_1.webp',47,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50),(99,'MARBLE CARGO PANTS',650000.00,635000.00,'THÔNG TIN\r\n• Quần túi hộp\r\n• Họa tiết marble\r\n• Nút gài ở eo\r\n• Logo Hades in lụa\r\n• Chất liệu: Kaki Jean\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.','<h2 keylanguage=\"thong_tin\" class=\"font-oswald lang\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Quần túi hộp<br style=\"margin: 0px; padding: 0px;\">• Họa tiết marble<br style=\"margin: 0px; padding: 0px;\">• Nút gài ở eo<br style=\"margin: 0px; padding: 0px;\">• Logo Hades in lụa<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Kaki Jean</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Vận chuyển từ 2-3 ngày.&nbsp;<br style=\"margin: 0px; padding: 0px;\">Thiết kế và sản xuất bởi HADES.</p></div>','product/avatar/mabel_11.webp',47,NULL,NULL,NULL,NULL,1,NULL,1,NULL,100),(100,'BALANCE TROUSER PANTS',350000.00,340000.00,'THÔNG TIN\r\n• Dáng regular fit\r\n• Lưng chun có dây rút\r\n• Logo Hades được in lụa\r\n• Bo chun cổ chân\r\n• Chất liệu: Nỉ chân cua\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.','<h2 keylanguage=\"thong_tin\" class=\"font-oswald lang\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Dáng regular fit<br style=\"margin: 0px; padding: 0px;\">• Lưng&nbsp;chun có dây rút<br style=\"margin: 0px; padding: 0px;\">• Logo Hades được in lụa<br style=\"margin: 0px; padding: 0px;\">• Bo chun cổ chân<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Nỉ chân cua</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Vận chuyển từ 2-3 ngày.&nbsp;<br style=\"margin: 0px; padding: 0px;\">Thiết kế và sản xuất bởi HADES.</p></div>','product/avatar/BALANCE_1.webp',47,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50),(101,'ESSENTIAL TROUSER PANTS',320000.00,300000.00,'THÔNG TIN\r\n• Dáng regular fit\r\n• Lưng chun có dây rút\r\n• Logo Hades được in lụa\r\n• Bo chun cổ chân\r\n• Chất liệu: Nỉ chân cua\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.','<h2 keylanguage=\"thong_tin\" class=\"font-oswald lang\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Dáng regular fit<br style=\"margin: 0px; padding: 0px;\">• Lưng&nbsp;chun có dây rút<br style=\"margin: 0px; padding: 0px;\">• Logo Hades được in lụa<br style=\"margin: 0px; padding: 0px;\">• Bo chun cổ chân<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Nỉ chân cua</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Vận chuyển từ 2-3 ngày.&nbsp;<br style=\"margin: 0px; padding: 0px;\">Thiết kế và sản xuất bởi HADES.</p></div>','product/avatar/ESSENTIAL_1.webp',47,NULL,NULL,NULL,NULL,1,NULL,1,NULL,100),(102,'CLAIRVOYANCE MEDICINE HOODIE',360000.00,350000.00,'THÔNG TIN\r\n• Họa tiết in trame ở thân áo\r\n• Túi kangaroo\r\n• Phần nón có dây rút điều chỉnh\r\n• Bo viền cổ và tà áo\r\n• Chất liệu: Nỉ bông\r\n\r\n \r\n\r\nVận chuyển từ 2-3 ngày. \r\nThiết kế và sản xuất bởi HADES.','<h2 keylanguage=\"thong_tin\" class=\"font-oswald lang\" style=\"margin: 0.6em 0px; padding: 0px; font-weight: 700; line-height: 1.3; color: rgb(33, 43, 54); font-size: 14px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; vertical-align: baseline; display: inline-block; letter-spacing: 0.4px; font-family: Oswald !important;\">THÔNG TIN</h2><p><span style=\"font-family: Quicksand, sans-serif; font-size: 13px; letter-spacing: 0.4px;\"></span></p><div class=\"description-productdetail\" style=\"font-family: Quicksand, sans-serif; margin: 0px; padding: 0px; border: 0px; font-variant-numeric: inherit; font-variant-east-asian: inherit; font-stretch: inherit; font-size: 13px; line-height: inherit; vertical-align: baseline; letter-spacing: 0.4px;\"><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">• Họa tiết in trame ở thân áo<br style=\"margin: 0px; padding: 0px;\">• Túi kangaroo<br style=\"margin: 0px; padding: 0px;\">• Phần nón&nbsp;có dây rút điều chỉnh<br style=\"margin: 0px; padding: 0px;\">• Bo viền cổ và tà áo<br style=\"margin: 0px; padding: 0px;\">• Chất liệu: Nỉ bông</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">&nbsp;</p><p style=\"font: inherit; margin-right: 0px; margin-bottom: 0px; margin-left: 0px; padding: 0px; border: 0px; vertical-align: baseline;\">Vận chuyển từ 2-3 ngày.&nbsp;<br style=\"margin: 0px; padding: 0px;\">Thiết kế và sản xuất bởi HADES.</p></div>','product/avatar/CLAIRVOYANCE_1.webp',44,NULL,NULL,NULL,NULL,1,NULL,1,NULL,50);
/*!40000 ALTER TABLE `tbl_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_products_images`
--

DROP TABLE IF EXISTS `tbl_products_images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_products_images` (
  `id` int NOT NULL AUTO_INCREMENT,
  `title` varchar(500) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `path` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `product_id` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `fk_product_images_idx` (`product_id`),
  CONSTRAINT `fk_product_images` FOREIGN KEY (`product_id`) REFERENCES `tbl_products` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=141 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu danh sách ảnh sản phẩm';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_products_images`
--

LOCK TABLES `tbl_products_images` WRITE;
/*!40000 ALTER TABLE `tbl_products_images` DISABLE KEYS */;
INSERT INTO `tbl_products_images` VALUES (65,'264_1_3850b6a5a1634db2a1b2ead9ca7d7a37.jpg','product/pictures/264_1_3850b6a5a1634db2a1b2ead9ca7d7a37.jpg',82,NULL,NULL,NULL,NULL,1),(66,'inspace_2_64d76476720941acb247b7852426d1af.webp','product/pictures/inspace_2_64d76476720941acb247b7852426d1af.webp',82,NULL,NULL,NULL,NULL,1),(67,'3.webp','product/pictures/833.webp',83,NULL,NULL,NULL,NULL,1),(68,'4.webp','product/pictures/834.webp',83,NULL,NULL,NULL,NULL,1),(69,'2.webp','product/pictures/832.webp',83,NULL,NULL,NULL,NULL,1),(76,'muti3.webp','product/pictures/muti3.webp',85,NULL,NULL,NULL,NULL,1),(77,'muti4.webp','product/pictures/muti4.webp',85,NULL,NULL,NULL,NULL,1),(78,'muti2.webp','product/pictures/muti2.webp',85,NULL,NULL,NULL,NULL,1),(79,'313_15_f09fb99be0c64584bea936cc0c7c1013_2.webp','product/pictures/313_15_f09fb99be0c64584bea936cc0c7c1013_2.webp',86,NULL,NULL,NULL,NULL,1),(80,'313_16_545b37b9472246d3851a5784f9dfd26a_5.webp','product/pictures/313_16_545b37b9472246d3851a5784f9dfd26a_5.webp',86,NULL,NULL,NULL,NULL,1),(81,'afterglow_1_17e5e8e3f9da4ff08f9e3d33f3435252_3.webp','product/pictures/afterglow_1_17e5e8e3f9da4ff08f9e3d33f3435252_3.webp',86,NULL,NULL,NULL,NULL,1),(82,'313_17_f9fa004ae1634d1c80dc3aff5a0a7f23_4.webp','product/pictures/313_17_f9fa004ae1634d1c80dc3aff5a0a7f23_4.webp',86,NULL,NULL,NULL,NULL,1),(83,'DESTRUCTIONTee_5.webp','product/pictures/DESTRUCTIONTee_5.webp',88,NULL,NULL,NULL,NULL,1),(84,'DESTRUCTIONTee_3.webp','product/pictures/DESTRUCTIONTee_3.webp',88,NULL,NULL,NULL,NULL,1),(86,'DESTRUCTIONTee_4.webp','product/pictures/DESTRUCTIONTee_4.webp',88,NULL,NULL,NULL,NULL,1),(87,'COSMIC_4.webp','product/pictures/COSMIC_4.webp',89,NULL,NULL,NULL,NULL,1),(88,'COSMIC_1.webp','product/pictures/COSMIC_1.webp',89,NULL,NULL,NULL,NULL,1),(89,'COSMIC_3.webp','product/pictures/COSMIC_3.webp',89,NULL,NULL,NULL,NULL,1),(90,'DINOSAUR_2.webp','product/pictures/DINOSAUR_2.webp',87,NULL,NULL,NULL,NULL,1),(91,'DINOSAUR_3.webp','product/pictures/DINOSAUR_3.webp',87,NULL,NULL,NULL,NULL,1),(92,'DINOSAUR_1.webp','product/pictures/DINOSAUR_1.webp',87,NULL,NULL,NULL,NULL,1),(93,'DINOSAUR_4.webp','product/pictures/DINOSAUR_4.webp',87,NULL,NULL,NULL,NULL,1),(94,'STAMPED_2.webp','product/pictures/STAMPED_2.webp',90,NULL,NULL,NULL,NULL,1),(95,'STAMPED_1.webp','product/pictures/STAMPED_1.webp',90,NULL,NULL,NULL,NULL,1),(96,'STAMPED_4.webp','product/pictures/STAMPED_4.webp',90,NULL,NULL,NULL,NULL,1),(97,'STAMPED_3.webp','product/pictures/STAMPED_3.webp',90,NULL,NULL,NULL,NULL,1),(98,'CULBURN_2.webp','product/pictures/CULBURN_2.webp',91,NULL,NULL,NULL,NULL,1),(99,'CULBURN_1.webp','product/pictures/CULBURN_1.webp',91,NULL,NULL,NULL,NULL,1),(100,'CULBURN_3.webp','product/pictures/CULBURN_3.webp',91,NULL,NULL,NULL,NULL,1),(101,'CULBURN_4.webp','product/pictures/CULBURN_4.webp',91,NULL,NULL,NULL,NULL,1),(105,'ORDINARY_4.jpg','product/pictures/ORDINARY_4.jpg',97,NULL,NULL,NULL,NULL,1),(106,'ORDINARY_3.webp','product/pictures/ORDINARY_3.webp',97,NULL,NULL,NULL,NULL,1),(107,'ORDINARY_2.webp','product/pictures/ORDINARY_2.webp',97,NULL,NULL,NULL,NULL,1),(117,'MARBLE _4.webp','product/pictures/MARBLE_4.webp',99,NULL,NULL,NULL,NULL,1),(118,'MARBLE _2.webp','product/pictures/MARBLE_2.webp',99,NULL,NULL,NULL,NULL,1),(127,'CLAIRVOYANCE_2.webp','product/pictures/CLAIRVOYANCE_2.webp',102,NULL,NULL,NULL,NULL,1),(128,'CLAIRVOYANCE_3.webp','product/pictures/CLAIRVOYANCE_3.webp',102,NULL,NULL,NULL,NULL,1),(131,'h1.png.png','product/pictures/h1.png.png',96,NULL,NULL,NULL,NULL,1),(132,'3.png','product/pictures/3.png',96,NULL,NULL,NULL,NULL,1),(133,'4.png','product/pictures/4.png',96,NULL,NULL,NULL,NULL,1),(134,'BALANCE_3.webp','product/pictures/BALANCE_3.webp',100,NULL,NULL,NULL,NULL,1),(135,'BALANCE_4.webp','product/pictures/BALANCE_4.webp',100,NULL,NULL,NULL,NULL,1),(136,'BALANCE_2.webp','product/pictures/BALANCE_2.webp',100,NULL,NULL,NULL,NULL,1),(137,'ESSENTIAL_2.webp','product/pictures/ESSENTIAL_2.webp',101,NULL,NULL,NULL,NULL,1),(138,'ESSENTIAL_5.webp','product/pictures/ESSENTIAL_5.webp',101,NULL,NULL,NULL,NULL,1),(139,'ESSENTIAL_3.webp','product/pictures/ESSENTIAL_3.webp',101,NULL,NULL,NULL,NULL,1),(140,'ESSENTIAL_4.webp','product/pictures/ESSENTIAL_4.webp',101,NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_products_images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_roles`
--

DROP TABLE IF EXISTS `tbl_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_roles` (
  `id` int NOT NULL AUTO_INCREMENT,
  `name` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `description` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_roles`
--

LOCK TABLES `tbl_roles` WRITE;
/*!40000 ALTER TABLE `tbl_roles` DISABLE KEYS */;
INSERT INTO `tbl_roles` VALUES (17,'ADMIN','ADMIN',NULL,NULL,NULL,NULL,1),(27,'GUEST','GUEST',NULL,NULL,NULL,NULL,1);
/*!40000 ALTER TABLE `tbl_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder`
--

DROP TABLE IF EXISTS `tbl_saleorder`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder` (
  `id` int NOT NULL AUTO_INCREMENT,
  `code` varchar(45) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `user_id` int DEFAULT NULL,
  `total` decimal(13,2) DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `customer_name` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `customer_address` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `seo` varchar(200) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `customer_phone` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  `cutomer_email` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=74 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder`
--

LOCK TABLES `tbl_saleorder` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder` DISABLE KEYS */;
INSERT INTO `tbl_saleorder` VALUES (64,'1652693151606',28,410000.00,'2022-05-16 16:25:51',NULL,NULL,NULL,1,'viet1','Cầu Giấy Hà Nội',NULL,'0367184469','phamducviet0509@gmail.com'),(66,'1652696170792',28,1010000.00,'2022-05-16 17:16:10',NULL,NULL,NULL,1,'viet1','Cầu Giấy Hà Nội',NULL,'0367184469','phamducviet0509@gmail.com'),(68,'1652699307366',28,410000.00,'2022-05-16 18:08:27',NULL,NULL,NULL,1,'viet1','Cầu Giấy Hà Nội',NULL,'0367184469','phamducviet0509@gmail.com'),(69,'1652699924992',28,410000.00,'2022-05-16 18:18:44',NULL,NULL,1,0,'viet1','Cầu Giấy Hà Nội',NULL,'0367184469','phamducviet0509@gmail.com'),(73,'1652864898998',28,1800000.00,'2022-05-18 16:08:18',NULL,NULL,1,0,'viet1','Cầu Giấy Hà Nội',NULL,'0367184469','phamducviet0509@gmail.com');
/*!40000 ALTER TABLE `tbl_saleorder` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_saleorder_products`
--

DROP TABLE IF EXISTS `tbl_saleorder_products`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_saleorder_products` (
  `id` int NOT NULL AUTO_INCREMENT,
  `saleorder_id` int NOT NULL,
  `product_id` int NOT NULL,
  `quality` int NOT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `size` varchar(10) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_saleorder_product_idx` (`saleorder_id`),
  CONSTRAINT `fk_saleorder_product` FOREIGN KEY (`saleorder_id`) REFERENCES `tbl_saleorder` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa phiếu mua hàng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_saleorder_products`
--

LOCK TABLES `tbl_saleorder_products` WRITE;
/*!40000 ALTER TABLE `tbl_saleorder_products` DISABLE KEYS */;
INSERT INTO `tbl_saleorder_products` VALUES (91,66,86,1,'2022-05-16 17:16:10',NULL,NULL,NULL,1,'S'),(92,66,85,1,'2022-05-16 17:16:10',NULL,NULL,NULL,1,'S'),(94,68,82,1,'2022-05-16 18:08:27',NULL,NULL,NULL,1,'S'),(95,69,82,1,'2022-05-16 18:18:44',NULL,NULL,NULL,1,'S'),(100,73,85,3,'2022-05-18 16:08:18',NULL,NULL,NULL,1,'S');
/*!40000 ALTER TABLE `tbl_saleorder_products` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users`
--

DROP TABLE IF EXISTS `tbl_users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users` (
  `id` int NOT NULL AUTO_INCREMENT,
  `username` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `password` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `email` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `address` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `phone` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `created_date` datetime DEFAULT NULL,
  `updated_date` datetime DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_by` int DEFAULT NULL,
  `status` tinyint(1) DEFAULT '1',
  `reset_password_token` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='Bảng dữ liệu chứa thông tin người dùng';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users`
--

LOCK TABLES `tbl_users` WRITE;
/*!40000 ALTER TABLE `tbl_users` DISABLE KEYS */;
INSERT INTO `tbl_users` VALUES (18,'admin','$2a$04$DbvIJGFgP0XZyBWfdarJCOVDmjG1RbFB/o4CM1BarSNvBeD2u1Kc6','hadesstore563@gmail.com','Cầu Giấy Hà Nội','0367184468',NULL,NULL,NULL,NULL,1,''),(28,'viet1','$2a$10$P9GTC8uXK9msSIRKKbHxnuiMnh0iV0b9JJYhd/xnJqyMrCCGY4fMu','phamducviet0509@gmail.com','Cầu Giấy Hà Nội','0367184469',NULL,NULL,NULL,NULL,1,NULL);
/*!40000 ALTER TABLE `tbl_users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbl_users_roles`
--

DROP TABLE IF EXISTS `tbl_users_roles`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbl_users_roles` (
  `user_id` int NOT NULL,
  `role_id` int NOT NULL,
  PRIMARY KEY (`user_id`,`role_id`),
  KEY `fk_roles_idx` (`role_id`),
  CONSTRAINT `fk_roles` FOREIGN KEY (`role_id`) REFERENCES `tbl_roles` (`id`),
  CONSTRAINT `fk_users` FOREIGN KEY (`user_id`) REFERENCES `tbl_users` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin COMMENT='bảng trung gian thể hiện quan hệ n-n của users và roles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbl_users_roles`
--

LOCK TABLES `tbl_users_roles` WRITE;
/*!40000 ALTER TABLE `tbl_users_roles` DISABLE KEYS */;
INSERT INTO `tbl_users_roles` VALUES (18,17),(28,27);
/*!40000 ALTER TABLE `tbl_users_roles` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tbt_reviews`
--

DROP TABLE IF EXISTS `tbt_reviews`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `tbt_reviews` (
  `id` int NOT NULL AUTO_INCREMENT,
  `product_id` int NOT NULL,
  `customer_id` int NOT NULL,
  `content` varchar(500) CHARACTER SET utf8 COLLATE utf8_bin DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `updated_by` int DEFAULT NULL,
  `created_by` int DEFAULT NULL,
  `updated_date` date DEFAULT NULL,
  `created_date` date DEFAULT NULL,
  `number_star` int DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb3 COLLATE=utf8_bin;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tbt_reviews`
--

LOCK TABLES `tbt_reviews` WRITE;
/*!40000 ALTER TABLE `tbt_reviews` DISABLE KEYS */;
INSERT INTO `tbt_reviews` VALUES (6,83,18,'Sản phẩm mới',1,NULL,NULL,NULL,'2022-05-06',NULL),(9,82,18,'san pham dep',1,NULL,NULL,NULL,'2022-05-11',NULL);
/*!40000 ALTER TABLE `tbt_reviews` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-03-29 23:35:06
