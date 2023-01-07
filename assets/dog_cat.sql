CREATE DATABASE  IF NOT EXISTS `dog&cat` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `dog&cat`;
-- MySQL dump 10.13  Distrib 8.0.30, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: dog&cat
-- ------------------------------------------------------
-- Server version	8.0.30

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
-- Table structure for table `board`
--

DROP TABLE IF EXISTS `board`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `board` (
  `GBNO` int NOT NULL AUTO_INCREMENT,
  `GBName` varchar(45) DEFAULT NULL,
  `Mail` varchar(45) DEFAULT NULL,
  `star` varchar(45) DEFAULT NULL,
  `productID` varchar(45) DEFAULT NULL,
  `Putdate` date DEFAULT NULL,
  `Content` text,
  PRIMARY KEY (`GBNO`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `board`
--

LOCK TABLES `board` WRITE;
/*!40000 ALTER TABLE `board` DISABLE KEYS */;
/*!40000 ALTER TABLE `board` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `bus`
--

DROP TABLE IF EXISTS `bus`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `bus` (
  `idbus` int NOT NULL,
  `imgURL` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `productBrand` varchar(45) NOT NULL,
  `productPrice` varchar(45) NOT NULL,
  PRIMARY KEY (`idbus`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `bus`
--

LOCK TABLES `bus` WRITE;
/*!40000 ALTER TABLE `bus` DISABLE KEYS */;
/*!40000 ALTER TABLE `bus` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `login`
--

DROP TABLE IF EXISTS `login`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `login` (
  `ID` int NOT NULL AUTO_INCREMENT,
  `LoginName` varchar(45) NOT NULL,
  `address` varchar(45) DEFAULT NULL,
  `tel` varchar(45) DEFAULT NULL,
  `gender` varchar(45) DEFAULT NULL,
  `birthday` varchar(45) DEFAULT NULL,
  `LoginEmail` varchar(45) NOT NULL,
  `LoginPassword` varchar(45) NOT NULL,
  PRIMARY KEY (`ID`,`LoginEmail`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `login`
--

LOCK TABLES `login` WRITE;
/*!40000 ALTER TABLE `login` DISABLE KEYS */;
INSERT INTO `login` VALUES (1,'林秀羽','中原大學','0912345678','女','2000-01-01','a0981499288@gmail.com','abc123'),(2,'吳銘芳','中原大學','0912345678','女','2000-01-01','fing3641656@gmail.com','abc123'),(3,'黃雅芳','中原大學','0912345678','女','2000-01-01','ho8886636@gmail.com','abc123'),(4,'陳亮竹','中原大學','0912345678','女','2000-01-01','j20030811@gmail.com','abc123'),(5,'manager','中原大學','0912345678','男','2000-01-01','manager@gmail.com','1234'),(6,'許恬綺','中原大學','0912345678','女','2000-01-01','tentenchi0902@gmail.com','abc123'),(7,'test','中原大學','0912345678','男','2000-01-01','test@gmail.com','test'),(8,'陳王云','中原大學','0912345678','女','2000-01-01','yunyun394652@gmail.com','abc123');
/*!40000 ALTER TABLE `login` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `idorder` int NOT NULL,
  `oname` varchar(45) NOT NULL,
  `ophone` varchar(45) NOT NULL,
  `omail` varchar(45) NOT NULL,
  `opay` varchar(45) NOT NULL,
  `oaddress` varchar(45) NOT NULL,
  `productBrand` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `onum` varchar(45) NOT NULL,
  `osub` varchar(45) NOT NULL,
  PRIMARY KEY (`idorder`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES (1,'1','1','1','1','1','11','1','1','1'),(2,'2','2','2','2','2','22','2','2','2');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product` (
  `ProductID` varchar(45) NOT NULL,
  `productAnimal` varchar(45) NOT NULL,
  `productBrand` varchar(45) NOT NULL,
  `productName` varchar(45) NOT NULL,
  `productPrice` int NOT NULL,
  `productQuantity` varchar(45) NOT NULL,
  `imgURL` varchar(100) DEFAULT NULL,
  `linksURL` varchar(100) DEFAULT NULL,
  `productFlavor` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`ProductID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
INSERT INTO `product` VALUES ('01','貓','加好寶貓糧','加好寶乾貓糧 - 雞肉口味',530,'100','img/Classic Pets cat/Classic Pets cat chicken .jpg','Classic Pets cat.jsp','雞肉口味'),('02','貓','加好寶貓糧','加好寶乾貓糧 - 鮪魚口味',530,'100','img/Classic Pets cat/Classic Pets cat tuna.jpg','Classic Pets cat.jsp','鮪魚口味'),('03','貓','加好寶貓糧','加好寶乾貓糧 - 海鮮口味',530,'100','img/Classic Pets cat/Classic Pets cat seafood.jpg','Classic Pets cat.jsp','海鮮口味'),('04','貓','加好寶貓糧','加好寶乾貓糧 - 海洋魚口味',530,'100','img/Classic Pets cat/Classic Pets cat ocean .jpg','Classic Pets cat.jsp','海洋魚口味'),('05','貓','自然禮讚','Bravo自然禮讚貓食_膠原蛋白配方 鮭魚',1250,'100','img/bravo cat/Bravo collagen cat salmon.jpg',NULL,'膠原蛋白配方 鮭魚'),('06','貓','自然禮讚','Bravo自然禮讚貓食_膠原蛋白配方 鮪魚',1250,'100','img/bravo cat/Bravo collagen cat tuna.jpg',NULL,'膠原蛋白配方 鮪魚'),('07','貓','自然禮讚','Bravo自然禮讚貓食-無穀漢方配方 鮭魚',1250,'100','img/bravo cat/Bravo cat salmon.jpg',NULL,'無穀漢方配方 鮭魚'),('08','貓','自然禮讚','Bravo自然禮讚貓食-無穀漢方配方 鮪魚',1250,'100','img/bravo cat/Bravo cat tuna.jpg',NULL,'無穀漢方配方 鮪魚'),('09','貓','福壽貓FUSO Pets','FUSO Pets貓食_鮭魚+牛肉',699,'100','img/FUSO Pets/FC beef.jpg',NULL,'鮭魚+牛肉'),('10','貓','福壽貓FUSO Pets','FUSO Pets貓食_鮪魚+蟹肉',699,'100','img/FUSO Pets/FC crab.jpg',NULL,'鮪魚+蟹肉'),('11','貓','福壽貓FUSO Pets','FUSO Pets貓食_鮪魚+雞肉',699,'100','img/FUSO Pets/FC chicken.jpg',NULL,'鮪魚+雞肉'),('12','貓','福壽貓FUSO Pets','福壽喵喵貓食-鮪魚口味',699,'100','img/FUSO Pets/FC tuna.png',NULL,'鮪魚口味'),('13','貓','加好寶貓罐80g','加好寶無榖貓罐 - 鮪魚慕斯佐羊奶',590,'100','img/Classic Pets cat can/Classic Pets cat can goat milk.jpg',NULL,'鮪魚慕斯佐羊奶'),('14','貓','加好寶貓罐80g','加好寶無穀貓罐- 新鮮鮪魚+鮭魚',590,'100','img/Classic Pets cat can/Classic Pets cat can salmon.jpg',NULL,'新鮮鮪魚+鮭魚'),('15','貓','加好寶貓罐80g','加好寶無穀貓罐 - 新鮮鮪魚佐鮮蝦',590,'100','img/Classic Pets cat can/Classic Pets cat can shrimp.jpg',NULL,'新鮮鮪魚佐鮮蝦'),('16','貓','加好寶貓罐80g','加好寶無榖貓罐 - 嚴選雞肉+起司',590,'100','img/Classic Pets cat can/Classic Pets cat can chickencheese.jpg',NULL,'嚴選雞肉+起司'),('17','貓','加好寶貓罐80g','加好寶無榖貓罐 - 新鮮鮪魚佐蟹棒',590,'100','img/Classic Pets cat can/Classic Pets cat can crab.jpg',NULL,'新鮮鮪魚佐蟹棒'),('18','貓','加好寶貓罐80g','加好寶無榖貓罐 - 新鮮鮪魚佐南瓜',590,'100','img/Classic Pets cat can/Classic Pets cat can pumpkin.jpg',NULL,'新鮮鮪魚佐南瓜'),('19','貓','加好寶貓罐80g','加好寶無榖貓罐 - 海陸饗宴',590,'100','img/Classic Pets cat can/Classic Pets cat can seafood.jpg',NULL,'海陸饗宴'),('20','貓','加好寶貓罐80g','加好寶無榖貓罐 - 鮮鮪魚凍',590,'100','img/Classic Pets cat can/Classic Pets cat can tuna.jpg',NULL,'鮮鮪魚凍'),('21','貓','Me-O罐170g','咪歐貓罐 - 鮪魚口味',950,'100','img/meo cat can/meo cat can tuna.jpg',NULL,'鮪魚口味'),('22','貓','Me-O罐170g','咪歐貓罐 - 沙丁魚口味',950,'100','img/meo cat can/meo cat can sardine.jpg',NULL,'沙丁魚口味'),('23','貓','iq+肉泥','iq+ 貓咪樂泥棒 - 鮪魚口味',159,'100','img/iq meat/iq+ meat paste tuna.jpg',NULL,'鮪魚口味'),('24','貓','iq+肉泥','iq+ 貓咪樂泥棒 - 鰹魚口味',159,'100','img/iq meat/iq+ meat paste bonito.jpg',NULL,'鰹魚口味'),('25','貓','iq+肉泥','iq+ 貓咪樂泥棒 - 雞肉口味',159,'100','img/iq meat/iq+ meat paste chicken.jpg',NULL,'雞肉口味'),('26','貓','Me-O肉泥','咪歐啾咪棒 - 蟹肉口味肉泥',1270,'100','img/meo meat/meo meat paste crab.jpg',NULL,'蟹肉口味肉泥'),('27','貓','Me-O肉泥','咪歐啾咪棒 - 鰹魚口味肉泥',1270,'100','img/meo meat/meo meat paste bonito.jpg',NULL,'鰹魚口味肉泥'),('28','貓','Me-O肉泥','咪歐啾咪棒 - 鮭魚口味肉泥',1270,'100','img/meo meat/meo meat paste salmon.jpg',NULL,'鮭魚口味肉泥'),('29','貓','Me-O肉泥','咪歐啾咪棒 - 雞肉+雞肝口味肉泥',1270,'100','img/meo meat/meo meat paste chicken.jpg',NULL,'雞肉+雞肝口味肉泥'),('30','狗','加好寶狗糧15kg','加好寶乾狗糧 - 雞肉蔬菜口味 - 中大型成犬專用',570,'100','img/Classic Pets dog can2/Classic Pets dog2 chicken vegetable.jpg',NULL,'雞肉蔬菜口味 - 中大型成犬專用'),('31','狗','加好寶狗糧15kg','加好寶乾狗糧 - 牛肉蔬菜口味 - 中大型成犬',570,'100','img/Classic Pets dog can2/Classic Pets dog2 beef vegetable.jpg',NULL,'牛肉蔬菜口味 - 中大型成犬'),('32','狗','加好寶狗糧15kg','加好寶乾狗糧 - 羊肉口味 - 中大型成犬專用',570,'100','img/Classic Pets dog can2/Classic Pets dog2 lamb.jpg',NULL,'羊肉口味 - 中大型成犬專用'),('33','狗','加好寶狗糧15kg','加好寶乾狗糧 - 雞肉口味 - 中大型成犬專用',570,'100','img/Classic Pets dog can2/Classic Pets dog2 chicken.jpg',NULL,'雞肉口味 - 中大型成犬專用'),('34','狗','加好寶狗糧15kg','加好寶乾狗糧 - 牛肉口味 - 中大型成犬專用',570,'100','img/Classic Pets dog can2/Classic Pets dog2 beef.jpg',NULL,'牛肉口味 - 中大型成犬專用'),('35','狗','Bravo自然禮讚','Bravo自然禮讚犬食_膠原蛋白配方 牛肉',1250,'100','img/Bravo dog/Bravo collagen dog beef.jpg',NULL,'膠原蛋白配方 牛肉'),('36','狗','Bravo自然禮讚','Bravo自然禮讚犬食_膠原蛋白配方 羊肉',1250,'100','img/Bravo dog/Bravo collagen dog lamb.jpg',NULL,'膠原蛋白配方 羊肉'),('37','狗','Bravo自然禮讚','Bravo自然禮讚無榖漢方犬食-羊肉配方',1250,'100','img/Bravo dog/Bravo dog lamb.jpg',NULL,'羊肉配方'),('38','狗','Bravo自然禮讚','Bravo自然禮讚無榖漢方犬食-鹿肉配方',1250,'100','img/Bravo dog/Bravo dog deer.jpg',NULL,'鹿肉配方'),('39','狗','自然物語罐頭','自然物語罐頭-牛肉與肉丁',780,'100','img/Careline/Careline beef.jpg',NULL,'牛肉與肉丁'),('40','狗','自然物語罐頭','自然物語罐頭-牛肉與鮪魚',780,'100','img/Careline/Careline beef tuna.jpg',NULL,'牛肉與鮪魚'),('41','狗','自然物語罐頭','自然物語罐頭-純雞肉',780,'100','img/Careline/Careline chicken.jpg',NULL,'純雞肉'),('42','狗','自然物語罐頭','自然物語罐頭-煙薰雞肉',780,'100','img/Careline/Careline lamb.jpg',NULL,'煙薰雞肉'),('43','狗','自然物語罐頭','自然物語罐頭-雞肉與鮪魚',780,'100','img/Careline/Careline chicken tuna.jpg',NULL,'雞肉與鮪魚'),('44','狗','加好寶犬罐400g','加好寶狗罐 - 雞肉蔬菜口味',850,'100','img/Classic Pets dog can/Classic Pets dog can chicken vegetable.jpg',NULL,'雞肉蔬菜口味'),('45','狗','加好寶犬罐400g','加好寶狗罐 - 牛肉蔬菜口味',850,'100','img/Classic Pets dog can/Classic Pets dog can beef vegetable.jpg',NULL,'牛肉蔬菜口味'),('46','狗','加好寶犬罐400g','加好寶狗罐 - 羊肉口味',850,'100','img/Classic Pets dog can/Classic Pets dog can lamb.jpg',NULL,'羊肉口味'),('47','狗','加好寶犬罐400g','加好寶狗罐 - 牛肉口味',850,'100','img/Classic Pets dog can/Classic Pets dog can beef.jpg',NULL,'牛肉口味'),('48','狗','加好寶犬罐400g','加好寶狗罐 - 雞肉總匯口味',850,'100','img/Classic Pets dog can/Classic Pets dog can chicken liver.jpg',NULL,'雞肉總匯口味'),('49','狗','加好寶犬罐400g','加好寶狗罐 - 牛肉總匯口味',850,'100','img/Classic Pets dog can/Classic Pets dog can beef liver.jpg',NULL,'牛肉總匯口味'),('50','狗','Soon吸 1.5kg加厚款寵物尿布墊','Soon吸 1.5kg加厚款寵物尿布墊-S號',999,'100','img/product/soon.JPG',NULL,'S號'),('51','狗','Soon吸 1.5kg加厚款寵物尿布墊','Soon吸 1.5kg加厚款寵物尿布墊-M號',999,'100','img/product/soon.JPG',NULL,'M號'),('52','狗','Soon吸 1.5kg加厚款寵物尿布墊','Soon吸 1.5kg加厚款寵物尿布墊-L號',999,'100','img/product/soon.JPG',NULL,'L號');
/*!40000 ALTER TABLE `product` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product2`
--

DROP TABLE IF EXISTS `product2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `product2` (
  `productName` varchar(45) NOT NULL,
  `productPrice` varchar(45) NOT NULL,
  `imgURL` varchar(100) DEFAULT NULL,
  `linksURL` varchar(100) DEFAULT NULL,
  `ID` varchar(45) NOT NULL,
  PRIMARY KEY (`productName`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product2`
--

LOCK TABLES `product2` WRITE;
/*!40000 ALTER TABLE `product2` DISABLE KEYS */;
INSERT INTO `product2` VALUES ('Bravo自然禮讚犬食','1250','img/product/bravo dog.JPG','Bravo dog.jsp','1'),('Bravo自然禮讚貓食_膠原蛋白配方 無穀漢方配方','1250','img/product/bravo cat.JPG','Bravo cat.jsp','2'),('FUSO Pets貓食 福壽貓FUSO Pets','699','img/product/FC.JPG','FUSO Pets.jsp','3'),('iq+ 貓咪樂泥棒 iq+肉泥','159','img/product/iq+ meat paste.jpg','iq meat.jsp','4'),('Soon吸 1.5kg加厚款寵物尿布墊','999','img/product/soon.JPG','soon.jsp','5'),('加好寶乾狗糧 加好寶狗糧15kg','570','img/product/Classic Pets dog can2.JPG','Classic Pets dog can2.jsp','6'),('加好寶乾貓糧 加好寶貓糧','530','img/product/Classic Pets cat.JPG','Classic Pets cat.jsp','7'),('加好寶無榖貓罐','590','img/product/Classic Pets cat can.JPG','Classic Pets cat can.jsp','8'),('加好寶狗罐 加好寶犬罐400g','850','img/product/Classic Pets dog can.JPG','Classic Pets dog can.jsp','9'),('咪歐啾咪棒 Me-O肉泥','1270','img/product/meo meat.JPG','Meo meat.jsp','10'),('咪歐貓罐 Me-O罐170g','950','img/product/meo cat can.JPG','meo cat can.jsp','11'),('自然物語罐頭 無榖漢方犬食 _膠原蛋白配方 ','780','img/product/Careline.jpg','Careline.jsp','12');
/*!40000 ALTER TABLE `product2` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-01-06 22:20:05
