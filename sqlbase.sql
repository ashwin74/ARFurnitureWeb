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



/*Table structure for table `login` */

DROP TABLE IF EXISTS `login`;

CREATE TABLE `login` (
  `loginid` int(50) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) DEFAULT NULL,
  `userkey` varchar(255) DEFAULT NULL,
  `usertype` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`loginid`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;



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


/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
