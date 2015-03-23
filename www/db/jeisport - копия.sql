-- phpMyAdmin SQL Dump
-- version 4.0.9
-- http://www.phpmyadmin.net
--
-- Host: 176.126.167.134
-- Generation Time: Mar 10, 2015 at 09:42 AM
-- Server version: 5.5.32-MariaDB-1~wheezy
-- PHP Version: 5.4.4-14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `jeisport`
--

-- --------------------------------------------------------

--
-- Table structure for table `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `about`
--

INSERT INTO `about` VALUES
('<p><img alt="" src="/ckeditor/kcfinder/upload/images/back.jpg" style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px; height:375px; line-height:22.3999996185303px; width:500px" /><span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px">Таким образом постоянный количественный рост и сфера нашей активности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Товарищи! сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. Идейные соображения высшего порядка, а также консультация с широким активом влечет за собой процесс внедрения и модернизации форм развития.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

DROP TABLE IF EXISTS `admins`;
CREATE TABLE IF NOT EXISTS `admins` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `login` varchar(255) NOT NULL,
  `e-mail` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=5 ;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` VALUES
(2, 'murat', '', 'murat123', '', '', ''),
(3, 'viktor', '', 'viktor123', '', '', ''),
(4, 'andrey', '', '123', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `admin_email`
--

DROP TABLE IF EXISTS `admin_email`;
CREATE TABLE IF NOT EXISTS `admin_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `admin_email`
--

INSERT INTO `admin_email` VALUES
('admin@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `backcalls`
--

DROP TABLE IF EXISTS `backcalls`;
CREATE TABLE IF NOT EXISTS `backcalls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `point_url` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` enum('on','0','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=18 ;

--
-- Dumping data for table `backcalls`
--

INSERT INTO `backcalls` VALUES
(14, 'выфв', 'выфвф', '/edinoborstvaa/ajkidott/dasda/', '11.02.2015 03:45:58', '127.0.0.1', ''),
(15, 'вфыв', 'выфв', '/edinoborstvaa/ajkidott/dasda/', '11.02.2015 03:54:29', '127.0.0.1', ''),
(16, 'фыв', 'фыв', '/edinoborstvaa/ajkidott/dasda/', '14.02.2015 04:16:21', '127.0.0.1', ''),
(17, 'Андрей', 'выф выф вфыв', '/edinoborstvaa/ajkidott/dasda/', '14.02.2015 10:05:54', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Table structure for table `banners`
--

DROP TABLE IF EXISTS `banners`;
CREATE TABLE IF NOT EXISTS `banners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `url` varchar(255) NOT NULL,
  `pos` enum('main','news','blog','') NOT NULL,
  `clicks` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `banners`
--

INSERT INTO `banners` VALUES
(1, 'http://filezilla.ru/', 'main', 4, 358, 'cfdeaab665d10378ee62812c62bdce8f.jpg', 0, 'on'),
(2, 'http://vk.com/bestad', 'news', 4, 48, '80cd8478295674887819f8cc4a12df48.jpg', 0, 'on'),
(6, 'http://mail.ru/', 'blog', 1, 16, '59d2b7d7a7ac77eda9816c5ff5fef1f4.jpg', 0, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `blog`
--

DROP TABLE IF EXISTS `blog`;
CREATE TABLE IF NOT EXISTS `blog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=7 ;

--
-- Dumping data for table `blog`
--

INSERT INTO `blog` VALUES
(1, 'Пост!', 'post', '<p>Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;</p>\r\n', '0000-00-00 00:00:00', '', '', '', '1371e81502a177207b027773273e9ff1.jpg', 0, 28, 'on'),
(2, 'Новая статья в блоге', 'novaja_statja_v_bloge', '<p><span style="color:rgba(0, 0, 0, 0.498039); font-family:arial,sans-serif; font-size:18px">New coub editor is perfect for quickly looping and remixing videos. Now you can create video mashups with up to 10 video sources!</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', '7505771fd12b8978f7c389461a26ab39.jpg', 0, 5, 'on'),
(3, 'Тестовый блог', 'testovyj_blog', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Однажды, много лет назад, я разговорилась со знакомым программистом и среди прочих реплик помню его фразу о том, что изобретена некая гениальная штука, благодаря которой все знания человечества станут доступны любому субъекту, &ndash; Всемирная информационная сеть.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'eebd2ae770ab15ef03c165066f6e957c.jpg', 0, 3, 'on'),
(4, 'Опасности райских кущей', 'opasnosti_rajskih_kuschej', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Интернет для меня третий перелом в истории человеческой культуры &ndash; после появления языка и изобретения книги</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote1" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">1</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. В Древней Греции оратора, выступавшего на площади в Афинах, слышали не более двадцати тысяч человек. Это был звуковой предел общения: география языка &ndash; это племя. Потом пришла книга, которая расширила круг общения до географии страны.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'cd89c797df227cc97e84275e28534807.jpg', 0, 4, 'on'),
(5, 'Дмитрий Быков (2011)', 'dmitrij_bykov_(2011)', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Со временем возникнет новая иерархия человечества, новая гуманная цивилизация</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote4" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">4</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. А пока&hellip; пока в Интернете доминирует &laquo;оборотная сторона&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote5" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">5</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;этого грандиозного открытия-прорыва &ndash; его разрушительная сила</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote6" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">6</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Неслучайно</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote7" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">7</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;Всемирная сеть становится орудием в руках террористов, хакеров и фанатиков всех мастей.</span></p>\r\n', '2015-01-01 12:00:00', '', '', '', '88711998a9e0c151d082fdfb9c75a8e0.jpg', 0, 0, 'on'),
(6, 'Новый пост в блоге! Урааа!!!!', 'novyj_post_v_bloge_uraaa', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Самый наглядный факт современности: Интернет, который немыслимо расширил возможности простого человека для высказывания и действия, лежит в основе нынешнего &laquo;восстания масс&raquo;. Это явление, возникшее еще в первой половине двадцатого века, вызванное вульгаризацией культуры &ndash; материальной и духовной, породило и коммунизм, и нацизм</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote8" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">8</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Сегодня он обращен к &laquo;массовому&raquo; в любом человеке, питается от него и удовлетворяет его во всех отношениях &ndash; от языкового до политического и потребительского</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote9" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">9</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">, ибо невероятно приблизил к народу желанные &laquo;хлеб и зрелища&raquo;, включая самые низкие</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote10" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">10</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Этот наперсник, проповедник и исповедник толп превращает в &laquo;шум&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote11" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">11</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;все, к чему прикасается, чему дает жизнь,</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote12" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">12</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;плодит пошлость, невежество и агрессию, давая им неслыханный, завораживающий выход не просто наружу, а на весь мир. Опаснее всего, что это игривое и очень смышленое &laquo;дитя&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote13" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">13</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;новой цивилизации уничтожает критерии &ndash; духовные, нравственные и поведенческие коды существования человеческого общества</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote14" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">14</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Что поделать, в интернет-пространстве все равны в самом площадном смысле этого слова</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote15" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">15</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. И я думаю: не слишком ли высокую цену мы платим за прекрасную возможность поговорить с далеким другом, прочесть редкую книгу, увидеть гениальную картину и услышать великую оперу? Не чересчур ли рано сделано это грандиозное открытие? Иными словами, доросло ли человечество до самого себя?</span></p>\r\n', '2015-02-14 08:43:00', '', '', '', 'dba04eba85e4c714d19f7e8d17ad7199.jpg', 0, 10, 'on');

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
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=61 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` VALUES
(55, 'Фитнес клубы', 'ФИТНЕС КЛУБЫ', 'вфывфы', 'fitnes-kluby', '87785e3e0c820addcc924a926e262770.png', 'a2e2962e050f5e56bfb2c2ed266a2c9c.jpg', '581e1115d8756264290bd5f80fff39da.png', '', '', '', '<p><span style="font-family:rbcgrotesk-light; font-size:medium">Устали однообразно курсировать между домом и работой? Решили разбавить этот тандем яркой ноткой, занявшись своим телом и здоровьем, ведь &laquo;в здоровом теле &ndash; здоровый дух&raquo;? А может, вы ищете спортивные секции для детей, поскольку осенью снижается физическая активность, столь необходимая для полноценного развития ребенка? Тогда самое время сесть поудобнее и изучить самую актуальную и подробную информацию про спортивные клубы Москвы! Здесь вы найдете самые разные спортивные клубы, которые могут быть расположены около вашего места работы или дома, а также спортивные секции, где будут заниматься ваши дети. На сайте Jeisport.ru представлено огромное разнообразие спортивных клубов Москвы, среди которых вы найдете: Спортклубы и спортивные школы, в которых проводятся занятия по единоборствам: кикбоксинг, бокс, боевое самбо, муай-тай (тайский бокс) и многие другие, Фитнесклубы &ndash; замечательная возможность для прекрасных дам подтянуть фигуру и всегда выглядеть потрясающе: в нашем каталоге представлено большое разнообразие спортивных секций по аква-аэробике, пилатесу, фитнесу, в том числе для молодых мам и беременных, а также тренажерные залы, Спортклубы с бассейнами &ndash; то, что нужно для полного избавления от стрессов: в каталоге вы найдете бассейны по своему вкусу &ndash; крытые или открытые, Спортивные игры &ndash; раздел нашего сайта, который наверняка заинтересует любителей оздоровиться и насладиться игрой в баскетбол, бадминтон, пляжный или классический волейбол, хоккей, пинг-понг, керлинг, гольф и, конечно, футбол. К вашим услугам огромный выбор спортклубов, предлагающих посетителям поиграть в эти и другие спортивные игры, Танцы &ndash; для вашего удобства все спортивные танцевальные секции сгруппированы по танцевальным направлениям: латина, go-go, R&amp;B, бальные, клубные, хореография и многие другие; здесь же вы найдете спортивные танцевальные секции для детей, Активный отдых &ndash; то, что нужно для полного расслабления и восстановления сил! В этой категории любители острых ощущений и не только найдут информацию о парашютном спорте, велотрассах, роллердромах, скалодромах, скейтпарках, паркуре и полетах на шаре в Москве. С нами выбор спортивного клуба или секции в Москве &ndash; сплошное удовольствие!</span></p>\n', 0, 'on'),
(56, 'Единоборства', 'Единоборства', 'Единоборства1', 'edinoborstvaa', '584e049bf5f0610f0918139c9a7270ea.png', '677d16f9df549c47cb903ea2ef624ee9.jpg', '5df20f2e456705a916602dadf3d6870e.png', '', '', '', '<p>dasdas</p>\r\n', 1, 'on'),
(57, 'Активный отдых', 'АКТИВНЫЙ ОТДЫХ', '1', 'aktivnyj_otdyh', '9b1f2de2704ed0e2312d0a5053affa05.png', '2517551ff51f3f1bd94b801fd1f0ac6a.jpg', '67692f50c3395cd1414392bdc663f0fb.png', '', '', '', '', 0, 'on'),
(58, 'Бассейны', 'выфвфы', 'выфвфы', 'bassejny', '2e2c2b3fd12a0dd0156ee040168c9c02.png', 'a5c9bf021581dbc7e667339dfed21aca.jpg', 'c7254a6077c4d45a5f6bafdf6e3b4ff1.png', '', '', '', '', 0, 'on'),
(59, 'Спортивные игры', 'dasd', '', 'sportivnye_igry', 'a44517d81303ae02dd889140d770797b.png', 'fa00f9ccc0cd7eb60b229720832eaf2c.jpg', '5f2a042d48368242d740d3d875ae15b5.png', '', '', '', '', 0, 'on'),
(60, 'Танцы', 'dasdas', 'вфывыф', 'tancy', '30ca7e2f783bb84fd95222651a34499c.png', 'f5f06ef8e0173cfb10d7e5b4b99c8808.jpg', 'e110f86c48cc589a95c9c0f7dee80a90.png', '', '', '', '', 0, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `email`
--

INSERT INTO `email` VALUES
('protected.for@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

DROP TABLE IF EXISTS `feedback`;
CREATE TABLE IF NOT EXISTS `feedback` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `theme` varchar(255) NOT NULL,
  `msg` text NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` VALUES
(1, 'Андрей', 'protected.for@gmail.com', '+996554709700', 'выф', 'QADSADASD', '26.11.2014 16:34:43', '127.0.0.1', 'on'),
(2, 'Андрей', 'protected.for@gmail.com', '+996554709700', 'вфывфыв', 'фывфывыф', '27.11.2014 15:13:26', '127.0.0.1', 'on'),
(4, 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/', 'rmknab@gmail.com', 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/', 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/', 'SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/<br />\n <a href="http://seointensiv.blogspot.ru/">SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/</a> [url=http://seointensiv.blogspot.ru/]SEOшникам, владельцам сайтов, раскрутчикам,админам,желающим легко раскручивать сайты http://seointensiv.blogspot.ru/[/url]', '10.12.2014 05:28:18', '5.44.169.179', 'on'),
(6, 'das', 'dsa@das.ru', 'dasdas', 'dsadsa', 'dsadsa', '08.02.2015 20:55:03', '127.0.0.1', 'on'),
(7, 'dsad', 'dsad@dsa.ru', 'dsa', 'dsa', 'dsa', '10.02.2015 23:28:33', '127.0.0.1', 'on'),
(8, 'Фыв', 'asd@asd.ru', 'фыв', 'выфвыфв', 'ыфвыфвфы', '14.02.2015 07:45:48', '127.0.0.1', 'on'),
(9, 'Фыв', 'asd@asd.ru', 'фыв', 'выфвыфв', 'ыфвыфвфы', '14.02.2015 07:48:37', '127.0.0.1', 'on'),
(10, 'Андрей Федотов', 'protected.for@gmail.com', '+996554709700', 'asd', 'das dasd adas', '14.02.2015 07:54:35', '127.0.0.1', 'on'),
(11, 'dasdas', 'asd@asd.ru', 'asd', 'asd', 'asd', '14.02.2015 07:59:09', '127.0.0.1', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `maintext`
--

DROP TABLE IF EXISTS `maintext`;
CREATE TABLE IF NOT EXISTS `maintext` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `maintext`
--

INSERT INTO `maintext` VALUES
('<p><span style="color:rgb(0, 0, 0); font-family:rbcgrotesk-regular; font-size:14px">Современные секции единоборств - это огромный выбор различных видов борьбы. Если вы мечтаете о крепких кулаках, тогда можно записаться в секцию бокса, если ваша цель крепкие ноги &ndash; тхэквондо и т.д. Не зависимо от выбранногонаправления всегда необходимо ориентироваться на опыт, профессионализм тренера. Именно от его навыков и умения донести ученикам основы и азы боевого искусства зависит эффективность занятий.Польза или вред при посещении школы единоборств?</span></p>\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
CREATE TABLE IF NOT EXISTS `news` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `date` datetime NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `category_id` int(11) NOT NULL,
  `order` int(11) NOT NULL,
  `views` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=43 ;

--
-- Dumping data for table `news`
--

INSERT INTO `news` VALUES
(32, 'привет', '12312312312312312312312', '', '2015-02-24 23:12:00', '', '', '', '8ebf239d559ceeb1e1fc87dfb69a6f42.jpg', 0, 0, 0, 'on'),
(33, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 6, 'on'),
(34, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(35, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(36, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(37, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(38, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(39, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(40, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(41, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on'),
(42, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 5, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `news_categories`
--

DROP TABLE IF EXISTS `news_categories`;
CREATE TABLE IF NOT EXISTS `news_categories` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `news_categories`
--

INSERT INTO `news_categories` VALUES
(1, 'Футбол', 0, 'on'),
(2, 'Воллейбол', 0, 'on');

-- --------------------------------------------------------

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
