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
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `category` */

insert  into `category`(`categoryid`,`categoryname`) values 
(1,'Chair'),
(2,'Bed'),
(3,'Sofa Set'),
(4,'Table'),
(5,'cupboard');

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
) ENGINE=MyISAM AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `item` */

insert  into `item`(`itemid`,`categoryid`,`itemname`,`itemprice`,`itemdescription`,`itemurl`) values 
(1,'3','Royal Sofa','70000','Royal Scindhia Sofa','scindhiasofa.jpg'),
(2,'4','Rajput Table','20000','Rajasthani Table','rajputtable.jpg'),
(3,'2','Mughal Bed','10000','Royal Mughal Bed','mughalbed.jpg'),
(4,'1','Maurya Chair','47000','The great Maurya Cahair','presidentchair.jpg'),
(8,'null','','676671','','null'),
(7,'null','','','','null'),
(9,'null','','','','null'),
(10,'null','','','','null'),
(11,'null','','','','null'),
(12,'null','','','','null'),
(13,'null','','','','null'),
(14,'null','','','','null'),
(15,'null','','','','null');

/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userkey` varchar(255) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `login` */

insert  into `login`(`loginid`,`username`,`userkey`,`usertype`) values 
(1,'admin@gmail.com','admin','admin'),
(2,'ashwin','ash','user');

/*Table structure for table `ordermaster` */

DROP TABLE IF EXISTS `ordermaster`;

CREATE TABLE `ordermaster` (
  `ordermasterid` int(50) NOT NULL AUTO_INCREMENT,
  `userid` int(50) DEFAULT NULL,
  `orderdate` date DEFAULT NULL,
  `totalprice` int(10) DEFAULT NULL,
  `orderstatus` varchar(50) DEFAULT 'Pending',
  PRIMARY KEY (`ordermasterid`),
  KEY `userid` (`userid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `ordermaster` */

insert  into `ordermaster`(`ordermasterid`,`userid`,`orderdate`,`totalprice`,`orderstatus`) values 
(1,1,'2019-02-28',70000,'Success'),
(2,2,'2019-02-27',47000,'Pending'),
(3,3,'2019-02-26',20000,'Pending');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `orderslave` */

insert  into `orderslave`(`orderid`,`ordermasterid`,`itemid`,`itemquantity`) values 
(1,1,1,1),
(2,2,4,1),
(3,3,3,2);

/*Table structure for table `review` */

DROP TABLE IF EXISTS `review`;

CREATE TABLE `review` (
  `reviewid` int(10) NOT NULL AUTO_INCREMENT,
  `userid` int(50) DEFAULT NULL,
  `itemid` int(50) DEFAULT NULL,
  `postdate` date DEFAULT NULL,
  `review` varchar(500) DEFAULT NULL,
  `rating` varchar(1) DEFAULT NULL,
  PRIMARY KEY (`reviewid`),
  KEY `userid` (`userid`),
  KEY `itemid` (`itemid`)
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `review` */

insert  into `review`(`reviewid`,`userid`,`itemid`,`postdate`,`review`,`rating`) values 
(1,2,1,'2019-02-14','awesome','4'),
(2,1,2,'2019-02-28','not bad','2'),
(3,3,4,'2019-02-24','greatest','5');

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
) ENGINE=MyISAM AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert  into `userdetails`(`userid`,`loginid`,`firstname`,`lastname`,`email`,`mobileno`,`housename`,`city`,`state`,`zipcode`) values 
(1,1,'ashwin','p','a@123.com','9494949494','white house','kannur','kerala',670741),
(2,2,'ami','k','a@321.com','9779797979','blue','kochi','kerala',670747),
(3,3,'mou','a','m@123.com','4747474747','pink','mumbai','maharashtra',707070);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
