-- MySQL Administrator dump 1.4
--
-- ------------------------------------------------------
-- Server version	5.1.39-community


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


--
-- Create schema db_database17
--

CREATE DATABASE IF NOT EXISTS db_database17;
USE db_database17;

--
-- Definition of table `tb_company`
--

DROP TABLE IF EXISTS `tb_company`;
CREATE TABLE `tb_company` (
  `id` int(11) NOT NULL,
  `company_name` varchar(255) NOT NULL,
  `company_type` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `enrol_fund` int(11) NOT NULL,
  `enrol_date` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_company`
--

/*!40000 ALTER TABLE `tb_company` DISABLE KEYS */;
INSERT INTO `tb_company` (`id`,`company_name`,`company_type`,`owner`,`enrol_fund`,`enrol_date`) VALUES 
 (1,'明日科技有限公司','软件','经理',3000,'1998-09-06'),
 (6,'科技创新公司','私企','经理',2000,'2008-09-08'),
 (7,'企业之星','销售','经理',9000,'2010-09-08'),
 (8,'共创未来','服装','经理',4560,'2009-08-09'),
 (10,'七色花','私营','经理',2000,'2007-01-12'),
 (11,'开启梦想公司','私营','经理',2450,'2002-09-12'),
 (12,'核心科技','私营','经理',231,'2009-09-01'),
 (13,'动力集团','国营','经理',4500,'2010-09-10');
/*!40000 ALTER TABLE `tb_company` ENABLE KEYS */;


--
-- Definition of table `tb_depart`
--

DROP TABLE IF EXISTS `tb_depart`;
CREATE TABLE `tb_depart` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dname` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_depart`
--

/*!40000 ALTER TABLE `tb_depart` DISABLE KEYS */;
INSERT INTO `tb_depart` (`id`,`dname`) VALUES 
 (1,'C 部门');
/*!40000 ALTER TABLE `tb_depart` ENABLE KEYS */;


--
-- Definition of table `tb_dept`
--

DROP TABLE IF EXISTS `tb_dept`;
CREATE TABLE `tb_dept` (
  `id` int(11) NOT NULL,
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA4F77D76A233E432` (`company_id`),
  CONSTRAINT `FKA4F77D76A233E432` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_dept`
--

/*!40000 ALTER TABLE `tb_dept` DISABLE KEYS */;
INSERT INTO `tb_dept` (`id`,`company_id`,`name`) VALUES 
 (1,1,'JavaWeb部门');
/*!40000 ALTER TABLE `tb_dept` ENABLE KEYS */;


--
-- Definition of table `tb_dept2`
--

DROP TABLE IF EXISTS `tb_dept2`;
CREATE TABLE `tb_dept2` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`company_id`,`name`),
  KEY `FKF9F8317CA233E432` (`company_id`),
  CONSTRAINT `FKF9F8317CA233E432` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_dept2`
--

/*!40000 ALTER TABLE `tb_dept2` DISABLE KEYS */;
INSERT INTO `tb_dept2` (`company_id`,`name`) VALUES 
 (6,'企划部'),
 (6,'编程部'),
 (6,'销售部'),
 (7,'市场部'),
 (7,'采购部'),
 (7,'销售部'),
 (11,'研发部'),
 (11,'质量部'),
 (11,'运输部');
/*!40000 ALTER TABLE `tb_dept2` ENABLE KEYS */;


--
-- Definition of table `tb_dept3`
--

DROP TABLE IF EXISTS `tb_dept3`;
CREATE TABLE `tb_dept3` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locality` int(11) NOT NULL,
  PRIMARY KEY (`company_id`,`locality`),
  KEY `FKF9F8317DA233E432` (`company_id`),
  CONSTRAINT `FKF9F8317DA233E432` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_dept3`
--

/*!40000 ALTER TABLE `tb_dept3` DISABLE KEYS */;
INSERT INTO `tb_dept3` (`company_id`,`name`,`locality`) VALUES 
 (8,'行政部',0),
 (8,'人事部',1),
 (8,'研发部',2),
 (12,'拓展部',0),
 (12,'政治部',1),
 (12,'人事部',2);
/*!40000 ALTER TABLE `tb_dept3` ENABLE KEYS */;


--
-- Definition of table `tb_dept4`
--

DROP TABLE IF EXISTS `tb_dept4`;
CREATE TABLE `tb_dept4` (
  `company_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `locality` varchar(255) NOT NULL,
  PRIMARY KEY (`company_id`,`locality`),
  KEY `FKF9F8317EA233E432` (`company_id`),
  CONSTRAINT `FKF9F8317EA233E432` FOREIGN KEY (`company_id`) REFERENCES `tb_company` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_dept4`
--

/*!40000 ALTER TABLE `tb_dept4` DISABLE KEYS */;
INSERT INTO `tb_dept4` (`company_id`,`name`,`locality`) VALUES 
 (10,'采购部','A'),
 (10,'销售部','B'),
 (10,'市场部','C'),
 (13,'产业部','A'),
 (13,'评估部','B'),
 (13,'能源部','C');
/*!40000 ALTER TABLE `tb_dept4` ENABLE KEYS */;


--
-- Definition of table `tb_employee`
--

DROP TABLE IF EXISTS `tb_employee`;
CREATE TABLE `tb_employee` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ename` varchar(255) DEFAULT NULL,
  `sex` varchar(255) DEFAULT NULL,
  `age` varchar(255) DEFAULT NULL,
  `did` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK4846655FA03BD917` (`did`),
  CONSTRAINT `FK4846655FA03BD917` FOREIGN KEY (`did`) REFERENCES `tb_depart` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_employee`
--

/*!40000 ALTER TABLE `tb_employee` DISABLE KEYS */;
INSERT INTO `tb_employee` (`id`,`ename`,`sex`,`age`,`did`) VALUES 
 (1,'张三','男','12',1);
/*!40000 ALTER TABLE `tb_employee` ENABLE KEYS */;


--
-- Definition of table `tb_merchandise`
--

DROP TABLE IF EXISTS `tb_merchandise`;
CREATE TABLE `tb_merchandise` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `producingArea` varchar(255) NOT NULL,
  `price` float NOT NULL,
  `sort_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FKA3C70B726CDBEC62` (`sort_id`),
  CONSTRAINT `FKA3C70B726CDBEC62` FOREIGN KEY (`sort_id`) REFERENCES `tb_sort` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_merchandise`
--

/*!40000 ALTER TABLE `tb_merchandise` DISABLE KEYS */;
INSERT INTO `tb_merchandise` (`id`,`name`,`producingArea`,`price`,`sort_id`) VALUES 
 (1,'裤子','河南',23,1),
 (2,'外套','山东',39,1),
 (3,'JavaWeb丛书','吉林',56,2),
 (4,'牛肉','内蒙古',28,3),
 (5,'苹果','北京',2,4),
 (6,'香蕉','海南',3,4);
/*!40000 ALTER TABLE `tb_merchandise` ENABLE KEYS */;


--
-- Definition of table `tb_optimisticlockingv`
--

DROP TABLE IF EXISTS `tb_optimisticlockingv`;
CREATE TABLE `tb_optimisticlockingv` (
  `id` int(11) NOT NULL,
  `version` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `money` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_optimisticlockingv`
--

/*!40000 ALTER TABLE `tb_optimisticlockingv` DISABLE KEYS */;
INSERT INTO `tb_optimisticlockingv` (`id`,`version`,`name`,`money`) VALUES 
 (1,43,'A',67),
 (2,43,'B',68);
/*!40000 ALTER TABLE `tb_optimisticlockingv` ENABLE KEYS */;


--
-- Definition of table `tb_purviewfk`
--

DROP TABLE IF EXISTS `tb_purviewfk`;
CREATE TABLE `tb_purviewfk` (
  `id` int(11) NOT NULL,
  `see` tinyint(1) NOT NULL,
  `ist` tinyint(1) NOT NULL,
  `udt` tinyint(1) NOT NULL,
  `dlt` tinyint(1) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `user_id` (`user_id`),
  KEY `FKD8FFFAE6CDA4A890` (`user_id`),
  CONSTRAINT `FKD8FFFAE6CDA4A890` FOREIGN KEY (`user_id`) REFERENCES `tb_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_purviewfk`
--

/*!40000 ALTER TABLE `tb_purviewfk` DISABLE KEYS */;
INSERT INTO `tb_purviewfk` (`id`,`see`,`ist`,`udt`,`dlt`,`user_id`) VALUES 
 (1,1,1,0,0,1),
 (2,1,0,0,0,2),
 (3,0,0,1,1,3),
 (4,0,1,1,1,4),
 (5,1,1,1,1,5),
 (6,0,0,1,0,6),
 (7,1,1,0,0,7);
/*!40000 ALTER TABLE `tb_purviewfk` ENABLE KEYS */;


--
-- Definition of table `tb_purviewpk`
--

DROP TABLE IF EXISTS `tb_purviewpk`;
CREATE TABLE `tb_purviewpk` (
  `id` int(11) NOT NULL,
  `see` tinyint(1) NOT NULL,
  `ist` tinyint(1) NOT NULL,
  `udt` tinyint(1) NOT NULL,
  `dlt` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FKD8FFFC1CD669C79C` (`id`),
  CONSTRAINT `FKD8FFFC1CD669C79C` FOREIGN KEY (`id`) REFERENCES `tb_userinfo` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_purviewpk`
--

/*!40000 ALTER TABLE `tb_purviewpk` DISABLE KEYS */;
INSERT INTO `tb_purviewpk` (`id`,`see`,`ist`,`udt`,`dlt`) VALUES 
 (1,0,0,1,1),
 (2,1,1,0,1),
 (3,1,0,0,0),
 (4,0,0,0,1),
 (5,1,1,1,1),
 (6,0,0,1,1),
 (7,0,1,1,0);
/*!40000 ALTER TABLE `tb_purviewpk` ENABLE KEYS */;


--
-- Definition of table `tb_save`
--

DROP TABLE IF EXISTS `tb_save`;
CREATE TABLE `tb_save` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(45) NOT NULL,
  `money` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_save`
--

/*!40000 ALTER TABLE `tb_save` DISABLE KEYS */;
INSERT INTO `tb_save` (`id`,`name`,`money`) VALUES 
 (1,'马圆圆',94),
 (5,'刘慧',200),
 (6,'赵明',42),
 (7,'李云',4);
/*!40000 ALTER TABLE `tb_save` ENABLE KEYS */;


--
-- Definition of table `tb_sort`
--

DROP TABLE IF EXISTS `tb_sort`;
CREATE TABLE `tb_sort` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_sort`
--

/*!40000 ALTER TABLE `tb_sort` DISABLE KEYS */;
INSERT INTO `tb_sort` (`id`,`name`) VALUES 
 (1,'服装'),
 (2,'图书'),
 (3,'肉制品'),
 (4,'水果');
/*!40000 ALTER TABLE `tb_sort` ENABLE KEYS */;


--
-- Definition of table `tb_sortconn`
--

DROP TABLE IF EXISTS `tb_sortconn`;
CREATE TABLE `tb_sortconn` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `father_id` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `FK6438247B4AE5BE4` (`father_id`),
  CONSTRAINT `FK6438247B4AE5BE4` FOREIGN KEY (`father_id`) REFERENCES `tb_sortconn` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_sortconn`
--

/*!40000 ALTER TABLE `tb_sortconn` DISABLE KEYS */;
INSERT INTO `tb_sortconn` (`id`,`name`,`father_id`) VALUES 
 (1,'食品',NULL),
 (2,'水果',NULL),
 (3,'服装',NULL),
 (4,'巧克力',1),
 (5,'瓜子',1),
 (6,'苹果',2),
 (7,'香蕉',2),
 (8,'裤子',3),
 (9,'袜子',3),
 (10,'篮球鞋',3);
/*!40000 ALTER TABLE `tb_sortconn` ENABLE KEYS */;


--
-- Definition of table `tb_staff`
--

DROP TABLE IF EXISTS `tb_staff`;
CREATE TABLE `tb_staff` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `birthday` varchar(255) NOT NULL,
  `duty` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_staff`
--

/*!40000 ALTER TABLE `tb_staff` DISABLE KEYS */;
INSERT INTO `tb_staff` (`id`,`name`,`sex`,`birthday`,`duty`) VALUES 
 (1,'王明','男','1967-09-02','高级架构师'),
 (2,'李云','女','1989-02-03','初级程序员'),
 (3,'马翔','男','1985-02-04','中级程序员'),
 (4,'刘双','男','1969-09-01','高级工程师'),
 (5,'杨飞','男','1999-01-24','初级程序员');
/*!40000 ALTER TABLE `tb_staff` ENABLE KEYS */;


--
-- Definition of table `tb_student`
--

DROP TABLE IF EXISTS `tb_student`;
CREATE TABLE `tb_student` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `specialty` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_student`
--

/*!40000 ALTER TABLE `tb_student` DISABLE KEYS */;
INSERT INTO `tb_student` (`id`,`name`,`sex`,`specialty`) VALUES 
 (1,'张云','男','计算机'),
 (2,'马良','男','英语'),
 (3,'杨桃','女','计算机'),
 (4,'温明远','男','政治'),
 (5,'刘晃','男','政治'),
 (6,'赵婷婷','女','英语'),
 (7,'卿明祥','男','计算机');
/*!40000 ALTER TABLE `tb_student` ENABLE KEYS */;


--
-- Definition of table `tb_student_subject`
--

DROP TABLE IF EXISTS `tb_student_subject`;
CREATE TABLE `tb_student_subject` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `student_id` int(10) unsigned NOT NULL,
  `subject_id` int(10) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=28 DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_student_subject`
--

/*!40000 ALTER TABLE `tb_student_subject` DISABLE KEYS */;
INSERT INTO `tb_student_subject` (`id`,`student_id`,`subject_id`) VALUES 
 (2,3,2),
 (3,2,1),
 (4,4,5),
 (12,7,2),
 (13,7,1),
 (19,6,3),
 (20,6,4),
 (26,5,1),
 (27,1,4);
/*!40000 ALTER TABLE `tb_student_subject` ENABLE KEYS */;


--
-- Definition of table `tb_subject`
--

DROP TABLE IF EXISTS `tb_subject`;
CREATE TABLE `tb_subject` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_subject`
--

/*!40000 ALTER TABLE `tb_subject` DISABLE KEYS */;
INSERT INTO `tb_subject` (`id`,`name`) VALUES 
 (1,'Java基础教程'),
 (2,'计算机组成原理'),
 (3,'Linux开发大全'),
 (4,'Html技术内幕'),
 (5,'JavaScript网页编程'),
 (6,'高等数学');
/*!40000 ALTER TABLE `tb_subject` ENABLE KEYS */;


--
-- Definition of table `tb_userinfo`
--

DROP TABLE IF EXISTS `tb_userinfo`;
CREATE TABLE `tb_userinfo` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `loginTime` date NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tb_userinfo`
--

/*!40000 ALTER TABLE `tb_userinfo` DISABLE KEYS */;
INSERT INTO `tb_userinfo` (`id`,`username`,`password`,`loginTime`) VALUES 
 (1,'张明','123','2010-02-09'),
 (2,'刘云','123','2010-03-01'),
 (3,'马圆圆','123','2010-03-02'),
 (4,'李丽丽','123','2010-04-24'),
 (5,'杨桃','123','2010-05-01'),
 (6,'马帅','123','2010-06-01'),
 (7,'赵新民','123','2010-07-29');
/*!40000 ALTER TABLE `tb_userinfo` ENABLE KEYS */;




/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
