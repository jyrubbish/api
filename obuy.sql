-- MySQL dump 10.13  Distrib 5.7.13, for Linux (x86_64)
--
-- Host: 192.168.1.66    Database: obuy
-- ------------------------------------------------------
-- Server version	5.1.73

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
-- -- Table structure for table `award`
--

DROP TABLE IF EXISTS `award`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `award` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `o_id` bigint(20) NOT NULL COMMENT '订单号',
  `m_id` bigint(20) NOT NULL COMMENT '会员id',
  `sche_id` bigint(20) NOT NULL COMMENT '排期号',
  `pro_id` bigint(20) NOT NULL COMMENT '商品id',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `award`
--

LOCK TABLES `award` WRITE;
/*!40000 ALTER TABLE `award` DISABLE KEYS */;
/*!40000 ALTER TABLE `award` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `categray`
--

DROP TABLE IF EXISTS `categray`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `categray` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `cat_name` varchar(64) NOT NULL COMMENT '分类名称',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `categray`
--

LOCK TABLES `categray` WRITE;
/*!40000 ALTER TABLE `categray` DISABLE KEYS */;
/*!40000 ALTER TABLE `categray` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `member`
--

DROP TABLE IF EXISTS `member`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `member` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `open_id` varchar(128) NOT NULL COMMENT 'open_id',
  `m_name` varchar(64) NOT NULL COMMENT '会员名称',
  `nick_name` varchar(64) NOT NULL COMMENT '会员昵称',
  `m_age` int(11) NOT NULL COMMENT '年龄',
  `m_gender` int(11) NOT NULL COMMENT '性别',
  `m_addr` varchar(64) NOT NULL COMMENT '地址',
  `m_province` varchar(32) NOT NULL COMMENT '省份',
  `m_city` varchar(32) NOT NULL COMMENT '市',
  `m_area` varchar(32) NOT NULL COMMENT '区',
  `m_img` varchar(128) NOT NULL COMMENT '头像',
  `l_name` varchar(64) NOT NULL COMMENT '登录名',
  `l_pwd` varchar(64) NOT NULL COMMENT '密码',
  `m_phone` bigint(20) NOT NULL COMMENT '手机号码',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `member`
--

LOCK TABLES `member` WRITE;
/*!40000 ALTER TABLE `member` DISABLE KEYS */;
/*!40000 ALTER TABLE `member` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `from_msg` varchar(128) NOT NULL COMMENT '消息源',
  `to_msg` varchar(128) NOT NULL COMMENT '消息主',
  `msg_type` int(11) NOT NULL COMMENT '消息类型',
  `msg_content` varchar(128) NOT NULL COMMENT '消息内容',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `o_order`
--

DROP TABLE IF EXISTS `o_order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `o_order` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `o_no` bigint(20) NOT NULL COMMENT '订单号',
  `m_id` bigint(20) NOT NULL COMMENT '会员id',
  `sche_id` bigint(20) NOT NULL COMMENT '排期号',
  `o_cnt` int(11) NOT NULL COMMENT '购买份数',
  `o_amount` float NOT NULL COMMENT '购买金额',
  `pay_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '支付时间',
  `award_status` int(11) NOT NULL COMMENT '中奖状态',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000.000' COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `o_order`
--

LOCK TABLES `o_order` WRITE;
/*!40000 ALTER TABLE `o_order` DISABLE KEYS */;
/*!40000 ALTER TABLE `o_order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `payment` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `m_id` bigint(20) NOT NULL COMMENT '会员id',
  `o_id` bigint(20) NOT NULL COMMENT '订单号',
  `pay_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '支付时间',
  `p_type` int(11) NOT NULL COMMENT '支付方式',
  `p_stauts` int(11) NOT NULL COMMENT '支付状态',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_detail_img`
--

DROP TABLE IF EXISTS `pro_detail_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_detail_img` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `pro_id` bigint(20) NOT NULL COMMENT '商品名称',
  `img_url` varchar(128) NOT NULL COMMENT '图片地址',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_detail_img`
--

LOCK TABLES `pro_detail_img` WRITE;
/*!40000 ALTER TABLE `pro_detail_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_detail_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_schedule`
--

DROP TABLE IF EXISTS `pro_schedule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_schedule` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `sche_no` bigint(20) NOT NULL COMMENT '排期号',
  `pro_id` bigint(20) NOT NULL COMMENT '商品id',
  `buied_cnt` bigint(20) NOT NULL COMMENT '购买数量',
  `all_cnt` bigint(20) NOT NULL COMMENT '总数',
  `start_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '开始时间',
  `end_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '结束时间',
  `sche_stauts` int(11) NOT NULL COMMENT '排期状态',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_schedule`
--

LOCK TABLES `pro_schedule` WRITE;
/*!40000 ALTER TABLE `pro_schedule` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_schedule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `pro_show_img`
--

DROP TABLE IF EXISTS `pro_show_img`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `pro_show_img` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `pro_id` bigint(20) NOT NULL COMMENT '商品主键',
  `img_url` varchar(128) NOT NULL COMMENT '图片地址',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pro_show_img`
--

LOCK TABLES `pro_show_img` WRITE;
/*!40000 ALTER TABLE `pro_show_img` DISABLE KEYS */;
/*!40000 ALTER TABLE `pro_show_img` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `product`
--

DROP TABLE IF EXISTS `product`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `product` (
  `id` bigint(20) NOT NULL COMMENT '逻辑主键',
  `pro_name` varchar(64) NOT NULL COMMENT '商品名称',
  `pro_price` double NOT NULL COMMENT '商品价格',
  `pro_store` int(11) NOT NULL COMMENT '库存',
  `pro_rate` float NOT NULL COMMENT '利润比例',
  `pro_intro` varchar(128) NOT NULL COMMENT '简介',
  `pro_info` varchar(256) NOT NULL COMMENT '重要说明',
  `pro_status` int(11) NOT NULL COMMENT '状态',
  `online_time` timestamp(3) NOT NULL DEFAULT CURRENT_TIMESTAMP(3) ON UPDATE CURRENT_TIMESTAMP(3) COMMENT '上架时间',
  `offline_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '下架时间',
  `is_del` int(11) NOT NULL COMMENT '是否删除 1：删除 0：未删除',
  `create_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '创建时间',
  `create_name` varchar(64) NOT NULL COMMENT '创建人',
  `modify_name` varchar(64) NOT NULL COMMENT '操作人',
  `modify_time` timestamp(3) NOT NULL DEFAULT '0000-00-00 00:00:00.000' COMMENT '操作时间',
  `remark` varchar(64) NOT NULL COMMENT '备注',
  `other` varchar(64) NOT NULL COMMENT '冗余',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `product`
--

LOCK TABLES `product` WRITE;
/*!40000 ALTER TABLE `product` DISABLE KEYS */;
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

-- Dump completed on 2016-08-30 10:15:32
