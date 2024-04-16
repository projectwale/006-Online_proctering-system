/*
SQLyog Community Edition- MySQL GUI v7.01 
MySQL - 5.0.27-community-nt : Database - 150onlineproctoring
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;

CREATE DATABASE /*!32312 IF NOT EXISTS*/`150onlineproctoring` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `150onlineproctoring`;

/*Table structure for table `answers` */

DROP TABLE IF EXISTS `answers`;

CREATE TABLE `answers` (
  `id` int(11) NOT NULL auto_increment,
  `sid` varchar(30) default NULL,
  `answers` varchar(7000) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `answers` */

insert  into `answers`(`id`,`sid`,`answers`) values (1,'5','hello user how are you!'),(2,'5','hey user! whats up!'),(3,'5','We submitted the exam because user switches the tab'),(4,'5','We submitted the exam because user switches the tab'),(5,'5','We submitted the exam because user switches the tab'),(6,'10','We submitted the exam because user switches the tab'),(7,'10','We submitted the exam because user switches the tab'),(8,'10','We submitted the exam because user switches the tab'),(9,'10','We submitted the exam because user switches the tab'),(10,'10','We submitted the exam because user switches the tab'),(11,'10','We submitted the exam because user switches the tab'),(12,'10','We submitted the exam because user switches the tab'),(13,'10','We submitted the exam because user switches the tab'),(14,'10','We submitted the exam because user switches the tab'),(15,'10','We submitted the exam because user switches the tab');

/*Table structure for table `aptitudetest` */

DROP TABLE IF EXISTS `aptitudetest`;

CREATE TABLE `aptitudetest` (
  `AptitudeTestID` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(1000) NOT NULL,
  `opt2` varchar(1000) NOT NULL,
  `opt3` varchar(1000) NOT NULL,
  `opt4` varchar(1000) NOT NULL,
  `answer` varchar(1000) NOT NULL,
  `answer1` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `aptitudetest` */

insert  into `aptitudetest`(`AptitudeTestID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`answer`,`answer1`) values (1,'A man buys a scooter for Rs. 1400 and sells it at a loss of 15%. What is the selling price of the scooter?','1090','1130','1240','1190','1190','1190'),(2,'How many arrangements can be made out of the letters of the word \'ENGINEERING\'?','182000','277200','None of These','924000','277200','277200'),(3,'In a camp, there is a meal for 120 men or 200 children. If 150 children have taken the meal, how many men will be catered to with remaining meal?','50','30','40','10','30','30'),(4,'An organization decided to raise Rs. 6Rs. 6 lakh by collecting equal contribution from each of its employees. If each of them had contributed Rs. 60.60 extra, the contribution would have been Rs. 6.24Rs. 6.24 lakh.How many employees are there in that organization?','100','300','400','200','400','400'),(5,'The H.C.F. of two numbers is 5 and their L.C.M. is 150. If one of the numbers is 25, then the other is:','20','28','24','30','30','30'),(6,'A is twice as good a workman as B and takes 18 days less to do a piece of work than B takes. A and B together can finish the work in\r\n','15 days','12 days','18 days','12 and half days','12 days','12 days'),(7,'Two trains are moving in opposite directions. Their lenghts are 100 m each and they cross each other in 8 seconds. The speed of one train is twice that of other. Find the speed of the faster train.\r\n','70 kmph','80 kmph','140 kmph','60 kmph','60 kmph','60 kmph'),(8,'Total age of A and B is 12 years more than the total age of B and C. By how many years is C younger than A?','24 days','12 days','Data insufficient','None of these','12  days','12  days'),(9,'A and B started a business together. Their investment is in the ratio 3:2. Out of the total profit made, 5% goes to charity. A gets Rs 855 as his share. What is the total profit?\r\n','1525','1550','1575','1500','1500','1500'),(10,'The gross income of a person is Rs. 25,000. 20% of his income is exempted from income-tax and the rate of income tax is 5%. His net income is.','25000','24000','22425','23000','24000','24000');

/*Table structure for table `candidatetest` */

DROP TABLE IF EXISTS `candidatetest`;

CREATE TABLE `candidatetest` (
  `candidateTestId` int(3) NOT NULL auto_increment,
  `candidateID` int(3) NOT NULL,
  `aptitudeMarks` int(3) default '0',
  `personalityMarks` int(3) default '0',
  `TechnicalMarks` int(3) default '0',
  `totalMarks` int(3) default '0',
  `clear` varchar(5) default 'no',
  `aptistatus` varchar(100) default '0',
  `peronalitystatus` varchar(100) default '0',
  `technicalstatus` varchar(100) default '0',
  `job` varchar(100) default NULL,
  `skills` varchar(100) default NULL,
  `personality` varchar(100) default NULL,
  `shortlist` varchar(100) default 'no',
  PRIMARY KEY  (`candidateTestId`),
  KEY `candidateIDFK` (`candidateID`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=latin1;

/*Data for the table `candidatetest` */

insert  into `candidatetest`(`candidateTestId`,`candidateID`,`aptitudeMarks`,`personalityMarks`,`TechnicalMarks`,`totalMarks`,`clear`,`aptistatus`,`peronalitystatus`,`technicalstatus`,`job`,`skills`,`personality`,`shortlist`) values (1,5,0,0,1,3,'no','0','0','1',NULL,NULL,NULL,'no'),(2,7,0,0,0,0,'no','0','0','0',NULL,NULL,NULL,'no'),(3,3,0,0,0,0,'no','0','0','0',NULL,NULL,NULL,'no'),(4,8,0,0,0,0,'no','0','0','0',NULL,NULL,NULL,'no'),(5,6,0,0,0,0,'no','0','0','0',NULL,NULL,NULL,'no'),(6,10,0,0,0,0,'no','0','0','0',NULL,NULL,NULL,'no');

/*Table structure for table `marks` */

DROP TABLE IF EXISTS `marks`;

CREATE TABLE `marks` (
  `id` int(11) NOT NULL auto_increment,
  `sid` varchar(11) default NULL,
  `studname` varchar(11) default NULL,
  `q1` varchar(11) default NULL,
  `q2` varchar(11) default NULL,
  `q3` varchar(11) default NULL,
  `q4` varchar(11) default NULL,
  `q5` varchar(11) default NULL,
  `marks` varchar(11) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `marks` */

insert  into `marks`(`id`,`sid`,`studname`,`q1`,`q2`,`q3`,`q4`,`q5`,`marks`) values (3,'6','shreenath','2.5','0.4','2.2','2.3','2.5','14'),(4,'3','manish','0.4','0.7','1.1','0.8','0.4','4'),(5,'5','chetan','0.3','0.2','0.4','0.4','0.3','2'),(6,'5','chetan','0.3','0.2','0.4','0.4','0.3','2'),(7,'5','a','0.3','0.2','0.4','0.4','0.3','2'),(8,'5','a','0.3','0.2','0.4','0.4','0.3','2'),(9,'5','a','0.3','0.2','0.4','0.4','0.3','2'),(10,'5','a','0.3','0.2','0.4','0.4','0.3','2'),(11,'5','a','0.3','0.2','0.4','0.4','0.3','2'),(12,'5','a','2','1.9','2','2.1','2','10'),(13,'5','a','2','1.9','2','2.1','2','10'),(14,'5','a','2','1.9','2','2.1','2','10'),(15,'5','a','2','1.9','2','2.1','2','10'),(16,'5','a','2','1.9','2','2.1','2','10'),(17,'5','a','2','1.9','2','2.1','2','10'),(18,'5','a','2','2.4','3.2','2.1','2','12'),(19,'5','a','2','2.4','3.2','2.1','2','12'),(20,'5','a','2','2.4','3.2','2.1','2','12'),(21,'5','a','2','1.5','2','2.1','2','9'),(22,'10','sushant','2','1.9','2','2.1','2','10'),(23,'10','sushant','2','1.9','2','2.1','2','10');

/*Table structure for table `personalitytest` */

DROP TABLE IF EXISTS `personalitytest`;

CREATE TABLE `personalitytest` (
  `PersonalityTestID` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(1000) NOT NULL,
  `opt2` varchar(1000) NOT NULL,
  `opt3` varchar(1000) NOT NULL,
  `opt4` varchar(1000) NOT NULL,
  `opt5` varchar(1000) NOT NULL,
  `answer` varchar(150) NOT NULL,
  `opt11` varchar(150) default NULL,
  `opt22` varchar(150) default NULL,
  `opt33` varchar(150) default NULL,
  `opt44` varchar(150) default NULL,
  `opt55` varchar(150) default NULL,
  PRIMARY KEY  (`PersonalityTestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `personalitytest` */

insert  into `personalitytest`(`PersonalityTestID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`opt5`,`answer`,`opt11`,`opt22`,`opt33`,`opt44`,`opt55`) values (1,'I tend to be quite a relaxed person','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','Temporamental','Temporamental','Realistic','calm','calm'),(2,'I value the opinions of others','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','egostic','egostic','Realistic','extrovert','extrovert'),(3,'I tend to be the centre of attention quite often','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','introvert','introvert','Realistic','extrovert','extrovert'),(4,'Taking other people\'s feelings into consideration is important to me','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','cold hearted','cold hearted','Realistic','emphatic','emphatic'),(5,'I believe that rules are there to be followed','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','rebel','rebel','Realistic','stickler','stickler'),(6,'I am ambitious in all that I do','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','Apathetic','Apathetic','confused','Ambitious','Ambitious'),(7,'I like to think of myself as being supportive and helpful','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','Self Centered','Self Centered','Realistic','empathis','empathic'),(8,'I believe that taking care of the details is very important','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','Erratic','Erratic','Realistic','Observant','Observant'),(9,'I can cope with high levels of stress easily','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Disagree','Weak Mentally','Week Mentally','selective','observant','Observant'),(10,'I don\'t tend to lose my temper easily','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Disagree','Temperamental','Temperamental','Moody','Calm','Calm');

/*Table structure for table `readingcount` */

DROP TABLE IF EXISTS `readingcount`;

CREATE TABLE `readingcount` (
  `uid` int(255) NOT NULL,
  `ht_count` varchar(255) NOT NULL,
  `toi_count` varchar(255) NOT NULL,
  `ie_count` varchar(255) NOT NULL,
  PRIMARY KEY  (`uid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `readingcount` */

insert  into `readingcount`(`uid`,`ht_count`,`toi_count`,`ie_count`) values (123456789,'0','0','0'),(123654789,'0','0','0'),(968574123,'0','0','0');

/*Table structure for table `result` */

DROP TABLE IF EXISTS `result`;

CREATE TABLE `result` (
  `id` int(11) NOT NULL,
  `candidateID` int(11) default NULL,
  `tests` varchar(50) default NULL,
  `Marks` varchar(50) default NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `result` */

/*Table structure for table `resulttable1` */

DROP TABLE IF EXISTS `resulttable1`;

CREATE TABLE `resulttable1` (
  `id` int(11) NOT NULL auto_increment,
  `studid` int(11) default NULL,
  `subject` varchar(50) default NULL,
  `marks` varchar(20) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `resulttable1` */

insert  into `resulttable1`(`id`,`studid`,`subject`,`marks`) values (1,1,'DBMS','7'),(2,1,'BCE','6'),(3,1,'gametheory','10'),(4,1,'PROJECTMANAGEMENT','8'),(5,1,'DWM','4'),(6,2,'gametheory','8'),(7,2,'BCE','10'),(8,2,'PROJECTMANAGEMENT','1'),(9,2,'DWM','8');

/*Table structure for table `student` */

DROP TABLE IF EXISTS `student`;

CREATE TABLE `student` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(40) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `email` varchar(40) NOT NULL,
  `pass` varchar(40) NOT NULL,
  `ipadd` varchar(255) NOT NULL,
  `mac_name` varchar(255) NOT NULL,
  `cur_time` datetime NOT NULL,
  `stat` varchar(255) NOT NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `student` */

insert  into `student`(`id`,`name`,`mobile`,`email`,`pass`,`ipadd`,`mac_name`,`cur_time`,`stat`) values (1,'Prakash','0','0000011111','123','','','0000-00-00 00:00:00',''),(2,'man','0','7836814663','123','','','0000-00-00 00:00:00',''),(3,'manish','2147483647','manish@gmail.com','123','','','0000-00-00 00:00:00',''),(4,'sushant','2147483647','sushant@gmail.com','123','','','0000-00-00 00:00:00',''),(5,'a','2147483647','chetan@gmail.com','123','','','0000-00-00 00:00:00',''),(6,'shreenath','2147483647','shreenath@gmail.com','12345','','','0000-00-00 00:00:00',''),(7,'chetan','7894561230','ningesh1406@gmail.com','123','','','0000-00-00 00:00:00',''),(8,'s','7894561235','s@gmail.com','s','','','0000-00-00 00:00:00','');

/*Table structure for table `teacher` */

DROP TABLE IF EXISTS `teacher`;

CREATE TABLE `teacher` (
  `id` int(11) NOT NULL auto_increment,
  `email` varchar(40) default NULL,
  `password` varchar(40) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacher` */

insert  into `teacher`(`id`,`email`,`password`) values (1,'prathamesh@gmail.com','123');

/*Table structure for table `teacherquestion` */

DROP TABLE IF EXISTS `teacherquestion`;

CREATE TABLE `teacherquestion` (
  `qid` int(11) NOT NULL auto_increment,
  `question` varchar(1500) default NULL,
  `answer` varchar(6000) default NULL,
  `marks` varchar(11) default NULL,
  UNIQUE KEY `qid` (`qid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `teacherquestion` */

insert  into `teacherquestion`(`qid`,`question`,`answer`,`marks`) values (1,'when a project or assignment didn’t go as planned. How would you approach the situation differently in the future?','Last semester we had a group project that took approximately six weeks. Around week four, we realized that one of the group members was not pulling his weight. The work he agreed to do was not getting done. I took charge of the situation and scheduled a group meeting to discuss the issue. Ultimately, that person dropped the course, but by addressing the problem head-on, the group was able to divide up our work and complete the project on-time. In the future, I would make sure that the group has weekly meetings to assess our progress. That would make sure the project was on-track and that the work was getting done.','10'),(2,'What do you enjoy most and least about engineering?','I really love the design work in engineering, the face-to-face interaction with clients, and the opportunity to see projects come to life. But if I had to pick one thing that I don’t enjoy as much, I would have to say it’s contract preparation','10'),(3,'Where do you see yourself five years from now?','Your new employer is going to invest a lot of time and money in your training and development, and they don’t want to hear that you get bored easily and will likely look for opportunities elsewhere before too long','10'),(4,'What new engineering skills have you recently developed?','Since graduating, I’ve been searching for work and also training myself on Civil 3D. I have a basic knowledge of Civil 3D from school, but I thought upgrading my skills would be a valuable investment in my career as an engineer','10'),(5,'Why are you interested in a position with our company?','Your interviewer is trying to understand “Why us?” This is your chance to tell him what you know about the company and express a genuine enthusiasm for the role. Take a look at the company website and any recent press releases.','10');

/*Table structure for table `technicaltest` */

DROP TABLE IF EXISTS `technicaltest`;

CREATE TABLE `technicaltest` (
  `PersonalityTestID` int(11) NOT NULL,
  `question` varchar(1000) NOT NULL,
  `opt1` varchar(1000) NOT NULL,
  `opt2` varchar(1000) NOT NULL,
  `opt3` varchar(1000) NOT NULL,
  `opt4` varchar(1000) NOT NULL,
  `opt5` varchar(1000) NOT NULL,
  `answer` varchar(150) NOT NULL,
  `opt11` varchar(150) default NULL,
  `opt22` varchar(150) default NULL,
  `opt33` varchar(150) default NULL,
  `opt44` varchar(150) default NULL,
  `opt55` varchar(150) default NULL,
  PRIMARY KEY  (`PersonalityTestID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `technicaltest` */

insert  into `technicaltest`(`PersonalityTestID`,`question`,`opt1`,`opt2`,`opt3`,`opt4`,`opt5`,`answer`,`opt11`,`opt22`,`opt33`,`opt44`,`opt55`) values (1,'I tend to be quite a relaxed person','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','Temporamental','Temporamental','Realistic','calm','calm'),(2,'I value the opinions of others','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','egostic','egostic','Realistic','extrovert','extrovert'),(3,'I tend to be the centre of attention quite often','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','introvert','introvert','Realistic','extrovert','extrovert'),(4,'Taking other people\'s feelings into consideration is important to me','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','cold hearted','cold hearted','Realistic','emphatic','emphatic'),(5,'I believe that rules are there to be followed','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','rebel','rebel','Realistic','stickler','stickler'),(6,'I am ambitious in all that I do','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','Apathetic','Apathetic','confused','Ambitious','Ambitious'),(7,'I like to think of myself as being supportive and helpful','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Agree','Self Centered','Self Centered','Realistic','empathis','empathic'),(8,'I believe that taking care of the details is very important','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Strongly agree','Erratic','Erratic','Realistic','Observant','Observant'),(9,'I can cope with high levels of stress easily','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Disagree','Weak Mentally','Week Mentally','selective','observant','Observant'),(10,'I don\'t tend to lose my temper easily','Strongly disagree','Disagree','Neither','Agree','Strongly agree','Disagree','Temperamental','Temperamental','Moody','Calm','Calm');

/*Table structure for table `user_company_information` */

DROP TABLE IF EXISTS `user_company_information`;

CREATE TABLE `user_company_information` (
  `id` int(11) NOT NULL auto_increment,
  `username` varchar(100) NOT NULL,
  `company_name` longtext NOT NULL,
  `start_date` varchar(100) NOT NULL,
  `End_date` varchar(100) NOT NULL,
  `technology_worked` longtext NOT NULL,
  `register` varchar(255) NOT NULL,
  PRIMARY KEY  (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `user_company_information` */

insert  into `user_company_information`(`id`,`username`,`company_name`,`start_date`,`End_date`,`technology_worked`,`register`) values (1,'yash','paisa fund','5/12/2023','2023','computer','1'),(2,'yash','paisa fund','5/12/2023','2023','computer','1'),(3,'yash1','paisa fund','5/12/2023','2022','utyty','1'),(4,'vishal','paisa fund','5/12/2023','2023','utyty','1'),(5,'vishal','paisa fund','5/12/2023','2023','utyty','1'),(6,'rdgs','paisa fund','5/12/2023','2022','computer','1'),(7,'rdgs','paisa fund','5/12/2023','2022','computer','1');

/*Table structure for table `userdetails` */

DROP TABLE IF EXISTS `userdetails`;

CREATE TABLE `userdetails` (
  `id` int(11) NOT NULL auto_increment,
  `name` varchar(100) default NULL,
  `address` varchar(500) default NULL,
  `mobileno` varchar(20) default NULL,
  `emailid` varchar(100) default NULL,
  `password` varchar(100) default NULL,
  UNIQUE KEY `id` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `userdetails` */

insert  into `userdetails`(`id`,`name`,`address`,`mobileno`,`emailid`,`password`) values (1,'Sujay','navi mumbai','7894561230','sujay@gmail.com','123'),(2,'Abc','navi mumbai','7894561230','abc@gmail.com','123'),(3,'Sujay','navi mumbai','7894561230','sujay@gmail','123'),(4,'prathamesh','india','9090909090','prathameshmane852@gmail.com','12345'),(5,'kiran','india','9292929292','example@gmail.com','123456'),(10,'sushant','abc','9876543210','s@gmail.com','s'),(11,'yash','mumbai','8768658678','sujay@gmail.com','a'),(12,NULL,NULL,NULL,NULL,NULL),(13,'kalpesh','asdasdas','8383838382','sujay@gmail.com','aa'),(14,'kalpesh','mumbai','35456768899','abc@gmail.com','as'),(15,'Roshan','mumbai','8783247333','abc@gmail.com','1');

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
