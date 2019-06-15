/*
SQLyog Community v13.1.2 (64 bit)
MySQL - 5.7.23 : Database - arfurnitureshop
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`arfurnitureshop` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `arfurnitureshop`;

/*Table structure for table `category` */

DROP TABLE IF EXISTS `category`;

CREATE TABLE `category` (
  `categoryid` int(50) NOT NULL AUTO_INCREMENT,
  `categoryname` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`categoryid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`categoryid`,`categoryname`) values 
(1,'Sofa'),
(2,'Chair'),
(3,'Table');

/*Table structure for table `item` */

DROP TABLE IF EXISTS `item`;

CREATE TABLE `item` (
  `itemid` int(50) NOT NULL AUTO_INCREMENT,
  `categoryid` varchar(20) DEFAULT NULL,
  `itemname` varchar(50) DEFAULT NULL,
  `itemprice` varchar(20) DEFAULT NULL,
  `itemdescription` varchar(255) DEFAULT NULL,
  `itemurl` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`itemid`),
  KEY `categoryid` (`categoryid`)
) ENGINE=MyISAM AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert  into `item`(`itemid`,`categoryid`,`itemname`,`itemprice`,`itemdescription`,`itemurl`) values 
(1,'1','Dining Sofa','7000','Dining Sofa in blue colour long enough to fit all family members.','Dining Sofa.jpg'),
(2,'2','Arm chair classic','5000','Arm chair classic with wild look and royal comfort.','Arm chair classic.jpg'),
(3,'2','Lounge chair','9000','Lounge chair in white classy look and feel.','Lounge chair.jpg'),
(4,'2','armchair','400','armchair in red attire, comfortable and space constraint.','armchair.jpg'),
(5,'2','Simple Chair','700','Simple Chair in gold black combination.','Simple Chair.jpg'),
(6,'2','Office Chair','6000','Simple Chair','Office Chair.jpg'),
(7,'2','Arm Chair','3000','Arm Chair in black attire.','Arm chair.jpg'),
(8,'1','Single Seat Sofa','8000','Single Seat Sofa in brown attire.','Single Seat Sofa.jpg'),
(9,'3','Folding Table','5000','Folding Table in sky blue colour.','Folding Table.jpg');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userkey` varchar(255) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginid`,`username`,`userkey`,`usertype`) values 
(1,'admin@gmail.com','1234','admin'),
(2,'jithin','123','user'),
(3,'ash','123','user'),
(4,'kiran','123','user'),
(5,'arun','123','user'),
(6,'jon','123','user');

/*Table structure for table `ordermaster` */

DROP TABLE IF EXISTS `ordermaster`;

CREATE TABLE `ordermaster` (
  `ordermasterid` int(50) NOT NULL AUTO_INCREMENT,
  `userid` int(50) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `totalprice` int(10) DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT 'Pending',
  `notification` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ordermasterid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `ordermaster` */

insert  into `ordermaster`(`ordermasterid`,`userid`,`orderdate`,`totalprice`,`orderstatus`,`notification`) values 
(1,2,'2019-06-09',40000,'Pending','Your Item will Reach Kannur today at 3pm.'),
(2,2,'2019-06-09',700,'Success','Your Item will Reach Kannur today at 3pm.'),
(3,3,'2019-06-09',15000,'Pending','Order delivered'),
(4,3,'2019-06-09',35000,'Success','Order delivered'),
(5,4,'2019-06-09',9000,'Pending','buy simple chair at 80% discount'),
(6,5,'2019-06-09',25000,'Pending','waiting at calicut'),
(7,5,'2019-06-09',28000,'Pending','waiting at calicut'),
(8,5,'2019-06-09',40000,'Pending','waiting at calicut'),
(9,5,'2019-06-09',15000,'Success','waiting at calicut'),
(10,3,'2019-06-10',28000,'Pending',NULL);

/*Table structure for table `orderslave` */

DROP TABLE IF EXISTS `orderslave`;

CREATE TABLE `orderslave` (
  `orderid` int(10) NOT NULL AUTO_INCREMENT,
  `ordermasterid` int(50) DEFAULT NULL,
  `itemid` int(50) DEFAULT NULL,
  `itemquantity` int(4) DEFAULT NULL,
  PRIMARY KEY (`orderid`),
  KEY `ordermasterid` (`ordermasterid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `orderslave` */

insert  into `orderslave`(`orderid`,`ordermasterid`,`itemid`,`itemquantity`) values 
(1,1,8,5),
(2,2,5,1),
(3,3,9,3),
(4,4,1,5),
(5,5,7,3),
(6,6,9,5),
(7,7,1,4),
(8,8,8,5),
(9,9,7,5),
(10,10,1,4);

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `reviewid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` varchar(50) DEFAULT NULL,
  `itemid` varchar(50) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  `rating` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`reviewid`),
  KEY `userid` (`userid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=18 DEFAULT CHARSET=latin1;

/*Data for the table `review` */

insert  into `review`(`reviewid`,`userid`,`itemid`,`postdate`,`review`,`rating`) values 
(1,'2','8','2019-06-09','Nice','4.0'),
(2,'2','5','2019-06-09','poor quality','1.0'),
(3,'3','8','2019-06-09','great product','5.0'),
(4,'3','9','2019-06-09','not bad','2.5'),
(5,'4','7','2019-06-09','nice product','3.5'),
(6,'4','1','2019-06-09','best in class','5.0'),
(7,'4','2','2019-06-09','high quality','5.0'),
(8,'4','3','2019-06-09','material not good','1.5'),
(9,'4','4','2019-06-09','average','3.0'),
(10,'4','5','2019-06-09','disappointed','2.0'),
(11,'4','6','2019-06-09','luxury feeling','5.0'),
(12,'4','8','2019-06-09','high quality','5.0'),
(13,'4','9','2019-06-09','coooool','5.0'),
(14,'5','9','2019-06-09','satisfied','5.0'),
(15,'5','1','2019-06-09','Average','3.0'),
(16,'5','5','2019-06-09','dream come true','5.0'),
(17,'5','8','2019-06-09','leather lining great','5.0');

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `userid` int(50) NOT NULL AUTO_INCREMENT,
  `loginid` int(50) DEFAULT NULL,
  `firstname` varchar(50) DEFAULT NULL,
  `lastname` varchar(50) DEFAULT NULL,
  `email` varchar(50) DEFAULT NULL,
  `mobileno` varchar(50) DEFAULT NULL,
  `housename` varchar(50) DEFAULT NULL,
  `city` varchar(50) DEFAULT NULL,
  `state` varchar(50) DEFAULT NULL,
  `zipcode` int(6) DEFAULT NULL,
  PRIMARY KEY (`userid`),
  KEY `loginid` (`loginid`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert  into `userdetails`(`userid`,`loginid`,`firstname`,`lastname`,`email`,`mobileno`,`housename`,`city`,`state`,`zipcode`) values 
(1,2,'jithin','b','jithin','1234567890','JB house','payyanur','Kerala',677776),
(2,3,'ashwin','p','ash','9786453120','Thapasya','Kannur','Kerala',670741),
(3,4,'kiran','raj','kiran','967845312','kiran','Kannur','Kerala',670001),
(4,5,'arun','c','arun','94684631510','arun','Kozhikode','Kerala',670000),
(5,6,'joe','doe','jon','976454546',NULL,NULL,NULL,NULL);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
