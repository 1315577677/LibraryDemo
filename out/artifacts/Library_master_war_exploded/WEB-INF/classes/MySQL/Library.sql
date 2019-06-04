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
INSERT INTO `book` VALUES ('000001','Java核心技术','凯 S. 霍斯特曼','机械工业出版社',119,'编程类',200,'《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。','3'),('000002','C++PrimaerPlus','Stephen Prata','中国邮电出版社',99,'编程类',150,'《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。','3'),('000003','算法竞赛入门经典','刘汝佳','清华大学出版社',60,'编程类',15,'《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。','3'),('000004','概率论与数理统计','盛骤 谢式千 潘承毅','高等教育出版社',38,'数学类',15,'《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。','1'),('000005','数据结构(C语言版)','严蔚敏 吴伟民','清华大学出版社',290,'编程类',1,'《JAVA核心技术》（第8版）是2011年电子工业出版社出版的图书，作者是昊斯特曼、Gary Cornell。本书针对JavaSE6平台进行了全面更新，囊括了Java平台标准版(JavaSE/J2SE)的全部基础知识，提供了大量完整且具有实际意义的应用实例。','3'),('0021','JavaScript','js之父','华南出版社',33,'计算机类',54,'123','5'),('123456','c语言程序设计','唐恩','新华出版社',45,'计算机类',56,'没有相关资料','2');
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
INSERT INTO `iolog` VALUES ('000001','123456',-1,'2019年05月28日 18时10分55秒',30,1),('000001','123456',-1,'2019年05月28日 18时10分57秒',30,1),('000001','123456',-1,'2019年05月28日 18时10分59秒',30,1),('000001','123456',-1,'2019年05月28日 18时11分01秒',30,1),('000001','123456',-1,'2019年05月28日 18时11分03秒',30,1),('000001','123456',1,'2019年05月28日 18时11分14秒',NULL,1),('000001','123456',-1,'2019年05月28日 18时11分19秒',30,1),('000001','123456',-1,'2019年05月28日 18时11分27秒',30,1),('000001','123456',1,'2019年05月28日 18时12分47秒',NULL,1),('000001','123456',1,'2019年05月28日 19时03分58秒',NULL,1),('000001','123456',1,'2019年05月28日 19时03分59秒',NULL,1),('000002','123456',-1,'2019年05月29日 20时35分51秒',30,1),('000002','123456',1,'2019年05月29日 20时38分56秒',NULL,1),('000001','123456',-1,'2019年05月29日 20时39分52秒',30,1),('000001','123456',-1,'2019年05月29日 20时39分55秒',30,1),('000001','123456',1,'2019年05月29日 20时41分01秒',NULL,1),('000001','123456',1,'2019年05月29日 20时41分02秒',NULL,1),('000002','123456',-1,'2019年05月29日 20时41分11秒',30,1),('000004','123456',-1,'2019年05月29日 20时41分15秒',30,1),('000004','123456',1,'2019年05月29日 20时52分33秒',NULL,1),('000002','123456',1,'2019年05月29日 20时52分37秒',NULL,1),('000001','123456',-1,'2019年05月29日 20时53分00秒',30,1),('000004','123456',-1,'2019年05月29日 20时53分02秒',30,1),('000004','123456',1,'2019年05月29日 20时54分20秒',NULL,1),('000001','123456',1,'2019年05月29日 20时54分23秒',NULL,1),('123456','123456',-1,'2019年05月29日 20时54分32秒',30,0);
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
INSERT INTO `reader` VALUES ('123456','123456','这些','男',1,'1315577677@qq.com','18181997918','计算机','一',1,'L9vt7SGc');
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

-- Dump completed on 2019-05-29 21:09:39
