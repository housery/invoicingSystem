/*
SQLyog Ultimate v12.09 (64 bit)
MySQL - 5.7.23-log : Database - invoicingsystemdb
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`invoicingsystemdb` /*!40100 DEFAULT CHARACTER SET utf8 */;

USE `invoicingsystemdb`;

/*Table structure for table `product` */

DROP TABLE IF EXISTS `product`;

CREATE TABLE `product` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `productName` varchar(255) NOT NULL,
  `quantity` int(4) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

/*Data for the table `product` */

insert  into `product`(`id`,`productName`,`quantity`) values (1,'香烟',-102),(2,'可乐',-50),(3,'苹果',-10),(4,'二锅头',30),(5,'汾酒',60);

/*Table structure for table `sale` */

DROP TABLE IF EXISTS `sale`;

CREATE TABLE `sale` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `price` double NOT NULL,
  `quantity` int(4) NOT NULL,
  `totalPrice` double NOT NULL,
  `saleDate` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `userId` int(11) NOT NULL,
  `productId` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8;

/*Data for the table `sale` */

insert  into `sale`(`id`,`price`,`quantity`,`totalPrice`,`saleDate`,`userId`,`productId`) values (1,50,20,100,'2018-03-01 16:17:28',1,1),(2,20,50,200,'2018-03-02 15:49:52',1,2),(3,80,100,88,'2018-03-02 15:50:03',1,3),(4,20,50,1000,'2018-03-03 10:25:26',1,1),(5,10,20,200,'2018-03-03 10:28:57',1,1),(6,5,10,50,'2018-03-03 10:35:19',1,3),(7,10,50,500,'2018-03-03 10:39:45',1,4),(8,10,20,200,'2018-03-03 10:40:32',1,4),(9,50,20,1000,'2018-03-03 10:43:04',1,5),(10,20,10,200,'2018-03-03 10:44:09',1,1),(11,20,50,1000,'2018-03-03 10:45:01',2,2),(12,20,10,200,'2018-03-03 10:46:07',1,1),(13,20,20,400,'2018-03-03 10:47:20',1,2),(14,20,20,400,'2018-03-03 10:48:46',1,3),(15,111,22,2442,'2018-03-03 10:49:48',1,1),(16,20,30,600,'2018-03-03 11:00:29',1,1),(17,20,30,600,'2018-03-03 11:08:00',1,1),(18,10,20,200,'2018-03-03 11:57:03',1,1),(23,25.25,22,555.5,'2018-10-09 20:34:46',1,1),(24,10,10,100,'2018-10-10 09:27:33',1,1),(29,2,5,10,'2018-10-10 09:47:06',1,2),(30,20,5,100,'2018-10-10 09:47:44',1,4),(31,25.25,10,252.5,'2018-10-10 09:48:51',1,1),(32,20,10,200,'2018-10-10 09:50:29',1,2),(33,25.25,10,252.5,'2018-10-10 09:53:24',1,2),(34,25.25,22,555.5,'2018-10-10 09:55:29',1,2),(35,20,22,440,'2018-10-10 09:56:22',1,2),(36,20,10,200,'2018-10-10 09:57:05',1,2),(37,20,20,400,'2018-10-10 17:45:27',1,2),(38,56,22,1232,'2018-10-11 10:35:45',1,1),(39,20,10,200,'2018-10-11 15:57:17',2,2);

/*Table structure for table `users` */

DROP TABLE IF EXISTS `users`;

CREATE TABLE `users` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `userName` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `realName` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8;

/*Data for the table `users` */

insert  into `users`(`id`,`userName`,`password`,`realName`) values (1,'zs','123','张三'),(2,'ls','123','李四'),(3,'ww','123','王五');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
