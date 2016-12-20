-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Dec 20, 2016 at 10:53 PM
-- Server version: 5.7.13-0ubuntu0.16.04.2
-- PHP Version: 7.0.8-0ubuntu0.16.04.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sofianechronicle`
--

-- --------------------------------------------------------

--
-- Table structure for table `article`
--

CREATE TABLE `article` (
  `ID_ARTICLE` int(11) NOT NULL,
  `ID_UTILISATEUR` int(11) DEFAULT NULL,
  `ID_CATEGORIE` int(11) DEFAULT NULL,
  `ID_IMAGE_1` int(11) DEFAULT NULL,
  `TITRE` varchar(250) COLLATE utf8_bin NOT NULL,
  `INTRODUCTION` varchar(1000) COLLATE utf8_bin NOT NULL,
  `CONTENU` text COLLATE utf8_bin NOT NULL,
  `DATE_REALISATION` datetime DEFAULT NULL,
  `LAST_UPDATE` datetime DEFAULT NULL,
  `PUBLIER` tinyint(1) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `article`
--

INSERT INTO `article` (`ID_ARTICLE`, `ID_UTILISATEUR`, `ID_CATEGORIE`, `ID_IMAGE_1`, `TITRE`, `INTRODUCTION`, `CONTENU`, `DATE_REALISATION`, `LAST_UPDATE`, `PUBLIER`) VALUES
(1, 1, 1, 331, 'lalalal', 'lalalall', 'alalalla', '2016-11-17 21:38:14', NULL, 1),
(2, 1, 1, 331, 'lalal', 'lalala', 'lalalal', '2016-11-17 21:38:41', NULL, 1),
(3, 1, 1, 331, 'lalalalalal', 'lalalalal', 'lalalalal', '2016-11-17 22:41:39', NULL, 1),
(4, 1, 1, 332, 'lalala', 'lalalal', 'lalaalal', '2016-11-17 23:42:30', NULL, 1),
(6, 1, 1, 333, 'Ce verre est mgnifique', 'Venez dÃ©couvrir un verre qui vous emmenera vers de nouvelles aventures ! ', 'lala', '2016-11-19 12:27:00', NULL, 0),
(7, 1, 1, 333, 'un nouvelle article', 'yeeeee', 'yeeeee', '2016-11-19 12:49:50', NULL, 0),
(8, 1, 1, 331, 'test', 'test', 'test', '2016-11-20 10:58:16', NULL, 0),
(9, 1, 1, 331, 'test', 'test', 'test', '2016-11-20 10:58:16', NULL, 0),
(10, 1, 1, 332, 'lalala', 'lalalal', 'lalaalal', '2016-11-17 23:42:30', NULL, 1),
(11, 1, 1, 333, 'Ce verre est mgnifique', 'Venez dÃ©couvrir un verre qui vous emmenera vers de nouvelles aventures ! ', 'lala', '2016-11-19 12:27:00', NULL, 1),
(12, 1, 1, 333, 'un nouvelle article', 'yeeeee', 'yeeeee', '2016-11-19 12:49:50', NULL, 1),
(13, 1, 1, 331, 'test', 'test', 'test', '2016-11-20 10:58:16', NULL, 0),
(14, 1, 1, 331, 'test', 'test', 'test', '2016-11-20 10:58:16', NULL, 0),
(15, 1, 2, 333, 'Voyage en terre inconnue', 'test', 'test', '2016-11-20 22:02:09', '2016-11-20 22:02:34', 0),
(16, 1, 2, 347, 'Mon voyage en automne', 'C&#39;&eacute;tait super chouette mais il faisait tr&egrave;s froid !!!! \r\n', '<p>C&#39;&eacute;tait super chouette mais il faisait tr&egrave;s froid !!!! <img alt="angry" src="http://localhost/sofianeChronicleRepository/sofianeChronicle/ckeditor/plugins/smiley/images/angry_smile.png" style="height:23px; width:23px" title="angry" /></p>\n', '2016-11-30 19:07:58', NULL, 0),
(17, 1, 2, 349, 'Mon voyage en foret tropical', 'ah la foret c&#39;est pas beau quand meme ????\r\n', '<p>ah la foret c&#39;est pas beau quand meme ????</p>\r\n', '2016-11-30 19:12:32', NULL, 0),
(18, 1, 1, 350, 'Les amis, on les compte sur les doigts d\'une seule main ! ', 'h&eacute; oui ! les amis faut en prendre soin ! \r\n', '<p><span style="font-size:28px"><span style="color:#ff0000">h&eacute; oui ! les amis faut en prendre soin ! </span></span></p>\r\n', '2016-11-30 19:22:14', NULL, 0),
(19, 1, 2, 351, 'Mon ami bÃ©bÃ© kangourou Ã  Lucky bay : inoubliable ! Mon ami bÃ©bÃ© kangourou Ã  Lucky bay : inoubliable !', 'gvnbxfcfgvcbfbvc\r\n', '<p>gvnbxfcfgvcbfbvc</p>\r\n', '2016-11-30 20:54:43', NULL, 0),
(20, 1, 2, 352, 'Shark bay ! Awesome vew of lovely Sydney city !', 'Sydney City ! a dream came true last year and this is one of my favourite place...\r\n', '<p><span style="font-family:Georgia,serif"><span style="color:#ff0000">Sydney City ! a dream came true last year and this is one of my favourite place...</span></span></p>\r\n', '2016-11-30 21:42:25', NULL, 0),
(21, 1, 1, 354, 'Lorem ipsum dolor sit amet, nonummy ligula volutpat hac integer nonummy. Suspendisse ultricies, congue etiam tellus, erat libero, nulla eleifend, mauris pellentesque. Suspendisse integer praesent vel, integer gravida mauris, fringilla vehicula lacin', 'fdgdfgvdf\r\n', '<p>fdgdfgvdf</p>\r\n', '2016-11-30 21:45:53', NULL, 1),
(22, 1, 2, 355, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p\r\n', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis p</p>\r\n', '2016-11-30 21:48:08', NULL, 1),
(23, 1, 2, 356, 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m\r\n', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean m</p>\r\n', '2016-11-30 21:50:48', NULL, 1),
(24, 1, 2, 358, 'Footing in the middle of the pacific ocean , done!', 'heee\r\n', '<p>heee</p>\r\n', '2016-12-01 22:11:37', NULL, 0),
(25, 1, 2, 359, 'Mojito Mojito!', 'heee\r\n', '<p>heee</p>\r\n', '2016-12-01 22:12:52', NULL, 0),
(26, 1, 2, 360, 'Road trip accross Australia, we touched freedom!', 'heee\r\n', '<p>heee</p>\r\n', '2016-12-01 22:15:15', NULL, 0),
(27, 1, 1, 361, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 00:47:51', NULL, 0),
(28, 1, 1, 362, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 00:48:25', NULL, 0),
(29, 1, 1, 363, '', '', '', '2016-12-03 00:50:31', NULL, 0),
(30, 1, 1, 364, '', '', '', '2016-12-03 00:51:09', NULL, 0),
(31, 1, 1, 365, '', '', '', '2016-12-03 00:51:35', NULL, 0),
(32, 1, 1, 366, '', 'orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ', '<p>orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quaaa</p>\r\n', '2016-12-03 00:58:17', NULL, 0),
(33, 1, 1, 367, '', 'orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ', '<p>orem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qusss</p>\r\n', '2016-12-03 00:58:37', NULL, 0),
(34, 1, 1, 368, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quddd</p>\r\n', '2016-12-03 01:01:10', NULL, 0),
(35, 1, 1, 369, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qusss</p>\r\n', '2016-12-03 01:01:53', NULL, 0),
(36, 1, 1, 370, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qusss</p>\r\n', '2016-12-03 01:05:29', NULL, 0),
(37, 1, 1, 371, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quff</p>\r\n', '2016-12-03 01:08:35', NULL, 0),
(38, 1, 1, 372, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quff</p>\r\n', '2016-12-03 01:08:58', NULL, 0),
(39, 1, 1, 373, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quss</p>\r\n', '2016-12-03 01:26:07', NULL, 0),
(40, 1, 1, 374, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quss</p>\r\n', '2016-12-03 01:27:29', NULL, 0),
(41, 1, 1, 375, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:05:34', NULL, 0),
(42, 1, 1, 376, '', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\r\n	      ', '2016-12-03 20:06:19', NULL, 0),
(43, 1, 1, 377, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:09:21', NULL, 0),
(44, 1, 1, 378, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:10:53', NULL, 0),
(45, 1, 1, 380, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:26:25', NULL, 0),
(46, 1, 1, 381, '', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\r\n	      ', '2016-12-03 20:27:38', NULL, 0),
(47, 1, 1, 382, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:27:43', NULL, 0),
(48, 1, 1, 383, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:27:59', NULL, 0),
(49, 1, 1, 384, '', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\r\n', '2016-12-03 20:28:02', NULL, 0),
(50, 1, 1, 385, 'ddddddddddddddddddddddddddddddddddd', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\r\n	      ', '2016-12-03 21:04:08', NULL, 0),
(51, 1, 1, 386, 'ffffffffffffffffffffffffffffffff', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\n', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\n	      ', '2016-12-03 21:17:42', NULL, 0),
(52, 1, 1, 387, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\n', '			Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\n	      ', '2016-12-03 21:19:09', NULL, 0),
(53, 1, 1, 388, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\r\n', '	      ', '2016-12-03 21:22:02', NULL, 0),
(54, 1, 2, 389, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu\r\n', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>\n', '2016-12-03 21:24:25', NULL, 0),
(55, 1, 2, 390, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec.</p>\n', '2016-12-03 21:27:28', NULL, 0),
(56, 1, 1, 391, 'ddddddddddddddddddddddddddddddddddd', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec.</p>\r\n', '2016-12-03 21:29:31', NULL, 0),
(57, 1, 2, 392, 'My road trip in australia', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec.</p>\r\n', '2016-12-03 21:38:53', NULL, 0),
(58, 1, 1, 393, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quam felis, ultricies nec, pellentesque eu, pretium quis, sem. Nulla consequat massa quis enim. Donec.</p>', '2016-12-03 22:46:07', NULL, 0),
(59, 1, 1, 394, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec queee</p>', '2016-12-05 12:02:38', NULL, 1),
(60, 1, 1, 395, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quddd</p>', '2016-12-05 20:58:35', NULL, 0),
(61, 1, 1, 396, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quddd</p>', '2016-12-05 20:58:59', NULL, 0),
(62, 1, 1, 397, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qussss</p>', '2016-12-05 21:03:20', NULL, 0),
(63, 1, 1, 398, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qussss</p>', '2016-12-05 21:03:20', NULL, 0),
(64, 1, 1, 399, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qussss</p>', '2016-12-05 21:04:53', NULL, 0),
(65, 1, 1, 400, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qufff</p>', '2016-12-05 21:05:12', NULL, 0),
(66, 1, 2, 401, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qufff</p>', '2016-12-05 21:06:25', NULL, 0),
(67, 1, 2, 402, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qufff</p>', '2016-12-05 21:06:42', NULL, 0),
(68, 1, 1, 403, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qudd</p>', '2016-12-05 21:09:03', NULL, 0),
(69, 1, 1, 404, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qudd</p>', '2016-12-05 21:09:06', NULL, 0),
(70, 1, 1, 405, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridicnnnnnnnnnnnnnnnnnn...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridicnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnnn</p>', '2016-12-05 21:11:14', NULL, 0),
(71, 1, 1, 406, 'Amzing dinner in a fancy cruising boat, done !', '...', 'DummyText\r\n\r\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolo', '2016-12-05 21:52:26', NULL, 0),
(72, 1, 1, 407, 'Amzing dinner in a fancy cruising boat, done !', '&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $(&#39;#alert-image&#39;).text(&quot;&quot;...', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $(&#39;#alert-image&#39;).text(&quot;&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).append(&quot;&lt;strong&gt; Oh snap! &lt;/strong&gt; You got an error. Upload an image and try again!!&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).show();&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $(&#39;#alert-image&#39;).text(&quot;&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).append(&quot;&lt;strong&gt; Oh snap! &lt;/strong&gt; You got an error. Upload an image and try again!!&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).show();</p>', '2016-12-05 22:00:39', NULL, 0),
(73, 1, 1, 408, 'Amzing dinner in a fancy cruising boat, done !', '&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $(&#39;#alert-image&#39;).text(&quot;&quot;...', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $(&#39;#alert-image&#39;).text(&quot;&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).append(&quot;&lt;strong&gt; Oh snap! &lt;/strong&gt; You got an error. Upload an image and try again!!&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).show();&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $(&#39;#alert-image&#39;).text(&quot;&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).append(&quot;&lt;strong&gt; Oh snap! &lt;/strong&gt; You got an error. Upload an image and try again!!&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).show();</p>', '2016-12-05 22:01:06', NULL, 0),
(74, 1, 1, 409, 'kkkkkkkkkkkkkk', 'jhjhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj...', '<p>jhjhhhhhhhhhhjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>', '2016-12-05 22:51:27', NULL, 0),
(75, 1, 1, 410, 'hhhhhhhhhhjjjjjjjjjjjjjjjjjjj', 'jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj...', '<p>jjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj</p>', '2016-12-05 22:52:59', NULL, 0),
(76, 1, 1, 411, 'Amzing dinner in a fancy cruising boat, done !', 'Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu...', '<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec quxxxxx</p>', '2016-12-05 22:54:54', NULL, 0),
(77, 1, 1, 412, 'ffffffffffffffffffffffffffffffff', '&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; else if(data == 3)&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbs...', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; else if(data == 3)<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).text(&quot;&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).append(&quot;&lt;strong&gt; Oh snap! &lt;/strong&gt; You got an error. Upload an image and try again!&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).show();<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp; else if(data == 3)<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; {<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).text(&quot;&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).append(&quot;&lt;strong&gt; Oh snap! &lt;/strong&gt; You got an error. Upload an image and try again!&quot;);<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;$(&#39;#alert-image&#39;).show();<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; }</p>', '2016-12-05 22:58:01', NULL, 0),
(78, 1, 1, 413, 'ffffffvfjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjjj', 'Lorem ipsum dolor sit amet, conseLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes,...', '<p>Lorem ipsum dolor sit amet, conseLorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec qu</p>', '2016-12-05 23:00:32', NULL, 0),
(79, 1, 1, 414, 'Amzing dinner in a fancy cruising boat, done !', '&lt;div class=&quot;modal fade bs-example-modal-sm&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;mySmallModalLabel&quot;&gt; &lt;div class=&quot;modal-dialog modal-sm&quo...', '<p>&lt;div class=&quot;modal fade bs-example-modal-sm&quot; tabindex=&quot;-1&quot; role=&quot;dialog&quot; aria-labelledby=&quot;mySmallModalLabel&quot;&gt; &lt;div class=&quot;modal-dialog modal-sm&quot; role=&quot;document&quot;&gt; &lt;div class=&quot;modal-content&quot;&gt; ... &lt;/div&gt; &lt;/div&gt; &lt;/div&gt;</p>', '2016-12-05 23:07:51', NULL, 0),
(80, 1, 1, 415, 'Amzing dinner in a fancy cruising boat, done !', 'CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.C...', '<p>CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()CKEDITOR.instances.CONTENU.getData()</p>', '2016-12-05 23:16:50', NULL, 0),
(81, 1, 1, 416, 'Amzing dinner in a fancy cruising boat, $(\'.filestyle\')$(\'.filestyle\')$(\'.filestyle\')$(\'.filestyle !', '$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyl...', '<p>$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)</p>', '2016-12-05 23:18:51', NULL, 0),
(82, 1, 1, 417, 'Amzing dinner in a fancy cruising boat, done !', '$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyl...', '<p>$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)</p>', '2016-12-05 23:20:21', NULL, 0),
(83, 1, 1, 418, 'Amzing dinner in a fancy cruising boat, done !', '$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyl...', '<p>$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)</p>', '2016-12-05 23:21:02', NULL, 0),
(84, 1, 1, 419, 'Amzing dinner in a fancy cruising boat, done !', '$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyl...', '<p>$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)$(&#39;.filestyle&#39;)</p>', '2016-12-05 23:21:18', NULL, 0),
(85, 1, 1, 420, 'Amzing dinner in a fancy cruising boat, done !', 'filestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefi...', '<p>filestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestyle</p>', '2016-12-05 23:23:22', NULL, 0),
(86, 1, 1, 421, 'Amzing dinner in a fancy cruising boat, done !', 'filestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefi...', '<p>filestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestyle</p>', '2016-12-05 23:23:38', NULL, 0),
(87, 1, 1, 422, 'Amzing dinner in a fancy cruising boat, done !', 'filestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefi...', '<p>filestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestylefilestyle</p>', '2016-12-05 23:26:42', NULL, 0),
(88, 1, 1, 423, 'Road trip accross Australia, we touched freedom!', '$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;...', '<p>$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);</p>', '2016-12-05 23:28:09', NULL, 0),
(89, 1, 1, 424, 'Amzing dinner in a fancy cruising boat, done !', '$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;...', '<p>$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);$(&quot;:file&quot;).filestyle(&#39;clear&#39;);</p>', '2016-12-05 23:30:00', NULL, 0),
(90, 1, 1, 425, 'Amzing dinner in a fancy cruising boat, done !', '...', '	      ed$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');$(":file").filestyle(\'clear\');', '2016-12-05 23:32:48', NULL, 0),
(91, 1, 1, 426, 'Amzing dinner in a fancy cruising boat, done !', 'navbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-f...', '<p>navbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-topnavbar-fixed-top</p>', '2016-12-05 23:48:52', NULL, 0),
(92, 1, 1, 427, 'Amzing dinner in a fancy cruising boat, done !', 'Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in...', '<p>Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !Amzing dinner in a fancy cruising boat, done !</p>', '2016-12-06 12:09:05', NULL, 0);
INSERT INTO `article` (`ID_ARTICLE`, `ID_UTILISATEUR`, `ID_CATEGORIE`, `ID_IMAGE_1`, `TITRE`, `INTRODUCTION`, `CONTENU`, `DATE_REALISATION`, `LAST_UPDATE`, `PUBLIER`) VALUES
(93, 1, 2, 428, 'Sunset to sunrise', '&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.repl...', '<p>&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;</p>', '2016-12-06 16:42:53', NULL, 0),
(94, 1, 1, 429, 'Best friends in the other parth of the planet', '&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.repl...', '<p>&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;&lt;script&gt;window.location.replace(&quot;../connexion.php&quot;);&lt;/script&gt;</p>', '2016-12-06 16:45:01', NULL, 1),
(95, 3, 2, 430, 'Samia  ma petite soeur chÃ©rie', '&lt;?phprequire(&#39;../functions.php&#39;);session_start();//en cas de deconnexionif(connecter()){&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);&nbsp;&nbsp; &nbsp;redirectionVers(&#39;.....', '<p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;v</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;v</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}es,dflfnlqdsjnfcsd<br />?&gt;</p>', '2016-12-06 18:31:30', NULL, 1),
(96, 1, 2, 431, 'Samia  ma petite soeur chÃ©rie', '&lt;?phprequire(&#39;../functions.php&#39;);session_start();//en cas de deconnexionif(connecter()){&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);&nbsp;&nbsp; &nbsp;redirectionVers(&#39;.....', '<p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;v</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;v</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}<br />?&gt;</p><p>&lt;?php<br />require(&#39;../functions.php&#39;);<br />session_start();<br />//en cas de deconnexion<br />if(connecter())<br />{<br />&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />}<br />else<br />{</p><p>}es,dflfnlqdsjnfcsd<br />?&gt;</p>', '2016-12-06 18:31:30', NULL, 0),
(97, 3, 1, 432, 'mon test chÃ©rie ouiiiiiii', 'SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE...', '<p>SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?SELECT ID_RIGHT FROM authorizations WHERE ID_TYPE = ?</p>\r\n', '2016-12-07 22:41:40', '2016-12-10 21:14:21', 1),
(98, 2, 2, 433, 'Tree is life', '&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp...', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; }<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;else<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;?&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;script&gt;window.location.replace(&quot;connexion.php&quot;);&lt;/script&gt;<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&lt;?php<br />&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;}</p>', '2016-12-08 18:48:19', NULL, 0),
(99, 1, 2, 434, 'Amazing garden during autumn season', '$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn...', '<p>$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)$btn.button(&#39;reset&#39;)v&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;&nbsp;&nbsp;&nbsp; border-left:0.5px #a9a9a9 solid;<br />\r\nborder:1px black solid;&nbsp;&nbsp;&nbsp;</p>\r\n', '2016-12-08 22:28:13', '2016-12-17 12:26:16', 1),
(100, 1, 1, 435, 'aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa', '&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;...', '<p>&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;&lt;/a&gt;</p>', '2016-12-08 23:00:00', NULL, 0),
(101, 1, 1, 436, 'Beautiful singapour', '&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php...', '<p>&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;&lt;?php if($isUpdateMode){ echo $article-&gt;CONTENU(); } ?&gt;</p>\r\n', '2016-12-09 19:32:33', NULL, 0),
(102, 1, 1, 437, 'Beautiful singapour', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;var datavar datavar ...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;var datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar data</p>\n', '2016-12-09 23:38:16', NULL, 0),
(103, 1, 1, 438, 'Beautiful singapour', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;var datavar datavar ...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;var datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar datavar data</p>\n', '2016-12-09 23:40:22', NULL, 0),
(104, 1, 1, 442, 'Beautiful singapour', 'echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo...', '<p><!--?php if($isUpdateMode){ echo $article--->echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;echo 1;</p>\r\n', '2016-12-09 23:52:24', NULL, 0),
(105, 1, 2, 443, 'Beautiful singapour', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;isPublishedisPublish...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;isPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublished</p>\r\n', '2016-12-10 00:03:02', NULL, 1),
(106, 1, 2, 444, 'heeeeeeeeeeeeeeeeeeeeeeeeee', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;isPublishedisPublish...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;isPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublished</p>\r\n', '2016-12-10 00:04:06', NULL, 1),
(107, 1, 1, 445, 'heeeeeeeeeeeeeeeeeeeeeeeeee', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;isPublishedisPublish...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;isPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublished</p>\r\n', '2016-12-10 00:04:21', NULL, 1),
(108, 1, 1, 446, 'Samia  ma petite soeur chÃ©rie', '<!--?phprequire(&#39;../functions.php&#39;);\r\nsession_start();\r\n//en cas de deconnexion\r\nif(connecter())\r\n{\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);\r\n&nbsp;&nbsp; &nbsp;redirection...', '<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;v</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;v</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}<br />\r\n?&gt;</p>\r\n\r\n<p><!--?php<br /-->require(&#39;../functions.php&#39;);<br />\r\nsession_start();<br />\r\n//en cas de deconnexion<br />\r\nif(connecter())<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;unset($_SESSION[&#39;UTILISATEUR&#39;]);<br />\r\n&nbsp;&nbsp; &nbsp;redirectionVers(&#39;../index.php&#39;);<br />\r\n}<br />\r\nelse<br />\r\n{</p>\r\n\r\n<p>}es,dflfnlqdsjnfcsd<br />\r\n?&gt;</p>\r\n', '2016-12-10 00:06:10', NULL, 1),
(109, 1, 1, 464, 'Samia  ma petite soeur chÃ©rie, je retire ce que j\'ai dis', '<!--?phpalert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&...', '<p><!--?php<br /-->alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);alert(&#39;lala&#39;);</p>\r\n', '2016-12-10 00:07:54', '2016-12-10 19:40:51', 1),
(110, 1, 1, 448, 'heeeeeeeeeeeeeeeeeeeeeeeeee', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;isPublishedisPublish...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;isPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublished</p>\r\n', '2016-12-10 00:09:27', NULL, 1),
(111, 1, 1, 450, 'heeeeeeeeeeeeeeeeeeeeeeeeee', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;isPublishedisPublish...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;isPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublished</p>\r\n', '2016-12-10 16:04:11', NULL, 1),
(112, 1, 1, 451, 'heeeeeeeeeeeeeeeeeeeeeeeeee', 'CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;CONTENU(); } ?&gt;isPublishedisPublish...', '<p><!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;<!--?php if($isUpdateMode){ echo $article--->CONTENU(); } ?&gt;isPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublishedisPublished</p>\r\n', '2016-12-10 16:10:41', NULL, 1),
(113, 1, 1, 457, 'Amzing dinner in a fancy cruising boat, ', '&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &n...', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; $erreur = 5;<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;echo $erreur;</p>\r\n', '2016-12-10 18:41:15', '2016-12-10 19:07:57', 1),
(114, 1, 1, 461, 'hey ceci est un test deplus avec une autre imageeeee', '&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutI\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;...', '<p>&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutI<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp; if(!$isUpdateWithoutImage)<br />\r\n&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp; &nbsp;{</p>\r\n', '2016-12-10 19:09:19', '2016-12-10 20:44:19', 1),
(115, 1, 2, 462, 'Luaraaaaavvvvvvveeee', '&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&g...', '<p>&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;</p>\r\n', '2016-12-10 19:39:02', '2016-12-10 20:52:51', 1),
(116, 1, 1, 463, 'dddddddddddddddddddd', '&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&g...', '<p>&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;</p>\r\n', '2016-12-10 19:40:19', '2016-12-10 20:40:50', 1),
(117, 1, 1, 466, 'superbe cascade ! Super paysage', 'graaaaave !&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&...', '<p>graaaaave !&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;&lt;strong&gt;Well done!&lt;/strong&gt; Your article have successfully been saved!&lt;/div&gt;</p>\r\n', '2016-12-10 19:45:54', '2016-12-10 20:32:01', 1),
(118, 1, 1, 467, 'je dooooors', 'col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3...', '<p>col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3col-lg-offset-3 col-lg-6 col-lg-offset-3</p>\r\n', '2016-12-10 20:44:36', '2016-12-10 20:45:56', 1);
INSERT INTO `article` (`ID_ARTICLE`, `ID_UTILISATEUR`, `ID_CATEGORIE`, `ID_IMAGE_1`, `TITRE`, `INTRODUCTION`, `CONTENU`, `DATE_REALISATION`, `LAST_UPDATE`, `PUBLIER`) VALUES
(119, 1, 1, 482, 'Blue montains, an other side of Sydney !', '#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#ale...', '<p>#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success#alert-success</p>\r\n', '2016-12-10 20:46:34', '2016-12-19 22:04:41', 1),
(120, 1, 1, 471, 'ddddddddddddddddddddddddddddddddddd', '#alert-success\r\n{\r\n&nbsp;&nbsp; &nbsp;text-align: center;\r\n}#alert-success\r\n{\r\n&nbsp;&nbsp; &nbsp;text-align: center;\r\n}#alert-success\r\n{\r\n&nbsp;&nbsp; &nbsp;text-align: center;\r\n}#alert-success\r\n{\r\n&...', '<p>#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}</p>\r\n', '2016-12-10 20:53:21', '2016-12-10 22:08:02', 1),
(121, 1, 1, 470, 'jai modifiÃ© l\'article de mon pote', '#alert-success\r\n{\r\n&nbsp;&nbsp; &nbsp;text-align: center;\r\n}#alert-success\r\n{\r\n&nbsp;&nbsp; &nbsp;text-align: center;\r\n}#alert-success\r\n{\r\n&nbsp;&nbsp; &nbsp;text-align: center;\r\n}#alert-success\r\n{\r\n&...', '<p>#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}#alert-success<br />\r\n{<br />\r\n&nbsp;&nbsp; &nbsp;text-align: center;<br />\r\n}</p>\r\n', '2016-12-10 20:55:38', '2016-12-10 20:56:39', 1),
(122, 3, 1, 473, 'My new dogs are so cutttte', '\r\n$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);\r\n\r\n\r\n$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);\r\n\r\n\r\n$(this).attr(&quot;placeholder&quot;, &q...', '<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n\r\n<pre>\r\n<code>$(this).attr(&quot;placeholder&quot;, &quot;Type your answer here&quot;);</code></pre>\r\n', '2016-12-10 22:16:29', '2016-12-10 22:17:11', 1),
(123, 4, 1, 475, 'My first article mec !', 'alert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-info...', '<p>alert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-infoalert-info</p>\r\n', '2016-12-10 22:28:49', '2016-12-13 23:41:37', 1),
(124, 1, 1, 476, 'A friendship born in Sydney I will never forget', '\r\n&quot;Her name is Vicky, From Canada!&quot;\r\n\r\n\r\nOur frienship has started because we were flatmate in Bondi beach! We naturally stared to do things together and what I like about her is her Simplic...', '<blockquote>\r\n<h2 style="font-style:italic">&quot;Her name is Vicky, From Canada!&quot;</h2>\r\n</blockquote>\r\n\r\n<p>Our frienship has started because we were flatmate in Bondi beach! We naturally stared to do things together and what I like about her is her Simplicity and the fact that she is smiling all the time&nbsp;</p>\r\n', '2016-12-10 23:00:50', '2016-12-14 21:28:31', 1),
(125, 1, 2, 477, '10 reasons that will make you want to live in Sydney', 'Sydney est une ville du sud-est de l&#39;Australie, situ&eacute;e dans l&#39;&Eacute;tat de Nouvelle-Galles du Sud, sur les rives de la mer de Tasman. Avec une aire urbaine comprenant en 2014 une popu...', '<p><strong>Sydney</strong> est une <a href="https://fr.wikipedia.org/wiki/Ville" title="Ville">ville</a> du sud-est de l&#39;<a href="https://fr.wikipedia.org/wiki/Australie" title="Australie">Australie</a>, situ&eacute;e dans l&#39;&Eacute;tat de <a href="https://fr.wikipedia.org/wiki/Nouvelle-Galles_du_Sud" title="Nouvelle-Galles du Sud">Nouvelle-Galles du Sud</a>, sur les rives de la <a href="https://fr.wikipedia.org/wiki/Mer_de_Tasman" title="Mer de Tasman">mer de Tasman</a>. Avec une <a href="https://fr.wikipedia.org/wiki/Aire_urbaine" title="Aire urbaine">aire urbaine</a> comprenant en 2014 une population de 4&nbsp;840&nbsp;600&nbsp;habitants<sup><a href="https://fr.wikipedia.org/wiki/Sydney#cite_note-pop-1">1</a></sup> sur pr&egrave;s de 12&nbsp;300&nbsp;km<sup>2</sup>, Sydney est la ville la plus peupl&eacute;e d&#39;Australie,</p>\r\n', '2016-12-10 23:04:26', '2016-12-13 23:45:06', 0),
(126, 1, 2, 478, 'mon super test', 'lalalallall ceci est un bon petit tessssst fffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff...', '<p><span style="background-color:#ff8c00">lalalallall cec</span>i es<span style="color:#ff0000">t un bon peti</span>t <span style="font-size:48px">tessssst ffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffffff</span></p>\r\n', '2016-12-14 19:56:09', NULL, 1),
(127, 1, 2, 479, 'Mon super voyage au vietnam', '$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&g...', '<p>$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()$article-&gt;ID_CATEGORIE()</p>\r\n', '2016-12-16 18:33:21', NULL, 1),
(128, 1, 1, 480, 'test pour le jour', '$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$date...', '<p>$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation$dateCreation</p>\r\n', '2016-12-16 21:05:05', '2016-12-18 19:52:39', 1),
(129, 1, 1, 481, 'Road trip accross Australia, we touched freedom!', 'eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee...', '<p><code>eeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeeee</code></p>\r\n', '2016-12-19 21:31:31', NULL, 1),
(130, 3, 2, 483, 'My first article', 'heeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyhe...', '<p>heeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeeyheeeeeeeeey</p>\r\n', '2016-12-20 22:40:55', NULL, 1);

-- --------------------------------------------------------

--
-- Table structure for table `authorizations`
--

CREATE TABLE `authorizations` (
  `ID_RIGHT` int(11) NOT NULL,
  `ID_TYPE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `authorizations`
--

INSERT INTO `authorizations` (`ID_RIGHT`, `ID_TYPE`) VALUES
(1, 2),
(1, 3),
(1, 4),
(1, 5),
(2, 3),
(2, 4),
(2, 5),
(3, 1);

-- --------------------------------------------------------

--
-- Table structure for table `categorie`
--

CREATE TABLE `categorie` (
  `ID_CATEGORIE` int(11) NOT NULL,
  `NOM_CATEGORIE` char(100) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `categorie`
--

INSERT INTO `categorie` (`ID_CATEGORIE`, `NOM_CATEGORIE`) VALUES
(1, 'Rencontre'),
(2, 'Voyage');

-- --------------------------------------------------------

--
-- Table structure for table `coacher`
--

CREATE TABLE `coacher` (
  `ID_UTILISATEUR` int(11) NOT NULL,
  `ID_WORKSHOP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `consulter`
--

CREATE TABLE `consulter` (
  `DATE_CONSULTATION` date NOT NULL,
  `ID_ARTICLE` int(11) NOT NULL,
  `vue` int(11) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `consulter`
--

INSERT INTO `consulter` (`DATE_CONSULTATION`, `ID_ARTICLE`, `vue`) VALUES
('2016-11-17', 2, 3),
('2016-11-17', 3, 4),
('2016-11-19', 3, 1),
('2016-11-19', 4, 4),
('2016-11-19', 6, 4),
('2016-11-19', 7, 3),
('2016-11-20', 4, 2),
('2016-11-20', 6, 1),
('2016-11-20', 8, 1),
('2016-11-22', 4, 1),
('2016-11-22', 7, 0),
('2016-11-23', 7, 0),
('2016-11-25', 4, 0),
('2016-11-25', 15, 1),
('2016-11-26', 6, 0);

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `ID` int(11) NOT NULL,
  `MESSAGE` varchar(10000) COLLATE utf8_bin NOT NULL,
  `DATE` datetime NOT NULL,
  `ID_UTILISATEUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`ID`, `MESSAGE`, `DATE`, `ID_UTILISATEUR`) VALUES
(72, 'y', '2016-12-01 00:00:00', 2),
(73, 'cv ', '2016-11-24 22:45:13', 1),
(74, 'Hey mec Ã§a va ?', '2016-11-24 22:45:42', 2),
(75, 'Hey mec Ã§a va ?', '2016-11-24 22:46:35', 2),
(76, '', '2016-11-24 22:50:06', 1),
(77, 'Hey Ã§a va ?', '2016-11-24 22:50:28', 1),
(78, 'Hey Ã§a va ?', '2016-11-24 22:51:10', 3),
(79, 'Hey Ã§a va ?', '2016-11-24 22:53:39', 1),
(80, 'dxv', '2016-11-24 22:54:54', 2),
(81, 'dxv', '2016-11-24 22:55:18', 1),
(82, 'dxv', '2016-11-24 22:55:40', 1),
(83, 'dxv', '2016-11-24 22:55:49', 2),
(84, 'ff', '2016-11-24 22:56:52', 2),
(85, 'ff', '2016-11-24 22:56:53', 2),
(86, 'vvv', '2016-11-24 22:57:07', 1),
(87, 'hey', '2016-11-25 19:18:36', 1),
(88, '', '2016-11-25 19:39:33', 1),
(89, '', '2016-11-25 19:42:52', 1),
(90, '', '2016-11-25 19:42:57', 1),
(91, '', '2016-11-25 19:42:59', 1),
(92, '', '2016-11-25 19:44:39', 1),
(93, '', '2016-11-25 19:45:40', 1),
(94, '', '2016-11-25 19:46:03', 1),
(95, '', '2016-11-25 19:46:22', 1),
(96, 'lalala', '2016-11-25 19:46:58', 1),
(97, 'ffff', '2016-11-25 19:47:57', 1),
(98, '', '2016-11-25 19:48:00', 1),
(99, '', '2016-11-25 19:48:01', 1),
(100, '', '2016-11-25 19:48:16', 1),
(101, '', '2016-11-25 20:16:07', 1),
(102, '', '2016-11-25 20:17:44', 1),
(103, '', '2016-11-25 20:48:43', 1),
(104, '', '2016-11-25 20:49:31', 1),
(105, 'ggbfg', '2016-11-25 20:49:35', 1),
(106, 'fff', '2016-11-25 20:50:23', 1),
(107, 'ddd', '2016-11-25 20:53:17', 1),
(108, 'fff', '2016-11-25 20:54:11', 1),
(109, 'f', '2016-11-25 20:59:09', 1),
(110, '', '2016-11-25 21:02:45', 1),
(111, '', '2016-11-25 21:03:07', 1),
(112, 'vv', '2016-11-25 21:26:31', 1),
(113, 'ccc', '2016-11-25 21:27:21', 1),
(114, 'ddd', '2016-11-25 21:27:28', 1),
(115, 'vv', '2016-11-25 21:27:33', 1),
(116, 'd', '2016-11-25 21:29:03', 1),
(117, 'vvv', '2016-11-25 21:29:17', 1),
(118, '', '2016-11-25 21:30:00', 1),
(119, 'fff', '2016-11-25 21:30:16', 1),
(120, 'dd', '2016-11-25 21:30:39', 1),
(121, 'd', '2016-11-25 21:31:28', 1),
(122, 's', '2016-11-25 21:31:39', 1),
(123, '', '2016-11-25 21:34:00', 1),
(124, 'd', '2016-11-25 21:38:35', 1),
(125, 'd', '2016-11-25 21:39:57', 1),
(126, 'd', '2016-11-25 21:43:14', 1),
(127, 'd', '2016-11-25 21:43:52', 1),
(128, 'lalala', '2016-11-25 21:44:03', 1),
(129, 'Salut Laura, j\'espÃ¨re que tu vas bien ! tu rentres quand ? bisouuuus', '2016-11-25 21:44:46', 3),
(130, '', '2016-11-25 21:52:53', 1),
(131, 'ddd', '2016-11-25 21:57:57', 1),
(132, 'hey', '2016-11-25 21:59:22', 1),
(133, '', '2016-11-25 23:57:01', 1),
(134, '', '2016-11-26 00:06:06', 1),
(135, '', '2016-11-26 00:06:15', 1),
(136, '', '2016-11-26 00:06:44', 1),
(137, 'bbb', '2016-11-26 00:06:50', 1),
(138, 'hacker', '2016-11-26 00:22:11', 1),
(139, 'bbbb', '2016-11-28 10:30:09', 1),
(140, 'hyhyhy', '2016-11-28 10:30:53', 1),
(141, 'hey man I love what you do, \n', '2016-12-05 23:51:34', 1),
(142, 'heeeeee', '2016-12-06 18:34:10', 1);

-- --------------------------------------------------------

--
-- Table structure for table `date`
--

CREATE TABLE `date` (
  `DATE_CONSULTATION` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `date`
--

INSERT INTO `date` (`DATE_CONSULTATION`) VALUES
('2015-01-05'),
('2015-01-06'),
('2015-01-07'),
('2015-01-08'),
('2015-01-09'),
('2015-01-10'),
('2015-01-11'),
('2015-01-12'),
('2015-01-13'),
('2015-01-14'),
('2015-01-15'),
('2015-01-17'),
('2015-01-18'),
('2015-01-19'),
('2015-01-22'),
('2015-01-24'),
('2015-01-25'),
('2015-01-29'),
('2015-02-02'),
('2015-02-07'),
('2015-02-09'),
('2015-02-14'),
('2015-02-15'),
('2015-02-16'),
('2015-02-18'),
('2015-02-19'),
('2015-02-21'),
('2015-02-24'),
('2015-02-25'),
('2015-02-26'),
('2015-03-04'),
('2015-03-05'),
('2015-03-06'),
('2015-03-07'),
('2015-03-08'),
('2015-03-09'),
('2015-03-10'),
('2015-03-12'),
('2015-03-13'),
('2015-03-14'),
('2015-03-18'),
('2015-03-19'),
('2015-03-21'),
('2015-03-22'),
('2015-03-26'),
('2015-03-30'),
('2015-03-31'),
('2015-04-01'),
('2015-04-02'),
('2015-04-11'),
('2015-04-12'),
('2015-04-13'),
('2016-05-16'),
('2016-05-27'),
('2016-06-04'),
('2016-06-08'),
('2016-06-10'),
('2016-06-11'),
('2016-06-12'),
('2016-09-22'),
('2016-10-13'),
('2016-11-17'),
('2016-11-19'),
('2016-11-20'),
('2016-11-22'),
('2016-11-23'),
('2016-11-25'),
('2016-11-26');

-- --------------------------------------------------------

--
-- Table structure for table `deletedArticle`
--

CREATE TABLE `deletedArticle` (
  `ID_ARTICLE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `deletedArticle`
--

INSERT INTO `deletedArticle` (`ID_ARTICLE`) VALUES
(95),
(97),
(122),
(126),
(127),
(128),
(129);

-- --------------------------------------------------------

--
-- Table structure for table `image_description`
--

CREATE TABLE `image_description` (
  `ID_IMAGE` int(11) NOT NULL,
  `SOURCE` varchar(600) CHARACTER SET latin1 DEFAULT NULL,
  `ALT` char(32) CHARACTER SET latin1 DEFAULT NULL,
  `ID_UTILISATEUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `image_description`
--

INSERT INTO `image_description` (`ID_IMAGE`, `SOURCE`, `ALT`, `ID_UTILISATEUR`) VALUES
(331, 'image/331-uluru sunset.jpg', 'uluru sunset', 1),
(332, 'image/332-bella.jpg', 'bella', 1),
(333, 'image/333-verre.jpg', 'verre', 1),
(334, 'image/334-sofiane kangourou.jpg', 'sofiane kangourou', 1),
(335, 'image/335-Laura.jpg', 'Laura', 1),
(336, 'image/336-singa.jpg', 'singa', 1),
(337, 'image/337-jpg', 'image/337-jpg', 1),
(338, 'image/338-jpg', 'image/338-jpg', 1),
(339, 'image/339-jpg', 'image/339-jpg', 1),
(340, 'image/340-jpg', 'image/340-jpg', 1),
(341, 'image/341-jpg', 'image/341-jpg', 1),
(342, 'image/342-jpg', 'image/342-jpg', 1),
(343, 'image/343-jpg', 'image/343-jpg', 1),
(344, 'image/344-jpg', 'image/344-jpg', 1),
(345, 'image/345-jpg', 'image/345-jpg', 1),
(346, 'image/346-jpg', 'image/346-jpg', 1),
(347, 'image/347-jpg', 'image/347-jpg', 1),
(348, 'image/348-jpg', 'image/348-jpg', 1),
(349, 'image/349-jpg', 'image/349-jpg', 1),
(350, 'image/350-jpg', 'image/350-jpg', 1),
(351, 'image/351-jpg', 'image/351-jpg', 1),
(352, 'image/352-jpg', 'image/352-jpg', 1),
(353, 'image/353-jpg', 'image/353-jpg', 1),
(354, 'image/354-jpg', 'image/354-jpg', 1),
(355, 'image/355-jpg', 'image/355-jpg', 1),
(356, 'image/356-jpg', 'image/356-jpg', 1),
(357, 'image/357-jpg', 'image/357-jpg', 1),
(358, 'image/358-jpg', 'image/358-jpg', 1),
(359, 'image/359-jpg', 'image/359-jpg', 1),
(360, 'image/360-jpg', 'image/360-jpg', 1),
(361, 'image/361-jpg', 'image/361-jpg', 1),
(362, 'image/362-jpg', 'image/362-jpg', 1),
(363, 'image/363-jpg', 'image/363-jpg', 1),
(364, 'image/364-jpg', 'image/364-jpg', 1),
(365, 'image/365-jpg', 'image/365-jpg', 1),
(366, 'image/366-jpg', 'image/366-jpg', 1),
(367, 'image/367-jpg', 'image/367-jpg', 1),
(368, 'image/368-jpg', 'image/368-jpg', 1),
(369, 'image/369-jpg', 'image/369-jpg', 1),
(370, 'image/370-jpg', 'image/370-jpg', 1),
(371, 'image/371-jpg', 'image/371-jpg', 1),
(372, 'image/372-jpg', 'image/372-jpg', 1),
(373, 'image/373-jpg', 'image/373-jpg', 1),
(374, 'image/374-jpg', 'image/374-jpg', 1),
(375, 'image/375-jpg', 'image/375-jpg', 1),
(376, 'image/376-jpg', 'image/376-jpg', 1),
(377, 'image/377-jpg', 'image/377-jpg', 1),
(378, 'image/378-jpg', 'image/378-jpg', 1),
(379, 'image/379-jpg', 'image/379-jpg', 1),
(380, 'image/380-jpg', 'image/380-jpg', 1),
(381, 'image/381-jpg', 'image/381-jpg', 1),
(382, 'image/382-jpg', 'image/382-jpg', 1),
(383, 'image/383-jpg', 'image/383-jpg', 1),
(384, 'image/384-jpg', 'image/384-jpg', 1),
(385, 'image/385-jpg', 'image/385-jpg', 1),
(386, 'image/386-jpg', 'image/386-jpg', 1),
(387, 'image/387-jpg', 'image/387-jpg', 1),
(388, 'image/388-jpg', 'image/388-jpg', 1),
(389, 'image/389-jpg', 'image/389-jpg', 1),
(390, 'image/390-jpg', 'image/390-jpg', 1),
(391, 'image/391-jpg', 'image/391-jpg', 1),
(392, 'image/392-jpg', 'image/392-jpg', 1),
(393, 'image/393-jpg', 'image/393-jpg', 1),
(394, 'image/394-jpg', 'image/394-jpg', 1),
(395, 'image/395-jpg', 'image/395-jpg', 1),
(396, 'image/396-jpg', 'image/396-jpg', 1),
(397, 'image/397-jpg', 'image/397-jpg', 1),
(398, 'image/398-jpg', 'image/398-jpg', 1),
(399, 'image/399-jpg', 'image/399-jpg', 1),
(400, 'image/400-jpg', 'image/400-jpg', 1),
(401, 'image/401-jpg', 'image/401-jpg', 1),
(402, 'image/402-jpg', 'image/402-jpg', 1),
(403, 'image/403-jpg', 'image/403-jpg', 1),
(404, 'image/404-jpg', 'image/404-jpg', 1),
(405, 'image/405-jpg', 'image/405-jpg', 1),
(406, 'image/406-jpg', 'image/406-jpg', 1),
(407, 'image/407-jpg', 'image/407-jpg', 1),
(408, 'image/408-jpg', 'image/408-jpg', 1),
(409, 'image/409-jpg', 'image/409-jpg', 1),
(410, 'image/410-jpg', 'image/410-jpg', 1),
(411, 'image/411-jpg', 'image/411-jpg', 1),
(412, 'image/412-jpg', 'image/412-jpg', 1),
(413, 'image/413-jpg', 'image/413-jpg', 1),
(414, 'image/414-jpg', 'image/414-jpg', 1),
(415, 'image/415-jpg', 'image/415-jpg', 1),
(416, 'image/416-jpg', 'image/416-jpg', 1),
(417, 'image/417-jpg', 'image/417-jpg', 1),
(418, 'image/418-jpg', 'image/418-jpg', 1),
(419, 'image/419-jpg', 'image/419-jpg', 1),
(420, 'image/420-jpg', 'image/420-jpg', 1),
(421, 'image/421-jpg', 'image/421-jpg', 1),
(422, 'image/422-jpg', 'image/422-jpg', 1),
(423, 'image/423-jpg', 'image/423-jpg', 1),
(424, 'image/424-jpg', 'image/424-jpg', 1),
(425, 'image/425-jpg', 'image/425-jpg', 1),
(426, 'image/426-jpg', 'image/426-jpg', 1),
(427, 'image/427-jpg', 'image/427-jpg', 1),
(428, 'image/428-jpg', 'image/428-jpg', 1),
(429, 'image/429-jpg', 'image/429-jpg', 1),
(430, 'image/430-jpg', 'image/430-jpg', 1),
(431, 'image/431-jpg', 'image/431-jpg', 1),
(432, 'image/432-jpg', 'image/432-jpg', 3),
(433, 'image/433-jpg', 'image/433-jpg', 2),
(434, 'image/434-jpg', 'image/434-jpg', 1),
(435, 'image/435-jpg', 'image/435-jpg', 1),
(436, 'image/436-jpg', 'image/436-jpg', 1),
(437, 'image/437-jpg', 'image/437-jpg', 1),
(438, 'image/438-jpg', 'image/438-jpg', 1),
(439, 'image/439-jpg', 'image/439-jpg', 1),
(440, 'image/440-jpg', 'image/440-jpg', 1),
(441, 'image/441-jpg', 'image/441-jpg', 1),
(442, 'image/442-jpg', 'image/442-jpg', 1),
(443, 'image/443-jpg', 'image/443-jpg', 1),
(444, 'image/444-jpg', 'image/444-jpg', 1),
(445, 'image/445-jpg', 'image/445-jpg', 1),
(446, 'image/446-jpg', 'image/446-jpg', 1),
(447, 'image/447-jpg', 'image/447-jpg', 1),
(448, 'image/448-jpg', 'image/448-jpg', 1),
(449, 'image/449-jpg', 'image/449-jpg', 1),
(450, 'image/450-jpg', 'image/450-jpg', 1),
(451, 'image/451-jpg', 'image/451-jpg', 1),
(452, 'image/452-jpg', 'image/452-jpg', 1),
(453, 'image/453-jpg', 'image/453-jpg', 1),
(454, 'image/454-jpg', 'image/454-jpg', 1),
(455, 'image/455-jpg', 'image/455-jpg', 1),
(456, 'image/456-jpg', 'image/456-jpg', 1),
(457, 'image/457-jpg', 'image/457-jpg', 1),
(458, 'image/458-jpg', 'image/458-jpg', 1),
(459, 'image/459-jpg', 'image/459-jpg', 1),
(460, 'image/460-jpg', 'image/460-jpg', 1),
(461, 'image/461-jpg', 'image/461-jpg', 1),
(462, 'image/462-jpg', 'image/462-jpg', 1),
(463, 'image/463-jpg', 'image/463-jpg', 1),
(464, 'image/464-jpg', 'image/464-jpg', 1),
(465, 'image/465-jpg', 'image/465-jpg', 1),
(466, 'image/466-jpg', 'image/466-jpg', 1),
(467, 'image/467-jpg', 'image/467-jpg', 1),
(468, 'image/468-jpg', 'image/468-jpg', 1),
(469, 'image/469-jpg', 'image/469-jpg', 1),
(470, 'image/470-jpg', 'image/470-jpg', 1),
(471, 'image/471-jpg', 'image/471-jpg', 1),
(472, 'image/472-jpg', 'image/472-jpg', 3),
(473, 'image/473-jpg', 'image/473-jpg', 3),
(474, 'image/474-jpg', 'image/474-jpg', 4),
(475, 'image/475-jpg', 'image/475-jpg', 4),
(476, 'image/476-jpg', 'image/476-jpg', 1),
(477, 'image/477-jpg', 'image/477-jpg', 1),
(478, 'image/478-jpg', 'image/478-jpg', 1),
(479, 'image/479-jpg', 'image/479-jpg', 1),
(480, 'image/480-jpg', 'image/480-jpg', 1),
(481, 'image/481-jpg', 'image/481-jpg', 1),
(482, 'image/482-jpg', 'image/482-jpg', 1),
(483, 'image/483-jpg', 'image/483-jpg', 3);

-- --------------------------------------------------------

--
-- Table structure for table `page_facebook`
--

CREATE TABLE `page_facebook` (
  `ID` int(11) NOT NULL,
  `ID_PAGE` bigint(20) NOT NULL,
  `NOM_PAGE` varchar(1000) COLLATE utf8_bin NOT NULL,
  `ID_CATEGORIE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `page_facebook`
--

INSERT INTO `page_facebook` (`ID`, `ID_PAGE`, `NOM_PAGE`, `ID_CATEGORIE`) VALUES
(24, 1111, 'lalalla', 6),
(25, 185062817159, 'blusher Seduction', 6);

-- --------------------------------------------------------

--
-- Table structure for table `rights`
--

CREATE TABLE `rights` (
  `ID_RIGHT` int(11) NOT NULL,
  `EXPLANATIONS` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `rights`
--

INSERT INTO `rights` (`ID_RIGHT`, `EXPLANATIONS`) VALUES
(1, 'manage own articles (updating, publishing/unpublishing/deleting)'),
(2, 'Managing articles of other users (updating, publishing/unpublishing, deleting,approving/unaproving) ');

-- --------------------------------------------------------

--
-- Table structure for table `user_type`
--

CREATE TABLE `user_type` (
  `ID_TYPE` int(11) NOT NULL,
  `LIBELLE_TYPE` varchar(50) COLLATE utf8_bin NOT NULL,
  `EXPLANATIONS` varchar(500) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `user_type`
--

INSERT INTO `user_type` (`ID_TYPE`, `LIBELLE_TYPE`, `EXPLANATIONS`) VALUES
(1, 'Internet User', 'This group of user allows to interact with author articles (comments, sending messages)'),
(2, 'Author', 'This group allows a user to post content, They can submit new content. When content is submitted by an Author level user, they receive message saying that they need to wait until the article has been approved. after aproval, they will be able to manage it by updating it, publishing/unpublishing it or deleting it.'),
(3, 'Publishor', 'This group allows a user to post, edit and publish/unpublish any (not just their own) content item from the Front-end. Publishers can review all articles, edit and change "approved" options.'),
(4, 'Manager', 'This group allows access to content creation and other system information from the Backend. Think of Manager users as Publishers, with Backend access. They can log in through the Administrator interface, but their rights and access are generally restricted to content management. They can create or edit any content, access to some Backend only features like adding, deleting and editing Categories for example'),
(5, 'Administrator', 'All access');

-- --------------------------------------------------------

--
-- Table structure for table `utilisateur`
--

CREATE TABLE `utilisateur` (
  `ID_UTILISATEUR` int(11) NOT NULL,
  `PSEUDONYME` char(32) COLLATE utf8_bin DEFAULT NULL,
  `EMAIL` varchar(300) COLLATE utf8_bin NOT NULL,
  `PASSWORD` varchar(100) COLLATE utf8_bin NOT NULL,
  `DATE_NAISSANCE` date DEFAULT NULL,
  `VILLE` varchar(100) COLLATE utf8_bin NOT NULL,
  `PAYS` varchar(100) COLLATE utf8_bin NOT NULL,
  `ID_IMAGE` int(11) NOT NULL,
  `CONTENU` varchar(10000) COLLATE utf8_bin NOT NULL,
  `INTRODUCTION` varchar(5000) COLLATE utf8_bin NOT NULL,
  `ID_TYPE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `utilisateur`
--

INSERT INTO `utilisateur` (`ID_UTILISATEUR`, `PSEUDONYME`, `EMAIL`, `PASSWORD`, `DATE_NAISSANCE`, `VILLE`, `PAYS`, `ID_IMAGE`, `CONTENU`, `INTRODUCTION`, `ID_TYPE`) VALUES
(1, 'Sofiane', 'sofiane.ouafir@live.fr', '4c6t3xyy', '1994-04-20', 'Cannes', 'France', 332, '', 'Travels and adventures lover, life is good, writing a bio is hard for me, is it because I don\'t know who I am ?', 5),
(2, 'Alexandre', '', '4c6t3xyy', '1994-04-20', 'Cannes', 'France', 331, '', 'Hi, I\'m Sofiane, I Love travelling, creating, doing new things and meeting people<br/><br/>', 1),
(3, 'Laura', '', '4c6t3xyy', '1994-04-20', 'Cannes', 'France', 335, '', 'I wish i was a little bit taller, wish i was a baller, wish i had a girl… also.', 2),
(4, 'ThirstyOfTravel', '', '4c6t3xyy', '1994-04-20', 'Cannes', 'France', 335, '', 'Hi, I\'m Sofiane, I Love travelling, creating, doing new things and meeting people<br/><br/>', 2);

-- --------------------------------------------------------

--
-- Table structure for table `workshop`
--

CREATE TABLE `workshop` (
  `ID` int(11) NOT NULL,
  `INTRODUCTION` varchar(2000) COLLATE utf8_bin DEFAULT NULL,
  `CONTENU` varchar(10000) COLLATE utf8_bin DEFAULT NULL,
  `TITRE` varchar(1000) COLLATE utf8_bin NOT NULL,
  `DATEDEBUT` date NOT NULL,
  `COUT` double NOT NULL,
  `DEPOSIT` double NOT NULL,
  `DATEFIN` date NOT NULL,
  `ID_IMAGE` int(11) NOT NULL,
  `ID_VIDEO` int(11) NOT NULL,
  `VILLE` varchar(300) COLLATE utf8_bin NOT NULL,
  `PAYS` varchar(300) COLLATE utf8_bin NOT NULL,
  `ADRESSE` varchar(1000) COLLATE utf8_bin NOT NULL,
  `ID_UTILISATEUR` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`ID_ARTICLE`),
  ADD KEY `I_FK_ARTICLE_UTILISATEUR` (`ID_UTILISATEUR`),
  ADD KEY `I_FK_ARTICLE_CATEGORIE` (`ID_CATEGORIE`),
  ADD KEY `I_FK_ARTICLE_IMAGE_DESCRIPTION` (`ID_IMAGE_1`);

--
-- Indexes for table `authorizations`
--
ALTER TABLE `authorizations`
  ADD PRIMARY KEY (`ID_RIGHT`,`ID_TYPE`);

--
-- Indexes for table `categorie`
--
ALTER TABLE `categorie`
  ADD PRIMARY KEY (`ID_CATEGORIE`);

--
-- Indexes for table `coacher`
--
ALTER TABLE `coacher`
  ADD PRIMARY KEY (`ID_UTILISATEUR`,`ID_WORKSHOP`),
  ADD KEY `ID_WORKSHOP` (`ID_WORKSHOP`);

--
-- Indexes for table `consulter`
--
ALTER TABLE `consulter`
  ADD PRIMARY KEY (`DATE_CONSULTATION`,`ID_ARTICLE`),
  ADD KEY `ID_ARTICLE` (`ID_ARTICLE`);

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `date`
--
ALTER TABLE `date`
  ADD PRIMARY KEY (`DATE_CONSULTATION`);

--
-- Indexes for table `deletedArticle`
--
ALTER TABLE `deletedArticle`
  ADD PRIMARY KEY (`ID_ARTICLE`);

--
-- Indexes for table `image_description`
--
ALTER TABLE `image_description`
  ADD PRIMARY KEY (`ID_IMAGE`),
  ADD KEY `ID_IMAGE` (`ID_IMAGE`),
  ADD KEY `ID_UTILISATEUR` (`ID_UTILISATEUR`);

--
-- Indexes for table `page_facebook`
--
ALTER TABLE `page_facebook`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_CATEGORIE` (`ID_CATEGORIE`);

--
-- Indexes for table `rights`
--
ALTER TABLE `rights`
  ADD PRIMARY KEY (`ID_RIGHT`);

--
-- Indexes for table `user_type`
--
ALTER TABLE `user_type`
  ADD PRIMARY KEY (`ID_TYPE`);

--
-- Indexes for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD PRIMARY KEY (`ID_UTILISATEUR`),
  ADD KEY `FK_IMAGE` (`ID_IMAGE`);

--
-- Indexes for table `workshop`
--
ALTER TABLE `workshop`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `ID_IMAGE` (`ID_IMAGE`,`ID_VIDEO`),
  ADD KEY `ID_VIDEO` (`ID_VIDEO`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `article`
--
ALTER TABLE `article`
  MODIFY `ID_ARTICLE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;
--
-- AUTO_INCREMENT for table `categorie`
--
ALTER TABLE `categorie`
  MODIFY `ID_CATEGORIE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=143;
--
-- AUTO_INCREMENT for table `page_facebook`
--
ALTER TABLE `page_facebook`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `rights`
--
ALTER TABLE `rights`
  MODIFY `ID_RIGHT` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `user_type`
--
ALTER TABLE `user_type`
  MODIFY `ID_TYPE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT for table `workshop`
--
ALTER TABLE `workshop`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `article`
--
ALTER TABLE `article`
  ADD CONSTRAINT `article_ibfk_1` FOREIGN KEY (`ID_UTILISATEUR`) REFERENCES `utilisateur` (`ID_UTILISATEUR`),
  ADD CONSTRAINT `article_ibfk_2` FOREIGN KEY (`ID_CATEGORIE`) REFERENCES `categorie` (`ID_CATEGORIE`),
  ADD CONSTRAINT `article_ibfk_5` FOREIGN KEY (`ID_IMAGE_1`) REFERENCES `image_description` (`ID_IMAGE`);

--
-- Constraints for table `coacher`
--
ALTER TABLE `coacher`
  ADD CONSTRAINT `coacher_ibfk_1` FOREIGN KEY (`ID_UTILISATEUR`) REFERENCES `utilisateur` (`ID_UTILISATEUR`),
  ADD CONSTRAINT `coacher_ibfk_3` FOREIGN KEY (`ID_WORKSHOP`) REFERENCES `workshop` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `consulter`
--
ALTER TABLE `consulter`
  ADD CONSTRAINT `consulter_ibfk_3` FOREIGN KEY (`ID_ARTICLE`) REFERENCES `article` (`ID_ARTICLE`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `consulter_ibfk_4` FOREIGN KEY (`DATE_CONSULTATION`) REFERENCES `date` (`DATE_CONSULTATION`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `utilisateur`
--
ALTER TABLE `utilisateur`
  ADD CONSTRAINT `utilisateur_ibfk_1` FOREIGN KEY (`ID_IMAGE`) REFERENCES `image_description` (`ID_IMAGE`);

--
-- Constraints for table `workshop`
--
ALTER TABLE `workshop`
  ADD CONSTRAINT `workshop_ibfk_2` FOREIGN KEY (`ID_IMAGE`) REFERENCES `image_description` (`ID_IMAGE`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
