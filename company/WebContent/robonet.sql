/*
SQLyog Community Edition- MySQL GUI v7.12 
MySQL - 5.6.16 : Database - robonet
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`robonet` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `robonet`;

/*Table structure for table `attendancemaster` */

DROP TABLE IF EXISTS `attendancemaster`;

CREATE TABLE `attendancemaster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(15) DEFAULT NULL,
  `mname` varchar(15) DEFAULT NULL,
  `lname` varchar(15) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `status` varchar(8) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `attendancemaster` */

insert  into `attendancemaster`(`id`,`fname`,`mname`,`lname`,`email`,`day`,`month`,`year`,`status`) values (2,'Zeenesh','D','Patel','developer@gmail.com',21,2,2016,'Present'),(3,'Zeenesh','D','Patel','developer@gmail.com',23,2,2016,'Present'),(4,'Zeenesh','D','Patel','developer@gmail.com',24,2,2016,'Present'),(5,'Zeenesh','D','Patel','developer@gmail.com',3,3,2016,'Present'),(6,'Zeenesh','D','Patel','developer@gmail.com',7,3,2016,'Present'),(7,'Zeenesh','D','Patel','developer@gmail.com',10,3,2016,'Present'),(8,'Zee','d','patel','zeepatel1794@gmail.com',10,3,2016,'Present'),(9,'Tirth','S','Shah','tirth@gmail.com',10,3,2016,'Present'),(10,'Parth','L','Dave','parthdv4@gmail.com',10,3,2016,'Present'),(11,'Zeenesh','D','Patel','developer@gmail.com',21,3,2016,'Present'),(12,'Parth','L','Dave','parthdv4@gmail.com',21,3,2016,'Present'),(13,'Zee','d','patel','zeepatel1794@gmail.com',21,3,2016,'Present'),(14,'Tirth','S','Shah','tirth@gmail.com',21,3,2016,'Present'),(15,'Zeenesh','D','Patel','developer@gmail.com',22,3,2016,'Present'),(16,'Tirth','S','Shah','tirth@gmail.com',22,3,2016,'Present'),(17,'Parth','L','Dave','parthdv4@gmail.com',22,3,2016,'Present'),(18,'Zee','d','patel','zeepatel1794@gmail.com',1,4,2016,'Present'),(19,'Zee','d','patel','zeepatel1794@gmail.com',2,4,2016,'Present'),(20,'Zee','d','patel','zeepatel1794@gmail.com',4,4,2016,'Present'),(21,'Zee','d','patel','zeepatel1794@gmail.com',5,4,2016,'Present'),(22,'Zee','d','patel','zeepatel1794@gmail.com',6,4,2016,'Present'),(23,'Zee','d','patel','zeepatel1794@gmail.com',7,4,2016,'Present'),(24,'Zee','d','patel','zeepatel1794@gmail.com',8,4,2016,'Present'),(25,'Zee','d','patel','zeepatel1794@gmail.com',9,4,2016,'Present'),(26,'Zee','d','patel','zeepatel1794@gmail.com',11,4,2016,'Present'),(27,'Zee','d','patel','zeepatel1794@gmail.com',12,4,2016,'Present'),(28,'Zee','d','patel','zeepatel1794@gmail.com',13,4,2016,'Present'),(29,'Zee','d','patel','zeepatel1794@gmail.com',14,4,2016,'Present'),(30,'Zee','d','patel','zeepatel1794@gmail.com',15,4,2016,'Present'),(31,'Zee','d','patel','zeepatel1794@gmail.com',16,4,2016,'Present'),(32,'Zee','d','patel','zeepatel1794@gmail.com',18,4,2016,'Present'),(33,'Zee','d','patel','zeepatel1794@gmail.com',19,4,2016,'Present'),(34,'Zee','d','patel','zeepatel1794@gmail.com',20,4,2016,'Present'),(35,'Zee','d','patel','zeepatel1794@gmail.com',21,4,2016,'Present'),(36,'Zee','d','patel','zeepatel1794@gmail.com',22,4,2016,'Present'),(37,'Zee','d','patel','zeepatel1794@gmail.com',23,4,2016,'Present'),(38,'Zee','d','patel','zeepatel1794@gmail.com',25,4,2016,'Present'),(39,'Zee','d','patel','zeepatel1794@gmail.com',26,4,2016,'Present'),(40,'Zee','d','patel','zeepatel1794@gmail.com',27,4,2016,'Present'),(44,'Zeenesh','D','Patel','zeepatel1794@gmail.com',12,5,2016,'Present'),(45,'Zeenesh','D','Patel','zeepatel1794@gmail.com',25,5,2016,'Present'),(46,'Zeenesh','D','Patel','zeepatel1794@gmail.com',25,5,2016,'Present'),(47,'Ronak','Y','Bhatt','ronakbhatt000@gmail.com',4,10,2016,'Present'),(48,'Amish','jasavantbhai','Patel','amishpatel@gmail.com',7,10,2016,'Present'),(49,'Amish','jasavantbhai','Patel','amishpatel@gmail.com',24,10,2016,'Present'),(50,'HinalVarun','varun','patel','hinal@gmail.com',24,10,2016,'Present'),(51,'Ujjwal','Kumar','Singh','ujjwalpinku@gmail.com',5,11,2016,'Present'),(52,'Ujjwal','Kumar','Singh','ujjwalpinku@gmail.com',5,11,2016,'Present'),(53,'Amish','jasavantbhai','Patel','amishpatel@gmail.com',7,11,2016,NULL),(54,'Amish','jasavantbhai','Patel','amishpatel@gmail.com',7,11,2016,'Present'),(55,'Amish','JasavantBhai','Patel','amishpatel@gmail.com',22,11,2016,'Present'),(56,'Zeenesh','D','Patel','zeepatel1794@gmail.com',22,11,2016,'Present'),(57,'Tirth','S','Shah','tirth@gmail.com',22,11,2016,'Present');

/*Table structure for table `blog` */

DROP TABLE IF EXISTS `blog`;

CREATE TABLE `blog` (
  `id` int(1) NOT NULL AUTO_INCREMENT,
  `news` longtext,
  `description` longtext,
  `day` int(2) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `blog` */

insert  into `blog`(`id`,`news`,`description`,`day`,`month`,`year`) values (4,'Blood donation event at company','Our company is going to organize a blood donation camp at our place of company so intrested peoples come and also you can invite your friends also.',7,4,2016),(2,'about to complete successfully 2 years of company','Im excited to tell you guys today our company is about to complete successfull 10 years of glorry so in evening we organized a dinner plan for all our staff members',29,3,2016),(3,'Happy clients of our company','hello to all im glad to let you know guys that all of our clients were fully satisfied with our teams great work.Great job you all have done keep going on this way.',15,2,2016),(5,'blud donation','our company decided to participate in blud donate',22,11,2016),(6,'blud donation','our company decided to participate in blud donation\r\n',22,11,2016),(7,'interview','dsadas',3,12,2016),(8,'hardik','hardik is engineer',9,12,2016),(9,'palak','fgfgffgf',13,12,2016);

/*Table structure for table `clientproject` */

DROP TABLE IF EXISTS `clientproject`;

CREATE TABLE `clientproject` (
  `proid` int(10) NOT NULL AUTO_INCREMENT,
  `protitle` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`proid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `clientproject` */

insert  into `clientproject`(`proid`,`protitle`,`description`,`language`) values (1,'Robonet','its using for company management','java:Hibernet'),(2,'RealEstate','its all about the home around u','ASP.net'),(3,'amish','e commerce','jsp'),(4,'Java Game','web dev','java');

/*Table structure for table `expense` */

DROP TABLE IF EXISTS `expense`;

CREATE TABLE `expense` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `description` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `hour` int(2) DEFAULT NULL,
  `minute` int(2) DEFAULT NULL,
  `second` int(2) DEFAULT NULL,
  `am_pm` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `expense` */

insert  into `expense`(`id`,`description`,`amount`,`day`,`month`,`year`,`hour`,`minute`,`second`,`am_pm`) values (1,'Furniture for desk','15000.00',29,2,2016,16,12,1,'pm'),(2,'vsbabq','45678.00',25,5,2016,10,28,44,'am'),(3,'sasas','12121212.00',22,11,2016,14,10,57,'pm');

/*Table structure for table `income` */

DROP TABLE IF EXISTS `income`;

CREATE TABLE `income` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `type` varchar(20) DEFAULT NULL,
  `description` varchar(50) DEFAULT NULL,
  `amount` decimal(10,2) DEFAULT NULL,
  `day` int(2) DEFAULT NULL,
  `month` int(2) DEFAULT NULL,
  `year` int(4) DEFAULT NULL,
  `hour` int(2) DEFAULT NULL,
  `minute` int(2) DEFAULT NULL,
  `second` int(2) DEFAULT NULL,
  `am_pm` char(2) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `income` */

insert  into `income`(`id`,`type`,`description`,`amount`,`day`,`month`,`year`,`hour`,`minute`,`second`,`am_pm`) values (1,'Student','Fees of project','10000.00',29,2,2016,16,1,27,'pm'),(2,'Client','Project completion','20000.23',29,2,2016,16,2,39,'pm'),(3,'Student','mjbkjbj','4000.00',25,5,2016,10,28,1,'am'),(4,'Client','paid 3000nL kjaov','3000.00',25,5,2016,11,29,27,'am'),(5,'Student','developer','239.00',22,11,2016,14,9,42,'pm'),(6,'Client','sds','212121.00',22,11,2016,14,10,9,'pm');

/*Table structure for table `leavemaster` */

DROP TABLE IF EXISTS `leavemaster`;

CREATE TABLE `leavemaster` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `regid` int(10) DEFAULT NULL,
  `leavetype` varchar(15) DEFAULT NULL,
  `description` varchar(100) DEFAULT NULL,
  `startdate` date DEFAULT NULL,
  `enddate` date DEFAULT NULL,
  `department` varchar(10) DEFAULT NULL,
  `status` char(8) DEFAULT NULL,
  `applydate` date DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `regid` (`regid`),
  CONSTRAINT `leavemaster_ibfk_1` FOREIGN KEY (`regid`) REFERENCES `registration` (`RegID`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `leavemaster` */

insert  into `leavemaster`(`id`,`regid`,`leavetype`,`description`,`startdate`,`enddate`,`department`,`status`,`applydate`) values (1,6,'Causal','uncle is admited into hospital','2016-03-02','2016-03-03','Developer','approved','2016-03-01'),(2,7,'Sick','due to heave fever i cant able to come','2016-03-17','2016-03-19','Student','approved','2016-03-16'),(3,8,'Privilege','due to salary','2016-10-21','2016-10-22','Student','pending','2016-10-04'),(4,8,'Sick','i leave this job due some reason','2016-10-14','2016-10-28','Student','approved','2016-10-07'),(5,10,'Causal','n','2016-11-17','2016-11-08','PM','pending','2016-11-05'),(6,8,'Causal','Play','2016-11-09','2016-11-15','Student','pending','2016-11-07'),(7,8,'Sick','for better opportunity','2016-11-01','2016-11-16','Student','approved','2016-11-22'),(8,1,'Sick','zxzdsdsadsa','2016-11-05','2016-11-18','Finance','pending','2016-11-22'),(9,1,'Sick','due to admit','2016-11-03','2016-11-25','Finance','pending','2016-11-22');

/*Table structure for table `online` */

DROP TABLE IF EXISTS `online`;

CREATE TABLE `online` (
  `onid` int(10) NOT NULL AUTO_INCREMENT,
  `ol_flag` tinyint(1) DEFAULT NULL,
  `ol_um_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`onid`)
) ENGINE=InnoDB AUTO_INCREMENT=185 DEFAULT CHARSET=latin1;

/*Data for the table `online` */

insert  into `online`(`onid`,`ol_flag`,`ol_um_id`) values (69,0,6),(70,0,6),(71,0,6),(72,0,6),(73,0,6),(74,0,6),(75,0,6),(76,0,6),(77,0,6),(78,1,7),(79,0,6),(80,0,6),(81,0,6),(82,0,6),(83,0,6),(84,0,6),(85,0,6),(86,0,6),(87,0,6),(88,0,6),(89,0,6),(90,0,6),(91,0,6),(92,0,6),(93,0,6),(94,0,6),(95,0,6),(96,0,6),(97,1,7),(98,0,6),(99,0,6),(100,0,6),(101,1,7),(102,1,7),(103,1,8),(104,0,6),(105,0,6),(106,0,6),(107,1,7),(108,1,7),(109,0,6),(110,0,6),(111,0,6),(112,1,7),(113,0,6),(114,0,6),(115,0,6),(116,0,6),(117,0,6),(118,1,7),(119,0,6),(120,0,6),(121,0,6),(122,0,6),(123,0,6),(124,0,6),(125,0,6),(126,1,7),(127,1,7),(128,1,7),(129,1,7),(130,1,7),(131,1,7),(132,1,7),(133,0,6),(134,0,6),(135,0,6),(136,1,7),(137,1,7),(138,1,7),(139,1,7),(140,1,7),(141,0,6),(142,0,6),(143,0,6),(144,1,7),(145,0,6),(146,0,6),(147,1,7),(148,1,8),(149,1,7),(150,0,6),(151,1,8),(152,1,8),(153,1,8),(154,1,8),(155,1,8),(156,1,8),(157,1,8),(158,1,8),(159,1,8),(160,1,8),(161,1,8),(162,1,8),(163,1,8),(164,1,8),(165,1,8),(166,1,8),(167,1,8),(168,1,8),(169,1,8),(170,1,8),(171,1,8),(172,1,8),(173,1,8),(174,1,8),(175,1,8),(176,1,8),(177,1,8),(178,1,8),(179,1,8),(180,1,8),(181,1,8),(182,0,6),(183,1,8),(184,1,8);

/*Table structure for table `registration` */

DROP TABLE IF EXISTS `registration`;

CREATE TABLE `registration` (
  `RegID` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) NOT NULL,
  `mname` varchar(20) NOT NULL,
  `lname` varchar(20) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(20) NOT NULL,
  `dob` date NOT NULL,
  `gender` varchar(6) NOT NULL,
  `contactno` varchar(13) NOT NULL,
  `address` varchar(200) NOT NULL,
  `RolID` int(10) NOT NULL,
  `rg_firstattemptflag` int(2) DEFAULT '0',
  PRIMARY KEY (`RegID`),
  UNIQUE KEY `email` (`email`),
  KEY `RolID` (`RolID`),
  CONSTRAINT `registration_ibfk_1` FOREIGN KEY (`RolID`) REFERENCES `role` (`RolID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=latin1;

/*Data for the table `registration` */

insert  into `registration`(`RegID`,`fname`,`mname`,`lname`,`email`,`password`,`dob`,`gender`,`contactno`,`address`,`RolID`,`rg_firstattemptflag`) values (1,'Zeenesh','D','Patel','zeepatel1794@gmail.com','1234567','1994-07-01','Male','8866879519','B/4 , Vijay apartment, vavol, Gandhinagar, Gujarat-382015',1,NULL),(2,'Sanjana','k','Raval','sanjanaraval@gmail.com','loveusomuch','1991-02-09','Female','8845283710','ahmedabad',2,0),(3,'Tirth','S','Shah','tirth@gmail.com','1234567','1992-08-15','Male','9574949496','gandhinagar',3,0),(6,'Zeenesh','D','Patel','developer@gmail.com','1234567','1994-07-01','Male','8866879519','ahmedabad',5,0),(7,'Parth','L','Dave','parthdv4@gmail.com','1234567','1995-08-28','Male','1234567890','ahmedabad',4,1),(8,'Amish','JasavantBhai','Patel','amish.patel@gmail.com','amishpatel','1993-11-12','Male','8511851111','JB,Tower,memnagar',4,NULL),(10,'Ujjwal','Kumar','Singh','ujjwalpinku@gmail.com','ujjwal9295','1992-01-01','Male','9099999999','Amnour,Saran,India',3,1),(11,'Amish','mama','Patel','amishpatel7012@gmail.com','1234567','1992-08-19','Male','8511851185','baroda',2,NULL),(12,'dilip','j','p','dilip@gmail.com','1234567','2016-12-01','Male','85858585','baroda',2,NULL),(13,'Jignesh','Keshavlal','Parmar','jignesh301095@gmail.com','123456789','1996-04-01','Male','9423214596','my name is khan i  m terrirdist',2,NULL),(14,'palak','p','patel','palak@gmail.com','1234567','2016-12-07','Female','3434343434','baroda',2,NULL);

/*Table structure for table `role` */

DROP TABLE IF EXISTS `role`;

CREATE TABLE `role` (
  `RolID` int(10) NOT NULL AUTO_INCREMENT,
  `Role` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`RolID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `role` */

insert  into `role`(`RolID`,`Role`) values (1,'Finance'),(2,'HR'),(3,'PM'),(4,'Student'),(5,'Devloper');

/*Table structure for table `studproject` */

DROP TABLE IF EXISTS `studproject`;

CREATE TABLE `studproject` (
  `proid` int(10) NOT NULL AUTO_INCREMENT,
  `protitle` varchar(40) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `language` varchar(20) DEFAULT NULL,
  `regid` int(10) DEFAULT NULL,
  PRIMARY KEY (`proid`),
  KEY `regid` (`regid`),
  CONSTRAINT `studproject_ibfk_1` FOREIGN KEY (`regid`) REFERENCES `registration` (`RegID`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=latin1;

/*Data for the table `studproject` */

insert  into `studproject`(`proid`,`protitle`,`description`,`language`,`regid`) values (3,'Real Estate','all details of flats and bunglows user can search','java:Hibernet',7),(4,'erp','erp','java',7),(5,'Real Estate','real estate','dotnet',7),(15,'finding route','to find route','DotNet',7),(16,'books','about all books','android',7),(17,'hibernatecrud','its amazing project','jsp,servlet',8),(18,'real estate','dfdd','jsp servlet',8),(19,'Java Game','JSP','java',8),(20,'PHP','HTML','Wordpress',8),(21,'gfgf','fg','fgf',8),(22,'PHP','HTML','Wordpress',8),(23,'PHP','HTML','Wordpress',8),(24,'robo','sas','jsp',8);

/*Table structure for table `urlmaster` */

DROP TABLE IF EXISTS `urlmaster`;

CREATE TABLE `urlmaster` (
  `urlid` int(10) NOT NULL AUTO_INCREMENT,
  `url_dvp_id` int(10) DEFAULT NULL,
  `url_stud_id` int(10) DEFAULT NULL,
  `url_status` int(2) DEFAULT NULL,
  `request_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `url` varchar(300) DEFAULT NULL,
  `accept_time` timestamp NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`urlid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `urlmaster` */

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
