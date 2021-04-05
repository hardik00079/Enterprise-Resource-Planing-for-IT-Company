/*
SQLyog Community Edition- MySQL GUI v7.12 
MySQL - 5.6.16 : Database - real_estate1
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`real_estate1` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `real_estate1`;

/*Table structure for table `addagent` */

DROP TABLE IF EXISTS `addagent`;

CREATE TABLE `addagent` (
  `agentId` int(10) NOT NULL AUTO_INCREMENT,
  `agentName` varchar(50) DEFAULT NULL,
  `agentEmailId` varchar(75) DEFAULT NULL,
  `agentContact` varchar(13) DEFAULT NULL,
  `agentSpecialization` int(10) DEFAULT NULL,
  `agentUsername` varchar(50) DEFAULT NULL,
  `agentPassword` varchar(50) DEFAULT NULL,
  `Profile_Id` int(10) DEFAULT NULL,
  `AddAgentTime` timestamp(5) NULL DEFAULT NULL,
  PRIMARY KEY (`agentId`),
  KEY `agentSpecialization` (`agentSpecialization`),
  KEY `Profile_Id` (`Profile_Id`),
  CONSTRAINT `addagent_ibfk_1` FOREIGN KEY (`agentSpecialization`) REFERENCES `agentspecialization` (`agentspecialization_id`),
  CONSTRAINT `addagent_ibfk_2` FOREIGN KEY (`Profile_Id`) REFERENCES `userprofile` (`userprofile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `addagent` */

insert  into `addagent`(`agentId`,`agentName`,`agentEmailId`,`agentContact`,`agentSpecialization`,`agentUsername`,`agentPassword`,`Profile_Id`,`AddAgentTime`) values (8,'Akshay ','akshay@gmail.com','9561978898',1,'ak145','akshay',NULL,'2016-04-22 16:16:55.00000'),(9,'Sukanya','sukanya@gmail.com','9175150693',1,'sukSuk','akki',35,'2016-05-10 01:53:43.00000'),(10,'Suk','sukanya12@gmail.com','9561978898',1,'su','123',35,'2016-05-11 12:46:59.00000'),(11,'Jaan','jaan@gmail.com','1212121212',3,'Jaan','jaanpatel',NULL,'2016-12-06 11:02:35.00000');

/*Table structure for table `addcontractor` */

DROP TABLE IF EXISTS `addcontractor`;

CREATE TABLE `addcontractor` (
  `ContractorId` int(10) NOT NULL AUTO_INCREMENT,
  `ContractorName` varchar(200) DEFAULT NULL,
  `ContractorAddress` varchar(200) DEFAULT NULL,
  `ContractorType` varchar(200) DEFAULT NULL,
  `ContactNo` varchar(200) DEFAULT NULL,
  `Email` varchar(200) DEFAULT NULL,
  `Profile_id` int(10) DEFAULT NULL,
  `AgentProfile_id` int(10) DEFAULT NULL,
  `addcontractortime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ContractorId`),
  KEY `Profile_id` (`Profile_id`),
  KEY `AgentProfile_id` (`AgentProfile_id`),
  CONSTRAINT `addcontractor_ibfk_1` FOREIGN KEY (`Profile_id`) REFERENCES `userprofile` (`userprofile_id`),
  CONSTRAINT `addcontractor_ibfk_2` FOREIGN KEY (`AgentProfile_id`) REFERENCES `addagent` (`agentId`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `addcontractor` */

insert  into `addcontractor`(`ContractorId`,`ContractorName`,`ContractorAddress`,`ContractorType`,`ContactNo`,`Email`,`Profile_id`,`AgentProfile_id`,`addcontractortime`) values (4,'Sheetal','Bangalore','Furniture','9561978898','sheetal@gmail.com',35,NULL,'2016-05-10 01:55:19'),(5,'asdf','asdfg','Building','1234567890','asdf@gmail.com',35,NULL,'2016-05-11 12:47:33'),(6,'Akshay','Pune','Building','9561978989','akki@gmail.com',38,NULL,'2016-06-13 12:40:51'),(7,'Jadu Patel','bapunagar','Building','8686868686','86@gmail.com',43,NULL,'2016-12-06 10:51:06');

/*Table structure for table `addmeeting` */

DROP TABLE IF EXISTS `addmeeting`;

CREATE TABLE `addmeeting` (
  `MeetingId` int(10) NOT NULL AUTO_INCREMENT,
  `Meetingsubject` varchar(200) DEFAULT NULL,
  `clientname` varchar(200) DEFAULT NULL,
  `meetingtime` varchar(200) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `Profile_id` int(10) DEFAULT NULL,
  `MeetingStatus` varchar(15) DEFAULT NULL,
  `addmeetingtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`MeetingId`),
  KEY `Profile_id` (`Profile_id`),
  CONSTRAINT `addmeeting_ibfk_1` FOREIGN KEY (`Profile_id`) REFERENCES `userprofile` (`userprofile_id`),
  CONSTRAINT `addmeeting_ibfk_3` FOREIGN KEY (`Profile_id`) REFERENCES `userprofile` (`userprofile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

/*Data for the table `addmeeting` */

insert  into `addmeeting`(`MeetingId`,`Meetingsubject`,`clientname`,`meetingtime`,`Date`,`Profile_id`,`MeetingStatus`,`addmeetingtime`) values (6,'Property','Sujatha','14:00','2016-05-03',35,'Inprogress','2016-06-11 15:12:39'),(7,'Booking','Aakash','15:00','2016-05-04',35,'Completed','2016-06-11 15:12:45'),(8,'Sell','Akshay','13:00','2016-05-10',35,'Incomplete','2016-06-11 15:12:52'),(9,'Sellwsw','Sukanya','20:30','2016-05-10',36,'Inprogress','2016-06-11 15:12:57'),(10,'Booking','Aakash','20:30','2016-05-10',36,'Inprogress','2016-06-11 15:13:10'),(11,'Booking','Aakash','12:00','2016-05-11',36,'Incomplete','2016-06-11 15:13:15'),(12,'Sell','Sukanya','13:00','2016-05-11',36,'Completed','2016-06-11 15:13:20'),(13,'Booking','Aakash','15:00','2016-05-11',35,'Inprogress','2016-05-11 12:49:26'),(14,'Booking','Sukanya','12:00','2016-05-13',35,'Completed','2016-05-11 12:49:37'),(15,'shell','aks','12:00','2016-06-08',40,'Incomplete','2016-06-11 15:13:31'),(16,'Property Sell','`Akshay','13:00','2016-06-13',38,'Inprogress','2016-06-13 13:09:56'),(17,'Sell','Akki','12:30','2016-06-13',38,'Completed','2016-06-13 12:15:35'),(18,'Property','Divya','13:00','2016-06-14',38,'Inprogress','2016-06-13 12:15:40'),(19,'Property Booking','Manorama','14:10','2016-06-13',38,'Incomplete','2016-06-13 12:15:44'),(20,'Sell Property','Amish Mama','01:59','2016-12-06',43,NULL,'2016-12-06 10:49:43');

/*Table structure for table `addproject` */

DROP TABLE IF EXISTS `addproject`;

CREATE TABLE `addproject` (
  `AddProjectId` int(10) NOT NULL AUTO_INCREMENT,
  `Project_Name` varchar(100) DEFAULT NULL,
  `Propertytype_id` int(10) DEFAULT NULL,
  `Projectstatus_id` int(10) DEFAULT NULL,
  `City_id` int(10) DEFAULT NULL,
  `Location` varchar(200) DEFAULT NULL,
  `LandMark` varchar(200) DEFAULT NULL,
  `ammenities_id` int(10) DEFAULT NULL,
  `description` varchar(200) DEFAULT NULL,
  `budget` varchar(100) DEFAULT NULL,
  `Profile_id` int(10) DEFAULT NULL,
  `ProjectImage` varchar(150) DEFAULT NULL,
  `LocationMapImage` varchar(150) DEFAULT NULL,
  `AgentProfile_id` int(10) DEFAULT NULL,
  `addprojecttime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`AddProjectId`),
  KEY `Projectstatus_id` (`Projectstatus_id`),
  KEY `Propertytype_id` (`Propertytype_id`),
  KEY `City_id` (`City_id`),
  KEY `ammenities_id` (`ammenities_id`),
  KEY `Profile_id` (`Profile_id`),
  KEY `AgentProfile_id` (`AgentProfile_id`),
  CONSTRAINT `addproject_ibfk_1` FOREIGN KEY (`Profile_id`) REFERENCES `userprofile` (`userprofile_id`),
  CONSTRAINT `addproject_ibfk_2` FOREIGN KEY (`Projectstatus_id`) REFERENCES `projectstatus` (`ProjectStatusId`),
  CONSTRAINT `addproject_ibfk_3` FOREIGN KEY (`Propertytype_id`) REFERENCES `propertytype` (`Propertytype_id`),
  CONSTRAINT `addproject_ibfk_4` FOREIGN KEY (`City_id`) REFERENCES `city` (`city_id`),
  CONSTRAINT `addproject_ibfk_5` FOREIGN KEY (`ammenities_id`) REFERENCES `aminities` (`aminities_id`),
  CONSTRAINT `addproject_ibfk_6` FOREIGN KEY (`Profile_id`) REFERENCES `userprofile` (`userprofile_id`),
  CONSTRAINT `addproject_ibfk_7` FOREIGN KEY (`AgentProfile_id`) REFERENCES `addagent` (`agentId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `addproject` */

insert  into `addproject`(`AddProjectId`,`Project_Name`,`Propertytype_id`,`Projectstatus_id`,`City_id`,`Location`,`LandMark`,`ammenities_id`,`description`,`budget`,`Profile_id`,`ProjectImage`,`LocationMapImage`,`AgentProfile_id`,`addprojecttime`) values (4,'Sky Heights',1,1,1,'Hinjawadi','Meeza 9 Hotel',4,'Building Your Dream. India\'s First Smart City','50 Cr. 99 Lacs.',35,'Snowy (10).jpg','Snowy (5).jpg',NULL,'2016-05-10 01:51:11'),(5,'Sky Height',2,1,1,'Hinjawadi','Marunje Road',5,'Digital City','50 Cr. 75 Lacs.',36,'Stock_05.jpg','Stock_02.jpg',NULL,'2016-05-10 18:59:31'),(6,'Blue Ridge',1,1,1,'Wakad','Shivar Chowk',7,'New Construction','49 Cr. 89 Lacs.',35,'Stock_20.jpg','Stock_19.jpg',NULL,'2016-05-11 12:39:49'),(7,'Sky Rebel',1,1,1,'Chinchwad','PCMC',14,'New construction of 1-2 bhk flats','48 Cr. 87 Lacs.',38,NULL,NULL,NULL,'2016-06-13 12:27:50'),(8,'gajanan villa',1,1,7,'naroda','1200 sq feet',16,'it is largest villa in naroda','14 Cr. 17 Lacs.',45,NULL,NULL,NULL,'2016-12-06 10:10:57'),(9,'ashiyana villa',1,3,7,'ahmedabad','JB tower',17,'very good residential project','50 Cr. 19 Lacs.',36,NULL,NULL,NULL,'2016-12-06 11:28:36'),(10,'rajnikant works',2,3,7,'vastrapur','road',18,'gprkop ormvmjugoq- q bj9t-q0[','21 Cr. 19 Lacs.',NULL,NULL,NULL,NULL,'2016-12-06 11:48:49');

/*Table structure for table `agentspecialization` */

DROP TABLE IF EXISTS `agentspecialization`;

CREATE TABLE `agentspecialization` (
  `agentspecialization_id` int(11) NOT NULL AUTO_INCREMENT,
  `Role` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`agentspecialization_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `agentspecialization` */

insert  into `agentspecialization`(`agentspecialization_id`,`Role`) values (1,'Residential'),(2,'Commercial'),(3,'Both');

/*Table structure for table `allocatetask` */

DROP TABLE IF EXISTS `allocatetask`;

CREATE TABLE `allocatetask` (
  `taskId` int(10) NOT NULL AUTO_INCREMENT,
  `duration` varchar(50) DEFAULT NULL,
  `budget` varchar(50) DEFAULT NULL,
  `WorkStatus` varchar(20) DEFAULT NULL,
  `contractorId` int(10) DEFAULT NULL,
  `contractorTypeId` int(10) DEFAULT NULL,
  `ProfileId` int(10) DEFAULT NULL,
  `projectId` int(10) DEFAULT NULL,
  PRIMARY KEY (`taskId`),
  KEY `contractorId` (`contractorId`),
  KEY `contractorTypeId` (`contractorTypeId`),
  KEY `projectId` (`projectId`),
  KEY `ProfileId` (`ProfileId`),
  CONSTRAINT `allocatetask_ibfk_1` FOREIGN KEY (`contractorId`) REFERENCES `addcontractor` (`ContractorId`),
  CONSTRAINT `allocatetask_ibfk_2` FOREIGN KEY (`contractorTypeId`) REFERENCES `contractortype` (`ContractorTypeId`),
  CONSTRAINT `allocatetask_ibfk_3` FOREIGN KEY (`projectId`) REFERENCES `addproject` (`AddProjectId`),
  CONSTRAINT `allocatetask_ibfk_4` FOREIGN KEY (`ProfileId`) REFERENCES `userprofile` (`userprofile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `allocatetask` */

insert  into `allocatetask`(`taskId`,`duration`,`budget`,`WorkStatus`,`contractorId`,`contractorTypeId`,`ProfileId`,`projectId`) values (1,'1 Month 15 Day.','15 Lacs. 75 Thousands.','Inprogress',4,10,35,4),(2,'3 Month 14 Day.','40 Lacs. 8 Thousands.','Completed',5,1,35,6),(3,'4 Month 5 Day.','50 Lacs. 90 Thousands.','Completed',6,1,38,7),(4,'3 Month 15 Day.','3 Lacs. 5 Thousands.','Completed',7,1,43,NULL);

/*Table structure for table `aminities` */

DROP TABLE IF EXISTS `aminities`;

CREATE TABLE `aminities` (
  `aminities_id` int(15) NOT NULL AUTO_INCREMENT,
  `Home Features` varchar(350) DEFAULT NULL,
  `Society Features` varchar(350) DEFAULT NULL,
  `Others` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`aminities_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `aminities` */

insert  into `aminities`(`aminities_id`,`Home Features`,`Society Features`,`Others`) values (1,'power_backup,security,garden,internet,',NULL,NULL),(2,'power_backup,air_condition,vastu,water_storage,water_purifier,piped_gas,',NULL,NULL),(3,'power_backup,air_condition,vastu,water_storage,',NULL,NULL),(4,'air_condition,garden,vastu,intercom,',NULL,NULL),(5,'power_backup,security,air_condition,garden,vastu,water_storage,water_purifier,',NULL,NULL),(6,'Power BackUp,Security/Fire Alarm,Centrally Air Condition,Private Garden/Terrace','Visitor Parking,Swimmimg,Lift(s),Fitness Centre/GYM,Club House','Waste disposal,Rain water harwesting'),(7,'power_backup,security,air_condition,garden,vastu,',NULL,NULL),(8,'Vastu complaint,Water storage,Water purifier',NULL,'Waste disposal,Bank attached property'),(9,'Vastu complaint,Water storage',NULL,'Waste disposal,Rain water harwesting,Bank attached property'),(10,'Power BackUp,Security/Fire Alarm,Centrally Air Condition,Private Garden/Terrace,Intercom facility','Visitor Parking,Swimmimg,Lift(s)','Waste disposal,Rain water harwesting'),(11,'Power BackUp,Security/Fire Alarm,Centrally Air Condition,Private Garden/Terrace,Intercom facility','Visitor Parking,Swimmimg,Lift(s),Fitness Centre/GYM,Club House','Waste disposal,Rain water harwesting'),(12,'Power BackUp,Security/Fire Alarm,Centrally Air Condition,Private Garden/Terrace,Vastu complaint,Intercom facility,Water storage','Visitor Parking,Swimmimg,Lift(s),Fitness Centre/GYM,Club House,Security Personnel','Waste disposal,Rain water harwesting'),(13,'Power BackUp,Security/Fire Alarm,Centrally Air Condition,Private Garden/Terrace,Vastu complaint,Intercom facility','Visitor Parking,Swimmimg,Lift(s),Fitness Centre/GYM,Club House,Security Personnel','Waste disposal,Rain water harwesting,Bank attached property'),(14,'power_backup,security,air_condition,garden,vastu,intercom,',NULL,NULL),(15,'Vastu complaint,Water storage',NULL,'Bank attached property'),(16,'power_backup,security,air_condition,garden,intercom,water_storage,water_purifier,piped_gas,',NULL,NULL),(17,'power_backup,air_condition,vastu,intercom,water_storage,water_purifier,piped_gas,internet,',NULL,NULL),(18,'power_backup,security,air_condition,vastu,intercom,water_storage,water_purifier,internet,',NULL,NULL);

/*Table structure for table `area` */

DROP TABLE IF EXISTS `area`;

CREATE TABLE `area` (
  `area_id` int(15) NOT NULL AUTO_INCREMENT,
  `total_area` double DEFAULT NULL,
  `built_area` double DEFAULT NULL,
  `areaunit_id` int(5) DEFAULT NULL,
  `plot_area` int(10) DEFAULT NULL,
  `carpet_area` double DEFAULT NULL,
  PRIMARY KEY (`area_id`),
  KEY `unit_id` (`areaunit_id`),
  CONSTRAINT `area_ibfk_1` FOREIGN KEY (`areaunit_id`) REFERENCES `areaunit` (`Areaunit_id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `area` */

insert  into `area`(`area_id`,`total_area`,`built_area`,`areaunit_id`,`plot_area`,`carpet_area`) values (1,1200,1100,NULL,NULL,1000),(2,NULL,NULL,1,1000,NULL),(3,NULL,NULL,1,1000,NULL),(4,1200,1100,1,1000,1000),(5,1200,1100,1,1000,1000),(6,1300,1250,1,NULL,1100),(7,1700,1500,1,NULL,1350),(8,NULL,NULL,1,3434,NULL);

/*Table structure for table `areaunit` */

DROP TABLE IF EXISTS `areaunit`;

CREATE TABLE `areaunit` (
  `Areaunit_id` int(5) NOT NULL AUTO_INCREMENT,
  `Areaunit` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Areaunit_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `areaunit` */

insert  into `areaunit`(`Areaunit_id`,`Areaunit`) values (1,'Sq.ft'),(2,'Sq.Yards'),(3,'Sq.Meter'),(4,'Acres'),(5,'Marla'),(6,'Cents'),(7,'Bigha'),(8,'Kottha'),(9,'Kanal'),(10,'Grounds'),(11,'Ares'),(12,'Biswa'),(13,'Guntha'),(14,'Aankadam'),(15,'Hectares'),(16,'Rood'),(17,'Chataks'),(18,'Perch');

/*Table structure for table `availability` */

DROP TABLE IF EXISTS `availability`;

CREATE TABLE `availability` (
  `availability_id` int(15) NOT NULL AUTO_INCREMENT,
  `time` varchar(10) DEFAULT NULL,
  `available_id` int(5) DEFAULT NULL,
  PRIMARY KEY (`availability_id`),
  KEY `available_id` (`available_id`),
  CONSTRAINT `availability_ibfk_1` FOREIGN KEY (`available_id`) REFERENCES `available` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `availability` */

insert  into `availability`(`availability_id`,`time`,`available_id`) values (1,'Now',2),(2,'Within 3 m',1),(3,'within 6 m',1),(4,'By 2017',1),(5,'By 2018',1),(6,'By 2019',1),(7,'By 2020',1);

/*Table structure for table `available` */

DROP TABLE IF EXISTS `available`;

CREATE TABLE `available` (
  `id` int(5) NOT NULL AUTO_INCREMENT,
  `type` varchar(40) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `available` */

insert  into `available`(`id`,`type`) values (1,'Under construction'),(2,'Ready to move');

/*Table structure for table `bookingrecord` */

DROP TABLE IF EXISTS `bookingrecord`;

CREATE TABLE `bookingrecord` (
  `BookingId` int(10) NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(50) DEFAULT NULL,
  `City` int(10) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `Bedrooms` int(10) DEFAULT NULL,
  `ProjectName` int(10) DEFAULT NULL,
  `PropertyType` int(10) DEFAULT NULL,
  `ProfileId` int(10) DEFAULT NULL,
  PRIMARY KEY (`BookingId`),
  KEY `ProjectName` (`ProjectName`),
  KEY `PropertyType` (`PropertyType`),
  KEY `ProfileId` (`ProfileId`),
  KEY `City` (`City`),
  CONSTRAINT `bookingrecord_ibfk_1` FOREIGN KEY (`ProjectName`) REFERENCES `addproject` (`AddProjectId`),
  CONSTRAINT `bookingrecord_ibfk_2` FOREIGN KEY (`PropertyType`) REFERENCES `propertytype` (`Propertytype_id`),
  CONSTRAINT `bookingrecord_ibfk_3` FOREIGN KEY (`ProfileId`) REFERENCES `userprofile` (`userprofile_id`),
  CONSTRAINT `bookingrecord_ibfk_4` FOREIGN KEY (`City`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `bookingrecord` */

insert  into `bookingrecord`(`BookingId`,`ClientName`,`City`,`Location`,`ContactNo`,`Date`,`EmailId`,`Bedrooms`,`ProjectName`,`PropertyType`,`ProfileId`) values (1,'Aakash',1,'Hinjawadi','7022161697','2016-05-02','akash@gmail.com',2,4,1,35),(2,'Sujatha',4,'Hebbal','9156381838','2016-05-04','sujju@gmail.com',2,4,1,35),(3,'Aakash',1,'Hinjawadi','7022161697',NULL,'akash@gmail.com',2,5,2,36),(4,'Sujatha',2,'Hebbal','9156381838',NULL,'sujju@gmail.com',1,5,2,36),(5,'Aakash',1,'Hinjawadi','7022161697','2016-05-11','akash@gmail.com',2,6,1,35),(6,'Sujatha',1,'Hinjawadi','9156381838','2016-05-12','sujju@gmail.com',2,6,1,35),(7,'Aakash',2,'katraj','7022161697','2016-05-12','akash@gmail.com',2,4,1,35),(8,'Akshay',2,'Nariman Point','9096454496',NULL,'akshay.s0890@gmail.com',2,7,1,38);

/*Table structure for table `bookingtype` */

DROP TABLE IF EXISTS `bookingtype`;

CREATE TABLE `bookingtype` (
  `bookingtype_id` int(10) NOT NULL AUTO_INCREMENT,
  `bookingtype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`bookingtype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `bookingtype` */

insert  into `bookingtype`(`bookingtype_id`,`bookingtype`) values (1,'New booking'),(2,'Resale');

/*Table structure for table `city` */

DROP TABLE IF EXISTS `city`;

CREATE TABLE `city` (
  `city_id` int(10) NOT NULL AUTO_INCREMENT,
  `cityname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `city` */

insert  into `city`(`city_id`,`cityname`) values (1,'Pune'),(2,'Mumbai'),(3,'Baroda'),(4,'Banglore'),(5,'Indore'),(6,'Kolhapur'),(7,'Ahemdabad'),(8,'Hydrabad'),(9,'Delhi'),(10,'Chennai');

/*Table structure for table `commercialpropertycatagory` */

DROP TABLE IF EXISTS `commercialpropertycatagory`;

CREATE TABLE `commercialpropertycatagory` (
  `Commercialpropertycatagory_id` int(10) NOT NULL AUTO_INCREMENT,
  `Commercialpropertycatagory` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Commercialpropertycatagory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `commercialpropertycatagory` */

insert  into `commercialpropertycatagory`(`Commercialpropertycatagory_id`,`Commercialpropertycatagory`) values (1,'Commercial Office'),(2,'Commercial Shop'),(3,'Commercial land'),(4,'Commercial Showroom'),(5,'Agriculture/farm Land '),(6,'Industrial land/Plot'),(7,'Factory'),(8,'Ware house'),(9,'Office in IT park '),(10,'Hotels/Resorts'),(11,'Guest House'),(12,'Space and Retail mall'),(13,'Office and Business Park '),(14,'Business centre'),(15,'Manufacturing'),(16,'Cold and Storage'),(17,'Others');

/*Table structure for table `contractortask` */

DROP TABLE IF EXISTS `contractortask`;

CREATE TABLE `contractortask` (
  `ContractorTaskId` int(10) NOT NULL AUTO_INCREMENT,
  `AddProject_id` int(10) DEFAULT NULL,
  `AddContractor_id` int(10) DEFAULT NULL,
  `Contactortype⁯_id` int(10) DEFAULT NULL,
  `Amount` varchar(20) DEFAULT NULL,
  `WorkDuration` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ContractorTaskId`),
  KEY `AddProject_id` (`AddProject_id`),
  KEY `AddContractor_id` (`AddContractor_id`),
  KEY `Contactortype⁯_id` (`Contactortype⁯_id`),
  CONSTRAINT `contractortask_ibfk_1` FOREIGN KEY (`AddProject_id`) REFERENCES `addproject` (`AddProjectId`),
  CONSTRAINT `contractortask_ibfk_2` FOREIGN KEY (`AddContractor_id`) REFERENCES `addcontractor` (`ContractorId`),
  CONSTRAINT `contractortask_ibfk_3` FOREIGN KEY (`Contactortype⁯_id`) REFERENCES `contractortype` (`ContractorTypeId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `contractortask` */

/*Table structure for table `contractortype` */

DROP TABLE IF EXISTS `contractortype`;

CREATE TABLE `contractortype` (
  `ContractorTypeId` int(10) NOT NULL AUTO_INCREMENT,
  `ContractorType` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ContractorTypeId`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `contractortype` */

insert  into `contractortype`(`ContractorTypeId`,`ContractorType`) values (1,'Building'),(2,'Glass'),(3,'Wire '),(4,'Electrical'),(5,'Flooring'),(6,'Tiling'),(7,'POP'),(8,'Centring'),(9,'Ceiling'),(10,'Furniture');

/*Table structure for table `deposite` */

DROP TABLE IF EXISTS `deposite`;

CREATE TABLE `deposite` (
  `deposite_id` int(10) NOT NULL AUTO_INCREMENT,
  `depositetype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`deposite_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `deposite` */

insert  into `deposite`(`deposite_id`,`depositetype`) values (1,'Fixed'),(2,'multiple of rent');

/*Table structure for table `extradetail` */

DROP TABLE IF EXISTS `extradetail`;

CREATE TABLE `extradetail` (
  `extradetail_id` int(15) NOT NULL AUTO_INCREMENT,
  `bathrooms` int(5) DEFAULT NULL,
  `bedrooms` int(5) DEFAULT NULL,
  `balconies` int(5) DEFAULT NULL,
  `pooja room` bit(2) DEFAULT NULL,
  `study room` bit(2) DEFAULT NULL,
  `servent room` bit(2) DEFAULT NULL,
  `family` bit(2) DEFAULT NULL,
  `single woman` bit(2) DEFAULT NULL,
  `single man` bit(2) DEFAULT NULL,
  `company tenant` bit(2) DEFAULT NULL,
  `wardrobes` bit(2) DEFAULT NULL,
  `AC` bit(2) DEFAULT NULL,
  `Bed` bit(2) DEFAULT NULL,
  `Kitchen` bit(2) DEFAULT NULL,
  `refrigerator` bit(2) DEFAULT NULL,
  `modular kitchen` bit(2) DEFAULT NULL,
  `gyser` bit(2) DEFAULT NULL,
  `other details` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`extradetail_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `extradetail` */

insert  into `extradetail`(`extradetail_id`,`bathrooms`,`bedrooms`,`balconies`,`pooja room`,`study room`,`servent room`,`family`,`single woman`,`single man`,`company tenant`,`wardrobes`,`AC`,`Bed`,`Kitchen`,`refrigerator`,`modular kitchen`,`gyser`,`other details`) values (1,3,3,4,'','\0','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',NULL),(2,3,4,5,'','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',NULL),(3,2,3,3,'','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',NULL),(4,2,2,3,'','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',NULL),(5,3,3,4,'','','','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0','\0',NULL);

/*Table structure for table `mainpropertytable` */

DROP TABLE IF EXISTS `mainpropertytable`;

CREATE TABLE `mainpropertytable` (
  `mainpropertytable_id` int(20) NOT NULL AUTO_INCREMENT,
  `userprofile_id` int(15) DEFAULT NULL,
  `propertydealingrole_id` int(15) DEFAULT NULL,
  `propertytypeaction_id` int(15) DEFAULT NULL,
  `propertytype_id` int(5) DEFAULT NULL,
  `Residentialpropertycatagory_id` int(10) DEFAULT NULL,
  `Commercialpropertycatagory_id` int(15) DEFAULT NULL,
  `city_id` int(15) DEFAULT NULL,
  `area_id` int(15) DEFAULT NULL,
  `availability_id` int(15) DEFAULT NULL,
  `propertyownership_id` int(15) DEFAULT NULL,
  `propertyphoto_id` int(15) DEFAULT NULL,
  `aminities_id` int(15) DEFAULT NULL,
  `bookingtype_id` int(10) DEFAULT NULL,
  `Ageofproperty` int(10) DEFAULT NULL,
  `Deposite_id` int(10) DEFAULT NULL,
  `extradetail_id` int(10) DEFAULT NULL,
  `propertyaddress` int(10) DEFAULT NULL,
  `expectedprice` decimal(10,0) DEFAULT NULL,
  `societyprojectname` varchar(50) DEFAULT NULL,
  `maintenancecharge_id` int(10) DEFAULT NULL,
  `manyproperty` int(10) DEFAULT NULL,
  `propertyupdatetime` timestamp(6) NULL DEFAULT NULL,
  `pricePerUnit` decimal(10,0) DEFAULT NULL,
  `furnishing_type` varchar(20) DEFAULT NULL,
  `callprefrence` varchar(10) DEFAULT NULL,
  `totalfloor` int(10) DEFAULT NULL,
  `nooffloor` int(10) DEFAULT NULL,
  PRIMARY KEY (`mainpropertytable_id`),
  KEY `action` (`propertytype_id`),
  KEY `address` (`propertytypeaction_id`),
  KEY `details` (`userprofile_id`),
  KEY `property_details` (`propertydealingrole_id`),
  KEY `area` (`area_id`),
  KEY `availability` (`availability_id`),
  KEY `property_ownership` (`propertyownership_id`),
  KEY `picture` (`propertyphoto_id`),
  KEY `aminities` (`aminities_id`),
  KEY `Residentialpropertycatagory_id` (`Residentialpropertycatagory_id`),
  KEY `Commercialpropertycatagory_id` (`Commercialpropertycatagory_id`),
  KEY `city_id` (`city_id`),
  KEY `bookingtype_id` (`bookingtype_id`),
  KEY `Deposite_id` (`Deposite_id`),
  KEY `extradetail_id` (`extradetail_id`),
  KEY `maintenancecharge_id` (`maintenancecharge_id`),
  KEY `propertyaddress` (`propertyaddress`),
  CONSTRAINT `mainpropertytable_ibfk_10` FOREIGN KEY (`availability_id`) REFERENCES `availability` (`availability_id`),
  CONSTRAINT `mainpropertytable_ibfk_11` FOREIGN KEY (`propertyphoto_id`) REFERENCES `propertyphoto` (`propertyphoto_id`),
  CONSTRAINT `mainpropertytable_ibfk_12` FOREIGN KEY (`propertyownership_id`) REFERENCES `propertyownership` (`propertyownership_id`),
  CONSTRAINT `mainpropertytable_ibfk_13` FOREIGN KEY (`bookingtype_id`) REFERENCES `bookingtype` (`bookingtype_id`),
  CONSTRAINT `mainpropertytable_ibfk_14` FOREIGN KEY (`Deposite_id`) REFERENCES `deposite` (`deposite_id`),
  CONSTRAINT `mainpropertytable_ibfk_15` FOREIGN KEY (`extradetail_id`) REFERENCES `extradetail` (`extradetail_id`),
  CONSTRAINT `mainpropertytable_ibfk_16` FOREIGN KEY (`area_id`) REFERENCES `area` (`area_id`),
  CONSTRAINT `mainpropertytable_ibfk_17` FOREIGN KEY (`aminities_id`) REFERENCES `aminities` (`aminities_id`),
  CONSTRAINT `mainpropertytable_ibfk_18` FOREIGN KEY (`maintenancecharge_id`) REFERENCES `maintenancecharge` (`maintenancecharge_id`),
  CONSTRAINT `mainpropertytable_ibfk_19` FOREIGN KEY (`propertyaddress`) REFERENCES `propertyaddress` (`Address_id`),
  CONSTRAINT `mainpropertytable_ibfk_2` FOREIGN KEY (`userprofile_id`) REFERENCES `userprofile` (`userprofile_id`),
  CONSTRAINT `mainpropertytable_ibfk_3` FOREIGN KEY (`propertydealingrole_id`) REFERENCES `userroleprofile` (`userroleprofile_id`),
  CONSTRAINT `mainpropertytable_ibfk_4` FOREIGN KEY (`propertytypeaction_id`) REFERENCES `propertytypeaction` (`propertytypeaction_id`),
  CONSTRAINT `mainpropertytable_ibfk_5` FOREIGN KEY (`propertytype_id`) REFERENCES `propertytype` (`Propertytype_id`),
  CONSTRAINT `mainpropertytable_ibfk_6` FOREIGN KEY (`Residentialpropertycatagory_id`) REFERENCES `residentialpropertycatagory` (`Residentialpropertycatagory_id`),
  CONSTRAINT `mainpropertytable_ibfk_7` FOREIGN KEY (`Commercialpropertycatagory_id`) REFERENCES `commercialpropertycatagory` (`Commercialpropertycatagory_id`),
  CONSTRAINT `mainpropertytable_ibfk_8` FOREIGN KEY (`city_id`) REFERENCES `city` (`city_id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `mainpropertytable` */

insert  into `mainpropertytable`(`mainpropertytable_id`,`userprofile_id`,`propertydealingrole_id`,`propertytypeaction_id`,`propertytype_id`,`Residentialpropertycatagory_id`,`Commercialpropertycatagory_id`,`city_id`,`area_id`,`availability_id`,`propertyownership_id`,`propertyphoto_id`,`aminities_id`,`bookingtype_id`,`Ageofproperty`,`Deposite_id`,`extradetail_id`,`propertyaddress`,`expectedprice`,`societyprojectname`,`maintenancecharge_id`,`manyproperty`,`propertyupdatetime`,`pricePerUnit`,`furnishing_type`,`callprefrence`,`totalfloor`,`nooffloor`) values (1,35,2,1,1,1,NULL,1,1,1,NULL,1,6,NULL,1,NULL,1,1,'6500000','Spring Hieghts',1,NULL,'2016-05-11 12:28:38.000000',NULL,'furnished',NULL,4,2),(2,35,2,1,1,2,NULL,1,2,NULL,1,2,8,2,NULL,NULL,NULL,2,'3000000','Blue Ridge',2,NULL,'2016-05-11 16:12:11.000000','3000',NULL,NULL,NULL,NULL),(3,35,2,1,1,2,NULL,1,3,NULL,1,3,9,2,NULL,NULL,NULL,3,'3000000','Green Street',3,NULL,'2016-05-11 16:16:12.000000','3000',NULL,NULL,NULL,NULL),(4,35,2,1,1,1,NULL,1,4,1,NULL,4,10,2,3,NULL,2,4,'6500000','Amrut Kalash',4,NULL,'2016-05-11 16:56:42.000000','6250','furnished',NULL,10,4),(5,35,2,1,1,1,NULL,1,5,1,NULL,5,11,2,2,NULL,3,5,'6500000','abc',5,NULL,'2016-05-11 17:32:26.000000','6250','furnished',NULL,10,3),(6,35,2,1,1,1,NULL,1,6,1,1,6,12,2,1,NULL,4,6,'6500000','Ruby Park',6,NULL,'2016-06-10 17:00:53.000000',NULL,'furnished',NULL,7,3),(8,35,2,1,1,1,NULL,1,7,1,1,7,13,2,2,NULL,5,7,'7000000','Rubby',7,NULL,'2016-06-10 17:48:06.000000','4500','furnished',NULL,5,2),(9,35,2,1,1,2,NULL,5,8,NULL,2,8,15,1,NULL,NULL,NULL,8,'45345',NULL,8,NULL,'2016-07-09 14:24:44.000000','345',NULL,NULL,NULL,NULL);

/*Table structure for table `maintenancecharge` */

DROP TABLE IF EXISTS `maintenancecharge`;

CREATE TABLE `maintenancecharge` (
  `maintenancecharge_id` int(10) NOT NULL AUTO_INCREMENT,
  `maintenancecharge` decimal(10,0) DEFAULT NULL,
  `maintenancechargetype` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`maintenancecharge_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `maintenancecharge` */

insert  into `maintenancecharge`(`maintenancecharge_id`,`maintenancecharge`,`maintenancechargetype`) values (1,'1200','0'),(2,'1000','Monthly'),(3,'1000','Monthly'),(4,'1200','Monthly'),(5,'1200','Monthly'),(6,'2000','Monthly'),(7,'2000','Monthly'),(8,'3453','Monthly');

/*Table structure for table `projectstatus` */

DROP TABLE IF EXISTS `projectstatus`;

CREATE TABLE `projectstatus` (
  `ProjectStatusId` int(10) NOT NULL AUTO_INCREMENT,
  `ProjectStatus` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`ProjectStatusId`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `projectstatus` */

insert  into `projectstatus`(`ProjectStatusId`,`ProjectStatus`) values (1,'New Construction'),(2,'Ongoing Construction'),(3,'Completed'),(4,'Upcoming');

/*Table structure for table `propertyaddress` */

DROP TABLE IF EXISTS `propertyaddress`;

CREATE TABLE `propertyaddress` (
  `Address_id` int(10) NOT NULL AUTO_INCREMENT,
  `location` varchar(80) DEFAULT NULL,
  `street` varchar(80) DEFAULT NULL,
  `landmark` varchar(80) DEFAULT NULL,
  `society` varchar(80) DEFAULT NULL,
  PRIMARY KEY (`Address_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `propertyaddress` */

insert  into `propertyaddress`(`Address_id`,`location`,`street`,`landmark`,`society`) values (1,'Katraj','asdf','asdf','asdf'),(2,'katraj','ambegao','Reliance Fresh',NULL),(3,'katraj','ambegao','Reliance Fresh',NULL),(4,'katraj','ambegao','reliancefresh','Amrut Kalash'),(5,'kothrud','karve road','karve','abc'),(6,'katraj','JM road','JM Temple','Ruby Park'),(7,'katraj','JM','JM Temple','Rubby'),(8,'fg','dfg','gf','g');

/*Table structure for table `propertyownership` */

DROP TABLE IF EXISTS `propertyownership`;

CREATE TABLE `propertyownership` (
  `propertyownership_id` int(15) NOT NULL AUTO_INCREMENT,
  `propertyownership` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`propertyownership_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `propertyownership` */

insert  into `propertyownership`(`propertyownership_id`,`propertyownership`) values (1,'Freehold'),(2,'Leasehold'),(3,'Co-operative society'),(4,'Power of attorney');

/*Table structure for table `propertyphoto` */

DROP TABLE IF EXISTS `propertyphoto`;

CREATE TABLE `propertyphoto` (
  `propertyphoto_id` int(20) NOT NULL AUTO_INCREMENT,
  `building1` varchar(255) DEFAULT NULL,
  `building2` varchar(255) DEFAULT NULL,
  `room1` varchar(255) DEFAULT NULL,
  `room2` varchar(255) DEFAULT NULL,
  `room3` varchar(255) DEFAULT NULL,
  `kitchen1` varchar(255) DEFAULT NULL,
  `kitchen2` varchar(255) DEFAULT NULL,
  `kitchen3` varchar(255) DEFAULT NULL,
  `bathroom1` varchar(255) DEFAULT NULL,
  `bathroom2` varchar(255) DEFAULT NULL,
  `floor plan` varchar(255) DEFAULT NULL,
  `master plan` varchar(255) DEFAULT NULL,
  `location map` varchar(255) DEFAULT NULL,
  `other1` varchar(255) DEFAULT NULL,
  `other2` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`propertyphoto_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `propertyphoto` */

insert  into `propertyphoto`(`propertyphoto_id`,`building1`,`building2`,`room1`,`room2`,`room3`,`kitchen1`,`kitchen2`,`kitchen3`,`bathroom1`,`bathroom2`,`floor plan`,`master plan`,`location map`,`other1`,`other2`) values (1,'','','','',NULL,'','','','','','','','',NULL,NULL),(2,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL),(3,'Stock_01.jpg','Stock_05.jpg',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'Stock_04.jpg','Stock_08.jpg',NULL),(4,'Stock_01.jpg','Stock_04.jpg','Stock_02.jpg','Stock_05.jpg',NULL,'Stock_03.jpg','Stock_06.jpg',NULL,'Stock_07.jpg','Stock_10.jpg','Stock_08.jpg','Stock_09.jpg','Stock_11.jpg','Stock_08.jpg',NULL),(5,'2.jpg','7.jpg','15.jpg','15.jpg',NULL,'12.jpg','10.jpg',NULL,'17.jpg','22.jpg','16.jpg','14.jpg','','Stock_08.jpg',NULL),(6,'634282053486283750.jpg','download.jpg','Living Room.jpg','Living Room1.jpg',NULL,'Kitchen1.jpg','Kitchen2.jpg','Kitchen3.jpg','Desert.jpg','Hydrangeas.jpg','floor-house-plan.jpg','MasterPlan1.jpg','MasterPlan1.jpg',NULL,NULL),(7,'download.jpg','634282053486283750.jpg','Living Room.jpg','Living Room1.jpg',NULL,'Kitchen1.jpg','Kitchen2.jpg','Kitchen3.jpg','Desert.jpg','Lighthouse.jpg','floor-house-plan.jpg','MasterPlan1.jpg','floor-house-plan.jpg',NULL,NULL),(8,'2.jpg','',NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,NULL,'',NULL,NULL);

/*Table structure for table `propertytype` */

DROP TABLE IF EXISTS `propertytype`;

CREATE TABLE `propertytype` (
  `Propertytype_id` int(10) NOT NULL AUTO_INCREMENT,
  `Propertytype` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`Propertytype_id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `propertytype` */

insert  into `propertytype`(`Propertytype_id`,`Propertytype`) values (1,'Residential'),(2,'Commercial');

/*Table structure for table `propertytypeaction` */

DROP TABLE IF EXISTS `propertytypeaction`;

CREATE TABLE `propertytypeaction` (
  `propertytypeaction_id` int(2) NOT NULL AUTO_INCREMENT,
  `action` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`propertytypeaction_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `propertytypeaction` */

insert  into `propertytypeaction`(`propertytypeaction_id`,`action`) values (1,'Sell'),(2,'Buy'),(3,'Rent'),(4,'Lease-out');

/*Table structure for table `residentialpropertycatagory` */

DROP TABLE IF EXISTS `residentialpropertycatagory`;

CREATE TABLE `residentialpropertycatagory` (
  `Residentialpropertycatagory_id` int(10) NOT NULL AUTO_INCREMENT,
  `Residentialpropertycatagory` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`Residentialpropertycatagory_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `residentialpropertycatagory` */

insert  into `residentialpropertycatagory`(`Residentialpropertycatagory_id`,`Residentialpropertycatagory`) values (1,'Appartment'),(2,'Land'),(3,'House/Villa'),(4,'Independent/Builder Flat'),(5,'Farm house'),(6,'Studio Appartment'),(7,'Serviced Appartment'),(8,'Other');

/*Table structure for table `sellrecord` */

DROP TABLE IF EXISTS `sellrecord`;

CREATE TABLE `sellrecord` (
  `SellId` int(10) NOT NULL AUTO_INCREMENT,
  `ClientName` varchar(50) DEFAULT NULL,
  `City` int(10) DEFAULT NULL,
  `Location` varchar(50) DEFAULT NULL,
  `Date` date DEFAULT NULL,
  `ContactNo` varchar(15) DEFAULT NULL,
  `EmailId` varchar(50) DEFAULT NULL,
  `Bedrooms` int(10) DEFAULT NULL,
  `PropertyType` int(10) DEFAULT NULL,
  `ProjectName` int(10) DEFAULT NULL,
  `ProfileId` int(10) DEFAULT NULL,
  PRIMARY KEY (`SellId`),
  KEY `City` (`City`),
  KEY `PropertyType` (`PropertyType`),
  KEY `ProjectName` (`ProjectName`),
  KEY `ProfileId` (`ProfileId`),
  CONSTRAINT `sellrecord_ibfk_1` FOREIGN KEY (`City`) REFERENCES `city` (`city_id`),
  CONSTRAINT `sellrecord_ibfk_2` FOREIGN KEY (`PropertyType`) REFERENCES `propertytype` (`Propertytype_id`),
  CONSTRAINT `sellrecord_ibfk_3` FOREIGN KEY (`ProjectName`) REFERENCES `addproject` (`AddProjectId`),
  CONSTRAINT `sellrecord_ibfk_4` FOREIGN KEY (`ProfileId`) REFERENCES `userprofile` (`userprofile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `sellrecord` */

insert  into `sellrecord`(`SellId`,`ClientName`,`City`,`Location`,`Date`,`ContactNo`,`EmailId`,`Bedrooms`,`PropertyType`,`ProjectName`,`ProfileId`) values (1,'Aakash',1,'Hinjawadi','2016-05-03','7022161697','akash@gmail.com',2,1,4,35),(2,'Sujatha',4,'Hebbal','2016-05-05','9156381838','sujju@gmail.com',3,1,4,35),(3,'Aakash',1,'Hinjawadi',NULL,'7022161697','akash@gmail.com',3,1,5,36),(4,'Sujatha',2,'Hebbal',NULL,'9156381838','sujju@gmail.com',3,2,5,36),(5,'Mano',2,'Wakad',NULL,'9096874521','ak@gmail.com',2,2,5,36),(6,'Aakash',1,'Hinjawadi','2016-05-11','7022161697','akash@gmail.com',1,1,5,36),(7,'Sujatha',4,'Hebbal','2016-05-11','9156381838','sujju@gmail.com',2,1,5,36),(8,'Mano',3,'Wakad','2016-05-11','9096874521','ak@gmail.com',3,1,5,36),(9,'Sujatha',1,'Hinjawadi','2016-05-11','7022161697','ak@gmail.com',2,1,6,35),(10,'Akshay',1,'Katraj','2016-06-13','9561978898','akshay.s0890@gmail.com',3,1,7,38),(11,'Amish Patel',7,'naroda','2016-12-06','8511851185','amish@gmail.com',6,1,8,45);

/*Table structure for table `updatemeeting` */

DROP TABLE IF EXISTS `updatemeeting`;

CREATE TABLE `updatemeeting` (
  `UpdateMeetingId` int(10) NOT NULL AUTO_INCREMENT,
  `addmeeting_id` int(10) DEFAULT NULL,
  `Status_id` int(10) DEFAULT NULL,
  `updatemeetingtime` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`UpdateMeetingId`),
  KEY `Status_id` (`Status_id`),
  KEY `addmeeting_id` (`addmeeting_id`),
  CONSTRAINT `updatemeeting_ibfk_1` FOREIGN KEY (`Status_id`) REFERENCES `workingsatus` (`WorkingSatus_id`),
  CONSTRAINT `updatemeeting_ibfk_2` FOREIGN KEY (`addmeeting_id`) REFERENCES `addmeeting` (`MeetingId`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `updatemeeting` */

/*Table structure for table `userprofile` */

DROP TABLE IF EXISTS `userprofile`;

CREATE TABLE `userprofile` (
  `userprofile_id` int(10) NOT NULL AUTO_INCREMENT,
  `userextraphonenumber` varchar(13) COLLATE latin1_general_ci DEFAULT NULL,
  `useraddress` varchar(100) COLLATE latin1_general_ci DEFAULT NULL,
  `usercurrentcity` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `useroccupation` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `usercompanyname` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `usercompanyaofficeddress` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `usercompanyurl` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `usercompanyprofile` varchar(50) COLLATE latin1_general_ci DEFAULT NULL,
  `agentspecialization_id` int(10) DEFAULT NULL,
  `userdescription` varchar(350) COLLATE latin1_general_ci DEFAULT NULL,
  `userpicture` varchar(150) COLLATE latin1_general_ci DEFAULT NULL,
  `profiletime` timestamp(6) NULL DEFAULT NULL,
  PRIMARY KEY (`userprofile_id`),
  KEY `agentspecialization_id` (`agentspecialization_id`),
  CONSTRAINT `userprofile_ibfk_5` FOREIGN KEY (`agentspecialization_id`) REFERENCES `agentspecialization` (`agentspecialization_id`),
  CONSTRAINT `userprofile_ibfk_6` FOREIGN KEY (`userprofile_id`) REFERENCES `userregistration` (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=46 DEFAULT CHARSET=latin1 COLLATE=latin1_general_ci;

/*Data for the table `userprofile` */

insert  into `userprofile`(`userprofile_id`,`userextraphonenumber`,`useraddress`,`usercurrentcity`,`useroccupation`,`usercompanyname`,`usercompanyaofficeddress`,`usercompanyurl`,`usercompanyprofile`,`agentspecialization_id`,`userdescription`,`userpicture`,`profiletime`) values (35,'9096454496','Hinjawadi','Pune',NULL,'Dream Foundation','Hinjawadi','www.dreamworld.com','Construction',NULL,'We Understand your dreams and try to build them as per our imagination. Welcome to world of Dream Foundation.',NULL,'2016-05-10 01:33:43.000000'),(36,'9561978898','Katraj','Pune',NULL,'Robonet','Hinjawadi','www.robo.com',NULL,1,'I\'m working for Robonet industries  as salesman cum agent.',NULL,'2016-05-10 18:54:42.000000'),(37,'74537864777','Pune','Pune','Student',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-05-18 14:42:08.000000'),(38,'9561978898','Wakad','Pune',NULL,'Maxgen','Pune','www.max.com',NULL,3,'I\'m Working in Maxgen as sellsperson. I\'m having all type of properties.',NULL,'2016-06-13 11:37:14.000000'),(39,'9561978898','Pune','Pune','Job',NULL,NULL,NULL,NULL,NULL,NULL,NULL,'2016-06-11 14:34:45.000000'),(40,'9503896193','Pimpale Saudagar','pune','Job','Maxgen','max','www.max.com',NULL,1,'I\'m Working in Maxgen as sellsperson. I\'m having all type of properties.',NULL,'2016-06-11 15:10:21.000000'),(42,'9561978898','Shivaji Nagar','Pune',NULL,'Maxgen','Hinjawadi','www.maxgen.com',NULL,3,'I\'m Working in Maxgen as sellsperson. I\'m having all type of properties.',NULL,'2016-07-04 13:54:37.000000'),(43,'9561978898','Nariman Point','Mumbai',NULL,'Construction Nation','Pune','www.maxgen.com','construction',NULL,'We construct the nation of people\'s dream. We want to complete the basic need of peoples i.e. Dream Home.',NULL,'2016-07-04 14:01:53.000000'),(44,'9561978898','Hinjawadi','Pune',NULL,'Maxgen','Hinjawadi','www.maxgen.com','construction',2,NULL,NULL,'2016-07-04 14:03:25.000000'),(45,'8511851185','memnagar','Ahemdabad',NULL,'maxgen','j.b tower','info@maxgentechnologies.com',NULL,1,NULL,NULL,'2016-12-06 10:02:10.000000');

/*Table structure for table `userregistration` */

DROP TABLE IF EXISTS `userregistration`;

CREATE TABLE `userregistration` (
  `user_id` int(20) NOT NULL AUTO_INCREMENT,
  `user_name` varchar(50) DEFAULT NULL,
  `user_email` varchar(50) DEFAULT NULL,
  `user_phonenumber` varchar(13) DEFAULT NULL,
  `user_password` varchar(20) DEFAULT NULL,
  `registrationtime` timestamp(6) NULL DEFAULT NULL,
  `userrole_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `unique_email` (`user_email`),
  UNIQUE KEY `unique_phonenumber` (`user_phonenumber`),
  KEY `userrole_id` (`userrole_id`),
  CONSTRAINT `userregistration_ibfk_1` FOREIGN KEY (`userrole_id`) REFERENCES `userroleprofile` (`userroleprofile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=51 DEFAULT CHARSET=latin1;

/*Data for the table `userregistration` */

insert  into `userregistration`(`user_id`,`user_name`,`user_email`,`user_phonenumber`,`user_password`,`registrationtime`,`userrole_id`) values (35,'Akshay Shete','akshay.s0890@gmail.com','9561978898','akshay','2016-05-10 01:32:53.000000',2),(36,'Akshay','akki@gmail.com','9096454496','akki','2016-05-10 18:54:10.000000',3),(37,'Swaraj','sraj@gmail.com','8172637137','swaraj','2016-05-18 14:41:35.000000',1),(38,'Swa','swaraj@gmail.com','7326427828','swaraj','2016-05-18 14:46:34.000000',3),(39,'Sanjay','sanju@gmail.com','9645872631','sajay','2016-06-11 14:34:00.000000',1),(40,'sid','sidhanathbhosale92@gmail.com','9175560993','sid','2016-06-11 15:09:59.000000',3),(41,'Payal','payal.talpada@gmail.com','9595846611','payal','2016-07-04 13:14:11.000000',3),(42,'Sayali','sayali277@gmail.com','8177345029','sayali','2016-07-04 13:54:00.000000',3),(43,'Abhishek','abhishek@gmail.com','8085002640','abhi','2016-07-04 14:01:03.000000',2),(44,'Sidhanath','sidhu@gmail.com','9425202122','sid','2016-07-04 14:03:04.000000',3),(45,'Amish Patel','amish@gmail.com','8511851185','1231231','2016-12-06 09:58:16.000000',3),(46,'Amish Mama','amish123@gmail.com','8530853085','1231231','2016-12-06 10:29:21.000000',1),(47,'Mama','34@gmail.com','3434343434','3434343','2016-12-06 10:55:40.000000',2),(48,'Nisarg patel','nisarg.patel111@gmail.com','9429843300','nisarg','2016-12-06 11:14:59.000000',1),(49,'ABC','nifsd@hgmai.com','7852558795','njsqkk','2016-12-06 11:21:11.000000',3),(50,'Prashant','prashant@gmail.com','9427755221','prashant','2016-12-06 11:40:36.000000',2);

/*Table structure for table `userroleprofile` */

DROP TABLE IF EXISTS `userroleprofile`;

CREATE TABLE `userroleprofile` (
  `userroleprofile_id` int(10) NOT NULL AUTO_INCREMENT,
  `userroleprofile` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`userroleprofile_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `userroleprofile` */

insert  into `userroleprofile`(`userroleprofile_id`,`userroleprofile`) values (1,'Owner'),(2,'Builder'),(3,'Agent');

/*Table structure for table `workingsatus` */

DROP TABLE IF EXISTS `workingsatus`;

CREATE TABLE `workingsatus` (
  `WorkingSatus_id` int(10) NOT NULL AUTO_INCREMENT,
  `WorkingSatus` varchar(200) DEFAULT NULL,
  PRIMARY KEY (`WorkingSatus_id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `workingsatus` */

insert  into `workingsatus`(`WorkingSatus_id`,`WorkingSatus`) values (1,'Incomplete'),(2,'Inprogress'),(3,'Completed');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
