-- MySQL dump 10.13  Distrib 8.0.15, for macos10.14 (x86_64)
--
-- Host: localhost    Database: library
-- ------------------------------------------------------
-- Server version	8.0.15

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `book`
--

DROP TABLE IF EXISTS `book`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `book` (
  `id` varchar(10) NOT NULL COMMENT '书本ID',
  `bookname` varchar(30) DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) DEFAULT NULL COMMENT '出版社',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) DEFAULT NULL COMMENT '书本类目',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(1000) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='书籍数据库';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `book`
--

LOCK TABLES `book` WRITE;
/*!40000 ALTER TABLE `book` DISABLE KEYS */;
INSERT INTO `book` VALUES ('10000','java','未知','未知',45,'编程语言',5,'测试','1'),('10001','c语言','未知','未知',55,'编程语言',15,'测试','3'),('10002','python','未知','未知',60,'编程语言',20,'测试','3'),('10004','c#','未知','未知',16,'编程语言',55,'测试','2'),('10005','HTML/CSS','未知','未知',55,'编程语言',15,'测试','4'),('10006','node.js','未知','未知',15,'编程语言',1,'测试','1'),('10007','Photoshop图像处理深度剖析','姜文涛','中国邮电出版社',99,'图像处理',6,'null','3'),('10008','UI图标设计','汪兰川','人民邮电出版社',79,'图像处理',2,'无','3');
/*!40000 ALTER TABLE `book` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `iolog`
--

DROP TABLE IF EXISTS `iolog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `iolog` (
  `bookid` varchar(10) DEFAULT NULL,
  `readerid` varchar(45) DEFAULT NULL,
  `service` int(11) DEFAULT NULL,
  `borrowtime` varchar(45) NOT NULL,
  `borrowday` int(11) DEFAULT NULL,
  `complete` int(11) DEFAULT NULL,
  PRIMARY KEY (`borrowtime`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `iolog`
--

LOCK TABLES `iolog` WRITE;
/*!40000 ALTER TABLE `iolog` DISABLE KEYS */;
INSERT INTO `iolog` VALUES ('000001','123456',-1,'2019年05月28日 18时10分55秒',30,1),('000001','123456',-1,'2019年05月28日 18时10分57秒',30,1),('000001','123456',-1,'2019年05月28日 18时10分59秒',30,1),('000001','123456',-1,'2019年05月28日 18时11分01秒',30,1),('000001','123456',-1,'2019年05月28日 18时11分03秒',30,1),('000001','123456',1,'2019年05月28日 18时11分14秒',NULL,1),('000001','123456',-1,'2019年05月28日 18时11分19秒',30,1),('000001','123456',-1,'2019年05月28日 18时11分27秒',30,1),('000001','123456',1,'2019年05月28日 18时12分47秒',NULL,1),('000001','123456',1,'2019年05月28日 19时03分58秒',NULL,1),('000001','123456',1,'2019年05月28日 19时03分59秒',NULL,1),('000002','123456',-1,'2019年05月29日 20时35分51秒',30,1),('000002','123456',1,'2019年05月29日 20时38分56秒',NULL,1),('000001','123456',-1,'2019年05月29日 20时39分52秒',30,1),('000001','123456',-1,'2019年05月29日 20时39分55秒',30,1),('000001','123456',1,'2019年05月29日 20时41分01秒',NULL,1),('000001','123456',1,'2019年05月29日 20时41分02秒',NULL,1),('000002','123456',-1,'2019年05月29日 20时41分11秒',30,1),('000004','123456',-1,'2019年05月29日 20时41分15秒',30,1),('000004','123456',1,'2019年05月29日 20时52分33秒',NULL,1),('000002','123456',1,'2019年05月29日 20时52分37秒',NULL,1),('000001','123456',-1,'2019年05月29日 20时53分00秒',30,1),('000004','123456',-1,'2019年05月29日 20时53分02秒',30,1),('000004','123456',1,'2019年05月29日 20时54分20秒',NULL,1),('000001','123456',1,'2019年05月29日 20时54分23秒',NULL,1),('123456','123456',-1,'2019年05月29日 20时54分32秒',30,1),('123456','123456',1,'2019年05月30日 16时33分30秒',NULL,1),('000005','Zhnagxiang',-1,'2019年06月04日 11时44分39秒',30,1),('000004','Zhnagxiang',-1,'2019年06月04日 15时46分00秒',30,1),('000003','Zhnagxiang',-1,'2019年06月04日 15时46分03秒',30,1),('000002','Zhnagxiang',-1,'2019年06月04日 15时46分06秒',30,1),('000002','Zhnagxiang',-1,'2019年06月04日 15时46分09秒',30,1),('000002','Zhnagxiang',1,'2019年06月04日 15时46分19秒',NULL,1),('000003','Zhnagxiang',1,'2019年06月04日 15时46分20秒',NULL,1),('000005','Zhnagxiang',1,'2019年06月04日 15时46分21秒',NULL,1),('000005','123456',-1,'2019年06月05日 00时37分12秒',30,1),('0021','123456',-1,'2019年06月05日 00时37分15秒',30,1),('000004','123456',-1,'2019年06月05日 00时37分30秒',30,1),('000004','123456',-1,'2019年06月05日 00时37分32秒',30,1),('000004','123456',-1,'2019年06月05日 00时37分34秒',30,1),('000004','123456',1,'2019年06月05日 00时37分46秒',NULL,1),('000004','123456',1,'2019年06月05日 00时37分47秒',NULL,1),('000001','123456',-1,'2019年06月05日 00时37分52秒',30,1),('000005','123456',-1,'2019年06月05日 10时23分45秒',30,1),('0021','123456',-1,'2019年06月05日 10时29分29秒',30,1),('0021','123456',-1,'2019年06月05日 10时29分33秒',30,1),('0021','123456',-1,'2019年06月05日 10时29分35秒',30,1),('0021','123456',1,'2019年06月05日 10时41分43秒',NULL,1),('0021','123456',1,'2019年06月05日 10时41分44秒',NULL,1),('000001','123456',1,'2019年06月05日 10时41分45秒',NULL,1),('000005','123456',-1,'2019年06月05日 11时08分34秒',30,1),('000005','123456',1,'2019年06月05日 11时08分43秒',NULL,1),('10000','123456',-1,'2019年06月05日 20时45分14秒',30,1),('10000','123456',1,'2019年06月05日 20时49分32秒',NULL,1),('10000','123xiaofan',-1,'2019年06月05日 21时27分01秒',30,1),('10002','123xiaofan',-1,'2019年06月05日 21时27分11秒',30,1),('10002','123xiaofan',1,'2019年06月05日 21时27分21秒',NULL,1),('10000','123xiaofan',1,'2019年06月05日 21时27分22秒',NULL,1),('10006','123xiaofan',-1,'2019年06月05日 21时27分33秒',30,1),('10006','123xiaofan',1,'2019年06月05日 21时29分01秒',NULL,1),('10000','123xiaofan',-1,'2019年06月05日 21时29分51秒',30,1),('10000','123xiaofan',1,'2019年06月05日 21时30分21秒',NULL,1),('10001','123xiaofan',-1,'2019年06月05日 21时30分39秒',30,1),('10001','123xiaofan',1,'2019年06月05日 21时32分04秒',NULL,1),('10000','123xiaofan',-1,'2019年06月05日 21时32分25秒',30,1),('10000','123xiaofan',1,'2019年06月05日 21时33分06秒',NULL,1),('10006','123xiaofan',-1,'2019年06月05日 21时33分50秒',30,1),('10006','123xiaofan',1,'2019年06月05日 21时34分13秒',NULL,1),('10000','123xiaofan',-1,'2019年06月05日 21时35分08秒',30,1),('10000','123xiaofan',-1,'2019年06月05日 21时35分15秒',30,1),('10000','123xiaofan',-1,'2019年06月05日 21时35分18秒',30,1),('10000','123xiaofan',-1,'2019年06月05日 21时35分20秒',30,1),('10002','123xiaofan',-1,'2019年06月05日 21时35分26秒',30,1),('10002','123xiaofan',-1,'2019年06月05日 21时35分29秒',30,1),('10002','123xiaofan',1,'2019年06月05日 21时36分19秒',NULL,1),('10002','123xiaofan',1,'2019年06月05日 21时36分20秒',NULL,1),('10000','123xiaofan',1,'2019年06月05日 21时36分21秒',NULL,1),('10000','123xiaofan',1,'2019年06月05日 21时36分22秒',NULL,1),('10000','123xiaofan',1,'2019年06月05日 21时36分23秒',NULL,1),('10000','123456',-1,'2019年06月05日 21时38分51秒',30,1),('10000','123456',-1,'2019年06月05日 21时38分53秒',30,1),('10000','123456',-1,'2019年06月05日 21时38分54秒',30,1),('10000','123456',-1,'2019年06月05日 21时38分56秒',30,1),('10000','123456',-1,'2019年06月05日 21时38分57秒',30,1),('10000','123456',1,'2019年06月05日 21时41分51秒',NULL,1),('10000','123456',1,'2019年06月05日 21时41分52秒',NULL,1),('10000','123456',1,'2019年06月05日 21时41分54秒',NULL,1),('10000','123456',1,'2019年06月05日 21时41分55秒',NULL,1),('10000','123456',1,'2019年06月05日 21时41分56秒',NULL,1),('10000','123456',-1,'2019年06月05日 21时42分13秒',30,1),('10000','123456',-1,'2019年06月05日 21时42分19秒',30,1),('10004','123456',-1,'2019年06月05日 21时42分27秒',30,1),('10004','123456',-1,'2019年06月05日 21时42分30秒',30,1),('10004','123456',-1,'2019年06月05日 21时42分33秒',30,1),('10004','123456',1,'2019年06月05日 21时44分21秒',NULL,1),('10004','123456',1,'2019年06月05日 21时44分22秒',NULL,1),('10004','123456',1,'2019年06月05日 21时44分23秒',NULL,1),('10000','123456',1,'2019年06月05日 21时44分24秒',NULL,1),('10000','123456',1,'2019年06月05日 21时44分25秒',NULL,1),('10000','123xiaofan',-1,'2019年06月05日 21时46分26秒',30,1),('10004','123xiaofan',-1,'2019年06月05日 21时49分53秒',30,1),('10004','123xiaofan',-1,'2019年06月05日 21时49分56秒',30,1),('10004','123xiaofan',-1,'2019年06月05日 21时49分58秒',30,1),('10004','123xiaofan',-1,'2019年06月05日 21时50分00秒',30,1),('10004','123xiaofan',-1,'2019年06月05日 21时50分02秒',30,1),('10004','123xiaofan',-1,'2019年06月05日 21时50分05秒',30,1),('10000','123xiaofan',-1,'2019年06月05日 22时11分35秒',30,1),('10000','ZXX123',-1,'2019年06月08日 20时40分45秒',30,1),('10000','ZXX123',-1,'2019年06月08日 20时40分48秒',30,1),('10000','ZXX123',-1,'2019年06月08日 20时41分01秒',30,1),('10002','ZXX123',-1,'2019年06月08日 20时41分16秒',30,1),('10002','ZXX123',-1,'2019年06月08日 20时41分19秒',30,1),('10002','ZXX123',-1,'2019年06月08日 20时41分22秒',30,1),('10002','ZXX123',-1,'2019年06月08日 20时41分24秒',30,1),('10006','ZXX123',-1,'2019年06月08日 20时41分32秒',30,1),('10000','ZXX123',1,'2019年06月08日 20时42分26秒',NULL,1),('10000','ZXX123',1,'2019年06月08日 20时42分27秒',NULL,1),('10000','ZXX123',1,'2019年06月08日 20时42分28秒',NULL,1),('10002','ZXX123',1,'2019年06月08日 20时42分29秒',NULL,1),('10002','ZXX123',1,'2019年06月08日 20时42分30秒',NULL,1),('10002','ZXX123',1,'2019年06月08日 20时42分31秒',NULL,1),('10000','ZXX123',-1,'2019年06月08日 21时02分25秒',30,1),('10000','ZXX123',-1,'2019年06月08日 21时02分40秒',30,1),('10000','ZXX123',-1,'2019年06月08日 21时02分42秒',30,1),('10001','ZXX123',-1,'2019年06月08日 21时02分45秒',30,1),('10001','ZXX123',-1,'2019年06月08日 21时02分47秒',30,1),('10001','ZXX123',-1,'2019年06月08日 21时02分48秒',30,1),('10001','ZXX123',1,'2019年06月08日 21时05分37秒',NULL,1),('10001','ZXX123',1,'2019年06月08日 21时05分40秒',NULL,1),('10001','ZXX123',1,'2019年06月08日 21时05分43秒',NULL,1),('10001','ZXX123',-1,'2019年06月08日 21时06分00秒',30,1),('10001','ZXX123',1,'2019年06月08日 21时06分07秒',NULL,1),('10001','ZXX123',1,'2019年06月08日 21时06分53秒',NULL,1),('10001','ZXX123',-1,'2019年06月08日 21时11分18秒',30,1),('10001','ZXX123',-1,'2019年06月08日 21时11分29秒',30,1),('10001','ZXX123',1,'2019年06月08日 21时12分30秒',NULL,1),('10001','ZXX123',1,'2019年06月08日 21时12分31秒',NULL,1),('10000','ZXX123',1,'2019年06月08日 21时12分32秒',NULL,1),('10001','sumisn',-1,'2019年06月10日 21时37分00秒',7,1),('10001','sumisn',1,'2019年06月10日 21时37分12秒',NULL,1),('10000','123xiaofan',1,'2019年06月10日 22时06分53秒',NULL,1),('10004','123xiaofan',1,'2019年06月10日 22时06分54秒',NULL,1),('10004','123xiaofan',1,'2019年06月10日 22时06分55秒',NULL,1),('10006','123456',-1,'2019年06月11日 12时22分11秒',30,1),('10006','123456',1,'2019年06月11日 12时22分21秒',NULL,1),('10000','1792501443Ly',-1,'2019年06月16日 11时35分56秒',30,0);
/*!40000 ALTER TABLE `iolog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `reader`
--

DROP TABLE IF EXISTS `reader`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `reader` (
  `username` varchar(50) NOT NULL COMMENT '读者用户名',
  `password` varchar(45) DEFAULT NULL COMMENT '读者密码',
  `name` varchar(45) DEFAULT NULL COMMENT '读者姓名',
  `sex` varchar(45) DEFAULT NULL COMMENT '读者性别',
  `status` int(11) DEFAULT NULL COMMENT '读者状态(1.正常 -1.黑名单)',
  `mail` varchar(45) DEFAULT NULL COMMENT '读者邮箱',
  `tel` varchar(45) DEFAULT NULL COMMENT '读者电话',
  `grade` varchar(10) DEFAULT NULL,
  `classnum` varchar(10) DEFAULT NULL,
  `server` int(2) NOT NULL,
  `UUID` varchar(10) NOT NULL,
  PRIMARY KEY (`username`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='读者表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `reader`
--

LOCK TABLES `reader` WRITE;
/*!40000 ALTER TABLE `reader` DISABLE KEYS */;
INSERT INTO `reader` VALUES ('123456','123456','张翔','男',1,'1315577677@qq.com','18181997918','计算机','一',1,'nBeF9Njk'),('1792501443Ly','Ly19980620','李月','女',1,'1792501443@qq.com','13281121650','计算机','一',1,'1QKfPhmq'),('sumisn','123456','苏弥生','女',1,'1149004272@qq.com','13208173767','计算机','一',1,'8md2iYAq');
/*!40000 ALTER TABLE `reader` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tempadd`
--

DROP TABLE IF EXISTS `tempadd`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `tempadd` (
  `id` varchar(10) NOT NULL,
  `bookname` varchar(30) DEFAULT NULL COMMENT '书本名称',
  `author` varchar(20) DEFAULT NULL COMMENT '书本作者',
  `publisher` varchar(30) DEFAULT NULL COMMENT '出版社',
  `price` int(11) DEFAULT NULL COMMENT '书本价格',
  `category` varchar(10) DEFAULT NULL COMMENT '书本类目',
  `store` int(11) DEFAULT NULL,
  `bookdesc` varchar(100) DEFAULT NULL,
  `location` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tempadd`
--

LOCK TABLES `tempadd` WRITE;
/*!40000 ALTER TABLE `tempadd` DISABLE KEYS */;
INSERT INTO `tempadd` VALUES ('10008','UI图标设计','汪兰川','人民邮电出版社',79,'图像处理',2,'无','3');
/*!40000 ALTER TABLE `tempadd` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `user`
--

DROP TABLE IF EXISTS `user`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `user` (
  `user` varchar(15) NOT NULL COMMENT '用户名',
  `password` varchar(25) DEFAULT NULL COMMENT '用户密码',
  `name` varchar(20) DEFAULT NULL COMMENT '用户真实姓名',
  `sex` varchar(5) DEFAULT NULL COMMENT '用户性别',
  `department` varchar(45) DEFAULT NULL COMMENT '用户部门',
  `tel` varchar(20) DEFAULT NULL COMMENT '用户电话',
  PRIMARY KEY (`user`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `user`
--

LOCK TABLES `user` WRITE;
/*!40000 ALTER TABLE `user` DISABLE KEYS */;
INSERT INTO `user` VALUES ('123456','123456','测试','男','图书馆','12345678901');
/*!40000 ALTER TABLE `user` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-06-16 14:06:18
