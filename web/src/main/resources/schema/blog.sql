/*
SQLyog v10.2 
MySQL - 5.6.20 : Database - blog
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`blog` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `blog`;

/*Table structure for table `t_attachment` */

DROP TABLE IF EXISTS `t_attachment`;

CREATE TABLE `t_attachment` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) DEFAULT NULL COMMENT '附件名',
  `uid` varchar(60) DEFAULT NULL COMMENT '附件唯一标识',
  `uri` varchar(120) DEFAULT NULL COMMENT '附件相对路径',
  `suffix` varchar(20) DEFAULT NULL COMMENT '后缀名',
  `source_id` int(11) DEFAULT NULL COMMENT '附件关联对象id',
  `source_entity` varchar(60) DEFAULT NULL COMMENT '关联对象类名',
  `source_type` varchar(30) DEFAULT NULL COMMENT '关联对象属性分类',
  `size` bigint(60) DEFAULT NULL COMMENT '附件大小',
  `down_count` int(22) DEFAULT NULL COMMENT '下载次数',
  `descr` varchar(60) DEFAULT NULL COMMENT '附件备注',
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL COMMENT '删除标记 0删除',
  `private_attr` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=1479 DEFAULT CHARSET=utf8;

/*Data for the table `t_attachment` */

insert  into `t_attachment`(`id`,`name`,`uid`,`uri`,`suffix`,`source_id`,`source_entity`,`source_type`,`size`,`down_count`,`descr`,`create_time`,`create_id`,`update_id`,`update_time`,`del_flag`,`private_attr`) values (1464,'liutao.jpg','b3c63ea6-e903-43bb-ab71-050912292546.jpg','/photoes/pictures/b3c63ea6-e903-43bb-ab71-050912292546.jpg','.jpg',NULL,NULL,'icon',10559,NULL,NULL,'2016-02-24 17:37:39',38,NULL,NULL,1,'{\"height\":300,\"width\":227}'),(1465,'cloud.jpg','2ec1bb55-0ae0-456e-9444-6bda12d797ca.jpg','/photoes/pictures/2ec1bb55-0ae0-456e-9444-6bda12d797ca.jpg','.jpg',NULL,NULL,'icon',8962,NULL,NULL,'2016-02-24 17:54:27',38,NULL,NULL,1,'{\"height\":220,\"width\":352}'),(1466,'liutao.jpg','21afcabc-7c16-4b82-b4ca-29d9d294b96c.jpg','/photoes/pictures/21afcabc-7c16-4b82-b4ca-29d9d294b96c.jpg','.jpg',NULL,NULL,'pic',10559,NULL,NULL,'2016-02-24 17:54:45',38,NULL,NULL,1,'{\"height\":300,\"width\":227}'),(1467,'upload.png','a3d47235-38ba-4085-8223-a7a6ba72a244.png','/photoes/pictures/a3d47235-38ba-4085-8223-a7a6ba72a244.png','.png',NULL,NULL,'icon',4095,NULL,NULL,'2016-02-24 17:57:15',38,NULL,NULL,1,'{\"height\":80,\"width\":80}'),(1468,'upload.png','c7c9bba6-beec-48c8-955e-e6573a1f72c4.png','/photoes/pictures/c7c9bba6-beec-48c8-955e-e6573a1f72c4.png','.png',NULL,NULL,'icon',4095,NULL,NULL,'2016-02-24 17:58:58',38,NULL,NULL,1,'{\"height\":80,\"width\":80}'),(1469,'upload.png','833e593d-b1e1-4bd0-afaa-4982f51f4213.png','/photoes/pictures/833e593d-b1e1-4bd0-afaa-4982f51f4213.png','.png',NULL,NULL,'icon',4095,NULL,NULL,'2016-02-24 18:00:13',38,NULL,NULL,1,'{\"height\":80,\"width\":80}'),(1470,'upload.png','013cf118-fea3-4cf4-9e58-30d35d0f1f5b.png','/photoes/pictures/013cf118-fea3-4cf4-9e58-30d35d0f1f5b.png','.png',NULL,NULL,'icon',4095,NULL,NULL,'2016-02-24 18:51:51',38,NULL,NULL,1,'{\"height\":80,\"width\":80}'),(1471,'upload.png','67a54f5e-3126-4cab-a96a-49a0d806dafb.png','/photoes/pictures/67a54f5e-3126-4cab-a96a-49a0d806dafb.png','.png',NULL,NULL,'icon',4095,NULL,NULL,'2016-02-24 18:53:33',38,NULL,NULL,1,'{\"height\":80,\"width\":80}'),(1472,'upload.png','f6aa0ee8-5cb3-42ff-83da-933551d50d0f.png','/photoes/pictures/f6aa0ee8-5cb3-42ff-83da-933551d50d0f.png','.png',NULL,NULL,'icon',4095,NULL,NULL,'2016-02-24 18:56:37',38,NULL,NULL,1,'{\"height\":80,\"width\":80}'),(1473,'liutao.jpg','a0717209-6e3b-4abb-97a0-6b609acc04bc.jpg','/photoes/pictures/a0717209-6e3b-4abb-97a0-6b609acc04bc.jpg','.jpg',NULL,NULL,'icon',10559,NULL,NULL,'2016-02-24 19:01:56',38,NULL,NULL,1,'{\"height\":300,\"width\":227}'),(1474,'cloud.jpg','59faaeca-7471-4a6c-a023-72ae3ecdad6d.jpg','/photoes/pictures/59faaeca-7471-4a6c-a023-72ae3ecdad6d.jpg','.jpg',NULL,NULL,'pic',8962,NULL,NULL,'2016-02-24 19:02:35',38,NULL,NULL,1,'{\"height\":220,\"width\":352}'),(1475,'upload.png','8601b845-4917-4dd3-8f73-df0d153365af.png','/photoes/pictures/8601b845-4917-4dd3-8f73-df0d153365af.png','.png',3,'com.hlib.entity.Photo','icon',4095,NULL,NULL,'2016-02-25 09:41:05',38,38,'2016-02-25 09:42:16',1,'{\"height\":80,\"width\":80}'),(1476,'liutao.jpg','73f0ea24-410e-4f4a-95e7-41349e1badb5.jpg','/photoes/pictures/73f0ea24-410e-4f4a-95e7-41349e1badb5.jpg','.jpg',3,'com.hlib.entity.Photo','pic',10559,NULL,NULL,'2016-02-25 09:41:31',38,38,'2016-02-25 09:42:16',1,'{\"height\":300,\"width\":227}'),(1477,'head_portrait.jpg','88925339-5c55-4b3a-ab80-0d941b754650.jpg','/photoes/pictures/88925339-5c55-4b3a-ab80-0d941b754650.jpg','.jpg',4,'com.hlib.entity.Photo','icon',2012,NULL,NULL,'2016-02-25 10:06:19',38,38,'2016-02-25 10:06:26',1,'{\"height\":200,\"width\":200}'),(1478,'cloud.jpg','b4a48cbe-2d1c-458d-b3a9-9d1e37ca10f8.jpg','/photoes/pictures/b4a48cbe-2d1c-458d-b3a9-9d1e37ca10f8.jpg','.jpg',4,'com.hlib.entity.Photo','pic',8962,NULL,NULL,'2016-02-25 10:06:24',38,38,'2016-02-25 10:06:26',1,'{\"height\":220,\"width\":352}');

/*Table structure for table `t_photo` */

DROP TABLE IF EXISTS `t_photo`;

CREATE TABLE `t_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pic_name` varchar(60) DEFAULT NULL,
  `title` varchar(120) DEFAULT NULL,
  `icon` varchar(100) DEFAULT NULL,
  `pic` varchar(100) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  `descr` varchar(120) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8;

/*Data for the table `t_photo` */

insert  into `t_photo`(`id`,`pic_name`,`title`,`icon`,`pic`,`create_time`,`create_id`,`update_time`,`update_id`,`del_flag`,`descr`) values (3,'娟儿','欢乐','/photoes/pictures/8601b845-4917-4dd3-8f73-df0d153365af.png','/photoes/pictures/73f0ea24-410e-4f4a-95e7-41349e1badb5.jpg','2016-02-25 09:41:33',38,NULL,NULL,1,'测试'),(4,'刘涛','写真秀','/photoes/pictures/88925339-5c55-4b3a-ab80-0d941b754650.jpg','/photoes/pictures/b4a48cbe-2d1c-458d-b3a9-9d1e37ca10f8.jpg','2016-02-25 10:06:26',38,'2016-02-25 11:19:14',38,1,'投入和同行业'),(5,'头像',NULL,'/attaches/icon/01',NULL,'2016-03-14 11:50:45',NULL,NULL,NULL,1,NULL),(6,'头像',NULL,'/attaches/icon/01',NULL,'2016-03-14 11:51:11',NULL,NULL,NULL,1,NULL),(7,'头像02',NULL,'/attaches/icon/01',NULL,'2016-03-14 14:11:43',NULL,NULL,NULL,1,NULL),(8,'头像03',NULL,'/attaches/icon/01',NULL,'2016-03-14 14:18:22',NULL,NULL,NULL,1,NULL),(9,'头像04',NULL,'/attaches/icon/01',NULL,'2016-03-14 14:24:51',NULL,NULL,NULL,1,NULL),(10,'头像05',NULL,'/attaches/icon/01',NULL,'2016-03-14 14:33:23',NULL,NULL,NULL,1,NULL),(11,'头像06',NULL,'/attaches/icon/01',NULL,'2016-03-14 14:35:14',NULL,NULL,NULL,1,NULL),(12,'头像07',NULL,'/attaches/icon/01',NULL,'2016-03-14 14:43:09',NULL,NULL,NULL,1,NULL),(13,'头像08',NULL,'/attaches/icon/01',NULL,'2016-03-15 10:39:48',NULL,NULL,NULL,1,NULL),(14,'头像08',NULL,'/attaches/icon/01',NULL,'2016-03-15 10:40:49',NULL,NULL,NULL,1,NULL),(15,'头像10',NULL,'/attaches/icon/01',NULL,'2016-03-15 11:08:45',NULL,NULL,NULL,1,NULL),(16,'头像10',NULL,'/attaches/icon/01',NULL,'2016-03-15 11:18:14',NULL,NULL,NULL,1,NULL),(17,'头像11',NULL,'/attaches/icon/01',NULL,'2016-03-15 17:02:36',NULL,NULL,NULL,1,NULL),(18,'头像12',NULL,'/attaches/icon/01',NULL,'2016-03-15 17:03:43',NULL,NULL,NULL,1,NULL),(19,'头像13',NULL,'/attaches/icon/01',NULL,'2016-03-15 17:05:32',NULL,NULL,NULL,1,NULL),(20,'头像14',NULL,'/attaches/icon/01',NULL,'2016-03-15 17:58:31',NULL,NULL,NULL,1,NULL),(21,'头像15',NULL,'/attaches/icon/01',NULL,'2016-03-15 19:48:21',NULL,NULL,NULL,1,NULL),(22,'头像16',NULL,'/attaches/icon/01',NULL,'2016-03-15 19:49:28',NULL,NULL,NULL,1,NULL),(23,'头像17',NULL,'/attaches/icon/01',NULL,'2016-03-15 20:01:52',NULL,NULL,NULL,1,NULL);

/*Table structure for table `t_resource` */

DROP TABLE IF EXISTS `t_resource`;

CREATE TABLE `t_resource` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `uri` varchar(50) DEFAULT NULL,
  `pid` int(11) DEFAULT NULL,
  `descr` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8;

/*Data for the table `t_resource` */

insert  into `t_resource`(`id`,`name`,`code`,`uri`,`pid`,`descr`,`create_time`,`create_id`,`update_time`,`update_id`,`del_flag`) values (0,'系统菜单','root','/',-1,NULL,'2015-08-11 09:50:18',NULL,NULL,NULL,1),(12,'相册管理','photoes','/photoes/',0,'相册相关内容管理',NULL,NULL,'2016-02-24 11:48:14',38,1),(13,'主播管理','anchorMgr','/anchor/',0,'主播管理',NULL,NULL,NULL,NULL,0),(14,'客服管理','customer','/customer/',0,'客服管理',NULL,NULL,NULL,NULL,1),(15,'技术管理','techMgr','/tech/',0,'技术管理',NULL,NULL,NULL,NULL,1),(16,'系统管理','systemMgr','/system/',0,'系统管理',NULL,NULL,NULL,NULL,1),(17,'照片列表','pictures','/photoes/pictures/list',12,'相册照片',NULL,NULL,'2016-02-24 11:49:21',38,1),(18,'直播间','live_room','/anchor/liveRoom',13,'直播间',NULL,NULL,NULL,NULL,1),(19,'商城奖品','shop_award','/customer/shopAward/list',14,'商城奖品',NULL,NULL,NULL,NULL,1),(20,'操作日志','tech','/tech/actionLog/list',15,'操作日志',NULL,NULL,NULL,NULL,1),(21,'用户管理','userMgr','/common/user/list',15,'用户管理',NULL,NULL,NULL,NULL,1),(22,'资源管理','resMgr','/common/res/list',16,'资源管理',NULL,NULL,NULL,NULL,1),(23,'数据字典','data_dic','/common/dic/list',16,'',NULL,NULL,NULL,NULL,1),(24,'角色管理','roleMgr','/common/role/list',16,'',NULL,NULL,NULL,NULL,1),(25,'游戏资讯','game_news','/editor/gameNews/list',12,'',NULL,NULL,NULL,NULL,1),(26,'游戏社区','game_community','/editor/gameCommunity/list',12,'',NULL,NULL,NULL,NULL,1),(27,'游戏管理','game_mgr','/editor/gameMgr/list',12,'',NULL,NULL,NULL,NULL,1),(28,'聊天室','game_chatRoom','/editor/gameChatRoom/list',12,'',NULL,NULL,NULL,NULL,0),(29,'节目单','playbill','/anchor/program/list',13,'',NULL,NULL,NULL,NULL,1),(30,'主播资料','anchorInfo','/anchor/info/list',13,'',NULL,NULL,NULL,NULL,1),(31,'反馈处理','feedback','/customer/feedback/list',14,'',NULL,NULL,NULL,NULL,1),(32,'兑换处理','exchange_award','/customer/exchangeAward/list',14,'兑换处理',NULL,NULL,NULL,NULL,1),(33,'版本管理','version','/tech/version/list',15,'',NULL,NULL,NULL,NULL,0),(34,'接口测试','api-test','/api-test.html',15,'',NULL,NULL,NULL,NULL,0),(35,'房间管理','room','/anchor/room/list',13,'电台主播房间管理','2015-12-11 16:48:15',38,NULL,NULL,1),(36,'客户端配置','appConfig','/tech/appConfig/list',15,'客户端配置管理','2015-12-22 11:13:24',38,'2015-12-22 11:13:50',38,1),(37,'数据分析','data-analy','/dataAn',0,'数据统计',NULL,NULL,NULL,NULL,0),(38,'在线用户','online-user','/dataAnaly/user/online',37,'在线用户',NULL,NULL,NULL,NULL,0),(39,'系统消息','sys-msg','/common/msg/list',16,'系统消息',NULL,NULL,NULL,NULL,1),(40,'测试的','TEST','/test',0,'',NULL,NULL,NULL,NULL,0),(51,'每日登录','daylog','/day/loh',37,'sdd个人热隔热共同',NULL,NULL,NULL,NULL,0),(53,'员工管理','emp','/e/e',0,'',NULL,NULL,NULL,NULL,0),(56,'客户端管理','client','/common/client/list',16,'',NULL,NULL,NULL,NULL,1);

/*Table structure for table `t_role` */

DROP TABLE IF EXISTS `t_role`;

CREATE TABLE `t_role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(30) DEFAULT NULL,
  `code` varchar(30) DEFAULT NULL,
  `descr` varchar(50) DEFAULT NULL,
  `create_time` timestamp NULL DEFAULT NULL,
  `create_id` int(11) DEFAULT NULL,
  `update_time` timestamp NULL DEFAULT NULL,
  `update_id` int(11) DEFAULT NULL,
  `del_flag` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=utf8;

/*Data for the table `t_role` */

insert  into `t_role`(`id`,`name`,`code`,`descr`,`create_time`,`create_id`,`update_time`,`update_id`,`del_flag`) values (1,'超级管理员','super','超级管理员，开发人员',NULL,NULL,NULL,NULL,NULL),(2,'管理员','admin','普通管理员',NULL,NULL,NULL,NULL,NULL),(3,'客服','customer','客服权限',NULL,NULL,NULL,NULL,NULL),(5,'游戏编辑权限','game_edit','游戏编辑权限',NULL,NULL,NULL,NULL,NULL),(6,'主播权限','anchor','主播权限',NULL,NULL,NULL,NULL,0),(7,'普通成员','VoiceUserType_Normal','电台普通成员',NULL,NULL,NULL,NULL,NULL),(8,'嘉宾主持','VoiceUserType_VIP','电台嘉宾主持',NULL,NULL,NULL,NULL,NULL),(9,'主播','VoiceUserType_Host','电台主播',NULL,NULL,NULL,NULL,NULL),(10,'频道管理员','VoiceUserType_Admin','电台频道管理员',NULL,NULL,NULL,NULL,NULL),(11,'频道拥有者','VoiceUserType_OW','电台频道拥有者',NULL,NULL,NULL,NULL,NULL),(12,'官方管理员','VoiceUserType_GM','电台官方管理员',NULL,NULL,NULL,NULL,NULL);

/*Table structure for table `t_role_resource` */

DROP TABLE IF EXISTS `t_role_resource`;

CREATE TABLE `t_role_resource` (
  `role_id` int(11) DEFAULT NULL,
  `res_id` int(11) DEFAULT NULL,
  UNIQUE KEY `roleId` (`role_id`,`res_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_role_resource` */

insert  into `t_role_resource`(`role_id`,`res_id`) values (1,12),(1,13),(1,14),(1,15),(1,16),(1,17),(1,19),(1,20),(1,21),(1,22),(1,23),(1,24),(1,27),(1,29),(1,30),(1,31),(1,32),(1,33),(1,34),(1,35),(1,36),(1,39),(1,56),(2,12),(2,13),(2,14),(2,15),(2,16),(2,17),(2,18),(2,19),(2,20),(2,21),(2,24),(2,25),(2,26),(2,27),(2,28),(2,29),(2,30),(2,31),(2,32),(2,33),(2,34),(2,35),(2,36),(2,39),(3,14),(3,19),(3,31),(3,32),(5,12),(5,13),(5,14),(5,17),(5,18),(5,19),(5,25),(5,26),(5,27),(5,28),(5,29),(5,30),(5,31),(5,32),(5,35);

/*Table structure for table `t_user` */

DROP TABLE IF EXISTS `t_user`;

CREATE TABLE `t_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(60) DEFAULT NULL,
  `nick_name` varchar(60) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `email` varchar(60) DEFAULT NULL,
  `is_enable` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8;

/*Data for the table `t_user` */

insert  into `t_user`(`id`,`name`,`nick_name`,`password`,`email`,`is_enable`) values (38,'admin','admin','d38264785a3c63f5287cac5622d0afa4',NULL,NULL);

/*Table structure for table `t_user_role` */

DROP TABLE IF EXISTS `t_user_role`;

CREATE TABLE `t_user_role` (
  `user_id` int(11) DEFAULT NULL,
  `role_id` int(11) DEFAULT NULL,
  UNIQUE KEY `userId` (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

/*Data for the table `t_user_role` */

insert  into `t_user_role`(`user_id`,`role_id`) values (1,1),(2,5),(3,2),(4,1),(8,6),(10,9),(19,6),(35,3),(36,5),(37,5),(38,1),(39,5),(40,5),(43,1),(53,7),(53,8),(53,9),(54,9),(55,9),(67,9),(73,2),(73,9),(113,5),(114,2),(190,9),(195,9),(196,9),(202,2),(207,9);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
