-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: localhost    Database: ssmd9xuq
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
-- Table structure for table `chat`
--

DROP TABLE IF EXISTS `chat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985234783 DEFAULT CHARSET=utf8 COMMENT='客服聊天表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `chat`
--

LOCK TABLES `chat` WRITE;
/*!40000 ALTER TABLE `chat` DISABLE KEYS */;
INSERT INTO `chat` VALUES (41,'2021-01-30 05:21:10',1,1,'提问1','回复1',1),(42,'2021-01-30 05:21:10',2,2,'提问2','回复2',2),(43,'2021-01-30 05:21:10',3,3,'提问3','回复3',3),(44,'2021-01-30 05:21:10',4,4,'提问4','回复4',4),(45,'2021-01-30 05:21:10',5,5,'提问5','回复5',5),(46,'2021-01-30 05:21:10',6,6,'提问6','回复6',6),(1611985234782,'2021-01-30 05:40:33',1611985041462,NULL,'你好 在吗',NULL,1);
/*!40000 ALTER TABLE `chat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cihuidanci`
--

DROP TABLE IF EXISTS `cihuidanci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cihuidanci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `danci` varchar(200) DEFAULT NULL COMMENT '单词',
  `shiyi` varchar(200) DEFAULT NULL COMMENT '释义',
  `fengmian` varchar(200) DEFAULT NULL COMMENT '封面',
  `liju` longtext COMMENT '例句',
  `thumbsupnum` int(11) DEFAULT '0' COMMENT '赞',
  `crazilynum` int(11) DEFAULT '0' COMMENT '踩',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611984776913 DEFAULT CHARSET=utf8 COMMENT='词汇单词';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cihuidanci`
--

LOCK TABLES `cihuidanci` WRITE;
/*!40000 ALTER TABLE `cihuidanci` DISABLE KEYS */;
INSERT INTO `cihuidanci` VALUES (31,'2021-01-30 05:21:10','单词1','释义1','http://localhost:8080/ssmd9xuq/upload/cihuidanci_fengmian1.jpg','例句1',1,1),(32,'2021-01-30 05:21:10','单词2','释义2','http://localhost:8080/ssmd9xuq/upload/cihuidanci_fengmian2.jpg','例句2',2,2),(33,'2021-01-30 05:21:10','单词3','释义3','http://localhost:8080/ssmd9xuq/upload/cihuidanci_fengmian3.jpg','例句3',3,3),(34,'2021-01-30 05:21:10','单词4','释义4','http://localhost:8080/ssmd9xuq/upload/cihuidanci_fengmian4.jpg','例句4',4,4),(35,'2021-01-30 05:21:10','单词5','释义5','http://localhost:8080/ssmd9xuq/upload/cihuidanci_fengmian5.jpg','例句5',5,5),(36,'2021-01-30 05:21:10','单词6','释义6','http://localhost:8080/ssmd9xuq/upload/cihuidanci_fengmian6.jpg','例句6',6,6),(1611984462989,'2021-01-30 05:27:42','Hello','你好','http://localhost:8080/ssmd9xuq/upload/1611984457711.png','测试测试测试测试',2,0),(1611984776912,'2021-01-30 05:32:56','i love you','我爱你','http://localhost:8080/ssmd9xuq/upload/1611984765825.png','i love you',1,0);
/*!40000 ALTER TABLE `cihuidanci` ENABLE KEYS */;
UNLOCK TABLES;

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
INSERT INTO `config` VALUES (1,'picture1','http://localhost:8080/ssmd9xuq/upload/1611984590396.jpg'),(2,'picture2','http://localhost:8080/ssmd9xuq/upload/1611984933458.jpg'),(3,'picture3','http://localhost:8080/ssmd9xuq/upload/picture3.jpg'),(6,'homepage',NULL);
/*!40000 ALTER TABLE `config` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `discusscihuidanci`
--

DROP TABLE IF EXISTS `discusscihuidanci`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `discusscihuidanci` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `refid` bigint(20) NOT NULL COMMENT '关联表id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `content` longtext NOT NULL COMMENT '评论内容',
  `reply` longtext COMMENT '回复内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985120096 DEFAULT CHARSET=utf8 COMMENT='词汇单词评论表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `discusscihuidanci`
--

LOCK TABLES `discusscihuidanci` WRITE;
/*!40000 ALTER TABLE `discusscihuidanci` DISABLE KEYS */;
INSERT INTO `discusscihuidanci` VALUES (111,'2021-01-30 05:21:10',1,1,'评论内容1','回复内容1'),(112,'2021-01-30 05:21:10',2,2,'评论内容2','回复内容2'),(113,'2021-01-30 05:21:10',3,3,'评论内容3','回复内容3'),(114,'2021-01-30 05:21:10',4,4,'评论内容4','回复内容4'),(115,'2021-01-30 05:21:10',5,5,'评论内容5','回复内容5'),(116,'2021-01-30 05:21:10',6,6,'评论内容6','回复内容6'),(1611985095542,'2021-01-30 05:38:14',1611984776912,1611985041462,'测试',NULL),(1611985120095,'2021-01-30 05:38:39',1611984462989,1611985041462,'测试',NULL);
/*!40000 ALTER TABLE `discusscihuidanci` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `exampaper`
--

DROP TABLE IF EXISTS `exampaper`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611984797288 DEFAULT CHARSET=utf8 COMMENT='试卷表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `exampaper`
--

LOCK TABLES `exampaper` WRITE;
/*!40000 ALTER TABLE `exampaper` DISABLE KEYS */;
INSERT INTO `exampaper` VALUES (1611984530007,'2021-01-30 05:28:49','单词测试1',60,1),(1611984797287,'2021-01-30 05:33:16','单词测试2',60,1);
/*!40000 ALTER TABLE `exampaper` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examquestion`
--

DROP TABLE IF EXISTS `examquestion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examquestion` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `paperid` bigint(20) NOT NULL COMMENT '所属试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `type` bigint(20) DEFAULT '0' COMMENT '试题类型，0：单选题 1：多选题 2：判断题 3：填空题（暂不考虑多项填空）',
  `sequence` bigint(20) DEFAULT '100' COMMENT '试题排序，值越大排越前面',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611984902709 DEFAULT CHARSET=utf8 COMMENT='试题表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examquestion`
--

LOCK TABLES `examquestion` WRITE;
/*!40000 ALTER TABLE `examquestion` DISABLE KEYS */;
INSERT INTO `examquestion` VALUES (1611984570058,'2021-01-30 05:29:29',1611984530007,'单词测试1','A+B=?','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A','测试',0,1),(1611984836131,'2021-01-30 05:33:56',1611984530007,'单词测试1','1+1+2=4','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'B','测试',0,2),(1611984868278,'2021-01-30 05:34:27',1611984530007,'单词测试1','1+2=3','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A,B','测试',1,3),(1611984885828,'2021-01-30 05:34:45',1611984530007,'单词测试1','1+1=3','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'B','测试',2,4),(1611984902708,'2021-01-30 05:35:02',1611984530007,'单词测试1','1+1=？','[]',10,'2','测试 ',3,5);
/*!40000 ALTER TABLE `examquestion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `examrecord`
--

DROP TABLE IF EXISTS `examrecord`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `examrecord` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `paperid` bigint(20) NOT NULL COMMENT '试卷id（外键）',
  `papername` varchar(200) NOT NULL COMMENT '试卷名称',
  `questionid` bigint(20) NOT NULL COMMENT '试题id（外键）',
  `questionname` varchar(200) NOT NULL COMMENT '试题名称',
  `options` longtext COMMENT '选项，json字符串',
  `score` bigint(20) DEFAULT '0' COMMENT '分值',
  `answer` varchar(200) DEFAULT NULL COMMENT '正确答案',
  `analysis` longtext COMMENT '答案解析',
  `myscore` bigint(20) NOT NULL DEFAULT '0' COMMENT '试题得分',
  `myanswer` varchar(200) DEFAULT NULL COMMENT '考生答案',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985200218 DEFAULT CHARSET=utf8 COMMENT='考试记录表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `examrecord`
--

LOCK TABLES `examrecord` WRITE;
/*!40000 ALTER TABLE `examrecord` DISABLE KEYS */;
INSERT INTO `examrecord` VALUES (1611984634325,'2021-01-30 05:30:33',1611984174911,NULL,1611984530007,'单词测试1',1611984570058,'A+B=?','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A','测试',0,'B'),(1611985184421,'2021-01-30 05:39:44',1611985041462,NULL,1611984530007,'单词测试1',1611984570058,'A+B=?','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A','测试',10,'A'),(1611985188364,'2021-01-30 05:39:47',1611985041462,NULL,1611984530007,'单词测试1',1611984836131,'1+1+2=4','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'B','测试',10,'B'),(1611985191747,'2021-01-30 05:39:51',1611985041462,NULL,1611984530007,'单词测试1',1611984868278,'1+2=3','[{\"text\":\"A.1\",\"code\":\"A\"},{\"text\":\"B.2\",\"code\":\"B\"},{\"text\":\"C.3\",\"code\":\"C\"},{\"text\":\"D.4\",\"code\":\"D\"}]',10,'A,B','测试',0,'C,D'),(1611985196862,'2021-01-30 05:39:56',1611985041462,NULL,1611984530007,'单词测试1',1611984885828,'1+1=3','[{\"text\":\"A.对\",\"code\":\"A\"},{\"text\":\"B.错\",\"code\":\"B\"}]',10,'B','测试',10,'B'),(1611985200217,'2021-01-30 05:39:59',1611985041462,NULL,1611984530007,'单词测试1',1611984902708,'1+1=？','[]',10,'2','测试 ',0,'5');
/*!40000 ALTER TABLE `examrecord` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `forum`
--

DROP TABLE IF EXISTS `forum`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `forum` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) DEFAULT NULL COMMENT '帖子标题',
  `content` longtext NOT NULL COMMENT '帖子内容',
  `parentid` bigint(20) DEFAULT NULL COMMENT '父节点id',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(200) DEFAULT NULL COMMENT '用户名',
  `isdone` varchar(200) DEFAULT NULL COMMENT '状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985166106 DEFAULT CHARSET=utf8 COMMENT='交流论坛';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `forum`
--

LOCK TABLES `forum` WRITE;
/*!40000 ALTER TABLE `forum` DISABLE KEYS */;
INSERT INTO `forum` VALUES (52,'2021-01-30 05:21:10','帖子标题2','帖子内容2',2,2,'用户名2','开放'),(53,'2021-01-30 05:21:10','帖子标题3','帖子内容3',3,3,'用户名3','开放'),(54,'2021-01-30 05:21:10','帖子标题4','帖子内容4',4,4,'用户名4','开放'),(55,'2021-01-30 05:21:10','帖子标题5','帖子内容5',5,5,'用户名5','开放'),(56,'2021-01-30 05:21:10','帖子标题6','帖子内容6',6,6,'用户名6','开放'),(1611985151839,'2021-01-30 05:39:11','心得交流','<p>心得交流心得交流心得交流心得交流心得交流心得交流</p>',0,1611985041462,'13800000001','开放'),(1611985166105,'2021-01-30 05:39:25',NULL,'跟帖/回帖',1611985151839,1611985041462,'13800000001',NULL);
/*!40000 ALTER TABLE `forum` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `meirirenwu`
--

DROP TABLE IF EXISTS `meirirenwu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `meirirenwu` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `zhanghao` varchar(200) DEFAULT NULL COMMENT '账号',
  `xingming` varchar(200) DEFAULT NULL COMMENT '姓名',
  `danci` int(11) DEFAULT NULL COMMENT '单词',
  `riqi` date DEFAULT NULL COMMENT '日期',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985246444 DEFAULT CHARSET=utf8 COMMENT='每日任务';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `meirirenwu`
--

LOCK TABLES `meirirenwu` WRITE;
/*!40000 ALTER TABLE `meirirenwu` DISABLE KEYS */;
INSERT INTO `meirirenwu` VALUES (21,'2021-01-30 05:21:10','账号1','姓名1',1,'2021-01-30'),(22,'2021-01-30 05:21:10','账号2','姓名2',2,'2021-01-30'),(23,'2021-01-30 05:21:10','账号3','姓名3',3,'2021-01-30'),(24,'2021-01-30 05:21:10','账号4','姓名4',4,'2021-01-30'),(25,'2021-01-30 05:21:10','账号5','姓名5',5,'2021-01-30'),(26,'2021-01-30 05:21:10','账号6','姓名6',6,'2021-01-30'),(1611984264314,'2021-01-30 05:24:23','13800000000','1',10,'2021-01-30'),(1611985246443,'2021-01-30 05:40:46','13800000001','张三',20,'2021-01-30');
/*!40000 ALTER TABLE `meirirenwu` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=1611984984137 DEFAULT CHARSET=utf8 COMMENT='系统公告';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (101,'2021-01-30 05:21:10','标题1','简介1','http://localhost:8080/ssmd9xuq/upload/news_picture1.jpg','内容1'),(102,'2021-01-30 05:21:10','标题2','简介2','http://localhost:8080/ssmd9xuq/upload/news_picture2.jpg','内容2'),(103,'2021-01-30 05:21:10','标题3','简介3','http://localhost:8080/ssmd9xuq/upload/news_picture3.jpg','内容3'),(104,'2021-01-30 05:21:10','标题4','简介4','http://localhost:8080/ssmd9xuq/upload/news_picture4.jpg','内容4'),(105,'2021-01-30 05:21:10','标题5','简介5','http://localhost:8080/ssmd9xuq/upload/news_picture5.jpg','内容5'),(106,'2021-01-30 05:21:10','标题6','简介6','http://localhost:8080/ssmd9xuq/upload/news_picture6.jpg','内容6'),(1611984984136,'2021-01-30 05:36:23','公告测试','测试测试测试','http://localhost:8080/ssmd9xuq/upload/1611984946960.jpg','<p>编辑器可传图片/文字</p>');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `storeup`
--

DROP TABLE IF EXISTS `storeup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `storeup` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `refid` bigint(20) DEFAULT NULL COMMENT '收藏id',
  `tablename` varchar(200) DEFAULT NULL COMMENT '表名',
  `name` varchar(200) NOT NULL COMMENT '收藏名称',
  `picture` varchar(200) NOT NULL COMMENT '收藏图片',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985121640 DEFAULT CHARSET=utf8 COMMENT='收藏表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `storeup`
--

LOCK TABLES `storeup` WRITE;
/*!40000 ALTER TABLE `storeup` DISABLE KEYS */;
INSERT INTO `storeup` VALUES (1611985099424,'2021-01-30 05:38:19',1611985041462,1611984776912,'cihuidanci','i love you','http://localhost:8080/ssmd9xuq/upload/1611984765825.png'),(1611985121639,'2021-01-30 05:38:40',1611985041462,1611984462989,'cihuidanci','Hello','http://localhost:8080/ssmd9xuq/upload/1611984457711.png');
/*!40000 ALTER TABLE `storeup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `token`
--

DROP TABLE IF EXISTS `token`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `token` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `tablename` varchar(100) DEFAULT NULL COMMENT '表名',
  `role` varchar(100) DEFAULT NULL COMMENT '角色',
  `token` varchar(200) NOT NULL COMMENT '密码',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  `expiratedtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '过期时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='token表';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `token`
--

LOCK TABLES `token` WRITE;
/*!40000 ALTER TABLE `token` DISABLE KEYS */;
INSERT INTO `token` VALUES (1,1611984174911,'13800000000','yonghu','用户','k6e14macm2km660ychxwsnvesws4h35n','2021-01-30 05:23:02','2021-01-30 06:30:12'),(2,1,'abo','users','管理员','nzxm37qa5zzxvmcrgxiepjxffby3sm4v','2021-01-30 05:24:35','2021-01-30 06:31:57'),(3,1611985041462,'13800000001','yonghu','用户','6903mh8ezs0dmc04hy21a7aiteqfnnli','2021-01-30 05:37:32','2021-01-30 06:37:32');
/*!40000 ALTER TABLE `token` ENABLE KEYS */;
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
INSERT INTO `users` VALUES (1,'abo','abo','管理员','2021-01-30 05:21:11');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
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
  `nianling` int(11) DEFAULT NULL COMMENT '年龄',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `zhanghao` (`zhanghao`)
) ENGINE=InnoDB AUTO_INCREMENT=1611985041463 DEFAULT CHARSET=utf8 COMMENT='用户';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `yonghu`
--

LOCK TABLES `yonghu` WRITE;
/*!40000 ALTER TABLE `yonghu` DISABLE KEYS */;
INSERT INTO `yonghu` VALUES (11,'2021-01-30 05:21:10','用户1','123456','姓名1','男',1,'773890001@qq.com','http://localhost:8080/ssmd9xuq/upload/yonghu_zhaopian1.jpg'),(12,'2021-01-30 05:21:10','用户2','123456','姓名2','男',2,'773890002@qq.com','http://localhost:8080/ssmd9xuq/upload/yonghu_zhaopian2.jpg'),(13,'2021-01-30 05:21:10','用户3','123456','姓名3','男',3,'773890003@qq.com','http://localhost:8080/ssmd9xuq/upload/yonghu_zhaopian3.jpg'),(14,'2021-01-30 05:21:10','用户4','123456','姓名4','男',4,'773890004@qq.com','http://localhost:8080/ssmd9xuq/upload/yonghu_zhaopian4.jpg'),(15,'2021-01-30 05:21:10','用户5','123456','姓名5','男',5,'773890005@qq.com','http://localhost:8080/ssmd9xuq/upload/yonghu_zhaopian5.jpg'),(16,'2021-01-30 05:21:10','用户6','123456','姓名6','男',6,'773890006@qq.com','http://localhost:8080/ssmd9xuq/upload/yonghu_zhaopian6.jpg'),(1611985041462,'2021-01-30 05:37:21','13800000001','001','张三','男',23,'123@qq.com','http://localhost:8080/ssmd9xuq/upload/1611985064720.jpg');
/*!40000 ALTER TABLE `yonghu` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2021-01-30 16:45:18
