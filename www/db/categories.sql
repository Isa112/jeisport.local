-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 176.126.167.134
-- Generation Time: Feb 03, 2015 at 04:14 PM
-- Server version: 5.5.32-MariaDB-1~wheezy
-- PHP Version: 5.4.4-14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sparta`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

DROP TABLE IF EXISTS `categories`;
CREATE TABLE IF NOT EXISTS `categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `h1` varchar(255) NOT NULL,
  `h2` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `image2` varchar(255) NOT NULL,
  `image3` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `text` text NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `h1`, `h2`, `url`, `image`, `image2`, `image3`, `title`, `desc`, `keyw`, `text`, `order`, `active`) VALUES
(55, 'Фитнес клубы', 'СЕКЦИИ И КЛУБЫ ЕДИНОБОРСТВ', 'вфывфы', 'fitnes-club', '87785e3e0c820addcc924a926e262770.png', 'a2e2962e050f5e56bfb2c2ed266a2c9c.jpg', '581e1115d8756264290bd5f80fff39da.png', '', '', '', '<p><span style="font-family:rbcgrotesk-light; font-size:medium">Устали однообразно курсировать между домом и работой? Решили разбавить этот тандем яркой ноткой, занявшись своим телом и здоровьем, ведь &laquo;в здоровом теле &ndash; здоровый дух&raquo;? А может, вы ищете спортивные секции для детей, поскольку осенью снижается физическая активность, столь необходимая для полноценного развития ребенка? Тогда самое время сесть поудобнее и изучить самую актуальную и подробную информацию про спортивные клубы Москвы! Здесь вы найдете самые разные спортивные клубы, которые могут быть расположены около вашего места работы или дома, а также спортивные секции, где будут заниматься ваши дети. На сайте Jeisport.ru представлено огромное разнообразие спортивных клубов Москвы, среди которых вы найдете: Спортклубы и спортивные школы, в которых проводятся занятия по единоборствам: кикбоксинг, бокс, боевое самбо, муай-тай (тайский бокс) и многие другие, Фитнесклубы &ndash; замечательная возможность для прекрасных дам подтянуть фигуру и всегда выглядеть потрясающе: в нашем каталоге представлено большое разнообразие спортивных секций по аква-аэробике, пилатесу, фитнесу, в том числе для молодых мам и беременных, а также тренажерные залы, Спортклубы с бассейнами &ndash; то, что нужно для полного избавления от стрессов: в каталоге вы найдете бассейны по своему вкусу &ndash; крытые или открытые, Спортивные игры &ndash; раздел нашего сайта, который наверняка заинтересует любителей оздоровиться и насладиться игрой в баскетбол, бадминтон, пляжный или классический волейбол, хоккей, пинг-понг, керлинг, гольф и, конечно, футбол. К вашим услугам огромный выбор спортклубов, предлагающих посетителям поиграть в эти и другие спортивные игры, Танцы &ndash; для вашего удобства все спортивные танцевальные секции сгруппированы по танцевальным направлениям: латина, go-go, R&amp;B, бальные, клубные, хореография и многие другие; здесь же вы найдете спортивные танцевальные секции для детей, Активный отдых &ndash; то, что нужно для полного расслабления и восстановления сил! В этой категории любители острых ощущений и не только найдут информацию о парашютном спорте, велотрассах, роллердромах, скалодромах, скейтпарках, паркуре и полетах на шаре в Москве. С нами выбор спортивного клуба или секции в Москве &ndash; сплошное удовольствие!</span></p>\n', 0, 'on'),
(56, 'Единоборства', 'Единоборства', 'Единоборства1', 'edinoborstva', '584e049bf5f0610f0918139c9a7270ea.png', '677d16f9df549c47cb903ea2ef624ee9.jpg', '5df20f2e456705a916602dadf3d6870e.png', '', '', '', '', 1, 'on'),
(57, 'Активный отдых', 'вфывыфв', '', 'aktivnyj_otdyh', '9b1f2de2704ed0e2312d0a5053affa05.png', '2517551ff51f3f1bd94b801fd1f0ac6a.jpg', '67692f50c3395cd1414392bdc663f0fb.png', '', '', '', '', 0, 'on'),
(58, 'Бассейны', 'выфвфы', 'выфвфы', 'bassejny', '2e2c2b3fd12a0dd0156ee040168c9c02.png', 'a5c9bf021581dbc7e667339dfed21aca.jpg', 'c7254a6077c4d45a5f6bafdf6e3b4ff1.png', '', '', '', '', 0, 'on'),
(59, 'Спортивные игры', 'dasd', '', 'sportivnye_igry', 'a44517d81303ae02dd889140d770797b.png', 'fa00f9ccc0cd7eb60b229720832eaf2c.jpg', '5f2a042d48368242d740d3d875ae15b5.png', '', '', '', '', 0, 'on'),
(60, 'Танцы', 'dasdas', 'вфывыф', 'tancy', '30ca7e2f783bb84fd95222651a34499c.png', 'f5f06ef8e0173cfb10d7e5b4b99c8808.jpg', 'e110f86c48cc589a95c9c0f7dee80a90.png', '', '', '', '', 0, 'on');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
