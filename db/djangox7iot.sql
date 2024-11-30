-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: djangox7iot
-- ------------------------------------------------------
-- Server version	5.7.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `config`
--

DROP TABLE IF EXISTS `config`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `config`
--

LOCK TABLES `config` WRITE;
/*!40000 ALTER TABLE `config` DISABLE KEYS */;
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/djangox7iot/upload/1618912883554.jpg'),(2,'picture2','http://localhost:8080/djangox7iot/upload/1618913539361.png'),(3,'picture3','http://localhost:8080/djangox7iot/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dengdaijiuzhen`
--

DROP TABLE IF EXISTS `dengdaijiuzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `dengdaijiuzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `keshijiuzhen` varchar(200) DEFAULT NULL COMMENT '科室就诊',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `paiduishijian` datetime DEFAULT NULL COMMENT '排队时间',
  `jiuzhenzhuangtai` varchar(200) DEFAULT NULL COMMENT '就诊状态',
  `huanzhetouxiang` varchar(200) DEFAULT NULL COMMENT '患者头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618914370356 DEFAULT CHARSET=utf8 COMMENT='等待就诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dengdaijiuzhen`
--

LOCK TABLES `dengdaijiuzhen` WRITE;
/*!40000 ALTER TABLE `dengdaijiuzhen` DISABLE KEYS */;
INSERT INTO `dengdaijiuzhen` VALUES (31,'2021-04-20 09:43:06','科室就诊1','患者姓名1','2021-04-20 17:43:06','普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang1.jpg'),(32,'2021-04-20 09:43:06','科室就诊2','患者姓名2','2021-04-20 17:43:06','普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang2.jpg'),(33,'2021-04-20 09:43:06','科室就诊3','患者姓名3','2021-04-20 17:43:06','普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang3.jpg'),(34,'2021-04-20 09:43:06','科室就诊4','患者姓名4','2021-04-20 17:43:06','普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang4.jpg'),(35,'2021-04-20 09:43:06','科室就诊5','患者姓名5','2021-04-20 17:43:06','普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang5.jpg'),(36,'2021-04-20 09:43:06','科室就诊6','患者姓名6','2021-04-20 17:43:06','普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang6.jpg'),(1618914040255,'2021-04-20 10:20:40','测试2','测试2','2021-04-29 00:02:00','普通','http://localhost:8080/djangox7iot/upload/1618914039165.jpg'),(1618914225260,'2021-04-20 10:23:45','测试2','测试2','2021-04-15 00:02:00','过号','http://localhost:8080/djangox7iot/upload/1618914039165.jpg'),(1618914370355,'2021-04-20 10:26:10','测试2','测试2','2021-04-15 00:02:00','优先插队','http://localhost:8080/djangox7iot/upload/1618914039165.jpg');
/*!40000 ALTER TABLE `dengdaijiuzhen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `guohaojiuzhen`
--

DROP TABLE IF EXISTS `guohaojiuzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `guohaojiuzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuzhenbianhao` varchar(200) DEFAULT NULL COMMENT '就诊编号',
  `keshijiuzhen` varchar(200) DEFAULT NULL COMMENT '科室就诊',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `paiduishijian` datetime DEFAULT NULL COMMENT '排队时间',
  `jiuzhenzhuangtai` varchar(200) DEFAULT NULL COMMENT '就诊状态',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `huanzhetouxiang` varchar(200) DEFAULT NULL COMMENT '患者头像',
  `guohaoshijian` date DEFAULT NULL COMMENT '过号时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618914186382 DEFAULT CHARSET=utf8 COMMENT='过号就诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `guohaojiuzhen`
--

LOCK TABLES `guohaojiuzhen` WRITE;
/*!40000 ALTER TABLE `guohaojiuzhen` DISABLE KEYS */;
INSERT INTO `guohaojiuzhen` VALUES (51,'2021-04-20 09:43:06','就诊编号1','科室就诊1','患者姓名1','2021-04-20 17:43:06','普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang1.jpg','2021-04-20'),(52,'2021-04-20 09:43:06','就诊编号2','科室就诊2','患者姓名2','2021-04-20 17:43:06','普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang2.jpg','2021-04-20'),(53,'2021-04-20 09:43:06','就诊编号3','科室就诊3','患者姓名3','2021-04-20 17:43:06','普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang3.jpg','2021-04-20'),(54,'2021-04-20 09:43:06','就诊编号4','科室就诊4','患者姓名4','2021-04-20 17:43:06','普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang4.jpg','2021-04-20'),(55,'2021-04-20 09:43:06','就诊编号5','科室就诊5','患者姓名5','2021-04-20 17:43:06','普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang5.jpg','2021-04-20'),(56,'2021-04-20 09:43:06','就诊编号6','科室就诊6','患者姓名6','2021-04-20 17:43:06','普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang6.jpg','2021-04-20'),(1618914186381,'2021-04-20 10:23:06','1618914169309','测试2','测试2','2021-04-29 00:02:00','普通','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg','2021-04-30');
/*!40000 ALTER TABLE `guohaojiuzhen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=87 DEFAULT CHARSET=utf8 COMMENT='医院新闻';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (81,'2021-04-20 09:43:06','标题1','简介1','http://localhost:8080/djangox7iot/upload/1618912855514.jpg','<p>内容  测试</p>'),(82,'2021-04-20 09:43:06','标题2','简介2','http://localhost:8080/djangox7iot/upload/1618913512603.jpg','<p>内容 侧四</p>'),(83,'2021-04-20 09:43:06','标题3','简介3','http://localhost:8080/djangox7iot/upload/news_picture3.jpg','内容3'),(84,'2021-04-20 09:43:06','标题4','简介4','http://localhost:8080/djangox7iot/upload/news_picture4.jpg','内容4'),(85,'2021-04-20 09:43:06','标题5','简介5','http://localhost:8080/djangox7iot/upload/news_picture5.jpg','内容5'),(86,'2021-04-20 09:43:06','标题6','简介6','http://localhost:8080/djangox7iot/upload/news_picture6.jpg','内容6');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-04-20 09:43:06');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `wanchengjiuzhen`
--

DROP TABLE IF EXISTS `wanchengjiuzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `wanchengjiuzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuzhenbianhao` varchar(200) DEFAULT NULL COMMENT '就诊编号',
  `keshijiuzhen` varchar(200) DEFAULT NULL COMMENT '科室就诊',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `paiduishijian` varchar(200) DEFAULT NULL COMMENT '排队时间',
  `jiuzhenzhuangtai` varchar(200) DEFAULT NULL COMMENT '就诊状态',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `huanzhetouxiang` varchar(200) DEFAULT NULL COMMENT '患者头像',
  `wanchengshijian` datetime DEFAULT NULL COMMENT '完成时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618914415731 DEFAULT CHARSET=utf8 COMMENT='完成就诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `wanchengjiuzhen`
--

LOCK TABLES `wanchengjiuzhen` WRITE;
/*!40000 ALTER TABLE `wanchengjiuzhen` DISABLE KEYS */;
INSERT INTO `wanchengjiuzhen` VALUES (61,'2021-04-20 09:43:06','就诊编号1','科室就诊1','患者姓名1','排队时间1','普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang1.jpg','2021-04-20 17:43:06'),(62,'2021-04-20 09:43:06','就诊编号2','科室就诊2','患者姓名2','排队时间2','普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang2.jpg','2021-04-20 17:43:06'),(63,'2021-04-20 09:43:06','就诊编号3','科室就诊3','患者姓名3','排队时间3','普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang3.jpg','2021-04-20 17:43:06'),(64,'2021-04-20 09:43:06','就诊编号4','科室就诊4','患者姓名4','排队时间4','普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang4.jpg','2021-04-20 17:43:06'),(65,'2021-04-20 09:43:06','就诊编号5','科室就诊5','患者姓名5','排队时间5','普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang5.jpg','2021-04-20 17:43:06'),(66,'2021-04-20 09:43:06','就诊编号6','科室就诊6','患者姓名6','排队时间6','普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang6.jpg','2021-04-20 17:43:06'),(1618913904097,'2021-04-20 10:18:24','1618913779055','测试','11','2021-04-29 01:00:00','普通','12','12','http://localhost:8080/djangox7iot/upload/1618913725040.jpg','2021-04-08 00:02:00'),(1618914283759,'2021-04-20 10:24:43','1618914262345','测试2','测试2','2021-04-15 00:02:00','过号','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg','2021-04-22 02:00:00'),(1618914415730,'2021-04-20 10:26:55','1618914401487','测试2','测试2','2021-04-15 00:02:00','优先插队','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg','2021-04-16 00:00:00');
/*!40000 ALTER TABLE `wanchengjiuzhen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yisheng`
--

DROP TABLE IF EXISTS `yisheng`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yisheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `yishengzhanghao` varchar(200) NOT NULL COMMENT '医生账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `yishengxingming` varchar(200) NOT NULL COMMENT '医生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `yishengtouxiang` varchar(200) DEFAULT NULL COMMENT '医生头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `yishengzhanghao` (`yishengzhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618913596673 DEFAULT CHARSET=utf8 COMMENT='医生';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yisheng`
--

LOCK TABLES `yisheng` WRITE;
/*!40000 ALTER TABLE `yisheng` DISABLE KEYS */;
INSERT INTO `yisheng` VALUES (21,'2021-04-20 09:43:06','医生1','123456','医生姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang1.jpg'),(22,'2021-04-20 09:43:06','医生2','123456','医生姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang2.jpg'),(23,'2021-04-20 09:43:06','医生3','123456','医生姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang3.jpg'),(24,'2021-04-20 09:43:06','医生4','123456','医生姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang4.jpg'),(25,'2021-04-20 09:43:06','医生5','123456','医生姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang5.jpg'),(26,'2021-04-20 09:43:06','医生6','123456','医生姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang6.jpg'),(1618913596672,'2021-04-20 10:13:16','12','12','12',NULL,'','',NULL);
/*!40000 ALTER TABLE `yisheng` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `yonghu`
--

DROP TABLE IF EXISTS `yonghu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `yonghu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) NOT NULL COMMENT '账号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xingming` varchar(200) NOT NULL COMMENT '姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618913553645 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-04-20 09:43:06','用户1','123456','姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian1.jpg'),(12,'2021-04-20 09:43:06','用户2','123456','姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian2.jpg'),(13,'2021-04-20 09:43:06','用户3','123456','姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian3.jpg'),(14,'2021-04-20 09:43:06','用户4','123456','姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian4.jpg'),(15,'2021-04-20 09:43:06','用户5','123456','姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian5.jpg'),(16,'2021-04-20 09:43:06','用户6','123456','姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian6.jpg'),(1618913553644,'2021-04-20 10:12:33','11','11','11',NULL,'','',NULL);
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhengzaijiuzhen`
--

DROP TABLE IF EXISTS `zhengzaijiuzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhengzaijiuzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuzhenbianhao` varchar(200) DEFAULT NULL COMMENT '就诊编号',
  `keshijiuzhen` varchar(200) DEFAULT NULL COMMENT '科室就诊',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `paiduishijian` varchar(200) DEFAULT NULL COMMENT '排队时间',
  `jiuzhenzhuangtai` varchar(200) DEFAULT NULL COMMENT '就诊状态',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `huanzhetouxiang` varchar(200) DEFAULT NULL COMMENT '患者头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `jiuzhenbianhao` (`jiuzhenbianhao`)
) ENGINE=InnoDB AUTO_INCREMENT=1618914404618 DEFAULT CHARSET=utf8 COMMENT='正在就诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhengzaijiuzhen`
--

LOCK TABLES `zhengzaijiuzhen` WRITE;
/*!40000 ALTER TABLE `zhengzaijiuzhen` DISABLE KEYS */;
INSERT INTO `zhengzaijiuzhen` VALUES (41,'2021-04-20 09:43:06','就诊编号1','科室就诊1','患者姓名1','排队时间1','普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang1.jpg'),(42,'2021-04-20 09:43:06','就诊编号2','科室就诊2','患者姓名2','排队时间2','普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang2.jpg'),(43,'2021-04-20 09:43:06','就诊编号3','科室就诊3','患者姓名3','排队时间3','普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang3.jpg'),(44,'2021-04-20 09:43:06','就诊编号4','科室就诊4','患者姓名4','排队时间4','普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang4.jpg'),(45,'2021-04-20 09:43:06','就诊编号5','科室就诊5','患者姓名5','排队时间5','普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang5.jpg'),(46,'2021-04-20 09:43:06','就诊编号6','科室就诊6','患者姓名6','排队时间6','普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang6.jpg'),(1618914172709,'2021-04-20 10:22:52','1618914169309','测试2','测试2','2021-04-29 00:02:00','普通','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg'),(1618914266078,'2021-04-20 10:24:26','1618914262345','测试2','测试2','2021-04-15 00:02:00','过号','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg'),(1618914404617,'2021-04-20 10:26:44','1618914401487','测试2','测试2','2021-04-15 00:02:00','优先插队','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg');
/*!40000 ALTER TABLE `zhengzaijiuzhen` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `zhonghujiuzhen`
--

DROP TABLE IF EXISTS `zhonghujiuzhen`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `zhonghujiuzhen` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `jiuzhenbianhao` varchar(200) DEFAULT NULL COMMENT '就诊编号',
  `keshijiuzhen` varchar(200) DEFAULT NULL COMMENT '科室就诊',
  `huanzhexingming` varchar(200) DEFAULT NULL COMMENT '患者姓名',
  `paiduishijian` datetime DEFAULT NULL COMMENT '排队时间',
  `jiuzhenzhuangtai` varchar(200) DEFAULT NULL COMMENT '就诊状态',
  `yishengzhanghao` varchar(200) DEFAULT NULL COMMENT '医生账号',
  `yishengxingming` varchar(200) DEFAULT NULL COMMENT '医生姓名',
  `huanzhetouxiang` varchar(200) DEFAULT NULL COMMENT '患者头像',
  `zhonghushijian` datetime DEFAULT NULL COMMENT '重呼时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1618914343466 DEFAULT CHARSET=utf8 COMMENT='重呼就诊';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `zhonghujiuzhen`
--

LOCK TABLES `zhonghujiuzhen` WRITE;
/*!40000 ALTER TABLE `zhonghujiuzhen` DISABLE KEYS */;
INSERT INTO `zhonghujiuzhen` VALUES (71,'2021-04-20 09:43:06','就诊编号1','科室就诊1','患者姓名1','2021-04-20 17:43:06','普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang1.jpg','2021-04-20 17:43:06'),(72,'2021-04-20 09:43:06','就诊编号2','科室就诊2','患者姓名2','2021-04-20 17:43:06','普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang2.jpg','2021-04-20 17:43:06'),(73,'2021-04-20 09:43:06','就诊编号3','科室就诊3','患者姓名3','2021-04-20 17:43:06','普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang3.jpg','2021-04-20 17:43:06'),(74,'2021-04-20 09:43:06','就诊编号4','科室就诊4','患者姓名4','2021-04-20 17:43:06','普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang4.jpg','2021-04-20 17:43:06'),(75,'2021-04-20 09:43:06','就诊编号5','科室就诊5','患者姓名5','2021-04-20 17:43:06','普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang5.jpg','2021-04-20 17:43:06'),(76,'2021-04-20 09:43:06','就诊编号6','科室就诊6','患者姓名6','2021-04-20 17:43:06','普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang6.jpg','2021-04-20 17:43:06'),(1618914343465,'2021-04-20 10:25:43','1618914262345','测试2','测试2','2021-04-15 00:02:00','过号','12','12','http://localhost:8080/djangox7iot/upload/1618914039165.jpg','2021-04-30 00:00:00');
/*!40000 ALTER TABLE `zhonghujiuzhen` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-04-21  9:51:26
