/*
SQLyog Ultimate v11.3 (64 bit)
MySQL - 5.7.32-log : Database - ssmq62e2
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`ssmq62e2` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `ssmq62e2`;

/*Table structure for table `banjichengyuan` */

DROP TABLE IF EXISTS `banjichengyuan`;

CREATE TABLE `banjichengyuan` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `renshu` varchar(200) NOT NULL COMMENT '人数',
  `xueshengxingming` varchar(200) DEFAULT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='班级成员';

/*Data for the table `banjichengyuan` */

insert  into `banjichengyuan`(`id`,`addtime`,`gonghao`,`banjimingcheng`,`zhuanye`,`renshu`,`xueshengxingming`,`xingbie`,`shouji`,`touxiang`) values (41,'2021-04-13 21:49:48','工号1','班级名称1','专业1','1','学生姓名1','性别1','手机1','http://localhost:8080/ssmq62e2/upload/banjichengyuan_touxiang1.jpg'),(42,'2021-04-13 21:49:48','工号2','班级名称2','专业2','1','学生姓名2','性别2','手机2','http://localhost:8080/ssmq62e2/upload/banjichengyuan_touxiang2.jpg'),(43,'2021-04-13 21:49:48','工号3','班级名称3','专业3','1','学生姓名3','性别3','手机3','http://localhost:8080/ssmq62e2/upload/banjichengyuan_touxiang3.jpg'),(44,'2021-04-13 21:49:48','工号4','班级名称4','专业4','1','学生姓名4','性别4','手机4','http://localhost:8080/ssmq62e2/upload/banjichengyuan_touxiang4.jpg'),(45,'2021-04-13 21:49:48','工号5','班级名称5','专业5','1','学生姓名5','性别5','手机5','http://localhost:8080/ssmq62e2/upload/banjichengyuan_touxiang5.jpg'),(46,'2021-04-13 21:49:48','工号6','班级名称6','专业6','1','学生姓名6','性别6','手机6','http://localhost:8080/ssmq62e2/upload/banjichengyuan_touxiang6.jpg');

/*Table structure for table `banjixinxi` */

DROP TABLE IF EXISTS `banjixinxi`;

CREATE TABLE `banjixinxi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) DEFAULT NULL COMMENT '工号',
  `banzhuren` varchar(200) DEFAULT NULL COMMENT '班主任',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `zhuanyemingcheng` varchar(200) DEFAULT NULL COMMENT '专业名称',
  `renshu` int(11) DEFAULT NULL COMMENT '人数',
  `jianjie` longtext COMMENT '简介',
  `tupian` varchar(200) DEFAULT NULL COMMENT '图片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `banjimingcheng` (`banjimingcheng`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=utf8 COMMENT='班级信息';

/*Data for the table `banjixinxi` */

insert  into `banjixinxi`(`id`,`addtime`,`gonghao`,`banzhuren`,`banjimingcheng`,`zhuanyemingcheng`,`renshu`,`jianjie`,`tupian`) values (31,'2021-04-13 21:49:48','工号1','班主任1','班级名称1','专业名称1',1,'简介1','http://localhost:8080/ssmq62e2/upload/banjixinxi_tupian1.jpg'),(32,'2021-04-13 21:49:48','工号2','班主任2','班级名称2','专业名称2',2,'简介2','http://localhost:8080/ssmq62e2/upload/banjixinxi_tupian2.jpg'),(33,'2021-04-13 21:49:48','工号3','班主任3','班级名称3','专业名称3',3,'简介3','http://localhost:8080/ssmq62e2/upload/banjixinxi_tupian3.jpg'),(34,'2021-04-13 21:49:48','工号4','班主任4','班级名称4','专业名称4',4,'简介4','http://localhost:8080/ssmq62e2/upload/banjixinxi_tupian4.jpg'),(35,'2021-04-13 21:49:48','工号5','班主任5','班级名称5','专业名称5',5,'简介5','http://localhost:8080/ssmq62e2/upload/banjixinxi_tupian5.jpg'),(36,'2021-04-13 21:49:48','工号6','班主任6','班级名称6','专业名称6',6,'简介6','http://localhost:8080/ssmq62e2/upload/banjixinxi_tupian6.jpg');

/*Table structure for table `chat` */

DROP TABLE IF EXISTS `chat`;

CREATE TABLE `chat` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `userid` bigint(20) NOT NULL COMMENT '用户id',
  `adminid` bigint(20) DEFAULT NULL COMMENT '管理员id',
  `ask` longtext COMMENT '提问',
  `reply` longtext COMMENT '回复',
  `isreply` int(11) DEFAULT NULL COMMENT '是否回复',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=utf8 COMMENT='在线客服';

/*Data for the table `chat` */

insert  into `chat`(`id`,`addtime`,`userid`,`adminid`,`ask`,`reply`,`isreply`) values (51,'2021-04-13 21:49:48',1,1,'提问1','回复1',1),(52,'2021-04-13 21:49:48',2,2,'提问2','回复2',2),(53,'2021-04-13 21:49:48',3,3,'提问3','回复3',3),(54,'2021-04-13 21:49:48',4,4,'提问4','回复4',4),(55,'2021-04-13 21:49:48',5,5,'提问5','回复5',5),(56,'2021-04-13 21:49:48',6,6,'提问6','回复6',6);

/*Table structure for table `config` */

DROP TABLE IF EXISTS `config`;

CREATE TABLE `config` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `name` varchar(100) NOT NULL COMMENT '配置参数名称',
  `value` varchar(100) DEFAULT NULL COMMENT '配置参数值',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='配置文件';

/*Data for the table `config` */

insert  into `config`(`id`,`name`,`value`) values (1,'picture1','http://localhost:8080/ssmq62e2/upload/picture1.jpg'),(2,'picture2','http://localhost:8080/ssmq62e2/upload/picture2.jpg'),(3,'picture3','http://localhost:8080/ssmq62e2/upload/picture3.jpg'),(6,'homepage',NULL);

/*Table structure for table `exampaper` */

DROP TABLE IF EXISTS `exampaper`;

CREATE TABLE `exampaper` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `name` varchar(200) NOT NULL COMMENT '试卷名称',
  `time` int(11) NOT NULL COMMENT '考试时长(分钟)',
  `status` int(11) NOT NULL DEFAULT '0' COMMENT '试卷状态',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试卷表';

/*Data for the table `exampaper` */

/*Table structure for table `examquestion` */

DROP TABLE IF EXISTS `examquestion`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='试题表';

/*Data for the table `examquestion` */

/*Table structure for table `examrecord` */

DROP TABLE IF EXISTS `examrecord`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='考试记录表';

/*Data for the table `examrecord` */

/*Table structure for table `jiaoshi` */

DROP TABLE IF EXISTS `jiaoshi`;

CREATE TABLE `jiaoshi` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `gonghao` varchar(200) NOT NULL COMMENT '工号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `jiaoshixingming` varchar(200) NOT NULL COMMENT '教师姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `zhicheng` varchar(200) DEFAULT NULL COMMENT '职称',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `zhaopian` varchar(200) DEFAULT NULL COMMENT '照片',
  PRIMARY KEY (`id`),
  UNIQUE KEY `gonghao` (`gonghao`)
) ENGINE=InnoDB AUTO_INCREMENT=27 DEFAULT CHARSET=utf8 COMMENT='教师';

/*Data for the table `jiaoshi` */

insert  into `jiaoshi`(`id`,`addtime`,`gonghao`,`mima`,`jiaoshixingming`,`xingbie`,`zhicheng`,`shouji`,`youxiang`,`zhaopian`) values (21,'2021-04-13 21:49:48','教师1','123456','教师姓名1','男','助教','13823888881','773890001@qq.com','http://localhost:8080/ssmq62e2/upload/jiaoshi_zhaopian1.jpg'),(22,'2021-04-13 21:49:48','教师2','123456','教师姓名2','男','助教','13823888882','773890002@qq.com','http://localhost:8080/ssmq62e2/upload/jiaoshi_zhaopian2.jpg'),(23,'2021-04-13 21:49:48','教师3','123456','教师姓名3','男','助教','13823888883','773890003@qq.com','http://localhost:8080/ssmq62e2/upload/jiaoshi_zhaopian3.jpg'),(24,'2021-04-13 21:49:48','教师4','123456','教师姓名4','男','助教','13823888884','773890004@qq.com','http://localhost:8080/ssmq62e2/upload/jiaoshi_zhaopian4.jpg'),(25,'2021-04-13 21:49:48','教师5','123456','教师姓名5','男','助教','13823888885','773890005@qq.com','http://localhost:8080/ssmq62e2/upload/jiaoshi_zhaopian5.jpg'),(26,'2021-04-13 21:49:48','教师6','123456','教师姓名6','男','助教','13823888886','773890006@qq.com','http://localhost:8080/ssmq62e2/upload/jiaoshi_zhaopian6.jpg');

/*Table structure for table `news` */

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `title` varchar(200) NOT NULL COMMENT '标题',
  `introduction` longtext COMMENT '简介',
  `picture` varchar(200) NOT NULL COMMENT '图片',
  `content` longtext NOT NULL COMMENT '内容',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=utf8 COMMENT='公告';

/*Data for the table `news` */

insert  into `news`(`id`,`addtime`,`title`,`introduction`,`picture`,`content`) values (91,'2021-04-13 21:49:48','标题1','简介1','http://localhost:8080/ssmq62e2/upload/news_picture1.jpg','内容1'),(92,'2021-04-13 21:49:48','标题2','简介2','http://localhost:8080/ssmq62e2/upload/news_picture2.jpg','内容2'),(93,'2021-04-13 21:49:48','标题3','简介3','http://localhost:8080/ssmq62e2/upload/news_picture3.jpg','内容3'),(94,'2021-04-13 21:49:48','标题4','简介4','http://localhost:8080/ssmq62e2/upload/news_picture4.jpg','内容4'),(95,'2021-04-13 21:49:48','标题5','简介5','http://localhost:8080/ssmq62e2/upload/news_picture5.jpg','内容5'),(96,'2021-04-13 21:49:48','标题6','简介6','http://localhost:8080/ssmq62e2/upload/news_picture6.jpg','内容6');

/*Table structure for table `token` */

DROP TABLE IF EXISTS `token`;

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='token表';

/*Data for the table `token` */

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `username` varchar(100) NOT NULL COMMENT '用户名',
  `password` varchar(100) NOT NULL COMMENT '密码',
  `role` varchar(100) DEFAULT '管理员' COMMENT '角色',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '新增时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

/*Data for the table `users` */

insert  into `users`(`id`,`username`,`password`,`role`,`addtime`) values (1,'abo','abo','管理员','2021-04-13 21:49:48');

/*Table structure for table `xuesheng` */

DROP TABLE IF EXISTS `xuesheng`;

CREATE TABLE `xuesheng` (
  `id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '主键',
  `addtime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP COMMENT '创建时间',
  `xuehao` varchar(200) NOT NULL COMMENT '学号',
  `mima` varchar(200) NOT NULL COMMENT '密码',
  `xueshengxingming` varchar(200) NOT NULL COMMENT '学生姓名',
  `xingbie` varchar(200) DEFAULT NULL COMMENT '性别',
  `banjimingcheng` varchar(200) DEFAULT NULL COMMENT '班级名称',
  `zhuanye` varchar(200) DEFAULT NULL COMMENT '专业',
  `shouji` varchar(200) DEFAULT NULL COMMENT '手机',
  `youxiang` varchar(200) DEFAULT NULL COMMENT '邮箱',
  `touxiang` varchar(200) DEFAULT NULL COMMENT '头像',
  PRIMARY KEY (`id`),
  UNIQUE KEY `xuehao` (`xuehao`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8 COMMENT='学生';

/*Data for the table `xuesheng` */

insert  into `xuesheng`(`id`,`addtime`,`xuehao`,`mima`,`xueshengxingming`,`xingbie`,`banjimingcheng`,`zhuanye`,`shouji`,`youxiang`,`touxiang`) values (11,'2021-04-13 21:49:48','学生1','123456','学生姓名1','男','班级名称1','专业1','13823888881','773890001@qq.com','http://localhost:8080/ssmq62e2/upload/xuesheng_touxiang1.jpg'),(12,'2021-04-13 21:49:48','学生2','123456','学生姓名2','男','班级名称2','专业2','13823888882','773890002@qq.com','http://localhost:8080/ssmq62e2/upload/xuesheng_touxiang2.jpg'),(13,'2021-04-13 21:49:48','学生3','123456','学生姓名3','男','班级名称3','专业3','13823888883','773890003@qq.com','http://localhost:8080/ssmq62e2/upload/xuesheng_touxiang3.jpg'),(14,'2021-04-13 21:49:48','学生4','123456','学生姓名4','男','班级名称4','专业4','13823888884','773890004@qq.com','http://localhost:8080/ssmq62e2/upload/xuesheng_touxiang4.jpg'),(15,'2021-04-13 21:49:48','学生5','123456','学生姓名5','男','班级名称5','专业5','13823888885','773890005@qq.com','http://localhost:8080/ssmq62e2/upload/xuesheng_touxiang5.jpg'),(16,'2021-04-13 21:49:48','学生6','123456','学生姓名6','男','班级名称6','专业6','13823888886','773890006@qq.com','http://localhost:8080/ssmq62e2/upload/xuesheng_touxiang6.jpg');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
