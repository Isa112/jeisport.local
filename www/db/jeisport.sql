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

--
-- Table structure for table `phpbb_acl_groups`
--

DROP TABLE IF EXISTS `phpbb_acl_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_groups` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `group_id` (`group_id`),
  KEY `auth_opt_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` VALUES
(1, 0, 88, 0, 1),
(1, 0, 97, 0, 1),
(1, 0, 115, 0, 1),
(5, 0, 0, 5, 0),
(5, 0, 0, 1, 0),
(2, 0, 0, 6, 0),
(3, 0, 0, 6, 0),
(4, 0, 0, 5, 0),
(4, 0, 0, 10, 0),
(1, 1, 0, 17, 0),
(2, 1, 0, 17, 0),
(3, 1, 0, 17, 0),
(6, 1, 0, 17, 0),
(1, 2, 0, 17, 0),
(2, 2, 0, 15, 0),
(3, 2, 0, 15, 0),
(4, 2, 0, 21, 0),
(5, 2, 0, 14, 0),
(5, 2, 0, 10, 0),
(6, 2, 0, 19, 0),
(7, 0, 0, 23, 0),
(7, 2, 0, 24, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_options`
--

DROP TABLE IF EXISTS `phpbb_acl_options`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_options` (
  `auth_option_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `auth_option` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_global` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `is_local` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `founder_only` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`auth_option_id`),
  UNIQUE KEY `auth_option` (`auth_option`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=122 ;

--
-- Dumping data for table `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` VALUES
(1, 'f_', 0, 1, 0),
(2, 'f_announce', 0, 1, 0),
(3, 'f_attach', 0, 1, 0),
(4, 'f_bbcode', 0, 1, 0),
(5, 'f_bump', 0, 1, 0),
(6, 'f_delete', 0, 1, 0),
(7, 'f_download', 0, 1, 0),
(8, 'f_edit', 0, 1, 0),
(9, 'f_email', 0, 1, 0),
(10, 'f_flash', 0, 1, 0),
(11, 'f_icons', 0, 1, 0),
(12, 'f_ignoreflood', 0, 1, 0),
(13, 'f_img', 0, 1, 0),
(14, 'f_list', 0, 1, 0),
(15, 'f_noapprove', 0, 1, 0),
(16, 'f_poll', 0, 1, 0),
(17, 'f_post', 0, 1, 0),
(18, 'f_postcount', 0, 1, 0),
(19, 'f_print', 0, 1, 0),
(20, 'f_read', 0, 1, 0),
(21, 'f_reply', 0, 1, 0),
(22, 'f_report', 0, 1, 0),
(23, 'f_search', 0, 1, 0),
(24, 'f_sigs', 0, 1, 0),
(25, 'f_smilies', 0, 1, 0),
(26, 'f_sticky', 0, 1, 0),
(27, 'f_subscribe', 0, 1, 0),
(28, 'f_user_lock', 0, 1, 0),
(29, 'f_vote', 0, 1, 0),
(30, 'f_votechg', 0, 1, 0),
(31, 'f_softdelete', 0, 1, 0),
(32, 'm_', 1, 1, 0),
(33, 'm_approve', 1, 1, 0),
(34, 'm_chgposter', 1, 1, 0),
(35, 'm_delete', 1, 1, 0),
(36, 'm_edit', 1, 1, 0),
(37, 'm_info', 1, 1, 0),
(38, 'm_lock', 1, 1, 0),
(39, 'm_merge', 1, 1, 0),
(40, 'm_move', 1, 1, 0),
(41, 'm_report', 1, 1, 0),
(42, 'm_split', 1, 1, 0),
(43, 'm_softdelete', 1, 1, 0),
(44, 'm_ban', 1, 0, 0),
(45, 'm_warn', 1, 0, 0),
(46, 'a_', 1, 0, 0),
(47, 'a_aauth', 1, 0, 0),
(48, 'a_attach', 1, 0, 0),
(49, 'a_authgroups', 1, 0, 0),
(50, 'a_authusers', 1, 0, 0),
(51, 'a_backup', 1, 0, 0),
(52, 'a_ban', 1, 0, 0),
(53, 'a_bbcode', 1, 0, 0),
(54, 'a_board', 1, 0, 0),
(55, 'a_bots', 1, 0, 0),
(56, 'a_clearlogs', 1, 0, 0),
(57, 'a_email', 1, 0, 0),
(58, 'a_extensions', 1, 0, 0),
(59, 'a_fauth', 1, 0, 0),
(60, 'a_forum', 1, 0, 0),
(61, 'a_forumadd', 1, 0, 0),
(62, 'a_forumdel', 1, 0, 0),
(63, 'a_group', 1, 0, 0),
(64, 'a_groupadd', 1, 0, 0),
(65, 'a_groupdel', 1, 0, 0),
(66, 'a_icons', 1, 0, 0),
(67, 'a_jabber', 1, 0, 0),
(68, 'a_language', 1, 0, 0),
(69, 'a_mauth', 1, 0, 0),
(70, 'a_modules', 1, 0, 0),
(71, 'a_names', 1, 0, 0),
(72, 'a_phpinfo', 1, 0, 0),
(73, 'a_profile', 1, 0, 0),
(74, 'a_prune', 1, 0, 0),
(75, 'a_ranks', 1, 0, 0),
(76, 'a_reasons', 1, 0, 0),
(77, 'a_roles', 1, 0, 0),
(78, 'a_search', 1, 0, 0),
(79, 'a_server', 1, 0, 0),
(80, 'a_styles', 1, 0, 0),
(81, 'a_switchperm', 1, 0, 0),
(82, 'a_uauth', 1, 0, 0),
(83, 'a_user', 1, 0, 0),
(84, 'a_userdel', 1, 0, 0),
(85, 'a_viewauth', 1, 0, 0),
(86, 'a_viewlogs', 1, 0, 0),
(87, 'a_words', 1, 0, 0),
(88, 'u_', 1, 0, 0),
(89, 'u_attach', 1, 0, 0),
(90, 'u_chgavatar', 1, 0, 0),
(91, 'u_chgcensors', 1, 0, 0),
(92, 'u_chgemail', 1, 0, 0),
(93, 'u_chggrp', 1, 0, 0),
(94, 'u_chgname', 1, 0, 0),
(95, 'u_chgpasswd', 1, 0, 0),
(96, 'u_chgprofileinfo', 1, 0, 0),
(97, 'u_download', 1, 0, 0),
(98, 'u_hideonline', 1, 0, 0),
(99, 'u_ignoreflood', 1, 0, 0),
(100, 'u_masspm', 1, 0, 0),
(101, 'u_masspm_group', 1, 0, 0),
(102, 'u_pm_attach', 1, 0, 0),
(103, 'u_pm_bbcode', 1, 0, 0),
(104, 'u_pm_delete', 1, 0, 0),
(105, 'u_pm_download', 1, 0, 0),
(106, 'u_pm_edit', 1, 0, 0),
(107, 'u_pm_emailpm', 1, 0, 0),
(108, 'u_pm_flash', 1, 0, 0),
(109, 'u_pm_forward', 1, 0, 0),
(110, 'u_pm_img', 1, 0, 0),
(111, 'u_pm_printpm', 1, 0, 0),
(112, 'u_pm_smilies', 1, 0, 0),
(113, 'u_readpm', 1, 0, 0),
(114, 'u_savedrafts', 1, 0, 0),
(115, 'u_search', 1, 0, 0),
(116, 'u_sendemail', 1, 0, 0),
(117, 'u_sendim', 1, 0, 0),
(118, 'u_sendpm', 1, 0, 0),
(119, 'u_sig', 1, 0, 0),
(120, 'u_viewonline', 1, 0, 0),
(121, 'u_viewprofile', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles`
--

DROP TABLE IF EXISTS `phpbb_acl_roles`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles` (
  `role_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `role_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_description` text COLLATE utf8_bin NOT NULL,
  `role_type` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `role_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`),
  KEY `role_type` (`role_type`),
  KEY `role_order` (`role_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Dumping data for table `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` VALUES
(1, 'ROLE_ADMIN_STANDARD', 'ROLE_DESCRIPTION_ADMIN_STANDARD', 'a_', 1),
(2, 'ROLE_ADMIN_FORUM', 'ROLE_DESCRIPTION_ADMIN_FORUM', 'a_', 3),
(3, 'ROLE_ADMIN_USERGROUP', 'ROLE_DESCRIPTION_ADMIN_USERGROUP', 'a_', 4),
(4, 'ROLE_ADMIN_FULL', 'ROLE_DESCRIPTION_ADMIN_FULL', 'a_', 2),
(5, 'ROLE_USER_FULL', 'ROLE_DESCRIPTION_USER_FULL', 'u_', 3),
(6, 'ROLE_USER_STANDARD', 'ROLE_DESCRIPTION_USER_STANDARD', 'u_', 1),
(7, 'ROLE_USER_LIMITED', 'ROLE_DESCRIPTION_USER_LIMITED', 'u_', 2),
(8, 'ROLE_USER_NOPM', 'ROLE_DESCRIPTION_USER_NOPM', 'u_', 4),
(9, 'ROLE_USER_NOAVATAR', 'ROLE_DESCRIPTION_USER_NOAVATAR', 'u_', 5),
(10, 'ROLE_MOD_FULL', 'ROLE_DESCRIPTION_MOD_FULL', 'm_', 3),
(11, 'ROLE_MOD_STANDARD', 'ROLE_DESCRIPTION_MOD_STANDARD', 'm_', 1),
(12, 'ROLE_MOD_SIMPLE', 'ROLE_DESCRIPTION_MOD_SIMPLE', 'm_', 2),
(13, 'ROLE_MOD_QUEUE', 'ROLE_DESCRIPTION_MOD_QUEUE', 'm_', 4),
(14, 'ROLE_FORUM_FULL', 'ROLE_DESCRIPTION_FORUM_FULL', 'f_', 7),
(15, 'ROLE_FORUM_STANDARD', 'ROLE_DESCRIPTION_FORUM_STANDARD', 'f_', 5),
(16, 'ROLE_FORUM_NOACCESS', 'ROLE_DESCRIPTION_FORUM_NOACCESS', 'f_', 1),
(17, 'ROLE_FORUM_READONLY', 'ROLE_DESCRIPTION_FORUM_READONLY', 'f_', 2),
(18, 'ROLE_FORUM_LIMITED', 'ROLE_DESCRIPTION_FORUM_LIMITED', 'f_', 3),
(19, 'ROLE_FORUM_BOT', 'ROLE_DESCRIPTION_FORUM_BOT', 'f_', 9),
(20, 'ROLE_FORUM_ONQUEUE', 'ROLE_DESCRIPTION_FORUM_ONQUEUE', 'f_', 8),
(21, 'ROLE_FORUM_POLLS', 'ROLE_DESCRIPTION_FORUM_POLLS', 'f_', 6),
(22, 'ROLE_FORUM_LIMITED_POLLS', 'ROLE_DESCRIPTION_FORUM_LIMITED_POLLS', 'f_', 4),
(23, 'ROLE_USER_NEW_MEMBER', 'ROLE_DESCRIPTION_USER_NEW_MEMBER', 'u_', 6),
(24, 'ROLE_FORUM_NEW_MEMBER', 'ROLE_DESCRIPTION_FORUM_NEW_MEMBER', 'f_', 10);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_roles_data`
--

DROP TABLE IF EXISTS `phpbb_acl_roles_data`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_roles_data` (
  `role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  PRIMARY KEY (`role_id`,`auth_option_id`),
  KEY `ath_op_id` (`auth_option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` VALUES
(1, 46, 1),
(1, 48, 1),
(1, 49, 1),
(1, 50, 1),
(1, 52, 1),
(1, 53, 1),
(1, 54, 1),
(1, 58, 1),
(1, 59, 1),
(1, 60, 1),
(1, 61, 1),
(1, 62, 1),
(1, 63, 1),
(1, 64, 1),
(1, 65, 1),
(1, 66, 1),
(1, 69, 1),
(1, 71, 1),
(1, 73, 1),
(1, 74, 1),
(1, 75, 1),
(1, 76, 1),
(1, 82, 1),
(1, 83, 1),
(1, 84, 1),
(1, 85, 1),
(1, 86, 1),
(1, 87, 1),
(2, 46, 1),
(2, 49, 1),
(2, 50, 1),
(2, 59, 1),
(2, 60, 1),
(2, 61, 1),
(2, 62, 1),
(2, 69, 1),
(2, 74, 1),
(2, 82, 1),
(2, 85, 1),
(2, 86, 1),
(3, 46, 1),
(3, 49, 1),
(3, 50, 1),
(3, 52, 1),
(3, 63, 1),
(3, 64, 1),
(3, 65, 1),
(3, 75, 1),
(3, 82, 1),
(3, 83, 1),
(3, 85, 1),
(3, 86, 1),
(4, 46, 1),
(4, 47, 1),
(4, 48, 1),
(4, 49, 1),
(4, 50, 1),
(4, 51, 1),
(4, 52, 1),
(4, 53, 1),
(4, 54, 1),
(4, 55, 1),
(4, 56, 1),
(4, 57, 1),
(4, 58, 1),
(4, 59, 1),
(4, 60, 1),
(4, 61, 1),
(4, 62, 1),
(4, 63, 1),
(4, 64, 1),
(4, 65, 1),
(4, 66, 1),
(4, 67, 1),
(4, 68, 1),
(4, 69, 1),
(4, 70, 1),
(4, 71, 1),
(4, 72, 1),
(4, 73, 1),
(4, 74, 1),
(4, 75, 1),
(4, 76, 1),
(4, 77, 1),
(4, 78, 1),
(4, 79, 1),
(4, 80, 1),
(4, 81, 1),
(4, 82, 1),
(4, 83, 1),
(4, 84, 1),
(4, 85, 1),
(4, 86, 1),
(4, 87, 1),
(5, 88, 1),
(5, 89, 1),
(5, 90, 1),
(5, 91, 1),
(5, 92, 1),
(5, 93, 1),
(5, 94, 1),
(5, 95, 1),
(5, 96, 1),
(5, 97, 1),
(5, 98, 1),
(5, 99, 1),
(5, 100, 1),
(5, 101, 1),
(5, 102, 1),
(5, 103, 1),
(5, 104, 1),
(5, 105, 1),
(5, 106, 1),
(5, 107, 1),
(5, 108, 1),
(5, 109, 1),
(5, 110, 1),
(5, 111, 1),
(5, 112, 1),
(5, 113, 1),
(5, 114, 1),
(5, 115, 1),
(5, 116, 1),
(5, 117, 1),
(5, 118, 1),
(5, 119, 1),
(5, 120, 1),
(5, 121, 1),
(6, 88, 1),
(6, 89, 1),
(6, 90, 1),
(6, 91, 1),
(6, 92, 1),
(6, 95, 1),
(6, 96, 1),
(6, 97, 1),
(6, 98, 1),
(6, 100, 1),
(6, 101, 1),
(6, 102, 1),
(6, 103, 1),
(6, 104, 1),
(6, 105, 1),
(6, 106, 1),
(6, 107, 1),
(6, 110, 1),
(6, 111, 1),
(6, 112, 1),
(6, 113, 1),
(6, 114, 1),
(6, 115, 1),
(6, 116, 1),
(6, 117, 1),
(6, 118, 1),
(6, 119, 1),
(6, 121, 1),
(7, 88, 1),
(7, 90, 1),
(7, 91, 1),
(7, 92, 1),
(7, 95, 1),
(7, 96, 1),
(7, 97, 1),
(7, 98, 1),
(7, 103, 1),
(7, 104, 1),
(7, 105, 1),
(7, 106, 1),
(7, 109, 1),
(7, 110, 1),
(7, 111, 1),
(7, 112, 1),
(7, 113, 1),
(7, 118, 1),
(7, 119, 1),
(7, 121, 1),
(8, 88, 1),
(8, 90, 1),
(8, 91, 1),
(8, 92, 1),
(8, 95, 1),
(8, 97, 1),
(8, 98, 1),
(8, 100, 0),
(8, 101, 0),
(8, 113, 0),
(8, 118, 0),
(8, 119, 1),
(8, 121, 1),
(9, 88, 1),
(9, 90, 0),
(9, 91, 1),
(9, 92, 1),
(9, 95, 1),
(9, 96, 1),
(9, 97, 1),
(9, 98, 1),
(9, 103, 1),
(9, 104, 1),
(9, 105, 1),
(9, 106, 1),
(9, 109, 1),
(9, 110, 1),
(9, 111, 1),
(9, 112, 1),
(9, 113, 1),
(9, 118, 1),
(9, 119, 1),
(9, 121, 1),
(10, 32, 1),
(10, 33, 1),
(10, 34, 1),
(10, 35, 1),
(10, 36, 1),
(10, 37, 1),
(10, 38, 1),
(10, 39, 1),
(10, 40, 1),
(10, 41, 1),
(10, 42, 1),
(10, 43, 1),
(10, 44, 1),
(10, 45, 1),
(11, 32, 1),
(11, 33, 1),
(11, 35, 1),
(11, 36, 1),
(11, 37, 1),
(11, 38, 1),
(11, 39, 1),
(11, 40, 1),
(11, 41, 1),
(11, 42, 1),
(11, 43, 1),
(11, 45, 1),
(12, 32, 1),
(12, 35, 1),
(12, 36, 1),
(12, 37, 1),
(12, 41, 1),
(12, 43, 1),
(13, 32, 1),
(13, 33, 1),
(13, 36, 1),
(14, 1, 1),
(14, 2, 1),
(14, 3, 1),
(14, 4, 1),
(14, 5, 1),
(14, 6, 1),
(14, 7, 1),
(14, 8, 1),
(14, 9, 1),
(14, 10, 1),
(14, 11, 1),
(14, 12, 1),
(14, 13, 1),
(14, 14, 1),
(14, 15, 1),
(14, 16, 1),
(14, 17, 1),
(14, 18, 1),
(14, 19, 1),
(14, 20, 1),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 1),
(14, 25, 1),
(14, 26, 1),
(14, 27, 1),
(14, 28, 1),
(14, 29, 1),
(14, 30, 1),
(14, 31, 1),
(15, 1, 1),
(15, 3, 1),
(15, 4, 1),
(15, 5, 1),
(15, 6, 1),
(15, 7, 1),
(15, 8, 1),
(15, 9, 1),
(15, 11, 1),
(15, 13, 1),
(15, 14, 1),
(15, 15, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 27, 1),
(15, 29, 1),
(15, 30, 1),
(15, 31, 1),
(16, 1, 0),
(17, 1, 1),
(17, 7, 1),
(17, 14, 1),
(17, 19, 1),
(17, 20, 1),
(17, 23, 1),
(17, 27, 1),
(18, 1, 1),
(18, 4, 1),
(18, 7, 1),
(18, 8, 1),
(18, 9, 1),
(18, 13, 1),
(18, 14, 1),
(18, 15, 1),
(18, 17, 1),
(18, 18, 1),
(18, 19, 1),
(18, 20, 1),
(18, 21, 1),
(18, 22, 1),
(18, 23, 1),
(18, 24, 1),
(18, 25, 1),
(18, 27, 1),
(18, 29, 1),
(18, 31, 1),
(19, 1, 1),
(19, 7, 1),
(19, 14, 1),
(19, 19, 1),
(19, 20, 1),
(20, 1, 1),
(20, 3, 1),
(20, 4, 1),
(20, 7, 1),
(20, 8, 1),
(20, 9, 1),
(20, 13, 1),
(20, 14, 1),
(20, 15, 0),
(20, 17, 1),
(20, 18, 1),
(20, 19, 1),
(20, 20, 1),
(20, 21, 1),
(20, 22, 1),
(20, 23, 1),
(20, 24, 1),
(20, 25, 1),
(20, 27, 1),
(20, 29, 1),
(20, 31, 1),
(21, 1, 1),
(21, 3, 1),
(21, 4, 1),
(21, 5, 1),
(21, 6, 1),
(21, 7, 1),
(21, 8, 1),
(21, 9, 1),
(21, 11, 1),
(21, 13, 1),
(21, 14, 1),
(21, 15, 1),
(21, 16, 1),
(21, 17, 1),
(21, 18, 1),
(21, 19, 1),
(21, 20, 1),
(21, 21, 1),
(21, 22, 1),
(21, 23, 1),
(21, 24, 1),
(21, 25, 1),
(21, 27, 1),
(21, 29, 1),
(21, 30, 1),
(21, 31, 1),
(22, 1, 1),
(22, 4, 1),
(22, 7, 1),
(22, 8, 1),
(22, 9, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 1),
(22, 16, 1),
(22, 17, 1),
(22, 18, 1),
(22, 19, 1),
(22, 20, 1),
(22, 21, 1),
(22, 22, 1),
(22, 23, 1),
(22, 24, 1),
(22, 25, 1),
(22, 27, 1),
(22, 29, 1),
(22, 31, 1),
(23, 96, 0),
(23, 100, 0),
(23, 101, 0),
(23, 118, 0),
(24, 15, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_acl_users`
--

DROP TABLE IF EXISTS `phpbb_acl_users`;
CREATE TABLE IF NOT EXISTS `phpbb_acl_users` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_role_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `auth_setting` tinyint(2) NOT NULL DEFAULT '0',
  KEY `user_id` (`user_id`),
  KEY `auth_option_id` (`auth_option_id`),
  KEY `auth_role_id` (`auth_role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_attachments`
--

DROP TABLE IF EXISTS `phpbb_attachments`;
CREATE TABLE IF NOT EXISTS `phpbb_attachments` (
  `attach_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `post_msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `in_message` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `is_orphan` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `physical_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `real_filename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `download_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `attach_comment` text COLLATE utf8_bin NOT NULL,
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `mimetype` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `filetime` int(11) unsigned NOT NULL DEFAULT '0',
  `thumbnail` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`attach_id`),
  KEY `filetime` (`filetime`),
  KEY `post_msg_id` (`post_msg_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_id` (`poster_id`),
  KEY `is_orphan` (`is_orphan`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_banlist`
--

DROP TABLE IF EXISTS `phpbb_banlist`;
CREATE TABLE IF NOT EXISTS `phpbb_banlist` (
  `ban_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `ban_userid` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `ban_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_start` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_end` int(11) unsigned NOT NULL DEFAULT '0',
  `ban_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ban_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ban_give_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`ban_id`),
  KEY `ban_end` (`ban_end`),
  KEY `ban_user` (`ban_userid`,`ban_exclude`),
  KEY `ban_email` (`ban_email`,`ban_exclude`),
  KEY `ban_ip` (`ban_ip`,`ban_exclude`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bbcodes`
--

DROP TABLE IF EXISTS `phpbb_bbcodes`;
CREATE TABLE IF NOT EXISTS `phpbb_bbcodes` (
  `bbcode_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `bbcode_tag` varchar(16) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_helpline` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_match` text COLLATE utf8_bin NOT NULL,
  `bbcode_tpl` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `first_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_match` mediumtext COLLATE utf8_bin NOT NULL,
  `second_pass_replace` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`bbcode_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bookmarks`
--

DROP TABLE IF EXISTS `phpbb_bookmarks`;
CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_bots`
--

DROP TABLE IF EXISTS `phpbb_bots`;
CREATE TABLE IF NOT EXISTS `phpbb_bots` (
  `bot_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `bot_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `bot_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `bot_agent` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bot_ip` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`bot_id`),
  KEY `bot_active` (`bot_active`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config`
--

DROP TABLE IF EXISTS `phpbb_config`;
CREATE TABLE IF NOT EXISTS `phpbb_config` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `is_dynamic` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`config_name`),
  KEY `is_dynamic` (`is_dynamic`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config`
--

INSERT INTO `phpbb_config` VALUES
('active_sessions', '0', 0),
('allow_attachments', '1', 0),
('allow_autologin', '1', 0),
('allow_avatar', '1', 0),
('allow_avatar_gravatar', '0', 0),
('allow_avatar_local', '0', 0),
('allow_avatar_remote', '0', 0),
('allow_avatar_remote_upload', '0', 0),
('allow_avatar_upload', '1', 0),
('allow_bbcode', '1', 0),
('allow_birthdays', '1', 0),
('allow_bookmarks', '1', 0),
('allow_cdn', '0', 0),
('allow_emailreuse', '0', 0),
('allow_forum_notify', '1', 0),
('allow_live_searches', '1', 0),
('allow_mass_pm', '1', 0),
('allow_name_chars', 'USERNAME_CHARS_ANY', 0),
('allow_namechange', '0', 0),
('allow_nocensors', '0', 0),
('allow_password_reset', '1', 0),
('allow_pm_attach', '0', 0),
('allow_pm_report', '1', 0),
('allow_post_flash', '1', 0),
('allow_post_links', '1', 0),
('allow_privmsg', '1', 0),
('allow_quick_reply', '1', 0),
('allow_sig', '1', 0),
('allow_sig_bbcode', '1', 0),
('allow_sig_flash', '0', 0),
('allow_sig_img', '1', 0),
('allow_sig_links', '1', 0),
('allow_sig_pm', '1', 0),
('allow_sig_smilies', '1', 0),
('allow_smilies', '1', 0),
('allow_topic_notify', '1', 0),
('assets_version', '1', 0),
('attachment_quota', '52428800', 0),
('auth_bbcode_pm', '1', 0),
('auth_flash_pm', '0', 0),
('auth_img_pm', '1', 0),
('auth_method', 'db', 0),
('auth_oauth_bitly_key', '', 0),
('auth_oauth_bitly_secret', '', 0),
('auth_oauth_facebook_key', '', 0),
('auth_oauth_facebook_secret', '', 0),
('auth_oauth_google_key', '', 0),
('auth_oauth_google_secret', '', 0),
('auth_smilies_pm', '1', 0),
('avatar_filesize', '6144', 0),
('avatar_gallery_path', 'images/avatars/gallery', 0),
('avatar_max_height', '90', 0),
('avatar_max_width', '90', 0),
('avatar_min_height', '20', 0),
('avatar_min_width', '20', 0),
('avatar_path', 'images/avatars/upload', 0),
('avatar_salt', 'fd0b5f7e2669d2edbd7459e3f5b2d8cb', 0),
('board_contact', 'kenjetaev.ermek@hotmail.com', 0),
('board_contact_name', '', 0),
('board_disable', '0', 0),
('board_disable_msg', '', 0),
('board_email', 'kenjetaev.ermek@hotmail.com', 0),
('board_email_form', '0', 0),
('board_email_sig', 'Thanks, The Management', 0),
('board_hide_emails', '1', 0),
('board_index_text', '', 0),
('board_startdate', '1418454675', 0),
('board_timezone', 'UTC', 0),
('browser_check', '1', 0),
('bump_interval', '10', 0),
('bump_type', 'd', 0),
('cache_gc', '7200', 0),
('cache_last_gc', '1425016026', 1),
('captcha_gd', '1', 0),
('captcha_gd_3d_noise', '1', 0),
('captcha_gd_fonts', '1', 0),
('captcha_gd_foreground_noise', '0', 0),
('captcha_gd_wave', '0', 0),
('captcha_gd_x_grid', '25', 0),
('captcha_gd_y_grid', '25', 0),
('captcha_plugin', 'core.captcha.plugins.gd', 0),
('check_attachment_content', '1', 0),
('check_dnsbl', '0', 0),
('chg_passforce', '0', 0),
('confirm_refresh', '1', 0),
('contact_admin_form_enable', '1', 0),
('cookie_domain', 'jeisport', 0),
('cookie_name', 'phpbb3_6hsj5', 0),
('cookie_path', '/', 0),
('cookie_secure', '0', 0),
('coppa_enable', '0', 0),
('coppa_fax', '', 0),
('coppa_mail', '', 0),
('cron_lock', '0', 1),
('database_gc', '604800', 0),
('database_last_gc', '1425007415', 1),
('dbms_version', '5.5.25', 0),
('default_dateformat', 'D M d, Y g:i a', 0),
('default_lang', 'ru', 0),
('default_style', '1', 0),
('delete_time', '0', 0),
('display_last_edited', '1', 0),
('display_last_subject', '1', 0),
('display_order', '0', 0),
('edit_time', '0', 0),
('email_check_mx', '1', 0),
('email_enable', '1', 0),
('email_function_name', 'mail', 0),
('email_max_chunk_size', '50', 0),
('email_package_size', '20', 0),
('enable_confirm', '1', 0),
('enable_mod_rewrite', '0', 0),
('enable_pm_icons', '1', 0),
('enable_post_confirm', '1', 0),
('extension_force_unstable', '0', 0),
('feed_enable', '1', 0),
('feed_forum', '1', 0),
('feed_http_auth', '0', 0),
('feed_item_statistics', '1', 0),
('feed_limit_post', '15', 0),
('feed_limit_topic', '10', 0),
('feed_overall', '1', 0),
('feed_overall_forums', '0', 0),
('feed_topic', '1', 0),
('feed_topics_active', '0', 0),
('feed_topics_new', '1', 0),
('flood_interval', '15', 0),
('force_server_vars', '0', 0),
('form_token_lifetime', '7200', 0),
('form_token_mintime', '0', 0),
('form_token_sid_guests', '1', 0),
('forward_pm', '1', 0),
('forwarded_for_check', '0', 0),
('full_folder_action', '2', 0),
('fulltext_mysql_max_word_len', '254', 0),
('fulltext_mysql_min_word_len', '4', 0),
('fulltext_native_common_thres', '5', 0),
('fulltext_native_load_upd', '1', 0),
('fulltext_native_max_chars', '14', 0),
('fulltext_native_min_chars', '3', 0),
('fulltext_postgres_max_word_len', '254', 0),
('fulltext_postgres_min_word_len', '4', 0),
('fulltext_postgres_ts_name', 'simple', 0),
('fulltext_sphinx_indexer_mem_limit', '512', 0),
('fulltext_sphinx_stopwords', '0', 0),
('gzip_compress', '0', 0),
('hot_threshold', '25', 0),
('icons_path', 'images/icons', 0),
('img_create_thumbnail', '0', 0),
('img_display_inlined', '1', 0),
('img_imagick', '', 0),
('img_link_height', '0', 0),
('img_link_width', '0', 0),
('img_max_height', '0', 0),
('img_max_thumb_width', '400', 0),
('img_max_width', '0', 0),
('img_min_thumb_filesize', '12000', 0),
('ip_check', '3', 0),
('ip_login_limit_max', '50', 0),
('ip_login_limit_time', '21600', 0),
('ip_login_limit_use_forwarded', '0', 0),
('jab_enable', '0', 0),
('jab_host', '', 0),
('jab_package_size', '20', 0),
('jab_password', '', 0),
('jab_port', '5222', 0),
('jab_use_ssl', '0', 0),
('jab_username', '', 0),
('last_queue_run', '0', 1),
('ldap_base_dn', '', 0),
('ldap_email', '', 0),
('ldap_password', '', 0),
('ldap_port', '', 0),
('ldap_server', '', 0),
('ldap_uid', '', 0),
('ldap_user', '', 0),
('ldap_user_filter', '', 0),
('legend_sort_groupname', '0', 0),
('limit_load', '0', 0),
('limit_search_load', '0', 0),
('load_anon_lastread', '0', 0),
('load_birthdays', '1', 0),
('load_cpf_memberlist', '1', 0),
('load_cpf_pm', '1', 0),
('load_cpf_viewprofile', '1', 0),
('load_cpf_viewtopic', '1', 0),
('load_db_lastread', '1', 0),
('load_db_track', '1', 0),
('load_jquery_url', '//ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js', 0),
('load_jumpbox', '1', 0),
('load_moderators', '1', 0),
('load_notifications', '1', 0),
('load_online', '1', 0),
('load_online_guests', '1', 0),
('load_online_time', '5', 0),
('load_onlinetrack', '1', 0),
('load_search', '1', 0),
('load_tplcompile', '0', 0),
('load_unreads_search', '1', 0),
('load_user_activity', '1', 0),
('max_attachments', '3', 0),
('max_attachments_pm', '1', 0),
('max_autologin_time', '0', 0),
('max_filesize', '262144', 0),
('max_filesize_pm', '262144', 0),
('max_login_attempts', '3', 0),
('max_name_chars', '20', 0),
('max_num_search_keywords', '10', 0),
('max_pass_chars', '100', 0),
('max_poll_options', '10', 0),
('max_post_chars', '60000', 0),
('max_post_font_size', '200', 0),
('max_post_img_height', '0', 0),
('max_post_img_width', '0', 0),
('max_post_smilies', '0', 0),
('max_post_urls', '0', 0),
('max_quote_depth', '3', 0),
('max_reg_attempts', '5', 0),
('max_sig_chars', '255', 0),
('max_sig_font_size', '200', 0),
('max_sig_img_height', '0', 0),
('max_sig_img_width', '0', 0),
('max_sig_smilies', '0', 0),
('max_sig_urls', '5', 0),
('mime_triggers', 'body|head|html|img|plaintext|a href|pre|script|table|title', 0),
('min_name_chars', '3', 0),
('min_pass_chars', '6', 0),
('min_post_chars', '1', 0),
('min_search_author_chars', '3', 0),
('new_member_group_default', '0', 0),
('new_member_post_limit', '3', 0),
('newest_user_colour', '', 1),
('newest_user_id', '58', 1),
('newest_username', 'muratbek', 1),
('num_files', '0', 1),
('num_posts', '1', 1),
('num_topics', '1', 1),
('num_users', '11', 1),
('override_user_style', '0', 0),
('pass_complex', 'PASS_TYPE_ANY', 0),
('plupload_last_gc', '0', 1),
('plupload_salt', 'd44936812a4fd23f9aac1eab9c249f31', 0),
('pm_edit_time', '0', 0),
('pm_max_boxes', '4', 0),
('pm_max_msgs', '50', 0),
('pm_max_recipients', '0', 0),
('posts_per_page', '10', 0),
('print_pm', '1', 0),
('questionnaire_unique_id', '5b7e323c13fc2705', 0),
('queue_interval', '60', 0),
('rand_seed', '2596b64a529417b1845247be49c80788', 1),
('rand_seed_last_update', '1425453760', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1425016019', 1),
('record_online_date', '1418561949', 1),
('record_online_users', '3', 1),
('referer_validation', '1', 0),
('require_activation', '0', 0),
('script_path', '/forum', 0),
('search_anonymous_interval', '0', 0),
('search_block_size', '250', 0),
('search_gc', '7200', 0),
('search_indexing_state', '', 1),
('search_interval', '0', 0),
('search_last_gc', '1425031400', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'jeisport', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1425031493', 1),
('session_length', '3600', 0),
('site_desc', 'A short text to describe your forum', 0),
('site_home_text', '', 0),
('site_home_url', '', 0),
('sitename', 'yourdomain.com', 0),
('smilies_path', 'images/smilies', 0),
('smilies_per_page', '50', 0),
('smtp_auth_method', 'LOGIN', 0),
('smtp_delivery', '1', 0),
('smtp_host', 'smtp.googlemail.com', 0),
('smtp_password', '????????????????321', 0),
('smtp_port', '25', 0),
('smtp_username', 'jeisportofficial', 0),
('teampage_forums', '1', 0),
('teampage_memberships', '1', 0),
('topics_per_page', '25', 0),
('tpl_allow_php', '0', 0),
('upload_dir_size', '0', 1),
('upload_icons_path', 'images/upload_icons', 0),
('upload_path', 'files', 0),
('use_system_cron', '0', 0),
('version', '3.1.2', 0),
('warnings_expire_days', '90', 0),
('warnings_gc', '14400', 0),
('warnings_last_gc', '1425202050', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_config_text`
--

DROP TABLE IF EXISTS `phpbb_config_text`;
CREATE TABLE IF NOT EXISTS `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_config_text`
--

INSERT INTO `phpbb_config_text` VALUES
('contact_admin_info', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '7'),
('contact_admin_info_uid', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_confirm`
--

DROP TABLE IF EXISTS `phpbb_confirm`;
CREATE TABLE IF NOT EXISTS `phpbb_confirm` (
  `confirm_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `confirm_type` tinyint(3) NOT NULL DEFAULT '0',
  `code` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `seed` int(10) unsigned NOT NULL DEFAULT '0',
  `attempts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`,`confirm_id`),
  KEY `confirm_type` (`confirm_type`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_confirm`
--

INSERT INTO `phpbb_confirm` VALUES
('6dba5115bf11d86bf5210430835f2c8f', 'd77a7ec5c8774f81c37f6d5122bdff4d', 1, '5SGA4Y', 1251595109, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_disallow`
--

DROP TABLE IF EXISTS `phpbb_disallow`;
CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_drafts`
--

DROP TABLE IF EXISTS `phpbb_drafts`;
CREATE TABLE IF NOT EXISTS `phpbb_drafts` (
  `draft_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `save_time` int(11) unsigned NOT NULL DEFAULT '0',
  `draft_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `draft_message` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`draft_id`),
  KEY `save_time` (`save_time`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ext`
--

DROP TABLE IF EXISTS `phpbb_ext`;
CREATE TABLE IF NOT EXISTS `phpbb_ext` (
  `ext_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ext_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `ext_state` text COLLATE utf8_bin NOT NULL,
  UNIQUE KEY `ext_name` (`ext_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extensions`
--

DROP TABLE IF EXISTS `phpbb_extensions`;
CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Dumping data for table `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` VALUES
(1, 1, 'gif'),
(2, 1, 'png'),
(3, 1, 'jpeg'),
(4, 1, 'jpg'),
(5, 1, 'tif'),
(6, 1, 'tiff'),
(7, 1, 'tga'),
(8, 2, 'gtar'),
(9, 2, 'gz'),
(10, 2, 'tar'),
(11, 2, 'zip'),
(12, 2, 'rar'),
(13, 2, 'ace'),
(14, 2, 'torrent'),
(15, 2, 'tgz'),
(16, 2, 'bz2'),
(17, 2, '7z'),
(18, 3, 'txt'),
(19, 3, 'c'),
(20, 3, 'h'),
(21, 3, 'cpp'),
(22, 3, 'hpp'),
(23, 3, 'diz'),
(24, 3, 'csv'),
(25, 3, 'ini'),
(26, 3, 'log'),
(27, 3, 'js'),
(28, 3, 'xml'),
(29, 4, 'xls'),
(30, 4, 'xlsx'),
(31, 4, 'xlsm'),
(32, 4, 'xlsb'),
(33, 4, 'doc'),
(34, 4, 'docx'),
(35, 4, 'docm'),
(36, 4, 'dot'),
(37, 4, 'dotx'),
(38, 4, 'dotm'),
(39, 4, 'pdf'),
(40, 4, 'ai'),
(41, 4, 'ps'),
(42, 4, 'ppt'),
(43, 4, 'pptx'),
(44, 4, 'pptm'),
(45, 4, 'odg'),
(46, 4, 'odp'),
(47, 4, 'ods'),
(48, 4, 'odt'),
(49, 4, 'rtf'),
(50, 5, 'rm'),
(51, 5, 'ram'),
(52, 6, 'wma'),
(53, 6, 'wmv'),
(54, 7, 'swf'),
(55, 8, 'mov'),
(56, 8, 'm4v'),
(57, 8, 'm4a'),
(58, 8, 'mp4'),
(59, 8, '3gp'),
(60, 8, '3g2'),
(61, 8, 'qt'),
(62, 9, 'mpeg'),
(63, 9, 'mpg'),
(64, 9, 'mp3'),
(65, 9, 'ogg'),
(66, 9, 'ogm');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_extension_groups`
--

DROP TABLE IF EXISTS `phpbb_extension_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_extension_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `cat_id` tinyint(2) NOT NULL DEFAULT '0',
  `allow_group` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `download_mode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `upload_icon` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `max_filesize` int(20) unsigned NOT NULL DEFAULT '0',
  `allowed_forums` text COLLATE utf8_bin NOT NULL,
  `allow_in_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=10 ;

--
-- Dumping data for table `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` VALUES
(1, 'IMAGES', 1, 1, 1, '', 0, '', 0),
(2, 'ARCHIVES', 0, 1, 1, '', 0, '', 0),
(3, 'PLAIN_TEXT', 0, 0, 1, '', 0, '', 0),
(4, 'DOCUMENTS', 0, 0, 1, '', 0, '', 0),
(5, 'REAL_MEDIA', 3, 0, 1, '', 0, '', 0),
(6, 'WINDOWS_MEDIA', 2, 0, 1, '', 0, '', 0),
(7, 'FLASH_FILES', 5, 0, 1, '', 0, '', 0),
(8, 'QUICKTIME_MEDIA', 6, 0, 1, '', 0, '', 0),
(9, 'DOWNLOADABLE_FILES', 0, 0, 1, '', 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums`
--

DROP TABLE IF EXISTS `phpbb_forums`;
CREATE TABLE IF NOT EXISTS `phpbb_forums` (
  `forum_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_parents` mediumtext COLLATE utf8_bin NOT NULL,
  `forum_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc` text COLLATE utf8_bin NOT NULL,
  `forum_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules` text COLLATE utf8_bin NOT NULL,
  `forum_rules_link` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_rules_options` int(11) unsigned NOT NULL DEFAULT '7',
  `forum_rules_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_topics_per_page` tinyint(4) NOT NULL DEFAULT '0',
  `forum_type` tinyint(4) NOT NULL DEFAULT '0',
  `forum_status` tinyint(4) NOT NULL DEFAULT '0',
  `forum_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `forum_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `forum_flags` tinyint(4) NOT NULL DEFAULT '32',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_indexing` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_icons` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_next` int(11) unsigned NOT NULL DEFAULT '0',
  `prune_days` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_viewed` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `prune_freq` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_subforum_list` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `forum_options` int(20) unsigned NOT NULL DEFAULT '0',
  `forum_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_topics_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `enable_shadow_prune` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `prune_shadow_days` mediumint(8) unsigned NOT NULL DEFAULT '7',
  `prune_shadow_freq` mediumint(8) unsigned NOT NULL DEFAULT '1',
  `prune_shadow_next` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`forum_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `forum_lastpost_id` (`forum_last_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_forums`
--

INSERT INTO `phpbb_forums` VALUES
(1, 0, 1, 4, '', 'Your first category', '', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1418454675, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0),
(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:19:"Your first category";i:1;i:0;}}', 'Ваш первый форум', 'описание первого форума', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 2, 'Welcome to phpBB3', 1418454675, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 7, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_access`
--

DROP TABLE IF EXISTS `phpbb_forums_access`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_access` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`forum_id`,`user_id`,`session_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_track`
--

DROP TABLE IF EXISTS `phpbb_forums_track`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_forums_watch`
--

DROP TABLE IF EXISTS `phpbb_forums_watch`;
CREATE TABLE IF NOT EXISTS `phpbb_forums_watch` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `forum_id` (`forum_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_groups`
--

DROP TABLE IF EXISTS `phpbb_groups`;
CREATE TABLE IF NOT EXISTS `phpbb_groups` (
  `group_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_type` tinyint(4) NOT NULL DEFAULT '1',
  `group_founder_manage` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_skip_auth` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc` text COLLATE utf8_bin NOT NULL,
  `group_desc_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_desc_options` int(11) unsigned NOT NULL DEFAULT '7',
  `group_desc_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_display` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `group_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_sig_chars` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_receive_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `group_message_limit` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_legend` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_max_recipients` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`group_id`),
  KEY `group_legend_name` (`group_legend`,`group_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=8 ;

--
-- Dumping data for table `phpbb_groups`
--

INSERT INTO `phpbb_groups` VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_icons`
--

DROP TABLE IF EXISTS `phpbb_icons`;
CREATE TABLE IF NOT EXISTS `phpbb_icons` (
  `icons_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `icons_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `icons_width` tinyint(4) NOT NULL DEFAULT '0',
  `icons_height` tinyint(4) NOT NULL DEFAULT '0',
  `icons_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`icons_id`),
  KEY `display_on_posting` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=11 ;

--
-- Dumping data for table `phpbb_icons`
--

INSERT INTO `phpbb_icons` VALUES
(1, 'misc/fire.gif', 16, 16, 1, 1),
(2, 'smile/redface.gif', 16, 16, 9, 1),
(3, 'smile/mrgreen.gif', 16, 16, 10, 1),
(4, 'misc/heart.gif', 16, 16, 4, 1),
(5, 'misc/star.gif', 16, 16, 2, 1),
(6, 'misc/radioactive.gif', 16, 16, 3, 1),
(7, 'misc/thinking.gif', 16, 16, 5, 1),
(8, 'smile/info.gif', 16, 16, 8, 1),
(9, 'smile/question.gif', 16, 16, 6, 1),
(10, 'smile/alert.gif', 16, 16, 7, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_lang`
--

DROP TABLE IF EXISTS `phpbb_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_lang` (
  `lang_id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `lang_iso` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_dir` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_english_name` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_local_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_author` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`lang_id`),
  KEY `lang_iso` (`lang_iso`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_lang`
--

INSERT INTO `phpbb_lang` VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited'),
(2, 'ru', 'ru', 'Russian', 'Русский', 'rxu');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_log`
--

DROP TABLE IF EXISTS `phpbb_log`;
CREATE TABLE IF NOT EXISTS `phpbb_log` (
  `log_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `log_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reportee_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `log_time` int(11) unsigned NOT NULL DEFAULT '0',
  `log_operation` text COLLATE utf8_bin NOT NULL,
  `log_data` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`log_id`),
  KEY `log_type` (`log_type`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `reportee_id` (`reportee_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=24 ;

--
-- Dumping data for table `phpbb_log`
--

INSERT INTO `phpbb_log` VALUES
(1, 2, 2, 0, 0, 0, '127.0.0.1', 1418454713, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1659:"<strong>EMAIL/SMTP</strong><br /><em>/phpBB3/install/index.php</em><br /><br />Ran into problems sending Mail at <strong>Line 1505</strong>. Response: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 y10sm963243lal.43 - gsmtp\r\n<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP y10sm963243lal.43 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [195.114.245.15]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [195.114.245.15]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 y10sm963243lal.43 - gsmtp\r\n</p><br />";}'),
(2, 0, 2, 0, 0, 0, '127.0.0.1', 1418454713, 'LOG_INSTALL_INSTALLED', 'a:1:{i:0;s:5:"3.1.2";}'),
(3, 0, 2, 0, 0, 0, '127.0.0.1', 1418454785, 'LOG_LANGUAGE_PACK_UPDATED', 'a:1:{i:0;s:7:"Russian";}'),
(4, 0, 2, 0, 0, 0, '127.0.0.1', 1418454798, 'LOG_LANGUAGE_PACK_UPDATED', 'a:1:{i:0;s:7:"Russian";}'),
(5, 0, 2, 0, 0, 0, '127.0.0.1', 1418454985, 'LOG_CONFIG_SETTINGS', ''),
(6, 0, 2, 0, 0, 0, '127.0.0.1', 1418455029, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(7, 0, 2, 0, 0, 0, '127.0.0.1', 1418455073, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(8, 0, 2, 0, 0, 0, '127.0.0.1', 1418455173, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(9, 0, 2, 0, 0, 0, '127.0.0.1', 1418455315, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:30:"Ваш первый форум";}'),
(10, 2, 1, 0, 0, 0, '127.0.0.1', 1418549298, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1682:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1772458lad.17 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP w8sm1772458lad.17 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1772458lad.17 - gsmtp\r\n</p><br />";}'),
(11, 0, 2, 0, 0, 0, '127.0.0.1', 1418549400, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(12, 0, 2, 0, 0, 0, '127.0.0.1', 1418549429, 'LOG_USER_DELETED', 'a:1:{i:0;s:5:"user1";}'),
(13, 2, 1, 0, 0, 0, '127.0.0.1', 1418551729, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1679:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 l5sm511533lam.48 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP l5sm511533lam.48 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 l5sm511533lam.48 - gsmtp\r\n</p><br />";}'),
(14, 2, 1, 0, 0, 0, '127.0.0.1', 1418552037, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1682:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 e5sm1787058laf.44 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP e5sm1787058laf.44 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 e5sm1787058laf.44 - gsmtp\r\n</p><br />";}'),
(15, 2, 1, 0, 0, 0, '127.0.0.1', 1418552191, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1682:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1798387lad.17 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP w8sm1798387lad.17 - gsmtp\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO ADMIN-ILJP75QA4.mshome.net<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [37.218.130.8]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 w8sm1798387lad.17 - gsmtp\r\n</p><br />";}'),
(16, 0, 2, 0, 0, 0, '127.0.0.1', 1418639608, 'LOG_ADMIN_AUTH_FAIL', ''),
(17, 0, 2, 0, 0, 0, '127.0.0.1', 1418639619, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(18, 2, 1, 0, 0, 0, '127.0.0.1', 1423236568, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:697:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />SMTP-сервер не поддерживает аутентификацию.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP zr10sm466615lbb.45 - gsmtp\r\n<br /># EHLO PROTECTED-PC<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [158.181.225.62]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n</p><br />";}'),
(19, 2, 1, 0, 0, 0, '127.0.0.1', 1423236851, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:695:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />SMTP-сервер не поддерживает аутентификацию.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP g5sm478931lag.11 - gsmtp\r\n<br /># EHLO PROTECTED-PC<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [158.181.225.62]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n</p><br />";}'),
(20, 0, 2, 0, 0, 0, '127.0.0.1', 1423239284, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(21, 0, 2, 0, 0, 0, '127.0.0.1', 1423239733, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(22, 2, 1, 0, 0, 0, '127.0.0.1', 1423466074, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:695:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />SMTP-сервер не поддерживает аутентификацию.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP v5sm1946053lby.9 - gsmtp\r\n<br /># EHLO PROTECTED-PC<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [158.181.225.62]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n</p><br />";}'),
(23, 2, 1, 0, 0, 0, '158.181.211.237', 1425016087, 'LOG_ERROR_EMAIL', 'a:1:{i:0;s:1665:"<strong>EMAIL/SMTP</strong><br /><em>/forum/ucp.php</em><br /><br />Ошибка при отправке email в <strong>строке 1505</strong>. Ответ сервера: 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 i8sm614486laa.29 - gsmtp\r\n.<h1>Backtrace</h1><p>Connecting to smtp.googlemail.com:25<br />LINE: 1020 &lt;- 220 mx.google.com ESMTP i8sm614486laa.29 - gsmtp\r\n<br /># EHLO betacp.hoster.kg<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [176.126.167.110]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-STARTTLS\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># STARTTLS<br />LINE: 1414 &lt;- 220 2.0.0 Ready to start TLS\r\n<br /># EHLO betacp.hoster.kg<br />LINE: 1369 &lt;- 250-mx.google.com at your service, [176.126.167.110]\r\n<br />LINE: 1369 &lt;- 250-SIZE 35882577\r\n<br />LINE: 1369 &lt;- 250-8BITMIME\r\n<br />LINE: 1369 &lt;- 250-AUTH LOGIN PLAIN XOAUTH XOAUTH2 PLAIN-CLIENTTOKEN\r\n<br />LINE: 1369 &lt;- 250-ENHANCEDSTATUSCODES\r\n<br />LINE: 1369 &lt;- 250-PIPELINING\r\n<br />LINE: 1369 &lt;- 250-CHUNKING\r\n<br />LINE: 1369 &lt;- 250 SMTPUTF8\r\n<br /># AUTH LOGIN<br />LINE: 1493 &lt;- 334 VXNlcm5hbWU6\r\n<br /># Omitting sensitive information<br />LINE: 1499 &lt;- 334 UGFzc3dvcmQ6\r\n<br /># Omitting sensitive information<br />LINE: 1505 &lt;- 535-5.7.8 Username and Password not accepted. Learn more at\r\n<br />LINE: 1505 &lt;- 535 5.7.8 http://support.google.com/mail/bin/answer.py?answer=14257 i8sm614486laa.29 - gsmtp\r\n</p><br />";}');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_login_attempts`
--

DROP TABLE IF EXISTS `phpbb_login_attempts`;
CREATE TABLE IF NOT EXISTS `phpbb_login_attempts` (
  `attempt_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `attempt_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '0',
  KEY `att_ip` (`attempt_ip`,`attempt_time`),
  KEY `att_for` (`attempt_forwarded_for`,`attempt_time`),
  KEY `att_time` (`attempt_time`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_migrations`
--

DROP TABLE IF EXISTS `phpbb_migrations`;
CREATE TABLE IF NOT EXISTS `phpbb_migrations` (
  `migration_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `migration_depends_on` text COLLATE utf8_bin NOT NULL,
  `migration_schema_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_done` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `migration_data_state` text COLLATE utf8_bin NOT NULL,
  `migration_start_time` int(11) unsigned NOT NULL DEFAULT '0',
  `migration_end_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`migration_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` VALUES
('\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0', 'a:0:{}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10_rc2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_10";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc3', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12_rc2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_3";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_4";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1part2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_5";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6_rc3";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_6";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_rc1";}', 1, 1, '', 1418454714, 1418454714),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8_rc1', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_7_pl1";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_8";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc1";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc2";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc4', 'a:1:{i:0;s:47:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_9_rc3";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\allow_cdn', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\alpha1', 'a:18:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v30x\\local_url_bbcode";i:1;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_12";i:2;s:57:"\\phpbb\\db\\migration\\data\\v310\\acp_style_components_module";i:3;s:39:"\\phpbb\\db\\migration\\data\\v310\\allow_cdn";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";i:5;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";i:6;s:40:"\\phpbb\\db\\migration\\data\\v310\\boardindex";i:7;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";i:8;s:45:"\\phpbb\\db\\migration\\data\\v310\\forgot_password";i:9;s:41:"\\phpbb\\db\\migration\\data\\v310\\mod_rewrite";i:10;s:49:"\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop";i:11;s:40:"\\phpbb\\db\\migration\\data\\v310\\namespaces";i:12;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";i:13;s:60:"\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert";i:14;s:38:"\\phpbb\\db\\migration\\data\\v310\\plupload";i:15;s:51:"\\phpbb\\db\\migration\\data\\v310\\signature_module_auth";i:16;s:52:"\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules";i:17;s:38:"\\phpbb\\db\\migration\\data\\v310\\teampage";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\alpha2', 'a:2:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha1";i:1;s:51:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\alpha3', 'a:4:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\avatar_types";i:2;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";i:3;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth', 'a:0:{}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2', 'a:1:{i:0;s:49:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\avatar_types', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:37:"\\phpbb\\db\\migration\\data\\v310\\avatars";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\avatars', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\beta1', 'a:7:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";i:1;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";i:2;s:52:"\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop";i:3;s:63:"\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";i:5;s:54:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\beta2', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta1";i:1;s:52:"\\phpbb\\db\\migration\\data\\v310\\acp_prune_users_module";i:2;s:59:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\beta3', 'a:6:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";i:1;s:50:"\\phpbb\\db\\migration\\data\\v310\\auth_provider_oauth2";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\board_contact_name";i:3;s:44:"\\phpbb\\db\\migration\\data\\v310\\jquery_update2";i:4;s:50:"\\phpbb\\db\\migration\\data\\v310\\live_searches_config";i:5;s:49:"\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\beta4', 'a:3:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta3";i:1;s:69:"\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable";i:2;s:58:"\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\board_contact_name', 'a:1:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta2";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\boardindex', 'a:0:{}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\bot_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\captcha_plugins', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\config_db_text', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module', 'a:0:{}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\contact_admin_form', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v310\\config_db_text";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\dev', 'a:5:{i:0;s:40:"\\phpbb\\db\\migration\\data\\v310\\extensions";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p2";i:2;s:41:"\\phpbb\\db\\migration\\data\\v310\\timezone_p2";i:3;s:52:"\\phpbb\\db\\migration\\data\\v310\\reported_posts_display";i:4;s:46:"\\phpbb\\db\\migration\\data\\v310\\migrations_table";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\extensions', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\extensions_version_check_force_unstable', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\forgot_password', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\gold', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc6";i:1;s:40:"\\phpbb\\db\\migration\\data\\v310\\bot_update";}', 1, 1, '', 1418454715, 1418454715),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\jquery_update2', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\jquery_update";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\live_searches_config', 'a:0:{}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\migrations_table', 'a:0:{}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\mod_rewrite', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\mysql_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\namespaces', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\notification_options_reconvert', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\notifications', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\notifications_cron_p2', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\notifications_cron";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\notifications_schema_fix', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v310\\notifications";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\passwords', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1', 'a:1:{i:0;s:42:"\\phpbb\\db\\migration\\data\\v310\\passwords_p2";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p1";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\passwords_p2', 'a:1:{i:0;s:39:"\\phpbb\\db\\migration\\data\\v310\\passwords";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\plupload', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\postgres_fulltext_drop', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_change_load_settings', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_aol_cleanup";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup', 'a:2:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";i:1;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq', 'a:1:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_interests', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location', 'a:2:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";i:1;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_location_cleanup', 'a:1:{i:0;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_location";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_occupation', 'a:1:{i:0;s:52:"\\phpbb\\db\\migration\\data\\v310\\profilefield_interests";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_cleanup";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_skype', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454716, 1418454716),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_types', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha2";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website', 'a:2:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_on_memberlist";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_icq_cleanup";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup', 'a:1:{i:0;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm', 'a:1:{i:0;s:58:"\\phpbb\\db\\migration\\data\\v310\\profilefield_website_cleanup";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup', 'a:1:{i:0;s:46:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo', 'a:1:{i:0;s:54:"\\phpbb\\db\\migration\\data\\v310\\profilefield_wlm_cleanup";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo_cleanup', 'a:1:{i:0;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_yahoo";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube', 'a:3:{i:0;s:56:"\\phpbb\\db\\migration\\data\\v310\\profilefield_contact_field";i:1;s:55:"\\phpbb\\db\\migration\\data\\v310\\profilefield_show_novalue";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_types";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\prune_shadow_topics', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rc1', 'a:9:{i:0;s:35:"\\phpbb\\db\\migration\\data\\v310\\beta4";i:1;s:54:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_acp_module";i:2;s:48:"\\phpbb\\db\\migration\\data\\v310\\contact_admin_form";i:3;s:50:"\\phpbb\\db\\migration\\data\\v310\\passwords_convert_p2";i:4;s:51:"\\phpbb\\db\\migration\\data\\v310\\profilefield_facebook";i:5;s:53:"\\phpbb\\db\\migration\\data\\v310\\profilefield_googleplus";i:6;s:48:"\\phpbb\\db\\migration\\data\\v310\\profilefield_skype";i:7;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_twitter";i:8;s:50:"\\phpbb\\db\\migration\\data\\v310\\profilefield_youtube";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rc2', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc1";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rc3', 'a:5:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc2";i:1;s:45:"\\phpbb\\db\\migration\\data\\v310\\captcha_plugins";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes";i:3;s:41:"\\phpbb\\db\\migration\\data\\v310\\search_type";i:4;s:49:"\\phpbb\\db\\migration\\data\\v310\\topic_sort_username";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rc4', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc3";i:1;s:57:"\\phpbb\\db\\migration\\data\\v310\\notifications_use_full_name";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rc5', 'a:3:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";i:1;s:66:"\\phpbb\\db\\migration\\data\\v310\\profilefield_field_validation_length";i:2;s:53:"\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rc6', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc5";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\remove_acp_styles_cache', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\rc4";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\rename_too_long_indexes', 'a:1:{i:0;s:43:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_0";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\reported_posts_display', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\reset_missing_captcha_plugin', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\search_type', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\signature_module_auth', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert', 'a:1:{i:0;s:36:"\\phpbb\\db\\migration\\data\\v310\\alpha3";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert2', 'a:1:{i:0;s:53:"\\phpbb\\db\\migration\\data\\v310\\soft_delete_mod_convert";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_mcp_modules', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p2";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p1', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\softdelete_p2', 'a:2:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";i:1;s:43:"\\phpbb\\db\\migration\\data\\v310\\softdelete_p1";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p1', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\style_update_p2', 'a:1:{i:0;s:45:"\\phpbb\\db\\migration\\data\\v310\\style_update_p1";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\teampage', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\timezone', 'a:1:{i:0;s:44:"\\phpbb\\db\\migration\\data\\v30x\\release_3_0_11";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\timezone_p2', 'a:1:{i:0;s:38:"\\phpbb\\db\\migration\\data\\v310\\timezone";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\topic_sort_username', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v310\\ucp_popuppm_module', 'a:1:{i:0;s:33:"\\phpbb\\db\\migration\\data\\v310\\dev";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";}', 1, 1, '', 1418454717, 1418454717),
('\\phpbb\\db\\migration\\data\\v31x\\style_update', 'a:1:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";}', 1, 1, '', 1418454718, 1418454718),
('\\phpbb\\db\\migration\\data\\v31x\\v311', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v310\\gold";i:1;s:42:"\\phpbb\\db\\migration\\data\\v31x\\style_update";}', 1, 1, '', 1418454718, 1418454718),
('\\phpbb\\db\\migration\\data\\v31x\\v312', 'a:1:{i:0;s:37:"\\phpbb\\db\\migration\\data\\v31x\\v312rc1";}', 1, 1, '', 1418454718, 1418454718),
('\\phpbb\\db\\migration\\data\\v31x\\v312rc1', 'a:2:{i:0;s:34:"\\phpbb\\db\\migration\\data\\v31x\\v311";i:1;s:49:"\\phpbb\\db\\migration\\data\\v31x\\m_softdelete_global";}', 1, 1, '', 1418454718, 1418454718);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_moderator_cache`
--

DROP TABLE IF EXISTS `phpbb_moderator_cache`;
CREATE TABLE IF NOT EXISTS `phpbb_moderator_cache` (
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_on_index` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `disp_idx` (`display_on_index`),
  KEY `forum_id` (`forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_modules`
--

DROP TABLE IF EXISTS `phpbb_modules`;
CREATE TABLE IF NOT EXISTS `phpbb_modules` (
  `module_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `module_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_display` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `module_basename` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_class` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `left_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `right_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `module_langname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_mode` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `module_auth` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`module_id`),
  KEY `left_right_id` (`left_id`,`right_id`),
  KEY `module_enabled` (`module_enabled`),
  KEY `class_left_id` (`module_class`,`left_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=207 ;

--
-- Dumping data for table `phpbb_modules`
--

INSERT INTO `phpbb_modules` VALUES
(1, 1, 1, '', 'acp', 0, 1, 66, 'ACP_CAT_GENERAL', '', ''),
(2, 1, 1, '', 'acp', 1, 4, 17, 'ACP_QUICK_ACCESS', '', ''),
(3, 1, 1, '', 'acp', 1, 18, 43, 'ACP_BOARD_CONFIGURATION', '', ''),
(4, 1, 1, '', 'acp', 1, 44, 51, 'ACP_CLIENT_COMMUNICATION', '', ''),
(5, 1, 1, '', 'acp', 1, 52, 65, 'ACP_SERVER_CONFIGURATION', '', ''),
(6, 1, 1, '', 'acp', 0, 67, 86, 'ACP_CAT_FORUMS', '', ''),
(7, 1, 1, '', 'acp', 6, 68, 73, 'ACP_MANAGE_FORUMS', '', ''),
(8, 1, 1, '', 'acp', 6, 74, 85, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(9, 1, 1, '', 'acp', 0, 87, 114, 'ACP_CAT_POSTING', '', ''),
(10, 1, 1, '', 'acp', 9, 88, 101, 'ACP_MESSAGES', '', ''),
(11, 1, 1, '', 'acp', 9, 102, 113, 'ACP_ATTACHMENTS', '', ''),
(12, 1, 1, '', 'acp', 0, 115, 172, 'ACP_CAT_USERGROUP', '', ''),
(13, 1, 1, '', 'acp', 12, 116, 151, 'ACP_CAT_USERS', '', ''),
(14, 1, 1, '', 'acp', 12, 152, 161, 'ACP_GROUPS', '', ''),
(15, 1, 1, '', 'acp', 12, 162, 171, 'ACP_USER_SECURITY', '', ''),
(16, 1, 1, '', 'acp', 0, 173, 222, 'ACP_CAT_PERMISSIONS', '', ''),
(17, 1, 1, '', 'acp', 16, 176, 185, 'ACP_GLOBAL_PERMISSIONS', '', ''),
(18, 1, 1, '', 'acp', 16, 186, 197, 'ACP_FORUM_BASED_PERMISSIONS', '', ''),
(19, 1, 1, '', 'acp', 16, 198, 207, 'ACP_PERMISSION_ROLES', '', ''),
(20, 1, 1, '', 'acp', 16, 208, 221, 'ACP_PERMISSION_MASKS', '', ''),
(21, 1, 1, '', 'acp', 0, 223, 238, 'ACP_CAT_CUSTOMISE', '', ''),
(22, 1, 1, '', 'acp', 21, 228, 233, 'ACP_STYLE_MANAGEMENT', '', ''),
(23, 1, 1, '', 'acp', 21, 224, 227, 'ACP_EXTENSION_MANAGEMENT', '', ''),
(24, 1, 1, '', 'acp', 21, 234, 237, 'ACP_LANGUAGE', '', ''),
(25, 1, 1, '', 'acp', 0, 239, 258, 'ACP_CAT_MAINTENANCE', '', ''),
(26, 1, 1, '', 'acp', 25, 240, 249, 'ACP_FORUM_LOGS', '', ''),
(27, 1, 1, '', 'acp', 25, 250, 257, 'ACP_CAT_DATABASE', '', ''),
(28, 1, 1, '', 'acp', 0, 259, 282, 'ACP_CAT_SYSTEM', '', ''),
(29, 1, 1, '', 'acp', 28, 260, 263, 'ACP_AUTOMATION', '', ''),
(30, 1, 1, '', 'acp', 28, 264, 273, 'ACP_GENERAL_TASKS', '', ''),
(31, 1, 1, '', 'acp', 28, 274, 281, 'ACP_MODULE_MANAGEMENT', '', ''),
(32, 1, 1, '', 'acp', 0, 283, 284, 'ACP_CAT_DOT_MODS', '', ''),
(33, 1, 1, 'acp_attachments', 'acp', 3, 19, 20, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(34, 1, 1, 'acp_attachments', 'acp', 11, 103, 104, 'ACP_ATTACHMENT_SETTINGS', 'attach', 'acl_a_attach'),
(35, 1, 1, 'acp_attachments', 'acp', 11, 105, 106, 'ACP_MANAGE_EXTENSIONS', 'extensions', 'acl_a_attach'),
(36, 1, 1, 'acp_attachments', 'acp', 11, 107, 108, 'ACP_EXTENSION_GROUPS', 'ext_groups', 'acl_a_attach'),
(37, 1, 1, 'acp_attachments', 'acp', 11, 109, 110, 'ACP_ORPHAN_ATTACHMENTS', 'orphan', 'acl_a_attach'),
(38, 1, 1, 'acp_attachments', 'acp', 11, 111, 112, 'ACP_MANAGE_ATTACHMENTS', 'manage', 'acl_a_attach'),
(39, 1, 1, 'acp_ban', 'acp', 15, 163, 164, 'ACP_BAN_EMAILS', 'email', 'acl_a_ban'),
(40, 1, 1, 'acp_ban', 'acp', 15, 165, 166, 'ACP_BAN_IPS', 'ip', 'acl_a_ban'),
(41, 1, 1, 'acp_ban', 'acp', 15, 167, 168, 'ACP_BAN_USERNAMES', 'user', 'acl_a_ban'),
(42, 1, 1, 'acp_bbcodes', 'acp', 10, 89, 90, 'ACP_BBCODES', 'bbcodes', 'acl_a_bbcode'),
(43, 1, 1, 'acp_board', 'acp', 3, 21, 22, 'ACP_BOARD_SETTINGS', 'settings', 'acl_a_board'),
(44, 1, 1, 'acp_board', 'acp', 3, 23, 24, 'ACP_BOARD_FEATURES', 'features', 'acl_a_board'),
(45, 1, 1, 'acp_board', 'acp', 3, 25, 26, 'ACP_AVATAR_SETTINGS', 'avatar', 'acl_a_board'),
(46, 1, 1, 'acp_board', 'acp', 3, 27, 28, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(47, 1, 1, 'acp_board', 'acp', 10, 91, 92, 'ACP_MESSAGE_SETTINGS', 'message', 'acl_a_board'),
(48, 1, 1, 'acp_board', 'acp', 3, 29, 30, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(49, 1, 1, 'acp_board', 'acp', 10, 93, 94, 'ACP_POST_SETTINGS', 'post', 'acl_a_board'),
(50, 1, 1, 'acp_board', 'acp', 3, 31, 32, 'ACP_SIGNATURE_SETTINGS', 'signature', 'acl_a_board'),
(51, 1, 1, 'acp_board', 'acp', 3, 33, 34, 'ACP_FEED_SETTINGS', 'feed', 'acl_a_board'),
(52, 1, 1, 'acp_board', 'acp', 3, 35, 36, 'ACP_REGISTER_SETTINGS', 'registration', 'acl_a_board'),
(53, 1, 1, 'acp_board', 'acp', 4, 45, 46, 'ACP_AUTH_SETTINGS', 'auth', 'acl_a_server'),
(54, 1, 1, 'acp_board', 'acp', 4, 47, 48, 'ACP_EMAIL_SETTINGS', 'email', 'acl_a_server'),
(55, 1, 1, 'acp_board', 'acp', 5, 53, 54, 'ACP_COOKIE_SETTINGS', 'cookie', 'acl_a_server'),
(56, 1, 1, 'acp_board', 'acp', 5, 55, 56, 'ACP_SERVER_SETTINGS', 'server', 'acl_a_server'),
(57, 1, 1, 'acp_board', 'acp', 5, 57, 58, 'ACP_SECURITY_SETTINGS', 'security', 'acl_a_server'),
(58, 1, 1, 'acp_board', 'acp', 5, 59, 60, 'ACP_LOAD_SETTINGS', 'load', 'acl_a_server'),
(59, 1, 1, 'acp_bots', 'acp', 30, 265, 266, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(60, 1, 1, 'acp_captcha', 'acp', 3, 37, 38, 'ACP_VC_SETTINGS', 'visual', 'acl_a_board'),
(61, 1, 0, 'acp_captcha', 'acp', 3, 39, 40, 'ACP_VC_CAPTCHA_DISPLAY', 'img', 'acl_a_board'),
(62, 1, 1, 'acp_contact', 'acp', 3, 41, 42, 'ACP_CONTACT_SETTINGS', 'contact', 'acl_a_board'),
(63, 1, 1, 'acp_database', 'acp', 27, 251, 252, 'ACP_BACKUP', 'backup', 'acl_a_backup'),
(64, 1, 1, 'acp_database', 'acp', 27, 253, 254, 'ACP_RESTORE', 'restore', 'acl_a_backup'),
(65, 1, 1, 'acp_disallow', 'acp', 15, 169, 170, 'ACP_DISALLOW_USERNAMES', 'usernames', 'acl_a_names'),
(66, 1, 1, 'acp_email', 'acp', 30, 267, 268, 'ACP_MASS_EMAIL', 'email', 'acl_a_email && cfg_email_enable'),
(67, 1, 1, 'acp_extensions', 'acp', 23, 225, 226, 'ACP_EXTENSIONS', 'main', 'acl_a_extensions'),
(68, 1, 1, 'acp_forums', 'acp', 7, 69, 70, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(69, 1, 1, 'acp_groups', 'acp', 14, 153, 154, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(70, 1, 1, 'acp_groups', 'acp', 14, 155, 156, 'ACP_GROUPS_POSITION', 'position', 'acl_a_group'),
(71, 1, 1, 'acp_icons', 'acp', 10, 95, 96, 'ACP_ICONS', 'icons', 'acl_a_icons'),
(72, 1, 1, 'acp_icons', 'acp', 10, 97, 98, 'ACP_SMILIES', 'smilies', 'acl_a_icons'),
(73, 1, 1, 'acp_inactive', 'acp', 13, 117, 118, 'ACP_INACTIVE_USERS', 'list', 'acl_a_user'),
(74, 1, 1, 'acp_jabber', 'acp', 4, 49, 50, 'ACP_JABBER_SETTINGS', 'settings', 'acl_a_jabber'),
(75, 1, 1, 'acp_language', 'acp', 24, 235, 236, 'ACP_LANGUAGE_PACKS', 'lang_packs', 'acl_a_language'),
(76, 1, 1, 'acp_logs', 'acp', 26, 241, 242, 'ACP_ADMIN_LOGS', 'admin', 'acl_a_viewlogs'),
(77, 1, 1, 'acp_logs', 'acp', 26, 243, 244, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(78, 1, 1, 'acp_logs', 'acp', 26, 245, 246, 'ACP_USERS_LOGS', 'users', 'acl_a_viewlogs'),
(79, 1, 1, 'acp_logs', 'acp', 26, 247, 248, 'ACP_CRITICAL_LOGS', 'critical', 'acl_a_viewlogs'),
(80, 1, 1, 'acp_main', 'acp', 1, 2, 3, 'ACP_INDEX', 'main', ''),
(81, 1, 1, 'acp_modules', 'acp', 31, 275, 276, 'ACP', 'acp', 'acl_a_modules'),
(82, 1, 1, 'acp_modules', 'acp', 31, 277, 278, 'UCP', 'ucp', 'acl_a_modules'),
(83, 1, 1, 'acp_modules', 'acp', 31, 279, 280, 'MCP', 'mcp', 'acl_a_modules'),
(84, 1, 1, 'acp_permission_roles', 'acp', 19, 199, 200, 'ACP_ADMIN_ROLES', 'admin_roles', 'acl_a_roles && acl_a_aauth'),
(85, 1, 1, 'acp_permission_roles', 'acp', 19, 201, 202, 'ACP_USER_ROLES', 'user_roles', 'acl_a_roles && acl_a_uauth'),
(86, 1, 1, 'acp_permission_roles', 'acp', 19, 203, 204, 'ACP_MOD_ROLES', 'mod_roles', 'acl_a_roles && acl_a_mauth'),
(87, 1, 1, 'acp_permission_roles', 'acp', 19, 205, 206, 'ACP_FORUM_ROLES', 'forum_roles', 'acl_a_roles && acl_a_fauth'),
(88, 1, 1, 'acp_permissions', 'acp', 16, 174, 175, 'ACP_PERMISSIONS', 'intro', 'acl_a_authusers || acl_a_authgroups || acl_a_viewauth'),
(89, 1, 0, 'acp_permissions', 'acp', 20, 209, 210, 'ACP_PERMISSION_TRACE', 'trace', 'acl_a_viewauth'),
(90, 1, 1, 'acp_permissions', 'acp', 18, 187, 188, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(91, 1, 1, 'acp_permissions', 'acp', 18, 189, 190, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(92, 1, 1, 'acp_permissions', 'acp', 18, 191, 192, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(93, 1, 1, 'acp_permissions', 'acp', 17, 177, 178, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(94, 1, 1, 'acp_permissions', 'acp', 13, 121, 122, 'ACP_USERS_PERMISSIONS', 'setting_user_global', 'acl_a_authusers && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(95, 1, 1, 'acp_permissions', 'acp', 18, 193, 194, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(96, 1, 1, 'acp_permissions', 'acp', 13, 123, 124, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(97, 1, 1, 'acp_permissions', 'acp', 17, 179, 180, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(98, 1, 1, 'acp_permissions', 'acp', 14, 157, 158, 'ACP_GROUPS_PERMISSIONS', 'setting_group_global', 'acl_a_authgroups && (acl_a_aauth || acl_a_mauth || acl_a_uauth)'),
(99, 1, 1, 'acp_permissions', 'acp', 18, 195, 196, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(100, 1, 1, 'acp_permissions', 'acp', 14, 159, 160, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(101, 1, 1, 'acp_permissions', 'acp', 17, 181, 182, 'ACP_ADMINISTRATORS', 'setting_admin_global', 'acl_a_aauth && (acl_a_authusers || acl_a_authgroups)'),
(102, 1, 1, 'acp_permissions', 'acp', 17, 183, 184, 'ACP_GLOBAL_MODERATORS', 'setting_mod_global', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(103, 1, 1, 'acp_permissions', 'acp', 20, 211, 212, 'ACP_VIEW_ADMIN_PERMISSIONS', 'view_admin_global', 'acl_a_viewauth'),
(104, 1, 1, 'acp_permissions', 'acp', 20, 213, 214, 'ACP_VIEW_USER_PERMISSIONS', 'view_user_global', 'acl_a_viewauth'),
(105, 1, 1, 'acp_permissions', 'acp', 20, 215, 216, 'ACP_VIEW_GLOBAL_MOD_PERMISSIONS', 'view_mod_global', 'acl_a_viewauth'),
(106, 1, 1, 'acp_permissions', 'acp', 20, 217, 218, 'ACP_VIEW_FORUM_MOD_PERMISSIONS', 'view_mod_local', 'acl_a_viewauth'),
(107, 1, 1, 'acp_permissions', 'acp', 20, 219, 220, 'ACP_VIEW_FORUM_PERMISSIONS', 'view_forum_local', 'acl_a_viewauth'),
(108, 1, 1, 'acp_php_info', 'acp', 30, 269, 270, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(109, 1, 1, 'acp_profile', 'acp', 13, 125, 126, 'ACP_CUSTOM_PROFILE_FIELDS', 'profile', 'acl_a_profile'),
(110, 1, 1, 'acp_prune', 'acp', 7, 71, 72, 'ACP_PRUNE_FORUMS', 'forums', 'acl_a_prune'),
(111, 1, 1, 'acp_prune', 'acp', 13, 127, 128, 'ACP_PRUNE_USERS', 'users', 'acl_a_userdel'),
(112, 1, 1, 'acp_ranks', 'acp', 13, 129, 130, 'ACP_MANAGE_RANKS', 'ranks', 'acl_a_ranks'),
(113, 1, 1, 'acp_reasons', 'acp', 30, 271, 272, 'ACP_MANAGE_REASONS', 'main', 'acl_a_reasons'),
(114, 1, 1, 'acp_search', 'acp', 5, 61, 62, 'ACP_SEARCH_SETTINGS', 'settings', 'acl_a_search'),
(115, 1, 1, 'acp_search', 'acp', 27, 255, 256, 'ACP_SEARCH_INDEX', 'index', 'acl_a_search'),
(116, 1, 1, 'acp_send_statistics', 'acp', 5, 63, 64, 'ACP_SEND_STATISTICS', 'send_statistics', 'acl_a_server'),
(117, 1, 1, 'acp_styles', 'acp', 22, 229, 230, 'ACP_STYLES', 'style', 'acl_a_styles'),
(118, 1, 1, 'acp_styles', 'acp', 22, 231, 232, 'ACP_STYLES_INSTALL', 'install', 'acl_a_styles'),
(119, 1, 1, 'acp_update', 'acp', 29, 261, 262, 'ACP_VERSION_CHECK', 'version_check', 'acl_a_board'),
(120, 1, 1, 'acp_users', 'acp', 13, 119, 120, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(121, 1, 0, 'acp_users', 'acp', 13, 131, 132, 'ACP_USER_FEEDBACK', 'feedback', 'acl_a_user'),
(122, 1, 0, 'acp_users', 'acp', 13, 133, 134, 'ACP_USER_WARNINGS', 'warnings', 'acl_a_user'),
(123, 1, 0, 'acp_users', 'acp', 13, 135, 136, 'ACP_USER_PROFILE', 'profile', 'acl_a_user'),
(124, 1, 0, 'acp_users', 'acp', 13, 137, 138, 'ACP_USER_PREFS', 'prefs', 'acl_a_user'),
(125, 1, 0, 'acp_users', 'acp', 13, 139, 140, 'ACP_USER_AVATAR', 'avatar', 'acl_a_user'),
(126, 1, 0, 'acp_users', 'acp', 13, 141, 142, 'ACP_USER_RANK', 'rank', 'acl_a_user'),
(127, 1, 0, 'acp_users', 'acp', 13, 143, 144, 'ACP_USER_SIG', 'sig', 'acl_a_user'),
(128, 1, 0, 'acp_users', 'acp', 13, 145, 146, 'ACP_USER_GROUPS', 'groups', 'acl_a_user && acl_a_group'),
(129, 1, 0, 'acp_users', 'acp', 13, 147, 148, 'ACP_USER_PERM', 'perm', 'acl_a_user && acl_a_viewauth'),
(130, 1, 0, 'acp_users', 'acp', 13, 149, 150, 'ACP_USER_ATTACH', 'attach', 'acl_a_user'),
(131, 1, 1, 'acp_words', 'acp', 10, 99, 100, 'ACP_WORDS', 'words', 'acl_a_words'),
(132, 1, 1, 'acp_users', 'acp', 2, 5, 6, 'ACP_MANAGE_USERS', 'overview', 'acl_a_user'),
(133, 1, 1, 'acp_groups', 'acp', 2, 7, 8, 'ACP_GROUPS_MANAGE', 'manage', 'acl_a_group'),
(134, 1, 1, 'acp_forums', 'acp', 2, 9, 10, 'ACP_MANAGE_FORUMS', 'manage', 'acl_a_forum'),
(135, 1, 1, 'acp_logs', 'acp', 2, 11, 12, 'ACP_MOD_LOGS', 'mod', 'acl_a_viewlogs'),
(136, 1, 1, 'acp_bots', 'acp', 2, 13, 14, 'ACP_BOTS', 'bots', 'acl_a_bots'),
(137, 1, 1, 'acp_php_info', 'acp', 2, 15, 16, 'ACP_PHP_INFO', 'info', 'acl_a_phpinfo'),
(138, 1, 1, 'acp_permissions', 'acp', 8, 75, 76, 'ACP_FORUM_PERMISSIONS', 'setting_forum_local', 'acl_a_fauth && (acl_a_authusers || acl_a_authgroups)'),
(139, 1, 1, 'acp_permissions', 'acp', 8, 77, 78, 'ACP_FORUM_PERMISSIONS_COPY', 'setting_forum_copy', 'acl_a_fauth && acl_a_authusers && acl_a_authgroups && acl_a_mauth'),
(140, 1, 1, 'acp_permissions', 'acp', 8, 79, 80, 'ACP_FORUM_MODERATORS', 'setting_mod_local', 'acl_a_mauth && (acl_a_authusers || acl_a_authgroups)'),
(141, 1, 1, 'acp_permissions', 'acp', 8, 81, 82, 'ACP_USERS_FORUM_PERMISSIONS', 'setting_user_local', 'acl_a_authusers && (acl_a_mauth || acl_a_fauth)'),
(142, 1, 1, 'acp_permissions', 'acp', 8, 83, 84, 'ACP_GROUPS_FORUM_PERMISSIONS', 'setting_group_local', 'acl_a_authgroups && (acl_a_mauth || acl_a_fauth)'),
(143, 1, 1, '', 'mcp', 0, 1, 10, 'MCP_MAIN', '', ''),
(144, 1, 1, '', 'mcp', 0, 11, 22, 'MCP_QUEUE', '', ''),
(145, 1, 1, '', 'mcp', 0, 23, 36, 'MCP_REPORTS', '', ''),
(146, 1, 1, '', 'mcp', 0, 37, 42, 'MCP_NOTES', '', ''),
(147, 1, 1, '', 'mcp', 0, 43, 52, 'MCP_WARN', '', ''),
(148, 1, 1, '', 'mcp', 0, 53, 60, 'MCP_LOGS', '', ''),
(149, 1, 1, '', 'mcp', 0, 61, 68, 'MCP_BAN', '', ''),
(150, 1, 1, 'mcp_ban', 'mcp', 149, 62, 63, 'MCP_BAN_USERNAMES', 'user', 'acl_m_ban'),
(151, 1, 1, 'mcp_ban', 'mcp', 149, 64, 65, 'MCP_BAN_IPS', 'ip', 'acl_m_ban'),
(152, 1, 1, 'mcp_ban', 'mcp', 149, 66, 67, 'MCP_BAN_EMAILS', 'email', 'acl_m_ban'),
(153, 1, 1, 'mcp_logs', 'mcp', 148, 54, 55, 'MCP_LOGS_FRONT', 'front', 'acl_m_ || aclf_m_'),
(154, 1, 1, 'mcp_logs', 'mcp', 148, 56, 57, 'MCP_LOGS_FORUM_VIEW', 'forum_logs', 'acl_m_,$id'),
(155, 1, 1, 'mcp_logs', 'mcp', 148, 58, 59, 'MCP_LOGS_TOPIC_VIEW', 'topic_logs', 'acl_m_,$id'),
(156, 1, 1, 'mcp_main', 'mcp', 143, 2, 3, 'MCP_MAIN_FRONT', 'front', ''),
(157, 1, 1, 'mcp_main', 'mcp', 143, 4, 5, 'MCP_MAIN_FORUM_VIEW', 'forum_view', 'acl_m_,$id'),
(158, 1, 1, 'mcp_main', 'mcp', 143, 6, 7, 'MCP_MAIN_TOPIC_VIEW', 'topic_view', 'acl_m_,$id'),
(159, 1, 1, 'mcp_main', 'mcp', 143, 8, 9, 'MCP_MAIN_POST_DETAILS', 'post_details', 'acl_m_,$id || (!$id && aclf_m_)'),
(160, 1, 1, 'mcp_notes', 'mcp', 146, 38, 39, 'MCP_NOTES_FRONT', 'front', ''),
(161, 1, 1, 'mcp_notes', 'mcp', 146, 40, 41, 'MCP_NOTES_USER', 'user_notes', ''),
(162, 1, 1, 'mcp_pm_reports', 'mcp', 145, 30, 31, 'MCP_PM_REPORTS_OPEN', 'pm_reports', 'aclf_m_report'),
(163, 1, 1, 'mcp_pm_reports', 'mcp', 145, 32, 33, 'MCP_PM_REPORTS_CLOSED', 'pm_reports_closed', 'aclf_m_report'),
(164, 1, 1, 'mcp_pm_reports', 'mcp', 145, 34, 35, 'MCP_PM_REPORT_DETAILS', 'pm_report_details', 'aclf_m_report'),
(165, 1, 1, 'mcp_queue', 'mcp', 144, 12, 13, 'MCP_QUEUE_UNAPPROVED_TOPICS', 'unapproved_topics', 'aclf_m_approve'),
(166, 1, 1, 'mcp_queue', 'mcp', 144, 14, 15, 'MCP_QUEUE_UNAPPROVED_POSTS', 'unapproved_posts', 'aclf_m_approve'),
(167, 1, 1, 'mcp_queue', 'mcp', 144, 16, 17, 'MCP_QUEUE_DELETED_TOPICS', 'deleted_topics', 'aclf_m_approve'),
(168, 1, 1, 'mcp_queue', 'mcp', 144, 18, 19, 'MCP_QUEUE_DELETED_POSTS', 'deleted_posts', 'aclf_m_approve'),
(169, 1, 1, 'mcp_queue', 'mcp', 144, 20, 21, 'MCP_QUEUE_APPROVE_DETAILS', 'approve_details', 'acl_m_approve,$id || (!$id && aclf_m_approve)'),
(170, 1, 1, 'mcp_reports', 'mcp', 145, 24, 25, 'MCP_REPORTS_OPEN', 'reports', 'aclf_m_report'),
(171, 1, 1, 'mcp_reports', 'mcp', 145, 26, 27, 'MCP_REPORTS_CLOSED', 'reports_closed', 'aclf_m_report'),
(172, 1, 1, 'mcp_reports', 'mcp', 145, 28, 29, 'MCP_REPORT_DETAILS', 'report_details', 'acl_m_report,$id || (!$id && aclf_m_report)'),
(173, 1, 1, 'mcp_warn', 'mcp', 147, 44, 45, 'MCP_WARN_FRONT', 'front', 'aclf_m_warn'),
(174, 1, 1, 'mcp_warn', 'mcp', 147, 46, 47, 'MCP_WARN_LIST', 'list', 'aclf_m_warn'),
(175, 1, 1, 'mcp_warn', 'mcp', 147, 48, 49, 'MCP_WARN_USER', 'warn_user', 'aclf_m_warn'),
(176, 1, 1, 'mcp_warn', 'mcp', 147, 50, 51, 'MCP_WARN_POST', 'warn_post', 'acl_m_warn && acl_f_read,$id'),
(177, 1, 1, '', 'ucp', 0, 1, 14, 'UCP_MAIN', '', ''),
(178, 1, 1, '', 'ucp', 0, 15, 28, 'UCP_PROFILE', '', ''),
(179, 1, 1, '', 'ucp', 0, 29, 38, 'UCP_PREFS', '', ''),
(180, 1, 1, 'ucp_pm', 'ucp', 0, 39, 48, 'UCP_PM', '', ''),
(181, 1, 1, '', 'ucp', 0, 49, 54, 'UCP_USERGROUPS', '', ''),
(182, 1, 1, '', 'ucp', 0, 55, 60, 'UCP_ZEBRA', '', ''),
(183, 1, 1, 'ucp_attachments', 'ucp', 177, 10, 11, 'UCP_MAIN_ATTACHMENTS', 'attachments', 'acl_u_attach'),
(184, 1, 1, 'ucp_auth_link', 'ucp', 178, 26, 27, 'UCP_AUTH_LINK_MANAGE', 'auth_link', 'authmethod_oauth'),
(185, 1, 1, 'ucp_groups', 'ucp', 181, 50, 51, 'UCP_USERGROUPS_MEMBER', 'membership', ''),
(186, 1, 1, 'ucp_groups', 'ucp', 181, 52, 53, 'UCP_USERGROUPS_MANAGE', 'manage', ''),
(187, 1, 1, 'ucp_main', 'ucp', 177, 2, 3, 'UCP_MAIN_FRONT', 'front', ''),
(188, 1, 1, 'ucp_main', 'ucp', 177, 4, 5, 'UCP_MAIN_SUBSCRIBED', 'subscribed', ''),
(189, 1, 1, 'ucp_main', 'ucp', 177, 6, 7, 'UCP_MAIN_BOOKMARKS', 'bookmarks', 'cfg_allow_bookmarks'),
(190, 1, 1, 'ucp_main', 'ucp', 177, 8, 9, 'UCP_MAIN_DRAFTS', 'drafts', ''),
(191, 1, 1, 'ucp_notifications', 'ucp', 179, 36, 37, 'UCP_NOTIFICATION_OPTIONS', 'notification_options', ''),
(192, 1, 1, 'ucp_notifications', 'ucp', 177, 12, 13, 'UCP_NOTIFICATION_LIST', 'notification_list', ''),
(193, 1, 0, 'ucp_pm', 'ucp', 180, 40, 41, 'UCP_PM_VIEW', 'view', 'cfg_allow_privmsg'),
(194, 1, 1, 'ucp_pm', 'ucp', 180, 42, 43, 'UCP_PM_COMPOSE', 'compose', 'cfg_allow_privmsg'),
(195, 1, 1, 'ucp_pm', 'ucp', 180, 44, 45, 'UCP_PM_DRAFTS', 'drafts', 'cfg_allow_privmsg'),
(196, 1, 1, 'ucp_pm', 'ucp', 180, 46, 47, 'UCP_PM_OPTIONS', 'options', 'cfg_allow_privmsg'),
(197, 1, 1, 'ucp_prefs', 'ucp', 179, 30, 31, 'UCP_PREFS_PERSONAL', 'personal', ''),
(198, 1, 1, 'ucp_prefs', 'ucp', 179, 32, 33, 'UCP_PREFS_POST', 'post', ''),
(199, 1, 1, 'ucp_prefs', 'ucp', 179, 34, 35, 'UCP_PREFS_VIEW', 'view', ''),
(200, 1, 1, 'ucp_profile', 'ucp', 178, 16, 17, 'UCP_PROFILE_PROFILE_INFO', 'profile_info', 'acl_u_chgprofileinfo'),
(201, 1, 1, 'ucp_profile', 'ucp', 178, 18, 19, 'UCP_PROFILE_SIGNATURE', 'signature', 'acl_u_sig'),
(202, 1, 1, 'ucp_profile', 'ucp', 178, 20, 21, 'UCP_PROFILE_AVATAR', 'avatar', 'cfg_allow_avatar'),
(203, 1, 1, 'ucp_profile', 'ucp', 178, 22, 23, 'UCP_PROFILE_REG_DETAILS', 'reg_details', ''),
(204, 1, 1, 'ucp_profile', 'ucp', 178, 24, 25, 'UCP_PROFILE_AUTOLOGIN_KEYS', 'autologin_keys', ''),
(205, 1, 1, 'ucp_zebra', 'ucp', 182, 56, 57, 'UCP_ZEBRA_FRIENDS', 'friends', ''),
(206, 1, 1, 'ucp_zebra', 'ucp', 182, 58, 59, 'UCP_ZEBRA_FOES', 'foes', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notifications`
--

DROP TABLE IF EXISTS `phpbb_notifications`;
CREATE TABLE IF NOT EXISTS `phpbb_notifications` (
  `notification_id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `item_parent_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notification_read` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `notification_time` int(11) unsigned NOT NULL DEFAULT '1',
  `notification_data` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`notification_id`),
  KEY `item_ident` (`notification_type_id`,`item_id`),
  KEY `user` (`user_id`,`notification_read`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_notification_types`
--

DROP TABLE IF EXISTS `phpbb_notification_types`;
CREATE TABLE IF NOT EXISTS `phpbb_notification_types` (
  `notification_type_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `notification_type_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notification_type_enabled` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`notification_type_id`),
  UNIQUE KEY `type` (`notification_type_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_accounts`
--

DROP TABLE IF EXISTS `phpbb_oauth_accounts`;
CREATE TABLE IF NOT EXISTS `phpbb_oauth_accounts` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_provider_id` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`user_id`,`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_oauth_tokens`
--

DROP TABLE IF EXISTS `phpbb_oauth_tokens`;
CREATE TABLE IF NOT EXISTS `phpbb_oauth_tokens` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `provider` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `oauth_token` mediumtext COLLATE utf8_bin NOT NULL,
  KEY `user_id` (`user_id`),
  KEY `provider` (`provider`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_options`
--

DROP TABLE IF EXISTS `phpbb_poll_options`;
CREATE TABLE IF NOT EXISTS `phpbb_poll_options` (
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_text` text COLLATE utf8_bin NOT NULL,
  `poll_option_total` mediumint(8) unsigned NOT NULL DEFAULT '0',
  KEY `poll_opt_id` (`poll_option_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_poll_votes`
--

DROP TABLE IF EXISTS `phpbb_poll_votes`;
CREATE TABLE IF NOT EXISTS `phpbb_poll_votes` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_option_id` tinyint(4) NOT NULL DEFAULT '0',
  `vote_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `vote_user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  KEY `topic_id` (`topic_id`),
  KEY `vote_user_id` (`vote_user_id`),
  KEY `vote_user_ip` (`vote_user_ip`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_posts`
--

DROP TABLE IF EXISTS `phpbb_posts`;
CREATE TABLE IF NOT EXISTS `phpbb_posts` (
  `post_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poster_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_subject` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `post_checksum` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_postcount` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `post_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_edit_locked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `post_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `post_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `post_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `post_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`post_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`),
  KEY `poster_ip` (`poster_ip`),
  KEY `poster_id` (`poster_id`),
  KEY `tid_post_time` (`topic_id`,`post_time`),
  KEY `post_username` (`post_username`),
  KEY `post_visibility` (`post_visibility`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_posts`
--

INSERT INTO `phpbb_posts` VALUES
(1, 1, 2, 2, 0, '127.0.0.1', 1418454675, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs`
--

DROP TABLE IF EXISTS `phpbb_privmsgs`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs` (
  `msg_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `root_level` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_time` int(11) unsigned NOT NULL DEFAULT '0',
  `enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `enable_sig` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `message_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_text` mediumtext COLLATE utf8_bin NOT NULL,
  `message_edit_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `message_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `message_edit_time` int(11) unsigned NOT NULL DEFAULT '0',
  `message_edit_count` smallint(4) unsigned NOT NULL DEFAULT '0',
  `to_address` text COLLATE utf8_bin NOT NULL,
  `bcc_address` text COLLATE utf8_bin NOT NULL,
  `message_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`msg_id`),
  KEY `author_ip` (`author_ip`),
  KEY `message_time` (`message_time`),
  KEY `author_id` (`author_id`),
  KEY `root_level` (`root_level`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_folder`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_folder`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_folder` (
  `folder_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `folder_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pm_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`folder_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_rules`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_rules`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_rules` (
  `rule_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_check` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_connection` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_string` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rule_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_action` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rule_folder_id` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`rule_id`),
  KEY `user_id` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_privmsgs_to`
--

DROP TABLE IF EXISTS `phpbb_privmsgs_to`;
CREATE TABLE IF NOT EXISTS `phpbb_privmsgs_to` (
  `msg_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `author_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pm_deleted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_unread` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `pm_replied` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_marked` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `pm_forwarded` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `folder_id` int(11) NOT NULL DEFAULT '0',
  KEY `msg_id` (`msg_id`),
  KEY `author_id` (`author_id`),
  KEY `usr_flder_id` (`user_id`,`folder_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields`
--

DROP TABLE IF EXISTS `phpbb_profile_fields`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields` (
  `field_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `field_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_ident` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_length` varchar(20) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_minlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_maxlen` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_novalue` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_validation` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_required` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_reg` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_hide` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_no_view` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_active` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_show_profile` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_vt` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_novalue` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_pm` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_show_on_ml` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_is_contact` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `field_contact_desc` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `field_contact_url` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`),
  KEY `fld_type` (`field_type`),
  KEY `fld_ordr` (`field_order`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=14 ;

--
-- Dumping data for table `phpbb_profile_fields`
--

INSERT INTO `phpbb_profile_fields` VALUES
(1, 'phpbb_location', 'profilefields.type.string', 'phpbb_location', '20', '2', '100', '', '', '.*', 0, 0, 0, 0, 1, 1, 1, 1, 0, 1, 1, 0, '', ''),
(2, 'phpbb_website', 'profilefields.type.url', 'phpbb_website', '40', '12', '255', '', '', '', 0, 0, 0, 0, 1, 2, 1, 1, 0, 1, 1, 1, 'VISIT_WEBSITE', '%s'),
(3, 'phpbb_interests', 'profilefields.type.text', 'phpbb_interests', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 3, 1, 0, 0, 0, 0, 0, '', ''),
(4, 'phpbb_occupation', 'profilefields.type.text', 'phpbb_occupation', '3|30', '2', '500', '', '', '.*', 0, 0, 0, 0, 0, 4, 1, 0, 0, 0, 0, 0, '', ''),
(5, 'phpbb_aol', 'profilefields.type.string', 'phpbb_aol', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 5, 1, 1, 0, 1, 1, 1, '', ''),
(6, 'phpbb_icq', 'profilefields.type.string', 'phpbb_icq', '20', '3', '15', '', '', '[0-9]+', 0, 0, 0, 0, 0, 6, 1, 1, 0, 1, 1, 1, 'SEND_ICQ_MESSAGE', 'https://www.icq.com/people/%s/'),
(7, 'phpbb_wlm', 'profilefields.type.string', 'phpbb_wlm', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 7, 1, 1, 0, 1, 1, 1, '', ''),
(8, 'phpbb_yahoo', 'profilefields.type.string', 'phpbb_yahoo', '40', '5', '255', '', '', '.*', 0, 0, 0, 0, 0, 8, 1, 1, 0, 1, 1, 1, 'SEND_YIM_MESSAGE', 'http://edit.yahoo.com/config/send_webmesg?.target=%s&amp;.src=pg'),
(9, 'phpbb_facebook', 'profilefields.type.string', 'phpbb_facebook', '20', '5', '50', '', '', '[\\w.]+', 0, 0, 0, 0, 1, 9, 1, 1, 0, 1, 1, 1, 'VIEW_FACEBOOK_PROFILE', 'http://facebook.com/%s/'),
(10, 'phpbb_twitter', 'profilefields.type.string', 'phpbb_twitter', '20', '1', '15', '', '', '[\\w_]+', 0, 0, 0, 0, 1, 10, 1, 1, 0, 1, 1, 1, 'VIEW_TWITTER_PROFILE', 'http://twitter.com/%s'),
(11, 'phpbb_skype', 'profilefields.type.string', 'phpbb_skype', '20', '6', '32', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 11, 1, 1, 0, 1, 1, 1, 'VIEW_SKYPE_PROFILE', 'skype:%s?userinfo'),
(12, 'phpbb_youtube', 'profilefields.type.string', 'phpbb_youtube', '20', '3', '60', '', '', '[a-zA-Z][\\w\\.,\\-_]+', 0, 0, 0, 0, 1, 12, 1, 1, 0, 1, 1, 1, 'VIEW_YOUTUBE_CHANNEL', 'http://youtube.com/user/%s'),
(13, 'phpbb_googleplus', 'profilefields.type.googleplus', 'phpbb_googleplus', '20', '3', '255', '', '', '[\\w]+', 0, 0, 0, 0, 1, 13, 1, 1, 0, 1, 1, 1, 'VIEW_GOOGLEPLUS_PROFILE', 'http://plus.google.com/%s');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_data`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_data`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_data` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `pf_phpbb_interests` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_occupation` mediumtext COLLATE utf8_bin NOT NULL,
  `pf_phpbb_facebook` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_twitter` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_location` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_youtube` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_googleplus` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_icq` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_skype` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_website` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_wlm` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_yahoo` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pf_phpbb_aol` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_fields_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_fields_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_fields_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `option_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `field_type` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`,`option_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_profile_lang`
--

DROP TABLE IF EXISTS `phpbb_profile_lang`;
CREATE TABLE IF NOT EXISTS `phpbb_profile_lang` (
  `field_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `lang_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `lang_explain` text COLLATE utf8_bin NOT NULL,
  `lang_default_value` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`field_id`,`lang_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_profile_lang`
--

INSERT INTO `phpbb_profile_lang` VALUES
(1, 1, 'LOCATION', '', ''),
(1, 2, 'LOCATION', '', ''),
(2, 1, 'WEBSITE', '', ''),
(2, 2, 'WEBSITE', '', ''),
(3, 1, 'INTERESTS', '', ''),
(3, 2, 'INTERESTS', '', ''),
(4, 1, 'OCCUPATION', '', ''),
(4, 2, 'OCCUPATION', '', ''),
(5, 1, 'AOL', '', ''),
(5, 2, 'AOL', '', ''),
(6, 1, 'ICQ', '', ''),
(6, 2, 'ICQ', '', ''),
(7, 1, 'WLM', '', ''),
(7, 2, 'WLM', '', ''),
(8, 1, 'YAHOO', '', ''),
(8, 2, 'YAHOO', '', ''),
(9, 1, 'FACEBOOK', '', ''),
(9, 2, 'FACEBOOK', '', ''),
(10, 1, 'TWITTER', '', ''),
(10, 2, 'TWITTER', '', ''),
(11, 1, 'SKYPE', '', ''),
(11, 2, 'SKYPE', '', ''),
(12, 1, 'YOUTUBE', '', ''),
(12, 2, 'YOUTUBE', '', ''),
(13, 1, 'GOOGLEPLUS', '', ''),
(13, 2, 'GOOGLEPLUS', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_ranks`
--

DROP TABLE IF EXISTS `phpbb_ranks`;
CREATE TABLE IF NOT EXISTS `phpbb_ranks` (
  `rank_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `rank_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `rank_min` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `rank_special` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `rank_image` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`rank_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports`
--

DROP TABLE IF EXISTS `phpbb_reports`;
CREATE TABLE IF NOT EXISTS `phpbb_reports` (
  `report_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `reason_id` smallint(4) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_closed` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `report_time` int(11) unsigned NOT NULL DEFAULT '0',
  `report_text` mediumtext COLLATE utf8_bin NOT NULL,
  `pm_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `reported_post_enable_bbcode` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_smilies` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_enable_magic_url` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `reported_post_text` mediumtext COLLATE utf8_bin NOT NULL,
  `reported_post_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reported_post_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`report_id`),
  KEY `post_id` (`post_id`),
  KEY `pm_id` (`pm_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_reports_reasons`
--

DROP TABLE IF EXISTS `phpbb_reports_reasons`;
CREATE TABLE IF NOT EXISTS `phpbb_reports_reasons` (
  `reason_id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `reason_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `reason_description` mediumtext COLLATE utf8_bin NOT NULL,
  `reason_order` smallint(4) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`reason_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=5 ;

--
-- Dumping data for table `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_results`
--

DROP TABLE IF EXISTS `phpbb_search_results`;
CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_results`
--

INSERT INTO `phpbb_search_results` VALUES
('6511b74ac894d053c71805c547ca608f', 1425330708, '', ' 2 ');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordlist`
--

DROP TABLE IF EXISTS `phpbb_search_wordlist`;
CREATE TABLE IF NOT EXISTS `phpbb_search_wordlist` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word_text` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `word_common` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `word_count` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`word_id`),
  UNIQUE KEY `wrd_txt` (`word_text`),
  KEY `wrd_cnt` (`word_count`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

--
-- Dumping data for table `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` VALUES
(1, 'this', 0, 1),
(2, 'example', 0, 1),
(3, 'post', 0, 1),
(4, 'your', 0, 1),
(5, 'phpbb3', 0, 2),
(6, 'installation', 0, 1),
(7, 'everything', 0, 1),
(8, 'seems', 0, 1),
(9, 'working', 0, 1),
(10, 'you', 0, 1),
(11, 'may', 0, 1),
(12, 'delete', 0, 1),
(13, 'like', 0, 1),
(14, 'and', 0, 1),
(15, 'continue', 0, 1),
(16, 'set', 0, 1),
(17, 'board', 0, 1),
(18, 'during', 0, 1),
(19, 'the', 0, 1),
(20, 'process', 0, 1),
(21, 'first', 0, 1),
(22, 'category', 0, 1),
(23, 'forum', 0, 1),
(24, 'are', 0, 1),
(25, 'assigned', 0, 1),
(26, 'appropriate', 0, 1),
(27, 'permissions', 0, 1),
(28, 'for', 0, 1),
(29, 'predefined', 0, 1),
(30, 'usergroups', 0, 1),
(31, 'administrators', 0, 1),
(32, 'bots', 0, 1),
(33, 'global', 0, 1),
(34, 'moderators', 0, 1),
(35, 'guests', 0, 1),
(36, 'registered', 0, 1),
(37, 'users', 0, 1),
(38, 'coppa', 0, 1),
(39, 'also', 0, 1),
(40, 'choose', 0, 1),
(41, 'not', 0, 1),
(42, 'forget', 0, 1),
(43, 'assign', 0, 1),
(44, 'all', 0, 1),
(45, 'these', 0, 1),
(46, 'new', 0, 1),
(47, 'categories', 0, 1),
(48, 'forums', 0, 1),
(49, 'create', 0, 1),
(50, 'recommended', 0, 1),
(51, 'rename', 0, 1),
(52, 'copy', 0, 1),
(53, 'from', 0, 1),
(54, 'while', 0, 1),
(55, 'creating', 0, 1),
(56, 'have', 0, 1),
(57, 'fun', 0, 1),
(58, 'welcome', 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_search_wordmatch`
--

DROP TABLE IF EXISTS `phpbb_search_wordmatch`;
CREATE TABLE IF NOT EXISTS `phpbb_search_wordmatch` (
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `word_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `title_match` tinyint(1) unsigned NOT NULL DEFAULT '0',
  UNIQUE KEY `un_mtch` (`word_id`,`post_id`,`title_match`),
  KEY `word_id` (`word_id`),
  KEY `post_id` (`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` VALUES
(1, 1, 0),
(1, 2, 0),
(1, 3, 0),
(1, 4, 0),
(1, 5, 0),
(1, 5, 1),
(1, 6, 0),
(1, 7, 0),
(1, 8, 0),
(1, 9, 0),
(1, 10, 0),
(1, 11, 0),
(1, 12, 0),
(1, 13, 0),
(1, 14, 0),
(1, 15, 0),
(1, 16, 0),
(1, 17, 0),
(1, 18, 0),
(1, 19, 0),
(1, 20, 0),
(1, 21, 0),
(1, 22, 0),
(1, 23, 0),
(1, 24, 0),
(1, 25, 0),
(1, 26, 0),
(1, 27, 0),
(1, 28, 0),
(1, 29, 0),
(1, 30, 0),
(1, 31, 0),
(1, 32, 0),
(1, 33, 0),
(1, 34, 0),
(1, 35, 0),
(1, 36, 0),
(1, 37, 0),
(1, 38, 0),
(1, 39, 0),
(1, 40, 0),
(1, 41, 0),
(1, 42, 0),
(1, 43, 0),
(1, 44, 0),
(1, 45, 0),
(1, 46, 0),
(1, 47, 0),
(1, 48, 0),
(1, 49, 0),
(1, 50, 0),
(1, 51, 0),
(1, 52, 0),
(1, 53, 0),
(1, 54, 0),
(1, 55, 0),
(1, 56, 0),
(1, 57, 0),
(1, 58, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions`
--

DROP TABLE IF EXISTS `phpbb_sessions`;
CREATE TABLE IF NOT EXISTS `phpbb_sessions` (
  `session_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `session_last_visit` int(11) unsigned NOT NULL DEFAULT '0',
  `session_start` int(11) unsigned NOT NULL DEFAULT '0',
  `session_time` int(11) unsigned NOT NULL DEFAULT '0',
  `session_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_browser` varchar(150) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_forwarded_for` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_page` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `session_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `session_autologin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_admin` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `session_forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`session_id`),
  KEY `session_time` (`session_time`),
  KEY `session_user_id` (`session_user_id`),
  KEY `session_fid` (`session_forum_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` VALUES
('009dfcfa713c6e8027d08b7b8fd0ccc2', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=c4502d5229d060a1393e46c723075c1c&amp%3Bu=2&mode=viewprofile', 1, 0, 0, 0),
('01703600b5addae84ccbfb01de4a1e50', 1, 1425197497, 1425197497, 1425197497, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?mode=team', 1, 0, 0, 0),
('0274e28a2df3474dc4293d93e2f7369d', 1, 1425453600, 1425453600, 1425453601, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'search.php', 1, 0, 0, 0),
('03b23db2016557d9eefc6a3159f4f131', 1, 1425170200, 1425170200, 1425170200, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewforum.php?f=1', 1, 0, 0, 1),
('03d1b3ebd47f836417307500d49a8f14', 1, 1425199876, 1425199876, 1425199876, '178.154.243.76', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?t=1', 1, 0, 0, 0),
('03f07490a1195d7cb70f0867a87ca7e2', 1, 1425154128, 1425154128, 1425154128, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'feed.php?mode=topics', 1, 0, 0, 0),
('0475cca08affa54a3a1bb35fe8feb13f', 1, 1425453603, 1425453603, 1425453603, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=0274e28a2df3474dc4293d93e2f7369d&mode=register', 1, 0, 0, 0),
('0658f2b609c604e5edd31ed00d8ef768', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=62456acf5d58cab8400d9dd58c8a49ad&mode=team', 1, 0, 0, 0),
('07ffa3b602f725e701482d01b2e9f169', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=62456acf5d58cab8400d9dd58c8a49ad&mode=register', 1, 0, 0, 0),
('086203f3b720abb09b6effa19e737d28', 1, 1425453598, 1425453598, 1425453601, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'faq.php', 1, 0, 0, 0),
('0927080233aa0b116b80d8415126ecee', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=c4502d5229d060a1393e46c723075c1c&mode=register', 1, 0, 0, 0),
('0afd6be280dcbb459875ad6d2e990141', 1, 1425233387, 1425233387, 1425233387, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewforum.php?f=2', 1, 0, 0, 2),
('0c537a99e6f9cefbe4e8bf57f2a5023a', 1, 1425031399, 1425031399, 1425031399, '212.42.102.61', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.111 Safari/537.36', '', 'index.php', 1, 0, 0, 0),
('0eac8002832626a91d91145232847c5c', 1, 1425453613, 1425453613, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'search.php', 1, 0, 0, 0),
('14bd2634dbbc04b489ff1a3682bbb52d', 1, 1425195015, 1425195015, 1425195015, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'search.php?search_id=unanswered', 1, 0, 0, 0),
('167d57af7af453ec2fd3e89b686db400', 1, 1425156447, 1425156447, 1425156447, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'faq.php', 1, 0, 0, 0),
('191cac5da891d12733fa05159a104686', 1, 1425161755, 1425161755, 1425161755, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'search.php', 1, 0, 0, 0),
('1b08982ac91bf1bb2ed4fe2f8d607a66', 1, 1425233583, 1425233583, 1425233583, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewtopic.php?p=1&t=1', 1, 0, 0, 0),
('1dd52fe1c304e4a6c3f4f6b957858461', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'viewforum.php?amp%3Bsid=c4502d5229d060a1393e46c723075c1c&f=2', 1, 0, 0, 2),
('1e38a4d2be8113946c93c868d530f697', 1, 1425390431, 1425390431, 1425390431, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?t=1', 1, 0, 0, 0),
('20d1bcc6649433caf99682076420c01d', 1, 1425316020, 1425316020, 1425316020, '66.249.78.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'search.php', 1, 0, 0, 0),
('25c7282a5d8318881d479a0358db4b73', 1, 1425238145, 1425238145, 1425238145, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'ucp.php?mode=terms', 1, 0, 0, 0),
('277dc1b2ce366fea2e2ba68d18c87672', 1, 1425356527, 1425356527, 1425356527, '66.249.67.99', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'ucp.php?mode=delete_cookies', 1, 0, 0, 0),
('2da1dbab2960402a543793c81402d73e', 1, 1425180090, 1425180090, 1425180090, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?mode=viewprofile&u=2', 1, 0, 0, 0),
('33000c7fb2e9dced82ba5b79f4702fad', 1, 1425453601, 1425453601, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'index.php', 1, 0, 0, 0),
('35f4e3875e77c2bf2df008bb2a401597', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=4668c3d1c646130316a3c634f55aa230&mode=register', 1, 0, 0, 0),
('3633545707140dbea80bdfc762b97812', 1, 1425178682, 1425178682, 1425178682, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'ucp.php?mode=register', 1, 0, 0, 0),
('3adc376bcd35e6b805d0bd1063fe6d95', 1, 1425453610, 1425453610, 1425453610, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=923bff52ae763b4fe25c63cf261bee6b&mode=register', 1, 0, 0, 0),
('3ba12a3f2498f12950da0c380b036b4d', 1, 1425194690, 1425194690, 1425194690, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?mode=contactadmin', 1, 0, 0, 0),
('3fdabb2702cc4c210ad2da3fc8be1de3', 1, 1425263862, 1425263862, 1425263862, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewtopic.php?p=1', 1, 0, 0, 0),
('4235137854ede7093d54d80be54529ba', 1, 1425220943, 1425220943, 1425220943, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?mode=viewprofile&u=2', 1, 0, 0, 0),
('45e6f2bed7b27ba4ae7fe49c41be674a', 1, 1425453611, 1425453611, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=6b41919aa26a82f7c68eefad3136a085&mode=delete_cookies', 1, 0, 0, 0),
('4668c3d1c646130316a3c634f55aa230', 1, 1425453607, 1425453607, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'index.php', 1, 0, 0, 0),
('47f02fb4044d0d24d9b5eb7c74c56ae4', 1, 1425205646, 1425205646, 1425205646, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'ucp.php?mode=delete_cookies', 1, 0, 0, 0),
('4af5fac160070b8a98b5ccafbdf221f0', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=c4502d5229d060a1393e46c723075c1c&mode=login', 1, 0, 0, 0),
('4cd5b41c20b6bc75c17981492b219a41', 1, 1425402666, 1425402666, 1425402666, '66.249.64.147', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'viewtopic.php?p=1&t=1', 1, 0, 0, 0),
('4d865c7eefdc1e6ee867c6e220ccf091', 1, 1425453607, 1425453607, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=33000c7fb2e9dced82ba5b79f4702fad&mode=team', 1, 0, 0, 0),
('4d9d8c569a30c23ccc7fb56fedad450c', 1, 1425390434, 1425390434, 1425390434, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'feed.php?f=2&t=1', 1, 0, 0, 2),
('51ec26efabf671a73225e15a95e9a358', 1, 1425257352, 1425257352, 1425257352, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?mode=viewprofile&u=58', 1, 0, 0, 0),
('5224474414a715f537d1ab52a8a53638', 1, 1425178042, 1425178042, 1425178042, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewforum.php?f=1', 1, 0, 0, 1),
('5262e18e037598b8b97aa1484c8a37a3', 1, 1425267329, 1425267329, 1425267329, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?p=1&t=1', 1, 0, 0, 0),
('57399a8fbfa00e9ae700f12cef92b246', 1, 1425318636, 1425318636, 1425318636, '66.249.78.109', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'search.php?search_id=unanswered', 1, 0, 0, 0),
('5764430e046aa81d1075610165d14efb', 1, 1425453610, 1425453610, 1425453610, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=923bff52ae763b4fe25c63cf261bee6b&mode=login', 1, 0, 0, 0),
('597ceaf885804232ba316f0cbb18cc0c', 1, 1425202049, 1425202049, 1425202049, '158.181.211.254', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'index.php', 1, 0, 0, 0),
('5cbc3a7b9c8fd5cd4665e4fc0fc8753d', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=c4502d5229d060a1393e46c723075c1c&mode=team', 1, 0, 0, 0),
('5ee2d58daf5326ca4291317f7b056b5c', 1, 1425453611, 1425453611, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=9bbcc1697ad3acae578c0cb448235440&mode=register', 1, 0, 0, 0),
('60c3fec25835e0cb4901aecbde1efb6b', 1, 1425453604, 1425453604, 1425453604, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=9bbcc1697ad3acae578c0cb448235440&mode=login', 1, 0, 0, 0),
('60fe7f0d8068efaf67a3a97bd40f9d15', 1, 1425285355, 1425285355, 1425285355, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'search.php', 1, 0, 0, 0),
('6128235e4a4ff86296eb98dd5c04c958', 1, 1425453243, 1425453243, 1425453243, '66.249.64.143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'ucp.php?mode=privacy', 1, 0, 0, 0),
('62456acf5d58cab8400d9dd58c8a49ad', 1, 1425453610, 1425453610, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'search.php', 1, 0, 0, 0),
('625149385e3deed3d85d6c1c0277a7a5', 1, 1425260664, 1425260664, 1425260664, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?f=2&p=1&t=1', 1, 0, 0, 2),
('6425049d8976ea8748b7555ed847efa7', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=4668c3d1c646130316a3c634f55aa230&mode=login', 1, 0, 0, 0),
('69d70028273c815ba36abfbce8393378', 1, 1425453605, 1425453605, 1425453605, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'feed.php?f=2', 1, 0, 0, 2),
('6b41919aa26a82f7c68eefad3136a085', 1, 1425453601, 1425453601, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'index.php', 1, 0, 0, 0),
('6bc50be64a4a2b9116613d4d0b6a29a7', 1, 1425316505, 1425316505, 1425316505, '178.154.243.76', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'feed.php?f=2&t=1', 1, 0, 0, 2),
('72d423187925dacdbe60f9f88cddc90e', 1, 1425179206, 1425179206, 1425179206, '178.154.243.76', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewforum.php?f=2', 1, 0, 0, 2),
('73a1753b4a6411628803b3dbba253115', 1, 1425192558, 1425192558, 1425192558, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?g=4&mode=group', 1, 0, 0, 0),
('78d3953142f03abf397badc3e54ec48a', 1, 1425211444, 1425211444, 1425211444, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?g=4&mode=group', 1, 0, 0, 0),
('7a9ac93f6619a7693f9a78c44d5a458f', 1, 1425453605, 1425453605, 1425453605, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=0274e28a2df3474dc4293d93e2f7369d&mode=team', 1, 0, 0, 0),
('7d174675a339af04739f8729fb3e3e97', 1, 1425358682, 1425358682, 1425358682, '66.249.78.102', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'viewforum.php?f=2', 1, 0, 0, 2),
('7e9433ae7172b0e72a15f0ea05e65c9e', 1, 1425332415, 1425332415, 1425332415, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?f=2&t=1&view=print', 1, 0, 0, 2),
('7f0cf7838e874eb861a95bfe54906abf', 1, 1425207654, 1425207654, 1425207654, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?mode=contactadmin', 1, 0, 0, 0),
('827028d34aee31999ffcc8e6b8f27743', 1, 1425434691, 1425434691, 1425434691, '69.58.178.58', 'Mozilla/5.0 (X11; Ubuntu; Linux i686; rv:14.0; ips-agent) Gecko/20100101 Firefox/14.0.1', '', 'index.php', 1, 0, 0, 0),
('82f723d12d25eea0d6bcf79be5939fdc', 1, 1425453607, 1425453607, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=923bff52ae763b4fe25c63cf261bee6b&mode=team', 1, 0, 0, 0),
('84128a6e4d0bab4b21c23b4b3f8b4370', 1, 1425453607, 1425453607, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=6b41919aa26a82f7c68eefad3136a085&mode=team', 1, 0, 0, 0),
('89fb1943a7b39ffa315afe48526808ea', 1, 1425195771, 1425195771, 1425195771, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'search.php', 1, 0, 0, 0),
('8ac9ab765fd6a3a2399ea1f32b364eed', 1, 1425184539, 1425184539, 1425184539, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'search.php?search_id=active_topics', 1, 0, 0, 0),
('8db10d39aa619935b3ebeab2896f713c', 1, 1425315398, 1425315398, 1425315398, '66.249.78.145', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'ucp.php?mode=register', 1, 0, 0, 0),
('8e40ad6b4f384e4a6964ebfb126f219c', 1, 1425194752, 1425194752, 1425194752, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?mode=contactadmin', 1, 0, 0, 0),
('9171842af2cf3107096a3be3c5213a4e', 1, 1425193928, 1425193928, 1425193928, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?mode=viewprofile&u=58', 1, 0, 0, 0),
('91c8e6a62b3e12faf74ec6450bbcad1b', 1, 1425208103, 1425208103, 1425208103, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'search.php?search_id=active_topics', 1, 0, 0, 0),
('923bff52ae763b4fe25c63cf261bee6b', 1, 1425453601, 1425453601, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'index.php', 1, 0, 0, 0),
('92ec7466495878bc946751906daf7d75', 1, 1425390426, 1425390426, 1425390426, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?p=1', 1, 0, 0, 0),
('94d3ce585ac38b3e2a3aaab394804014', 1, 1425453610, 1425453610, 1425453610, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=923bff52ae763b4fe25c63cf261bee6b&mode=contactadmin', 1, 0, 0, 0),
('952ec20fa9ac9ddf1fc1d0dabf1482d1', 1, 1425453609, 1425453609, 1425453609, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=6b41919aa26a82f7c68eefad3136a085&mode=login', 1, 0, 0, 0),
('961bdfee0338c19cd6ad95808c10e046', 1, 1425285430, 1425285430, 1425285430, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'feed.php?f=2', 1, 0, 0, 2),
('962acb2992dd9beb9554ad8a2a43712a', 1, 1425285374, 1425285374, 1425285374, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'feed.php', 1, 0, 0, 0),
('9aad922e4f9050c137e2c35aec177d27', 1, 1425261592, 1425261592, 1425261592, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'feed.php?f=2&t=1', 1, 0, 0, 2),
('9ac4f3b901acd198ff8544c60c78495d', 1, 1425324016, 1425324016, 1425324016, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?p=1', 1, 0, 0, 0),
('9b2f96354caa8464aab07f0d5886b3bc', 1, 1425243287, 1425243287, 1425243287, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewtopic.php?f=2&p=1&t=1', 1, 0, 0, 2),
('9bbcc1697ad3acae578c0cb448235440', 1, 1425453600, 1425453600, 1425453601, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'search.php', 1, 0, 0, 0),
('9d67b27146adc94e0af8797cddc8009e', 1, 1425216305, 1425216305, 1425216305, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?g=5&mode=group', 1, 0, 0, 0),
('a2a9d55fde0d06e13229d3ba52c466af', 1, 1425201561, 1425201561, 1425201561, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?mode=team', 1, 0, 0, 0),
('a2edaccb3d8fd4f3e30f8d35f26f8dfc', 1, 1425453610, 1425453610, 1425453610, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=6b41919aa26a82f7c68eefad3136a085&mode=register', 1, 0, 0, 0),
('a585f22fcd25d39cc4e24a6dddb1583e', 1, 1425267268, 1425267268, 1425267268, '5.255.253.44', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?p=1&t=1', 1, 0, 0, 0),
('a5d5ea7dee36fbecf23bd23937323b93', 1, 1425453600, 1425453600, 1425453600, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'viewtopic.php?amp%3Bp=1&amp%3Bsid=086203f3b720abb09b6effa19e737d28&f=2', 1, 0, 0, 2),
('a67f751cf4b7e0740ea4e56798d47d01', 1, 1425199873, 1425199873, 1425199873, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?f=2&p=1', 1, 0, 0, 2),
('aaf682dfd4f782fe982fdc57b59c7c24', 1, 1425453605, 1425453605, 1425453605, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=0274e28a2df3474dc4293d93e2f7369d&mode=login', 1, 0, 0, 0),
('acb0a6e1aa49c9c10041756d6bc3b88e', 1, 1425266636, 1425266636, 1425266636, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewtopic.php?f=2&t=1&view=print', 1, 0, 0, 2),
('ad28ff24a94837a83cf829c7e702afeb', 1, 1425316730, 1425316730, 1425316730, '66.249.78.102', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'faq.php', 1, 0, 0, 0),
('ad4ed886fe0ee9d145098c5d044780d2', 1, 1425320539, 1425320539, 1425320539, '66.249.78.102', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'viewtopic.php?f=2&t=1', 1, 0, 0, 2),
('adade1d7427fef2eb6653f8f488df181', 1, 1425240927, 1425240927, 1425240927, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'ucp.php?mode=privacy', 1, 0, 0, 0),
('ae95190d560e8d68e893c37f6d9a60f3', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=d4ff405280f56f874abe8ff3980c073c&mode=contactadmin', 1, 0, 0, 0),
('b71019962db56ae736837d3b48ca4947', 1, 1425266415, 1425266415, 1425266415, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'search.php?author_id=2&sr=posts', 1, 0, 0, 0),
('b74dcda4f199e818fb6a9cb66792ceca', 1, 1425267332, 1425267332, 1425267332, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?t=1', 1, 0, 0, 0),
('b75505f2f45fd3f31a22ef4d0fad8dbc', 1, 1425092486, 1425092486, 1425092486, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'index.php', 1, 0, 0, 0),
('b7a311fa393399519a364c289efce7f4', 1, 1425453611, 1425453611, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=b800ded74e7b51b571e18ecf9ada0868&mode=team', 1, 0, 0, 0),
('b800ded74e7b51b571e18ecf9ada0868', 1, 1425453607, 1425453607, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'index.php', 1, 0, 0, 0),
('b8202050118c76e59a0a5526e87102a6', 1, 1425262498, 1425262498, 1425262498, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'ucp.php?mode=terms', 1, 0, 0, 0),
('b8afbcd6e8e480a82a32ac70d578d4af', 1, 1425237689, 1425237689, 1425237689, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?mode=viewprofile&u=2', 1, 0, 0, 0),
('bb25c342d089fab0373df094836fc210', 1, 1425232892, 1425232892, 1425232892, '66.249.67.91', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'feed.php?f=2', 1, 0, 0, 2),
('bdec536482d6c6e56a383ee0d6521f4d', 1, 1425258912, 1425258912, 1425258912, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'viewtopic.php?f=2&t=1', 1, 0, 0, 2),
('c0e4475a8eb144fbd7af8c3fa6e5c932', 1, 1425269235, 1425269235, 1425269235, '5.255.253.44', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'ucp.php?mode=privacy', 1, 0, 0, 0),
('c3b12f76dfe17a15b84affa2f61f9ed6', 1, 1425453601, 1425453601, 1425453601, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=086203f3b720abb09b6effa19e737d28&mode=delete_cookies', 1, 0, 0, 0),
('c4502d5229d060a1393e46c723075c1c', 1, 1425453611, 1425453611, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'index.php', 1, 0, 0, 0),
('cf167b85aae737dcb21555bc6baeba2b', 1, 1425198678, 1425198678, 1425198678, '5.255.253.53', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'ucp.php?mode=register', 1, 0, 0, 0),
('d12f0cdc79448214f77358c20ebb5e22', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=b800ded74e7b51b571e18ecf9ada0868&mode=login', 1, 0, 0, 0),
('d4ff405280f56f874abe8ff3980c073c', 1, 1425453601, 1425453601, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'faq.php', 1, 0, 0, 0),
('d5407c7045a3190a9235f893d1dd672b', 1, 1425453760, 1425453760, 1425453760, '66.249.64.143', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'viewtopic.php?t=1', 1, 0, 0, 0),
('d684f596a2115b2dcd38a5c516ed8240', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=62456acf5d58cab8400d9dd58c8a49ad&mode=login', 1, 0, 0, 0),
('d77a7ec5c8774f81c37f6d5122bdff4d', 1, 1425031492, 1425031492, 1425031493, '158.181.211.237', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'ucp.php?confirm_id=6dba5115bf11d86bf5210430835f2c8f&mode=confirm&type=1', 1, 0, 0, 0),
('d8950261e89702d141917a8cb27099b9', 1, 1425271311, 1425271311, 1425271311, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'feed.php?f=2', 1, 0, 0, 2),
('dba6c64784366fc042ae500577c03b6e', 1, 1425342894, 1425342894, 1425342894, '66.249.67.107', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'memberlist.php?g=5&mode=group', 1, 0, 0, 0),
('de10b79bfa710e51e1bed0263e0c53b3', 1, 1425324722, 1425324722, 1425324722, '66.249.78.102', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'search.php?search_id=active_topics', 1, 0, 0, 0),
('dfa26647526063adc4e845b67f069905', 1, 1425304677, 1425304677, 1425304677, '66.249.78.109', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewtopic.php?f=2&t=1', 1, 0, 0, 2),
('e2c766989121ec44668f2a3aab7b7ab0', 1, 1425356429, 1425356429, 1425356429, '66.249.78.95', 'Mozilla/5.0 (iPhone; CPU iPhone OS 6_0 like Mac OS X) AppleWebKit/536.26 (KHTML, like Gecko) Version/6.0 Mobile/10A5376e Safari/8536.25 (compatible;', '', 'ucp.php?mode=terms', 1, 0, 0, 0),
('e81fc81f004e768bf4a9cb61d9710f60', 1, 1425203503, 1425203503, 1425203503, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'ucp.php?mode=sendpassword', 1, 0, 0, 0),
('e97832304ed07c03b55bec5edddd170d', 1, 1425453613, 1425453613, 1425453613, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=d4ff405280f56f874abe8ff3980c073c&mode=delete_cookies', 1, 0, 0, 0),
('ebd47959910ca372150d486e5e81bf2b', 1, 1425183957, 1425183957, 1425183957, '178.154.243.76', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'feed.php', 1, 0, 0, 0),
('ec51a27466ebb3ad89f9f07f58f784a1', 1, 1425453607, 1425453607, 1425453607, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=d4ff405280f56f874abe8ff3980c073c&mode=register', 1, 0, 0, 0),
('ee09d8a799e0a217f5179741a146955e', 1, 1425453614, 1425453614, 1425453614, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'search.php?amp%3Bsid=d4ff405280f56f874abe8ff3980c073c&search_id=active_topics', 1, 0, 0, 0),
('ee587eb65dfd28462e8ddd78bb8ca247', 1, 1425453610, 1425453610, 1425453610, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=33000c7fb2e9dced82ba5b79f4702fad&mode=register', 1, 0, 0, 0),
('ef21692db5cdb0309844aebb38b2a140', 1, 1425193299, 1425193299, 1425193299, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'ucp.php?mode=delete_cookies', 1, 0, 0, 0),
('efa496edcf880949fbb078e78957b6a7', 1, 1425242151, 1425242151, 1425242151, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'viewtopic.php?f=2&t=1', 1, 0, 0, 2),
('f5eeaf9971611b25130c34e69c0ca3db', 1, 1425191872, 1425191872, 1425191872, '5.255.253.53', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'memberlist.php?g=5&mode=group', 1, 0, 0, 0),
('f6fe494901152298e234eb887ddee8d0', 1, 1425182881, 1425182881, 1425182881, '5.255.253.53', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'feed.php?mode=topics', 1, 0, 0, 0),
('f72587ad491161ff118f684c5bcc31de', 1, 1425198052, 1425198052, 1425198052, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'ucp.php?mode=sendpassword', 1, 0, 0, 0),
('f7e5805a368207c690f8ca56aa271d01', 1, 1425152240, 1425152240, 1425152240, '66.249.67.99', 'Mozilla/5.0 (compatible; Googlebot/2.1; +http://www.google.com/bot.html)', '', 'feed.php', 1, 0, 0, 0),
('f84c3758acdd530826ab71da6868a8dc', 1, 1425453611, 1425453611, 1425453611, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=4668c3d1c646130316a3c634f55aa230&mode=team', 1, 0, 0, 0),
('fa59299f1fc90602666a74e2cdf32b71', 1, 1425330707, 1425330707, 1425330707, '178.154.243.76', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'search.php?author_id=2&sr=posts', 1, 0, 0, 0),
('fb584ffb6fb52a7bbef1b516f054f880', 1, 1425191834, 1425191834, 1425191834, '5.255.253.34', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'faq.php', 1, 0, 0, 0),
('fb93c4c6191312e78c503eae79ac79a7', 1, 1425181840, 1425181840, 1425181840, '5.255.253.49', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'index.php', 1, 0, 0, 0),
('fdd0ffdc106d2aa363d4c4c16de94490', 1, 1425453609, 1425453609, 1425453609, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'ucp.php?amp%3Bsid=33000c7fb2e9dced82ba5b79f4702fad&mode=login', 1, 0, 0, 0),
('fecc20ec01a3e14ac4a22baa29150e4a', 1, 1425199500, 1425199500, 1425199500, '5.255.253.44', 'Mozilla/5.0 (compatible; YandexBot/3.0; +http://yandex.com/bots)', '', 'ucp.php?mode=login', 1, 0, 0, 0),
('ff6f55c38368a2cf6e3ea0ba751a18f8', 1, 1425453605, 1425453605, 1425453605, '64.79.85.205', 'Mozilla/5.0 (compatible; SMTBot/1.0; +http://www.similartech.com/smtbot)', '', 'memberlist.php?amp%3Bsid=9bbcc1697ad3acae578c0cb448235440&mode=team', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sessions_keys`
--

DROP TABLE IF EXISTS `phpbb_sessions_keys`;
CREATE TABLE IF NOT EXISTS `phpbb_sessions_keys` (
  `key_id` char(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `last_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `last_login` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`key_id`,`user_id`),
  KEY `last_login` (`last_login`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_sessions_keys`
--

INSERT INTO `phpbb_sessions_keys` VALUES
('9b4511b4f44009de1683c219d6dd4576', 2, '127.0.0.1', 1423239232),
('9eec2f6982c043b138f9c13014a4c44e', 2, '127.0.0.1', 1418639316),
('a0c1c93a9dbec896435120eaacfdfd74', 2, '127.0.0.1', 1418455164),
('a75a39f74bd0a571de2f39db551ac5e2', 2, '127.0.0.1', 1418638786),
('bef4610612a5569142d9369ade0a4220', 2, '127.0.0.1', 1418455008),
('d151ed9c3132b47a2c6471a88fa8c38b', 2, '127.0.0.1', 1418638836),
('dab92e8b6e65be163eda4c70675facaf', 2, '127.0.0.1', 1423239267),
('e17f4ac4d9f06ecb86e7ac4401ba23c0', 55, '127.0.0.1', 1423238999),
('f09fba754a08e109592c8efb23f3a0e8', 2, '127.0.0.1', 1418455070);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_sitelist`
--

DROP TABLE IF EXISTS `phpbb_sitelist`;
CREATE TABLE IF NOT EXISTS `phpbb_sitelist` (
  `site_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `site_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `site_hostname` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `ip_exclude` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`site_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_smilies`
--

DROP TABLE IF EXISTS `phpbb_smilies`;
CREATE TABLE IF NOT EXISTS `phpbb_smilies` (
  `smiley_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `code` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `emotion` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_url` varchar(50) COLLATE utf8_bin NOT NULL DEFAULT '',
  `smiley_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `smiley_order` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `display_on_posting` tinyint(1) unsigned NOT NULL DEFAULT '1',
  PRIMARY KEY (`smiley_id`),
  KEY `display_on_post` (`display_on_posting`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=43 ;

--
-- Dumping data for table `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` VALUES
(1, ':D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 1, 1),
(2, ':-D', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 2, 1),
(3, ':grin:', 'Very Happy', 'icon_e_biggrin.gif', 15, 17, 3, 1),
(4, ':)', 'Smile', 'icon_e_smile.gif', 15, 17, 4, 1),
(5, ':-)', 'Smile', 'icon_e_smile.gif', 15, 17, 5, 1),
(6, ':smile:', 'Smile', 'icon_e_smile.gif', 15, 17, 6, 1),
(7, ';)', 'Wink', 'icon_e_wink.gif', 15, 17, 7, 1),
(8, ';-)', 'Wink', 'icon_e_wink.gif', 15, 17, 8, 1),
(9, ':wink:', 'Wink', 'icon_e_wink.gif', 15, 17, 9, 1),
(10, ':(', 'Sad', 'icon_e_sad.gif', 15, 17, 10, 1),
(11, ':-(', 'Sad', 'icon_e_sad.gif', 15, 17, 11, 1),
(12, ':sad:', 'Sad', 'icon_e_sad.gif', 15, 17, 12, 1),
(13, ':o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 13, 1),
(14, ':-o', 'Surprised', 'icon_e_surprised.gif', 15, 17, 14, 1),
(15, ':eek:', 'Surprised', 'icon_e_surprised.gif', 15, 17, 15, 1),
(16, ':shock:', 'Shocked', 'icon_eek.gif', 15, 17, 16, 1),
(17, ':?', 'Confused', 'icon_e_confused.gif', 15, 17, 17, 1),
(18, ':-?', 'Confused', 'icon_e_confused.gif', 15, 17, 18, 1),
(19, ':???:', 'Confused', 'icon_e_confused.gif', 15, 17, 19, 1),
(20, '8-)', 'Cool', 'icon_cool.gif', 15, 17, 20, 1),
(21, ':cool:', 'Cool', 'icon_cool.gif', 15, 17, 21, 1),
(22, ':lol:', 'Laughing', 'icon_lol.gif', 15, 17, 22, 1),
(23, ':x', 'Mad', 'icon_mad.gif', 15, 17, 23, 1),
(24, ':-x', 'Mad', 'icon_mad.gif', 15, 17, 24, 1),
(25, ':mad:', 'Mad', 'icon_mad.gif', 15, 17, 25, 1),
(26, ':P', 'Razz', 'icon_razz.gif', 15, 17, 26, 1),
(27, ':-P', 'Razz', 'icon_razz.gif', 15, 17, 27, 1),
(28, ':razz:', 'Razz', 'icon_razz.gif', 15, 17, 28, 1),
(29, ':oops:', 'Embarrassed', 'icon_redface.gif', 15, 17, 29, 1),
(30, ':cry:', 'Crying or Very Sad', 'icon_cry.gif', 15, 17, 30, 1),
(31, ':evil:', 'Evil or Very Mad', 'icon_evil.gif', 15, 17, 31, 1),
(32, ':twisted:', 'Twisted Evil', 'icon_twisted.gif', 15, 17, 32, 1),
(33, ':roll:', 'Rolling Eyes', 'icon_rolleyes.gif', 15, 17, 33, 1),
(34, ':!:', 'Exclamation', 'icon_exclaim.gif', 15, 17, 34, 1),
(35, ':?:', 'Question', 'icon_question.gif', 15, 17, 35, 1),
(36, ':idea:', 'Idea', 'icon_idea.gif', 15, 17, 36, 1),
(37, ':arrow:', 'Arrow', 'icon_arrow.gif', 15, 17, 37, 1),
(38, ':|', 'Neutral', 'icon_neutral.gif', 15, 17, 38, 1),
(39, ':-|', 'Neutral', 'icon_neutral.gif', 15, 17, 39, 1),
(40, ':mrgreen:', 'Mr. Green', 'icon_mrgreen.gif', 15, 17, 40, 1),
(41, ':geek:', 'Geek', 'icon_e_geek.gif', 17, 17, 41, 1),
(42, ':ugeek:', 'Uber Geek', 'icon_e_ugeek.gif', 17, 18, 42, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_styles`
--

DROP TABLE IF EXISTS `phpbb_styles`;
CREATE TABLE IF NOT EXISTS `phpbb_styles` (
  `style_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `style_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_copyright` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `style_active` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `style_path` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT 'kNg=',
  `style_parent_id` int(4) unsigned NOT NULL DEFAULT '0',
  `style_parent_tree` text COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`style_id`),
  UNIQUE KEY `style_name` (`style_name`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_styles`
--

INSERT INTO `phpbb_styles` VALUES
(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', 'kNg=', 0, '');

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_teampage`
--

DROP TABLE IF EXISTS `phpbb_teampage`;
CREATE TABLE IF NOT EXISTS `phpbb_teampage` (
  `teampage_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `teampage_position` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `teampage_parent` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`teampage_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=3 ;

--
-- Dumping data for table `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics`
--

DROP TABLE IF EXISTS `phpbb_topics`;
CREATE TABLE IF NOT EXISTS `phpbb_topics` (
  `topic_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `icon_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_attachment` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_reported` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_title` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_poster` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_time_limit` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_views` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_status` tinyint(3) NOT NULL DEFAULT '0',
  `topic_type` tinyint(3) NOT NULL DEFAULT '0',
  `topic_first_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_first_poster_name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL DEFAULT '',
  `topic_first_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_last_poster_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_poster_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_subject` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_last_post_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_last_view_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_moved_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_bumped` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_bumper` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `poll_title` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `poll_start` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_length` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_max_options` tinyint(4) NOT NULL DEFAULT '1',
  `poll_last_vote` int(11) unsigned NOT NULL DEFAULT '0',
  `poll_vote_change` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `topic_visibility` tinyint(3) NOT NULL DEFAULT '0',
  `topic_delete_time` int(11) unsigned NOT NULL DEFAULT '0',
  `topic_delete_reason` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `topic_delete_user` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_approved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_unapproved` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posts_softdeleted` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `forum_id_type` (`forum_id`,`topic_type`),
  KEY `last_post_time` (`topic_last_post_time`),
  KEY `fid_time_moved` (`forum_id`,`topic_last_post_time`,`topic_moved_id`),
  KEY `topic_visibility` (`topic_visibility`),
  KEY `forum_vis_last` (`forum_id`,`topic_visibility`,`topic_last_post_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=2 ;

--
-- Dumping data for table `phpbb_topics`
--

INSERT INTO `phpbb_topics` VALUES
(1, 2, 0, 0, 0, 'Welcome to phpBB3', 2, 1418454675, 0, 24, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Welcome to phpBB3', 1418454675, 1425453760, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_posted`
--

DROP TABLE IF EXISTS `phpbb_topics_posted`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_track`
--

DROP TABLE IF EXISTS `phpbb_topics_track`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_track` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `forum_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `mark_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`),
  KEY `forum_id` (`forum_id`),
  KEY `topic_id` (`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_topics_watch`
--

DROP TABLE IF EXISTS `phpbb_topics_watch`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_watch` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `notify_status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  KEY `topic_id` (`topic_id`),
  KEY `user_id` (`user_id`),
  KEY `notify_stat` (`notify_status`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_users`
--

DROP TABLE IF EXISTS `phpbb_users`;
CREATE TABLE IF NOT EXISTS `phpbb_users` (
  `user_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_type` tinyint(2) NOT NULL DEFAULT '0',
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '3',
  `user_permissions` mediumtext COLLATE utf8_bin NOT NULL,
  `user_perm_from` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_ip` varchar(40) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_regdate` int(11) unsigned NOT NULL DEFAULT '0',
  `username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `username_clean` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_password` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_passchg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_email` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_email_hash` bigint(20) NOT NULL DEFAULT '0',
  `user_birthday` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_lastvisit` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastmark` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpost_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_lastpage` varchar(200) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_confirm_key` varchar(10) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_last_search` int(11) unsigned NOT NULL DEFAULT '0',
  `user_warnings` tinyint(4) NOT NULL DEFAULT '0',
  `user_last_warning` int(11) unsigned NOT NULL DEFAULT '0',
  `user_login_attempts` tinyint(4) NOT NULL DEFAULT '0',
  `user_inactive_reason` tinyint(2) NOT NULL DEFAULT '0',
  `user_inactive_time` int(11) unsigned NOT NULL DEFAULT '0',
  `user_posts` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_lang` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_timezone` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_dateformat` varchar(30) COLLATE utf8_bin NOT NULL DEFAULT 'd M Y H:i',
  `user_style` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_rank` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_colour` varchar(6) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_unread_privmsg` int(4) NOT NULL DEFAULT '0',
  `user_last_privmsg` int(11) unsigned NOT NULL DEFAULT '0',
  `user_message_rules` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_full_folder` int(11) NOT NULL DEFAULT '-3',
  `user_emailtime` int(11) unsigned NOT NULL DEFAULT '0',
  `user_topic_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_topic_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_topic_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'd',
  `user_post_show_days` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_post_sortby_type` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 't',
  `user_post_sortby_dir` varchar(1) COLLATE utf8_bin NOT NULL DEFAULT 'a',
  `user_notify` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_notify_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_notify_type` tinyint(4) NOT NULL DEFAULT '0',
  `user_allow_pm` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewonline` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_viewemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_allow_massemail` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_options` int(11) unsigned NOT NULL DEFAULT '230271',
  `user_avatar` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_avatar_width` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_avatar_height` smallint(4) unsigned NOT NULL DEFAULT '0',
  `user_sig` mediumtext COLLATE utf8_bin NOT NULL,
  `user_sig_bbcode_uid` varchar(8) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_sig_bbcode_bitfield` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_jabber` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_actkey` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_newpasswd` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_form_salt` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user_new` tinyint(1) unsigned NOT NULL DEFAULT '1',
  `user_reminded` tinyint(4) NOT NULL DEFAULT '0',
  `user_reminded_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`),
  UNIQUE KEY `username_clean` (`username_clean`),
  KEY `user_birthday` (`user_birthday`),
  KEY `user_email_hash` (`user_email_hash`),
  KEY `user_type` (`user_type`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=59 ;

--
-- Dumping data for table `phpbb_users`
--

INSERT INTO `phpbb_users` VALUES
(1, 2, 1, '00000000000w27wrgg\ni1cjyo000000\ni1cjyo000000', 0, '', 1418454675, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '37XWY03WXB', 1425330707, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '93d73d20a8c128ff', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0zc\ni1cjyo000000\nzik0zjzi8sg0', 0, '127.0.0.1', 1418454675, 'admin', 'admin', '$2y$10$obXAkj6EoWu7ggCb4ssZZeCxBYjMDU2lDJ2ZlmLRvRVuOWJMV.YXS', 0, 'jt4twggad34erzdsf@hotmail.com', 13310010827, '', 1425016059, 0, 0, 'ucp.php?login=external&mode=login&password=qaz2wsx&redirect=%2F&username=admin', '', 0, 0, 0, 0, 0, 0, 1, 'en', '', 'D M d, Y g:i a', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cd89c18d17f927eb', 1, 0, 0),
(3, 2, 6, '', 0, '', 1418454699, 'AdsBot [Google]', 'adsbot [google]', '', 1418454699, '', 0, '', 0, 1418454699, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '21116ee5b90d3ba2', 0, 0, 0),
(4, 2, 6, '', 0, '', 1418454700, 'Alexa [Bot]', 'alexa [bot]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'c08cd3bff7159522', 0, 0, 0),
(5, 2, 6, '', 0, '', 1418454700, 'Alta Vista [Bot]', 'alta vista [bot]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b2dfbcf74171735d', 0, 0, 0),
(6, 2, 6, '', 0, '', 1418454700, 'Ask Jeeves [Bot]', 'ask jeeves [bot]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '338ec33511d9e2fb', 0, 0, 0),
(7, 2, 6, '', 0, '', 1418454700, 'Baidu [Spider]', 'baidu [spider]', '', 1418454700, '', 0, '', 0, 1418454700, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4afa1a85cbc23284', 0, 0, 0),
(8, 2, 6, '', 0, '', 1418454701, 'Bing [Bot]', 'bing [bot]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3072fd9dbe0b87cc', 0, 0, 0),
(9, 2, 6, '', 0, '', 1418454701, 'Exabot [Bot]', 'exabot [bot]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '92c92df8ebbd2e4e', 0, 0, 0),
(10, 2, 6, '', 0, '', 1418454701, 'FAST Enterprise [Crawler]', 'fast enterprise [crawler]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '156c583a8edc770d', 0, 0, 0),
(11, 2, 6, '', 0, '', 1418454701, 'FAST WebCrawler [Crawler]', 'fast webcrawler [crawler]', '', 1418454701, '', 0, '', 0, 1418454701, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '54ac53d931955ade', 0, 0, 0),
(12, 2, 6, '', 0, '', 1418454702, 'Francis [Bot]', 'francis [bot]', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '20dfd5c86c384c81', 0, 0, 0),
(13, 2, 6, '', 0, '', 1418454702, 'Gigabot [Bot]', 'gigabot [bot]', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '322c083ea1e2cda7', 0, 0, 0),
(14, 2, 6, '', 0, '', 1418454702, 'Google Adsense [Bot]', 'google adsense [bot]', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8f80ccd2befb8ab4', 0, 0, 0),
(15, 2, 6, '', 0, '', 1418454702, 'Google Desktop', 'google desktop', '', 1418454702, '', 0, '', 0, 1418454702, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '0e9de470090e94f8', 0, 0, 0),
(16, 2, 6, '', 0, '', 1418454703, 'Google Feedfetcher', 'google feedfetcher', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e3ee0fe1d3ab1249', 0, 0, 0),
(17, 2, 6, '', 0, '', 1418454703, 'Google [Bot]', 'google [bot]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'a97bd6dda3bcb9a7', 0, 0, 0),
(18, 2, 6, '', 0, '', 1418454703, 'Heise IT-Markt [Crawler]', 'heise it-markt [crawler]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8cea4bbaacb4556d', 0, 0, 0),
(19, 2, 6, '', 0, '', 1418454703, 'Heritrix [Crawler]', 'heritrix [crawler]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9cd2e8717af0a1c5', 0, 0, 0),
(20, 2, 6, '', 0, '', 1418454703, 'IBM Research [Bot]', 'ibm research [bot]', '', 1418454703, '', 0, '', 0, 1418454703, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ad4893e6b9aedcd', 0, 0, 0),
(21, 2, 6, '', 0, '', 1418454704, 'ICCrawler - ICjobs', 'iccrawler - icjobs', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '10bfd5122dd00efa', 0, 0, 0),
(22, 2, 6, '', 0, '', 1418454704, 'ichiro [Crawler]', 'ichiro [crawler]', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'fbdeb018dfa75e35', 0, 0, 0),
(23, 2, 6, '', 0, '', 1418454704, 'Majestic-12 [Bot]', 'majestic-12 [bot]', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '974acbf008c18c31', 0, 0, 0),
(24, 2, 6, '', 0, '', 1418454704, 'Metager [Bot]', 'metager [bot]', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd8646b9a13d23282', 0, 0, 0),
(25, 2, 6, '', 0, '', 1418454704, 'MSN NewsBlogs', 'msn newsblogs', '', 1418454704, '', 0, '', 0, 1418454704, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'bfc2870bc561dab1', 0, 0, 0),
(26, 2, 6, '', 0, '', 1418454705, 'MSN [Bot]', 'msn [bot]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '04ddbfc1f0e26436', 0, 0, 0),
(27, 2, 6, '', 0, '', 1418454705, 'MSNbot Media', 'msnbot media', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'f7132b7546c702da', 0, 0, 0),
(28, 2, 6, '', 0, '', 1418454705, 'Nutch [Bot]', 'nutch [bot]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'df8815d278efc42b', 0, 0, 0),
(29, 2, 6, '', 0, '', 1418454705, 'Online link [Validator]', 'online link [validator]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'dbaaa3dc864383a1', 0, 0, 0),
(30, 2, 6, '', 0, '', 1418454705, 'psbot [Picsearch]', 'psbot [picsearch]', '', 1418454705, '', 0, '', 0, 1418454705, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '808917f58a298f1a', 0, 0, 0),
(31, 2, 6, '', 0, '', 1418454706, 'Sensis [Crawler]', 'sensis [crawler]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4e88848005adecb4', 0, 0, 0),
(32, 2, 6, '', 0, '', 1418454706, 'SEO Crawler', 'seo crawler', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3ce94161ff1e8e0f', 0, 0, 0),
(33, 2, 6, '', 0, '', 1418454706, 'Seoma [Crawler]', 'seoma [crawler]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '9ebd1db0828a5127', 0, 0, 0),
(34, 2, 6, '', 0, '', 1418454706, 'SEOSearch [Crawler]', 'seosearch [crawler]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1c5f3d78f2df8b2a', 0, 0, 0),
(35, 2, 6, '', 0, '', 1418454706, 'Snappy [Bot]', 'snappy [bot]', '', 1418454706, '', 0, '', 0, 1418454706, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ba0049681afd05e7', 0, 0, 0),
(36, 2, 6, '', 0, '', 1418454707, 'Steeler [Crawler]', 'steeler [crawler]', '', 1418454707, '', 0, '', 0, 1418454707, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'b8c25a5c8bf3a200', 0, 0, 0),
(37, 2, 6, '', 0, '', 1418454707, 'Telekom [Bot]', 'telekom [bot]', '', 1418454707, '', 0, '', 0, 1418454707, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '7f4714a7d0219fb5', 0, 0, 0),
(38, 2, 6, '', 0, '', 1418454707, 'TurnitinBot [Bot]', 'turnitinbot [bot]', '', 1418454707, '', 0, '', 0, 1418454707, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '1025295bfc266ac6', 0, 0, 0),
(39, 2, 6, '', 0, '', 1418454708, 'Voyager [Bot]', 'voyager [bot]', '', 1418454708, '', 0, '', 0, 1418454708, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ba2504b4cf3c616d', 0, 0, 0),
(40, 2, 6, '', 0, '', 1418454708, 'W3 [Sitesearch]', 'w3 [sitesearch]', '', 1418454708, '', 0, '', 0, 1418454708, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '240d48098dddbc8d', 0, 0, 0),
(41, 2, 6, '', 0, '', 1418454708, 'W3C [Linkcheck]', 'w3c [linkcheck]', '', 1418454708, '', 0, '', 0, 1418454708, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '57e02462702dafd3', 0, 0, 0),
(42, 2, 6, '', 0, '', 1418454709, 'W3C [Validator]', 'w3c [validator]', '', 1418454709, '', 0, '', 0, 1418454709, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '2754f6cdfe730ecb', 0, 0, 0),
(43, 2, 6, '', 0, '', 1418454709, 'YaCy [Bot]', 'yacy [bot]', '', 1418454709, '', 0, '', 0, 1418454709, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '8c44a42ee23a9475', 0, 0, 0),
(44, 2, 6, '', 0, '', 1418454710, 'Yahoo MMCrawler [Bot]', 'yahoo mmcrawler [bot]', '', 1418454710, '', 0, '', 0, 1418454710, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'ccb6f2a06b713ff8', 0, 0, 0),
(45, 2, 6, '', 0, '', 1418454710, 'Yahoo Slurp [Bot]', 'yahoo slurp [bot]', '', 1418454710, '', 0, '', 0, 1418454710, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '4769227ef815e1f8', 0, 0, 0),
(46, 2, 6, '', 0, '', 1418454710, 'Yahoo [Bot]', 'yahoo [bot]', '', 1418454710, '', 0, '', 0, 1418454710, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e3cc9b97e4d29212', 0, 0, 0),
(47, 2, 6, '', 0, '', 1418454711, 'YahooSeeker [Bot]', 'yahooseeker [bot]', '', 1418454711, '', 0, '', 0, 1418454711, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', 'UTC', 'D M d, Y g:i a', 1, 0, '9E8DA7', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 0, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '3cdbc008adf32b0b', 0, 0, 0),
(49, 0, 2, '00000000001qccftm0\ni1cjyo000000\nqlaq53000000', 0, '127.0.0.1', 1418551724, 'jhsdgasdg', 'jhsdgasdg', '$2y$10$po7mB6dbPMGRpo4GkXmZQ.domMBKkOppCjaD2k2d1KfzGs.LyuQBK', 1418551724, 'jhsdgasdg@mail.ru', 398765278017, '', 1418551839, 1418551724, 0, 'viewforum.php?f=2', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3d713f9d2162ddd0', 1, 0, 0),
(50, 0, 2, '', 0, '127.0.0.1', 1418552035, 'resagr', 'resagr', '$2y$10$Xh/s3e41vRpc.hheUgR8oO3Yo8eMBiB4XqiKCN9iIR2QBUadPaSjW', 1418552035, '54uhtsrsrht@namba.kg', 406198964720, '', 0, 1418552035, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '4d2b4f366772d2a8', 1, 0, 0),
(51, 0, 2, '', 0, '127.0.0.1', 1418552189, 'dizufghjka', 'dizufghjka', '$2y$10$ojHMZdFTNkwxQJ5V6P8m4O8mz5cFNAPmdcetFaO3wvnIgDGbfyzum', 1418552189, 'dizufghjka@gmail.com', 14981037020, '', 0, 1418552189, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e75b8bf81861d0cd', 1, 0, 0),
(52, 0, 2, '00000000001qccftm0\ni1cjyo000000\nqlaq53000000', 0, '127.0.0.1', 1418561617, 'protected', 'protected', '$2y$10$7Xa55trKvXpzEvXnOR.FiOPOIrqqmX8TzABQpfOK5UGYW5qlXCFo.', 1418561617, 'protected.for@gmail.com', 389024239523, '', 1418561745, 1418561617, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Antarctica/Vostok', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '6a29e124ff5c8768', 1, 0, 0),
(53, 0, 2, '00000000001qccftm0\ni1cjyo000000\nqlaq53000000', 0, '127.0.0.1', 1418561867, 'andry', 'andry', '$2y$10$E/5hpnEgltf/Iwr.QDkGcun0YSSh6itIedKqaeBQZRel9c.YNz6ey', 1418561867, 'protected_by@mail.ru', 256812957320, '', 1418581697, 1418561867, 0, 'index.php', '', 0, 0, 0, 3, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e73d571faa18321a', 1, 0, 0),
(54, 0, 2, '00000000001qccftm0\ni1cjyo000000\nqlaq53000000', 0, '127.0.0.1', 1418582399, 'login123', 'login123', '$2y$10$j87fWJPG7r7c8dZlNPTdNucOTfOtTEvd3sVKrLYqD6kuhE9l7iJla', 1418582399, 'email@mail.ru', 118448467813, '', 1418637404, 1418582399, 0, 'ucp.php?login=external&mode=login&password=pass123&redirect=%2F&username=login123', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '5b644e08b2af59f8', 1, 0, 0),
(55, 0, 2, '00000000001qccftm0\ni1cjyo000000\nqlaq53000000', 0, '127.0.0.1', 1423236566, '123', '123', '$2y$10$fqE5tcXiKnqpLFlplxPwwenxAahuwBrV2Z.1oYV0DYOihG6Mxh9Da', 1423236566, '123@123.ru', 353749127910, '', 1423465914, 1423236566, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=123', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd455b94923f7633f', 1, 0, 0),
(56, 0, 2, '', 0, '127.0.0.1', 1423236849, 'asd', 'asd', '$2y$10$QQeYtnGyKuY/pFC6MBYou.580WhvpfJurKOGvXFeIReiYxzYt77wG', 1423236849, 'asd@asd.ru', 325484148110, '', 0, 1423236849, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cb1ffdbcd04e04bb', 1, 0, 0),
(57, 0, 2, '', 0, '127.0.0.1', 1423466070, 'murat', 'murat', '$2y$10$eA5qQvfH0Oq5guuc5lxwgufwIY0O2FmXs/ic1cY8bsy40ZVwqFS42', 1423466070, 'asmuratbek@gmail.com', 240825792220, '', 1423863024, 1423466070, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=murat', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '0fee948f6caedbac', 1, 0, 0),
(58, 0, 2, '', 0, '158.181.211.237', 1425016084, 'muratbek', 'muratbek', '$2y$10$OV2Qj8bX58JY28OqxmMI.um8WSHJdgX133pt6H1Oo93EQH59.jO8e', 1425016084, 'murat@google.kg', 350236154915, '', 1425016115, 1425016084, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=muratbek', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '6f3ea3694dbfd9da', 1, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_group`
--

DROP TABLE IF EXISTS `phpbb_user_group`;
CREATE TABLE IF NOT EXISTS `phpbb_user_group` (
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `group_leader` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `user_pending` tinyint(1) unsigned NOT NULL DEFAULT '1',
  KEY `group_id` (`group_id`),
  KEY `user_id` (`user_id`),
  KEY `group_leader` (`group_leader`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` VALUES
(1, 1, 0, 0),
(2, 2, 0, 0),
(4, 2, 0, 0),
(5, 2, 1, 0),
(6, 3, 0, 0),
(6, 4, 0, 0),
(6, 5, 0, 0),
(6, 6, 0, 0),
(6, 7, 0, 0),
(6, 8, 0, 0),
(6, 9, 0, 0),
(6, 10, 0, 0),
(6, 11, 0, 0),
(6, 12, 0, 0),
(6, 13, 0, 0),
(6, 14, 0, 0),
(6, 15, 0, 0),
(6, 16, 0, 0),
(6, 17, 0, 0),
(6, 18, 0, 0),
(6, 19, 0, 0),
(6, 20, 0, 0),
(6, 21, 0, 0),
(6, 22, 0, 0),
(6, 23, 0, 0),
(6, 24, 0, 0),
(6, 25, 0, 0),
(6, 26, 0, 0),
(6, 27, 0, 0),
(6, 28, 0, 0),
(6, 29, 0, 0),
(6, 30, 0, 0),
(6, 31, 0, 0),
(6, 32, 0, 0),
(6, 33, 0, 0),
(6, 34, 0, 0),
(6, 35, 0, 0),
(6, 36, 0, 0),
(6, 37, 0, 0),
(6, 38, 0, 0),
(6, 39, 0, 0),
(6, 40, 0, 0),
(6, 41, 0, 0),
(6, 42, 0, 0),
(6, 43, 0, 0),
(6, 44, 0, 0),
(6, 45, 0, 0),
(6, 46, 0, 0),
(6, 47, 0, 0),
(2, 49, 0, 0),
(7, 49, 0, 0),
(2, 50, 0, 0),
(7, 50, 0, 0),
(2, 51, 0, 0),
(7, 51, 0, 0),
(2, 52, 0, 0),
(7, 52, 0, 0),
(2, 53, 0, 0),
(7, 53, 0, 0),
(2, 54, 0, 0),
(7, 54, 0, 0),
(2, 55, 0, 0),
(7, 55, 0, 0),
(2, 56, 0, 0),
(7, 56, 0, 0),
(2, 57, 0, 0),
(7, 57, 0, 0),
(2, 58, 0, 0),
(7, 58, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_user_notifications`
--

DROP TABLE IF EXISTS `phpbb_user_notifications`;
CREATE TABLE IF NOT EXISTS `phpbb_user_notifications` (
  `item_type` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `item_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `method` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `notify` tinyint(1) unsigned NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` VALUES
('notification.type.post', 0, 2, '', 1),
('notification.type.post', 0, 2, 'notification.method.email', 1),
('notification.type.topic', 0, 2, '', 1),
('notification.type.topic', 0, 2, 'notification.method.email', 1),
('notification.type.post', 0, 3, '', 1),
('notification.type.post', 0, 3, 'notification.method.email', 1),
('notification.type.topic', 0, 3, '', 1),
('notification.type.topic', 0, 3, 'notification.method.email', 1),
('notification.type.post', 0, 4, '', 1),
('notification.type.post', 0, 4, 'notification.method.email', 1),
('notification.type.topic', 0, 4, '', 1),
('notification.type.topic', 0, 4, 'notification.method.email', 1),
('notification.type.post', 0, 5, '', 1),
('notification.type.post', 0, 5, 'notification.method.email', 1),
('notification.type.topic', 0, 5, '', 1),
('notification.type.topic', 0, 5, 'notification.method.email', 1),
('notification.type.post', 0, 6, '', 1),
('notification.type.post', 0, 6, 'notification.method.email', 1),
('notification.type.topic', 0, 6, '', 1),
('notification.type.topic', 0, 6, 'notification.method.email', 1),
('notification.type.post', 0, 7, '', 1),
('notification.type.post', 0, 7, 'notification.method.email', 1),
('notification.type.topic', 0, 7, '', 1),
('notification.type.topic', 0, 7, 'notification.method.email', 1),
('notification.type.post', 0, 8, '', 1),
('notification.type.post', 0, 8, 'notification.method.email', 1),
('notification.type.topic', 0, 8, '', 1),
('notification.type.topic', 0, 8, 'notification.method.email', 1),
('notification.type.post', 0, 9, '', 1),
('notification.type.post', 0, 9, 'notification.method.email', 1),
('notification.type.topic', 0, 9, '', 1),
('notification.type.topic', 0, 9, 'notification.method.email', 1),
('notification.type.post', 0, 10, '', 1),
('notification.type.post', 0, 10, 'notification.method.email', 1),
('notification.type.topic', 0, 10, '', 1),
('notification.type.topic', 0, 10, 'notification.method.email', 1),
('notification.type.post', 0, 11, '', 1),
('notification.type.post', 0, 11, 'notification.method.email', 1),
('notification.type.topic', 0, 11, '', 1),
('notification.type.topic', 0, 11, 'notification.method.email', 1),
('notification.type.post', 0, 12, '', 1),
('notification.type.post', 0, 12, 'notification.method.email', 1),
('notification.type.topic', 0, 12, '', 1),
('notification.type.topic', 0, 12, 'notification.method.email', 1),
('notification.type.post', 0, 13, '', 1),
('notification.type.post', 0, 13, 'notification.method.email', 1),
('notification.type.topic', 0, 13, '', 1),
('notification.type.topic', 0, 13, 'notification.method.email', 1),
('notification.type.post', 0, 14, '', 1),
('notification.type.post', 0, 14, 'notification.method.email', 1),
('notification.type.topic', 0, 14, '', 1),
('notification.type.topic', 0, 14, 'notification.method.email', 1),
('notification.type.post', 0, 15, '', 1),
('notification.type.post', 0, 15, 'notification.method.email', 1),
('notification.type.topic', 0, 15, '', 1),
('notification.type.topic', 0, 15, 'notification.method.email', 1),
('notification.type.post', 0, 16, '', 1),
('notification.type.post', 0, 16, 'notification.method.email', 1),
('notification.type.topic', 0, 16, '', 1),
('notification.type.topic', 0, 16, 'notification.method.email', 1),
('notification.type.post', 0, 17, '', 1),
('notification.type.post', 0, 17, 'notification.method.email', 1),
('notification.type.topic', 0, 17, '', 1),
('notification.type.topic', 0, 17, 'notification.method.email', 1),
('notification.type.post', 0, 18, '', 1),
('notification.type.post', 0, 18, 'notification.method.email', 1),
('notification.type.topic', 0, 18, '', 1),
('notification.type.topic', 0, 18, 'notification.method.email', 1),
('notification.type.post', 0, 19, '', 1),
('notification.type.post', 0, 19, 'notification.method.email', 1),
('notification.type.topic', 0, 19, '', 1),
('notification.type.topic', 0, 19, 'notification.method.email', 1),
('notification.type.post', 0, 20, '', 1),
('notification.type.post', 0, 20, 'notification.method.email', 1),
('notification.type.topic', 0, 20, '', 1),
('notification.type.topic', 0, 20, 'notification.method.email', 1),
('notification.type.post', 0, 21, '', 1),
('notification.type.post', 0, 21, 'notification.method.email', 1),
('notification.type.topic', 0, 21, '', 1),
('notification.type.topic', 0, 21, 'notification.method.email', 1),
('notification.type.post', 0, 22, '', 1),
('notification.type.post', 0, 22, 'notification.method.email', 1),
('notification.type.topic', 0, 22, '', 1),
('notification.type.topic', 0, 22, 'notification.method.email', 1),
('notification.type.post', 0, 23, '', 1),
('notification.type.post', 0, 23, 'notification.method.email', 1),
('notification.type.topic', 0, 23, '', 1),
('notification.type.topic', 0, 23, 'notification.method.email', 1),
('notification.type.post', 0, 24, '', 1),
('notification.type.post', 0, 24, 'notification.method.email', 1),
('notification.type.topic', 0, 24, '', 1),
('notification.type.topic', 0, 24, 'notification.method.email', 1),
('notification.type.post', 0, 25, '', 1),
('notification.type.post', 0, 25, 'notification.method.email', 1),
('notification.type.topic', 0, 25, '', 1),
('notification.type.topic', 0, 25, 'notification.method.email', 1),
('notification.type.post', 0, 26, '', 1),
('notification.type.post', 0, 26, 'notification.method.email', 1),
('notification.type.topic', 0, 26, '', 1),
('notification.type.topic', 0, 26, 'notification.method.email', 1),
('notification.type.post', 0, 27, '', 1),
('notification.type.post', 0, 27, 'notification.method.email', 1),
('notification.type.topic', 0, 27, '', 1),
('notification.type.topic', 0, 27, 'notification.method.email', 1),
('notification.type.post', 0, 28, '', 1),
('notification.type.post', 0, 28, 'notification.method.email', 1),
('notification.type.topic', 0, 28, '', 1),
('notification.type.topic', 0, 28, 'notification.method.email', 1),
('notification.type.post', 0, 29, '', 1),
('notification.type.post', 0, 29, 'notification.method.email', 1),
('notification.type.topic', 0, 29, '', 1),
('notification.type.topic', 0, 29, 'notification.method.email', 1),
('notification.type.post', 0, 30, '', 1),
('notification.type.post', 0, 30, 'notification.method.email', 1),
('notification.type.topic', 0, 30, '', 1),
('notification.type.topic', 0, 30, 'notification.method.email', 1),
('notification.type.post', 0, 31, '', 1),
('notification.type.post', 0, 31, 'notification.method.email', 1),
('notification.type.topic', 0, 31, '', 1),
('notification.type.topic', 0, 31, 'notification.method.email', 1),
('notification.type.post', 0, 32, '', 1),
('notification.type.post', 0, 32, 'notification.method.email', 1),
('notification.type.topic', 0, 32, '', 1),
('notification.type.topic', 0, 32, 'notification.method.email', 1),
('notification.type.post', 0, 33, '', 1),
('notification.type.post', 0, 33, 'notification.method.email', 1),
('notification.type.topic', 0, 33, '', 1),
('notification.type.topic', 0, 33, 'notification.method.email', 1),
('notification.type.post', 0, 34, '', 1),
('notification.type.post', 0, 34, 'notification.method.email', 1),
('notification.type.topic', 0, 34, '', 1),
('notification.type.topic', 0, 34, 'notification.method.email', 1),
('notification.type.post', 0, 35, '', 1),
('notification.type.post', 0, 35, 'notification.method.email', 1),
('notification.type.topic', 0, 35, '', 1),
('notification.type.topic', 0, 35, 'notification.method.email', 1),
('notification.type.post', 0, 36, '', 1),
('notification.type.post', 0, 36, 'notification.method.email', 1),
('notification.type.topic', 0, 36, '', 1),
('notification.type.topic', 0, 36, 'notification.method.email', 1),
('notification.type.post', 0, 37, '', 1),
('notification.type.post', 0, 37, 'notification.method.email', 1),
('notification.type.topic', 0, 37, '', 1),
('notification.type.topic', 0, 37, 'notification.method.email', 1),
('notification.type.post', 0, 38, '', 1),
('notification.type.post', 0, 38, 'notification.method.email', 1),
('notification.type.topic', 0, 38, '', 1),
('notification.type.topic', 0, 38, 'notification.method.email', 1),
('notification.type.post', 0, 39, '', 1),
('notification.type.post', 0, 39, 'notification.method.email', 1),
('notification.type.topic', 0, 39, '', 1),
('notification.type.topic', 0, 39, 'notification.method.email', 1),
('notification.type.post', 0, 40, '', 1),
('notification.type.post', 0, 40, 'notification.method.email', 1),
('notification.type.topic', 0, 40, '', 1),
('notification.type.topic', 0, 40, 'notification.method.email', 1),
('notification.type.post', 0, 41, '', 1),
('notification.type.post', 0, 41, 'notification.method.email', 1),
('notification.type.topic', 0, 41, '', 1),
('notification.type.topic', 0, 41, 'notification.method.email', 1),
('notification.type.post', 0, 42, '', 1),
('notification.type.post', 0, 42, 'notification.method.email', 1),
('notification.type.topic', 0, 42, '', 1),
('notification.type.topic', 0, 42, 'notification.method.email', 1),
('notification.type.post', 0, 43, '', 1),
('notification.type.post', 0, 43, 'notification.method.email', 1),
('notification.type.topic', 0, 43, '', 1),
('notification.type.topic', 0, 43, 'notification.method.email', 1),
('notification.type.post', 0, 44, '', 1),
('notification.type.post', 0, 44, 'notification.method.email', 1),
('notification.type.topic', 0, 44, '', 1),
('notification.type.topic', 0, 44, 'notification.method.email', 1),
('notification.type.post', 0, 45, '', 1),
('notification.type.post', 0, 45, 'notification.method.email', 1),
('notification.type.topic', 0, 45, '', 1),
('notification.type.topic', 0, 45, 'notification.method.email', 1),
('notification.type.post', 0, 46, '', 1),
('notification.type.post', 0, 46, 'notification.method.email', 1),
('notification.type.topic', 0, 46, '', 1),
('notification.type.topic', 0, 46, 'notification.method.email', 1),
('notification.type.post', 0, 47, '', 1),
('notification.type.post', 0, 47, 'notification.method.email', 1),
('notification.type.topic', 0, 47, '', 1),
('notification.type.topic', 0, 47, 'notification.method.email', 1),
('notification.type.post', 0, 48, '', 1),
('notification.type.post', 0, 48, 'notification.method.email', 1),
('notification.type.topic', 0, 48, '', 1),
('notification.type.topic', 0, 48, 'notification.method.email', 1),
('notification.type.post', 0, 49, '', 1),
('notification.type.post', 0, 49, 'notification.method.email', 1),
('notification.type.topic', 0, 49, '', 1),
('notification.type.topic', 0, 49, 'notification.method.email', 1),
('notification.type.post', 0, 50, '', 1),
('notification.type.post', 0, 50, 'notification.method.email', 1),
('notification.type.topic', 0, 50, '', 1),
('notification.type.topic', 0, 50, 'notification.method.email', 1),
('notification.type.post', 0, 51, '', 1),
('notification.type.post', 0, 51, 'notification.method.email', 1),
('notification.type.topic', 0, 51, '', 1),
('notification.type.topic', 0, 51, 'notification.method.email', 1),
('notification.type.post', 0, 52, '', 1),
('notification.type.post', 0, 52, 'notification.method.email', 1),
('notification.type.topic', 0, 52, '', 1),
('notification.type.topic', 0, 52, 'notification.method.email', 1),
('notification.type.post', 0, 53, '', 1),
('notification.type.post', 0, 53, 'notification.method.email', 1),
('notification.type.topic', 0, 53, '', 1),
('notification.type.topic', 0, 53, 'notification.method.email', 1),
('notification.type.post', 0, 54, '', 1),
('notification.type.post', 0, 54, 'notification.method.email', 1),
('notification.type.topic', 0, 54, '', 1),
('notification.type.topic', 0, 54, 'notification.method.email', 1),
('notification.type.post', 0, 55, '', 1),
('notification.type.post', 0, 55, 'notification.method.email', 1),
('notification.type.topic', 0, 55, '', 1),
('notification.type.topic', 0, 55, 'notification.method.email', 1),
('notification.type.post', 0, 56, '', 1),
('notification.type.post', 0, 56, 'notification.method.email', 1),
('notification.type.topic', 0, 56, '', 1),
('notification.type.topic', 0, 56, 'notification.method.email', 1),
('notification.type.post', 0, 57, '', 1),
('notification.type.post', 0, 57, 'notification.method.email', 1),
('notification.type.topic', 0, 57, '', 1),
('notification.type.topic', 0, 57, 'notification.method.email', 1),
('notification.type.post', 0, 58, '', 1),
('notification.type.post', 0, 58, 'notification.method.email', 1),
('notification.type.topic', 0, 58, '', 1),
('notification.type.topic', 0, 58, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_warnings`
--

DROP TABLE IF EXISTS `phpbb_warnings`;
CREATE TABLE IF NOT EXISTS `phpbb_warnings` (
  `warning_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `post_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `log_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `warning_time` int(11) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`warning_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_words`
--

DROP TABLE IF EXISTS `phpbb_words`;
CREATE TABLE IF NOT EXISTS `phpbb_words` (
  `word_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `word` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `replacement` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`word_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `phpbb_zebra`
--

DROP TABLE IF EXISTS `phpbb_zebra`;
CREATE TABLE IF NOT EXISTS `phpbb_zebra` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `zebra_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `friend` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `foe` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`zebra_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Dumping data for table `phpbb_zebra`
--

INSERT INTO `phpbb_zebra` VALUES
(54, 2, 1, 0);

-- --------------------------------------------------------

--
-- Table structure for table `points`
--

DROP TABLE IF EXISTS `points`;
CREATE TABLE IF NOT EXISTS `points` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  `payed` varchar(2) NOT NULL,
  `url` varchar(255) NOT NULL,
  `header` varchar(255) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `image` varchar(255) NOT NULL,
  `sport_id` int(11) NOT NULL,
  `subway1_id` varchar(11) NOT NULL,
  `time1` int(11) NOT NULL,
  `subway2_id` varchar(11) NOT NULL,
  `time2` int(11) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `admemail` varchar(255) NOT NULL,
  `site` varchar(255) NOT NULL,
  `graphite` varchar(255) NOT NULL,
  `text` text NOT NULL,
  `payedf` varchar(255) NOT NULL,
  `payedt` varchar(255) NOT NULL,
  `coords` varchar(255) NOT NULL,
  `youtube` varchar(255) NOT NULL,
  `price_year` varchar(255) NOT NULL,
  `price_6months` varchar(255) NOT NULL,
  `price_month` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=200 ;

--
-- Dumping data for table `points`
--

INSERT INTO `points` VALUES
(39, 'Международный центр исторического фехтования "Эскалибур"', 0, 'on', '0', 'mezhdunarodnyy-centr-istoricheskogo-fehtovaniya-eskalibur', '0', 'Международный центр исторического фехтования', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', '2e0f6fab16323115a7be7a0ffebc1d9b.jpg', 23, '0', 6, '1', 4, 'Москва, ул. Шарикопошниковская, д. 17', '+798512313', 'protected.for@gmail.com', 'asd@das.rudsa', 'excalibur-center.ru', 'Каждый день с 6 утра до 12 ночи', '<p>Фитнес-клуб &laquo;Мультиспорт&raquo; &ndash; это действительно мультикоктейль, состоящий из всех возможных радостей фитнес-жизни и сопутствующих развлечений. Очень удачное расположение, недалеко от комплекса &laquo;Лужники&raquo;, позволяет задействовать для занятий не только помещения фитнес-клуба, но и все прилегающее пространство.</p>\n\n<h6>К услугам гостей клуба:</h6>\n\n<ul>\n	<li>&mdash; тренажерные залы;</li>\n	<li>&mdash; залы групповых программ;</li>\n	<li>&mdash; единоборства;</li>\n	<li>&mdash; бассейн;</li>\n	<li>&mdash; фехтование;</li>\n	<li>&mdash; корты;</li>\n	<li>&mdash; школа сквош и многое другое!</li>\n</ul>\n\n<p>Кроме набора привычных услуг &laquo;Мультиспорт&raquo; предлагает и инновационные направления. А именно: занятия в студии FreeMotion, занятия на открытом воздухе Open air, целевые персонифицированные фитнес-программы, спортивная диагностика и фитнес-экспертиза. Здесь созданы все условия для того, чтобы спорт стал любимой частью вашей жизни &ndash; программы создаются с учетом только ваших особенностей, а выбор клубных карт порадует даже искушенного спортгурмана.</p>\n\n<p>В качестве разогрева до занятий или просто активного отдыха вы можете сыграть партию настольного тенниса или выбить страйк в боулинге. Ну а после тренировки добро пожаловать в спа, клубное кафе или фитобар.</p>\n\n<h6>Бассейн</h6>\n\n<p>есть бассейн, водные программы</p>\n\n<h6>Групповые программы</h6>\n\n<p>пилатес, interval, занятия для беременных, лечебная гимнастика, аквааэробика, аэробика, стретчинг, фитнес программы, йога, боевые искусства, танцы</p>\n\n<h6>Банный комплекс</h6>\n\n<p>финская сауна, турецкая баня (хамам), гидромассаж Прочие услуги фитнес магазин, СПА, детский фитнес, персональные тренировки, бар / ресторан</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '100.898438,59.879284', 'aahPguhmotk', '', '', ''),
(40, 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 0, 'on', '0', 'asdsad', '0', 'Московская школа Айкидо', 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 'aacdab92e1adb398423ce3ccb2daad68.jpg', 23, '3', 1, '4', 12, 'Москва, ул. Академика Петровского, д. 10', '+7 789 456 123', '', '', 'kannagara-aikido.ru', '6-23', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:15.5555562973022px">Додзё основано в 1989 г. С тех пор занятия идут, не прекращаясь. Участники клуба видят айкидо не только как острое оружие, но и как возможность развития личности.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(41, 'Спортивный клуб "Ермак"', 0, 'on', '0', 'sportivnyj-klub-ermak', '0', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', '7ad3f0f6c2e27b8308643d167b73d1fa.jpg', 24, '5', 15, '0', 0, 'Москва, ул. Обручева, д. 23, корп. 3', '', '', '', 'www.ermakclub.ru', '6-23', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Cпортивный клуб &quot;Ермак&quot; приглашает всех желающих на тренировки по различным видам единоборств: Бокс, Кикбоксинг, Тайский бокс (Муай-Тай), Боевое самбо, Карате, Айкидо, Дзюдо, Джиу-джитсу, Микс файт (ММА).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Также мы рады предложить для ваших детей (от 5 лет) тренировки по следующим направлениям: Самбо, Бокс, Дзюдо, Карате, Айкидо, Джиу-джитсу и ОФП.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Для женщин у нас предусмотрены групповые программы по аэробике, стретчингу, тайбо, современным танцам и балету.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В тренерский состав спортивного клуба &quot;Ермак&quot; входят: заслуженные мастера спорта, чемпионы России, Европы и Мира, а также Олимпийские призеры.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Ждем Вас в нашем клубе!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(42, 'Клуб контактных единоборств "Комбат"', 0, 'on', '0', 'klub-kontaktnyh-edinoborstv-kombat', '0', 'Клуб контактных единоборств "Комбат"', 'Клуб контактных единоборств "Комбат"', 'Клуб контактных единоборств "Комбат"', 'a5bfccb8b0d607a6b7eeeac95da2f32d.jpg', 23, '6', 8, '7', 8, 'Москва, ул. Новинский бульвар, д.18а', '', '', '', 'combat.narod.ru', 'с 6 до 23:00 Пн-Ср-Пт', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Автономная некоммерческая организация Клуб Единоборств &quot;Комбат&quot; основной своей целью ставит развитие спортивных и традиционных видов единоборств и систем самозащиты.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Спортсмены клуба &quot;Комбат&quot; - многократные победители и призеры чемпионатов Москвы по тайскому боксу, призеры всероссийских соревнований и неоднократные победители профессиональных турниров по тайскому боксу, а также победители и призеры соревнований по кикбоксингу, боксу, армейскому рукопашному бою, контактному каратэ.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Клуб Комбат является соучредителем Ассоциации Клубов Боевых Искусств (АКБИ) ЦАО города Москвы, &nbsp;совместно с которой было проведено 15 Открытых турниров ЦАО по каратэ, кикбоксингу и рукопашному бою.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Клуб Единоборств &quot;Комбат&quot; существует с 1997 года. Клуб возник на части коллектива спорт клуба &quot;Арбат 51&quot;, в котором в конце 80-х тренировали известные специалисты единоборств: Глеб Горячев, Николай Гречко, Александр Королев (каратэ Сэн&quot;э), Юрий Семенов (кикбоксинг ЕПАКК), Игорь Федорович Пестун, Александр Столяров (кикбоксинг КИТЭК), Константин Давыдов (каратэ, кикбоксинг клуб &quot;Будо&quot;), Алексей Иванов (каратэ Дзесимон).</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(43, 'Фитнес клуб "Палестра Sport"', 0, 'on', '0', 'fitnes-klub-palestra-sport', '0', 'Фитнес клуб', 'Фитнес клуб "Палестра Sport"', 'Фитнес клуб "Палестра Sport"', 'c724e61f27f7cf4bbab241b59e6fcb14.jpg', 23, '8', 12, '0', 0, 'Москва, ул. 2-я Песчаная, д. 4а.', '', '', '', 'palestrasport.ru', '6-23', '<p>На территории &laquo;ПАЛЕСТРА Sport&raquo; находятся:</p>\n\n<ul>\n	<li>SPA-салон.</li>\n	<li>Три бассейна (детский, бассейн с морской водой и большой бассейн (25 м) с тремя плавательными дорожками и отдельной зоной для занятий по аква-аэробике).</li>\n	<li>Два тренажерных зала с новейшим оборудованием.</li>\n	<li>Зал единоборств.</li>\n	<li>Крытый теннисный корт со специальным покрытием.</li>\n	<li>Два зала для персональных тренировок.</li>\n	<li>Три зала для групповых тренировок.</li>\n	<li>Марокканский хаммам, сауна и русская баня.</li>\n	<li>SPA-кафе, ресторан, летняя терраса.</li>\n	<li>Детский Пиратский Клуб.</li>\n</ul>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(44, 'Олимпийский комплекс', 0, 'on', '0', 'olimpijskij-kompleks-luzhniki', '0', 'Олимпийский комплекс', 'Олимпийский комплекс "Лужники"', 'Олимпийский комплекс "Лужники"', '29019c3fb3280f9dc7a0dc5d3a080035.jpg', 23, '74', 9, '0', 0, 'Москва, ул. Лужники, д. 24', '', '', '', 'luzhniki.ru', '6-23', '<p>Олимпийский комплекс &quot;Лужники&quot; - крупнейший спортивно-развлекательный комплекс в России и Европе. Территория Лужников занимает площадь свыше 180 га, на которой расположены разнообразные объекты, предназначенные для проведения спортивных соревнований, концертов, других мероприятий и занятия спортом. Важнейшими сооружениями являются Большая спортивная арена , Малая спортивная арена, Дворец спорта, Плавательный бассейн, УСЗ &laquo;Дружба&raquo;, Спортивный городок, Топ-гольф комплекс (driving range).&nbsp;</p>\n\n<p>&quot;Лужники&quot; - грандиозный стадион, который не только обладает богатой историей, но и живет активной жизнью. На территории спорткомплекса регулярно проходят матчи и соревнования всероссийского и международного уровня, а также фестивали и концерты мировых знаменитостей.</p>\n\n<p>Среди занимающихся и посетителей стадиона систематически проводятся многочисленные спортивно-массовые соревнования по различным видам спорта, как среди детей, так и среди взрослых. Большое количество спортивных мероприятий проводятся совместно с городским спорткомитетом и Управлением спорта Центрального административного округа, спортивными Федерациями России.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(45, 'Клуб самбо им. И.И. Латышева', 0, 'on', '0', 'klub-sambo-im.-i.i.-latysheva', '0', 'Клуб самбо им. И.И. Латышева', 'Клуб самбо им. И.И. Латышева', 'Клуб самбо им. И.И. Латышева', '5343640fb759d18a60b93c5e39807dd5.jpg', 23, '10', 8, '0', 0, 'Москва, Линейный проспект, д. 9', '', '', '', 'www.latishev-club.narod.ru', '6:00-23:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:15.5555562973022px">Клуб им. И.И. Латышева один из известнейших в России и популярнейший среди ребят и родителей в г. Москва. Для сотен мальчишек и девчонок стены клуба стали вторым домом. Клуб назван в честь авиаконструктора, прославленного спортсмена, многократного Чемпиона СССР, заслуженного тренера России, судьи Всесоюзной категории Ильи Ивановича Латышева. 6 ноября 2002 г. клуб отпраздновал свое 20-летие. В клубе занимаются дети от 5 лет и старше и взрослые. Кроме секции самбо существует группа ОФП для малышей 5-6 лет, где ребят учат самостраховке, акробатике, развивают физические качества, много времени уделяется подвижным играм. Для взрослых есть секция боевого самбо и айкидо, для девушек и женщин - шейпинг и аэробика, для детей и взрослых - танцы.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(46, 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 0, 'on', '0', 'sportivno-ozdorovitelnyj-kompleks-atlant-korall', '0', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', '9fdcd99ccc9a7e6035b6104383087de3.jpg', 23, '11', 12, '0', 0, 'Москва, ул. Талалихина, д. 28', '', '', '', 'www.mybasseyn.ru', '6:00-23:00', '<p>Крытый каток: да</p>\n\n<p>Кафе: да</p>\n\n<p>Залы: кардиозал, тренажерный зал, зал бокса, зал групповых программ, зал восточных единоборств</p>\n\n<p>Спортивная медицина: фитнес-тестирование</p>\n\n<p>Занятия для детей: восточные единоборства</p>\n\n<p>Вода в бассейне: морская</p>\n\n<p>Прокат коньков: да</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Одним из лучших в столице является физкультурно-оздоровительный комплекс &laquo;Атлант&raquo;. Перечень предоставляемых услуг и обслуживание клиентов находится здесь на уровне мировых стандартов. Центром всех оздоровительных мероприятий, и, поистине, жемчужиной физкультурно-оздоровительного комплекса является его бассейн. Он славится на всю Москву.</p>\n\n<p>Настоящей гордостью, предметом особой заботы сотрудников бассейна и его изюминкой является вода. Она обладает уникальными оздоравливающими свойствами и настолько чиста, что не вызывает никаких аллергических реакций не только у обычных людей, но даже у людей с высокочувствительными свойствами кожи. Такой эффект достигается за счет того, что бассейн заполняется не хлорированной водой, а природной минеральной из артезианской скважины и по своим лечебным свойствам мало, чем отличается от воды Средиземного моря.</p>\n\n<p>Кроме того, вода, которая находится в чаше бассейна &laquo;Атлант&raquo;, постоянно пропускается через уникальную очистную систему. Сначала мощные насосы, которые работают круглые сутки, прогоняют воду через систему фильтров, а затем вода попадает в дезинфицирующий агрегат, где происходит дезинфекция на основе электролиза. В этом процессе применяются самые современные технологии, которые позволяют сохранять все полезные для здоровья человека свойства воды, а вредные компоненты выделить и удалить.</p>\n\n<p>Каток &quot;Центральный&quot;<br />\nРасписание:<br />\nВремя работы катка необходимо уточнять по телефону.</p>\n\n<p>Цены:<br />\nСуббота:<br />\nс 12:40 до 14:00 &ndash; 240 руб.;<br />\nс 16:00 до 17:00 &ndash; 180 руб.;<br />\nс 20:00 до 21:00 &ndash; 180 руб.<br />\nВоскресение:<br />\nс 14:00 до 15:00 &ndash; 180 руб.<br />\nПрокат коньков &ndash; 150 руб./час (залог 1500 руб.).</p>\n\n<p>Бассейн с морской водой &quot;Атлант&quot;</p>\n\n<p>Плавательный бассейн длиной 25 м., глубиной от 1 до 5 м. Температура воды - 28 градусов по Цельсию.<br />\nКаток &quot;Центральный&quot;</p>\n\n<p>Крытый каток с музыкальным сопровождением и кафе.<br />\nТренажерный зал &quot;Banana Gym&quot;</p>\n\n<p>В комплексе функционирует тренажерный зал.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(47, 'Фитнес клуб "Zupre"', 0, 'on', '0', 'fitnes-klub-zupre', '0', 'Фитнес клуб "Zupre"', 'Фитнес клуб "Zupre"', 'Фитнес клуб "Zupre"', '599e16bf7b346a0de793aba81cbe8629.jpg', 23, '12', 11, '0', 0, 'Москва, ул. Вятская, д. 27, корп. 12', '', '', '', 'www.zupre.ru', '6:00-23:00', '<p>Общая площадь клуба более 4000 квадратных метров.<br />\nВ распоряжении членов клуба:<br />\nтолько современное и надёжное оборудование от мировых лидеров фитнес индустрии (Precor, Icarian, Flex Fitness, Cybex);<br />\nинструкторы сертифицированы Международной Федерацией Спорта, Аэробики и Фитнеса (FISAF) и обладают почётными званиями Кандидатов или Мастеров Спорта;<br />\nширокий выбор групповых и персональных занятий, приятный ассортимент дополнительных услуг;<br />\nудобное расположение - шаговая доступность от метро Савёловская, рядом с крупными дорожными артериями города (ТТК, Бутырская улица, Дмитровское шоссе);<br />\nавтостоянка и велопарковка.</p>\n\n<p>Тренажерный зал &quot;Zupre&quot;</p>\n\n<p>Тренажерный зал с соверменным оборудованием от Precor, Icarian, Flex Fitness, Cybex.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(48, 'Студия практик "СурьяРам"', 0, 'on', '0', 'studija-praktik-surjaram', '0', 'Студия практик', 'Студия практик "СурьяРам"', 'Студия практик "СурьяРам"', 'ead382aaca0e5453ea14ec51901adf38.jpg', 23, '13', 8, '14', 6, 'Москва, Нижний Сусальный переулок, дом 5, строение 10', '', '', '', 'www.suryaram.ru', '6:00-23:00', '<p>СТУДИЯ ПРАКТИК &laquo;СУРЬЯРАМ&raquo;&nbsp;</p>\n\n<p>ЗАРЯДИСЬ ЭНЕРГИЕЙ СОЛНЦА!</p>\n\n<p>СурьяРам &ndash; в названии нашей студии соединились два древних имени Солнца. Для нашей планеты Солнце всегда было источником света и тепла, жизненной силы и энергии, символом радости и процветания. Этим лучезарным образом проникнута сердечная атмосфера солнечной студии практик СурьяРам.</p>\n\n<p>В интерьере студии символика бесконечного Космоса органично сочетается с тёплыми и радующими глаз красками благодатной Земли. Продуманная до мельчайших деталей обстановка помогает расслабиться, отрешиться от привычной суеты и настроиться на осознанный диалог Человека и Вселенной, почувствовать себя значимой частью великого целого.</p>\n\n<p>В студии СурьяРам всё призвано служить тем, кто стремится обрести здоровье, молодость, гармонию, хорошее настроение, развитие и успех.</p>\n\n<p>В расписании регулярных классов и календаре событий представлен широкий спектр направлений и видов занятий. Мы предлагаем наших гостям разнообразные практики для тела и души (йога, боевые искусства, славянская гимнастика, особые классы для женщин и детей), семинары и лекции, концерты и спектакли, массаж и другие гармонизирующие и оздоровительные техники.</p>\n\n<p>Мы по праву гордимся тем, что у нас работают профессиональные инструкторы, квалифицированные специалисты и опытные мастера &ndash; безусловно, одни из лучших в Москве. Занятия проходят в двух просторных и светлых залах; в студии оборудован массажный кабинет, удобные раздевалки и душевая.</p>\n\n<p>В магазине студии вы сможете подобрать одежду, аксессуары и принадлежности для практики, тематическую литературу, экологически чистую косметику, товары для здоровья и многое другое &ndash; и всё это станет также отличным подарком для ваших близких.</p>\n\n<p>В уютной чайной можно побаловать себя чашечкой ароматного целебного напитка, настраиваясь на занятие и отдыхая после практики. У нас часто назначают встречи, чтобы спокойно пообщаться с друзьями или коллегами: широкий ассортимент высококачественного чая, полезных и вкусных вегетарианских снэков и сладостей, негромкая мелодичная музыка &ndash; всё здесь располагает к приятному и продуктивному времяпрепровождению.</p>\n\n<p>Все, кого объединяет желание развития и намерение сделать свою жизнь лучше, чувствуют себя как дома в СурьяРам &ndash; ведь он, как и Солнце, щедро и радостно дарит своё тепло и любовь каждому.</p>\n\n<p>Команда СурьяРам &ndash; преподаватели и инструкторы, администраторы и персонал &ndash; с заботой и вниманием создаёт для вас пространство, в котором вы можете с успехом и удовольствием совершенствоваться и расти, познавать и творить, учиться и отдыхать. Наши гости часто говорят, что в любую погоду им достаточно просто прийти в СурьяРам, чтобы почувствовать себя солнечнее и счастливее, &ndash; и это всегда очень радует нас и вдохновляет делать жизнь студии ещё ярче и интересней для вас!</p>\n\n<p>Добро пожаловать в студию практик СурьяРам!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(49, 'Спортивный клуб "Союз-Спорт"', 0, 'on', '0', 'sportivnyj-klub-sojuz-sport', '0', 'Спортивный клуб "Союз-Спорт"', 'Спортивный клуб "Союз-Спорт"', 'Спортивный клуб "Союз-Спорт"', 'bdf17fc8f9c8957768e3a9b4fc18d8c2.jpg', 23, '15', 21, '0', 0, 'Москва, ул. Академика Волгина, д. 33А', '', '', '', 'ssport.ru', '7:00-23:00', '<p>Залы: зал групповых программ, зал восточных единоборств, зал бокса</p>\n\n<p>Занятия для детей: восточные единоборства, хореография, тренировки, теннис</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Наш спортивный клуб может предложить Вам два теннисных корта, две универсальные игровые площадки, зал групповых программ и зал боевых искусств.</p>\n\n<p>Общая площадь спортивных площадок составляет более 3000 кв. метров.</p>\n\n<p>Площадки с профессиональным покрытием, освещены и размечены четкими линиями, согласно международным требованиям.</p>\n\n<p>На территории &quot;Союз-спорт&quot; расположено два теннисных корта, размеры и разметка которых соответствуют международным стандартам. А профессиональное покрытие Taraflex обеспечивает правильную амортизацию, высокий уровень безопасности, комфорта и качества игры.</p>\n\n<p>Кроме того, в спортклубе &quot;Союз-спорт&quot; есть две универсальные площадки с профессиональным универсальным покрытием и разными разметками под разные виды спорта. Вариант игры на такой площадке будет более бюджетным. Такая площадка подойдёт для новичков и игроков среднего уровня и может заменить корт крытый теннисный.</p>\n\n<p>Футбольный зал может стать местом встречи не только друзей, но и коллег. Редкий мужчина откажется от удовольствия поиграть в футбол в хорошей компании. Поэтому &laquo;аренда футбольной площадки&raquo; на территории спортклуба &laquo;Союз-спорт&raquo; - одна из самых востребованных услуг. Аренда футбольного зала возможна в любое время года. Цена на услугу &laquo;аренда зала для футбола&raquo; доступная.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(50, 'Клуб боевых искусств "Бусидо"', 0, 'on', '0', 'klub-boevyh-iskusstv-busido', '0', 'Клуб боевых искусств "Бусидо"', 'Клуб боевых искусств "Бусидо"', 'Клуб боевых искусств "Бусидо"', '95e1391051292be5a8334c8051a4ef39.jpg', 23, '43', 17, '0', 0, 'г. Москва ул. Красноармейская, д.11 к2', '', '', '', 'bussido.ru', '7:00-23:00', '<p>Клуб &laquo;БУСИДО&raquo; проводит набор желающих для изучения боевых искусств.</p>\n\n<p>Вас ждут упорные тренировки, аттестации на цветные пояса, выступления на соревнованиях.</p>\n\n<p>В результате занятий боевыми искусствами крепнет не только тело, но и дух. Человек становится способным не только защитить себя. Но и учится ставить перед собой цели и достигать результатов.</p>\n\n<p>В клубе тренируются разносторонние люди. Многие из них учатся в высших учебных заведениях, кто-то работает в бизнесе, государственных структурах, правоохранительных органах.</p>\n\n<p>Помимо этого, комплекс предлагает услуги банного комплекса:</p>\n\n<p>Сухо-воздушная сауна до 120 градусов по цельсию, парная турецкий хамам(40-50град ) и оздоровительная инфракрасная сауна.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(51, 'Фитнес-центр "Миллениум"', 0, 'on', '0', 'fitnes-centr-millenium', '0', 'Фитнес-центр "Миллениум"', 'Фитнес-центр "Миллениум"', 'Фитнес-центр "Миллениум"', '396c030cdb1fa4a3a1eb5d9c7b764f37.jpg', 23, '80', 29, '0', 0, 'Москва, Каширское шоссе, д. 55А', '', '', '', 'milfit.ru', '7:00-23:00', '<p>&laquo;Миллениум&raquo; &mdash; новый фитнес-центр с бассейном на юге Москвы!<br />\nФитнес-центр представляет самый большой по площади тренажерный зал в ЮАО г. Москвы с самым современным оборудованием таких ведущих компаний как: TechnoGym, Star Trac, Precor, Hoist.</p>\n\n<p>Аква-зона фитнес-центра представлена бассейном 25 метров, отдельной зоной для проведения занятий по аква-аэробике и банным комплексом, включающим финскую сауну и турецкий хаммам. Комфортная зона отдыха, оборудованная шезлонгами, позволит снять напряжение и расслабиться.</p>\n\n<p>Для любителей боевых искусств, мы приготовили популярные и интересные занятия с профессиональными тренерами. Вы можете выбрать именно то, что Вам нравится: Самбо, Бокс, М-1, Кудо, Айкидо и многие другие, известно, &nbsp;что восточные единоборства позволяют снять стресс и подготовить не только тело, но и дух, к ритму жизни в нашем мегаполисе.</p>\n\n<p>Самые популярные и эффективные групповые программы, такие как Kinesis, TRX, Zumba, Club Joy, Pilates, Yoga и многие другие &mdash; ждут вас.</p>\n\n<p>Вы можете выбрать удобное для вас время для персональных тренировок или записаться на занятия в группе. Под руководством высококвалифицированной команды инструкторов, вы достигнете не только желаемых результатов, но и получите безграничный заряд энергии и ярких эмоций. Ваши будни, больше никогда не будут серыми и рутинными.</p>\n\n<p>&laquo;Миллениум&raquo; &mdash; это ваш ежедневный источник жизненного позитива и бодрости.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(52, 'Спортивный центр "Синяя Птица"', 0, 'on', '0', 'sportivnyj-centr-sinjaja-ptica', '0', 'Спортивный центр "Синяя Птица"', 'Спортивный центр "Синяя Птица"', 'Спортивный центр "Синяя Птица"', '8621706ad87d5d7fe600a388717a08db.jpg', 23, '81', 10, '82', 11, 'Москва, ул. Старокачаловская, влад. 22', '', '', '', 'tennismoskva.ru', '8:00-22:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&quot;Синяя Птица&quot; - это современный спортивный теннисный центр, площадью 5000 кв. м., с прилегающей территорией 4500 кв.м, расположенный в зеленой зоне района Северное Бутово (ЮЗАО г. Москвы).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Центр функционирует с 2004 года и сегодня располагает cледующей инфраструктурой:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">\n<ul>\n	<li>уникальное спортивное сооружение на базе воздухоопорной конструкции;</li>\n	<li>7 крытых теннисных кортов с покрытием тарафлекс и &laquo;искусственная трава&raquo;, которые предоставляются в аренду, а также используются для проведения групповых, индивидуальных занятий по теннису для детей и взрослых и турниров, в том числе турниров РТТ;</li>\n	<li>5 открытых теннисных кортов кортов с покрытием &laquo;искусственная трава&raquo; для игры в теннис в период с мая по сентябрь. Зимой на этой территории заливается каток.;</li>\n	<li>специально оборудованные залы для занятий айкидо, таэквондо, кикбоксингом боксом и другими видами единоборств;</li>\n	<li>раздевалки с душевыми кабинами и спортивный магазин, предлагающий профессионалам и любителям тенниса одежду, обувь ракетки, мячи, аксессуары для большого тенниса от ведущих мировых производителей.</li>\n</ul>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">Кроме того, к вашим услугам уютное кафе на балконе, с которого можно наблюдать за проведением тренировок и соревнований.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">Центр работает с 08:00 до 22:00.</div>\n</div>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(53, 'Центр раннего развития ребенка "Чудо-школа умница"', 0, 'on', '0', 'centr-rannego-razvitija-rebenka-chudo-shkola-umnica', '0', 'Центр раннего развития ребенка "Чудо-школа умница"', 'Центр раннего развития ребенка "Чудо-школа умница"', 'Центр раннего развития ребенка "Чудо-школа умница"', '7c481d5839f915f371e74aa97998c18b.jpg', 23, '83', 9, '0', 0, 'Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2', '', '', '', 'www.chudo-shkola.ru', '8:00-22:00', '<p>Центр детского развития ЧУДО-ШКОЛА УМНИЦА&nbsp;<br />\nдля детей и родителей</p>\n\n<p>Вы хотите быть заботливым и любящим родителем?<br />\nВы боитесь упустить драгоценное время в вопросах развития вашего малыша?<br />\nВы желаете видеть своего ребенка гармонично развитой личностью?<br />\nВы мечтаете, чтобы ваши дети были счастливы, успешны и нашли свое место в жизни?<br />\nНаш детский центр развития ребенка поможет вам в реализации всех этих задач.&nbsp;<br />\nЧто вы найдете, придя в ЧУДО-ШКОЛУ УМНИЦА?<br />\nпрофессиональных педагогов, которых обожают дети,&nbsp;<br />\nдружескую атмосферу радости, взаимопонимания и поддержки,&nbsp;<br />\nбольшой выбор (более 50!) программ для детей от 0 до 14 лет,&nbsp;<br />\nпсихологические и творческие программы для родителей,&nbsp;<br />\nпрофессиональную поддержку родителей в вопросах воспитания и развития,&nbsp;<br />\nиндивидуальный подход к каждому ребенку и к каждой семье,&nbsp;<br />\nприятные и нужные для развития семейных отношений традиции,&nbsp;<br />\nпродуманность и отлаженность всех организационных и образовательных процессов.&nbsp;<br />\nНаш центр детского развития найдет общий язык со всеми, кто верит в то, что каждый ребенок уникален и неповторим!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(54, 'Школа айкидо "Аметсучи"', 0, 'on', '0', 'shkola-ajkido-ametsuchi', '0', 'Школа айкидо "Аметсучи"', 'Школа айкидо "Аметсучи"', 'Школа айкидо "Аметсучи"', '2b6e57ab9aae6f86e2385a236fc0bca4.jpg', 23, '0', 0, '0', 0, 'Москва, ул. Поляны, д. 35', '', '', '', 'www.ametsuchi.ru', '8:00-22:00', '<p>Айкидо - очень молодое боевое искусство, воплотившее однако в себе принципы и методы, которые насчитывают не одну сотню лет.</p>\n\n<p>Неправильно будет считать айкидо исключительно системой различных приемов и методов. Нужно правильно понимать, что реальная схватка имеет огромное отличие от поединка в спортивном зале. Когда отсутствуют какие-либо рамки, ограничивающие действия бойцов и вполне вероятным исходом поединка является смерть, на первый план выходят морально-психологические качества. Тогда физически слабый человек вполне может справится с более сильным. Физическая сила не является определяющей для победы.</p>\n\n<p>Аттестация по Айкидо проводится 2 - 3 раза в год: На весенних, летних или осенних учебно-аттестационных семинарах, которые проводят, как правило, шиханы Айкикай Хомбу Додзё.</p>\n\n<p>Сдать экзамен можно также и аттестационной комиссии уполномоченной Айкикай Хомбу Додзё на принятие экзаменов у студентов как на степени кю, так и степени дан.</p>\n\n<p>Результат таких экзаменов вполне легитимный и Хомбу Додзё его признаёт в полной мере.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES
(55, 'Клуб айкидо в Сокольниках', 0, 'on', '0', 'klub-ajkido-v-sokolnikah', '0', 'Клуб айкидо в Сокольниках', 'Клуб айкидо в Сокольниках', 'Клуб айкидо в Сокольниках', '90ecfe50d5ceb356c922f9e3da403d5a.jpg', 23, '85', 13, '86', 18, 'Москва, ул. Стромынка, д. 20, корп. 1', '', '', '', 'http://aikido-v-sokolnikah.ru', '8:00-22:00', '<p>Айкидо в Сокольниках</p>\n\n<p>Если Вы ищите место для занятий Айкидо в районе станции метро Сокольники, то Вам определенно не найти места более подходящего, чем наш Клуб Айкидо в Сокольниках. В нашем Клубе занимаются как взрослые, так и дети, как новички, так и люди с многолетним опытом. Подберите наиболее подходящую для Вас программу, ознакомившись с нашим расписанием.</p>\n\n<p>Айкидо &mdash; японское боевое искусство, созданное О-сэнсэем Морихэем Уэсибой как синтез его исследований боевых искусств, философии и религиозных убеждений. Целью Уэсибы было создать и разработать боевое искусство, впитавшее в себя все достижения великих мастеров. Айкидо акцентируется на слиянии с атакой противника и перенаправлении энергии атакующего (в противовес встречи силы силой). В дополнение к физическим техникам и тренировкам, айкидо придаёт особое значение тренировкам сознания, управляемого расслабления, и развития &laquo;духа&raquo; и силы &laquo;ки&raquo;.</p>\n\n<p>Для учеников появились новые разделы с дополнительной методической информацией и видео. Доступ к новым разделам просите у Вашего инструктора.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(56, 'Айкидо клуб', 0, 'on', '0', 'ajkido-klub', '0', 'Айкидо клуб', 'Айкидо клуб', 'Айкидо клуб', '94774f3c362afcea93f097a0fd1912bb.jpg', 23, '87', 12, '88', 27, 'Москва, Ул. 7-я Текстильщиков, дом 5', '', '', '', 'Aikido1.ru', '8:00-22:00', '<p>Здравствуйте! Мы рады приветствовать вас на сайте федерации Айкидо Айкикай.</p>\n\n<p>Айкидо &ndash; это боевое искусство, которое позволит оказать сопротивление гораздо более сильному противнику. Его сила и ярость будут направлены против него самого.</p>\n\n<p>Тренировки по Айкидо абсолютно травмобезопасны. На тренировках могут тренироваться люди совершенно разных возрастов и уровней физической подготовки. Большое внимание на тренировках уделяется навыкам владения своим телом и дыхательным техникам.</p>\n\n<p>Тренировки проводятся для детей, взрослых, а также индивидуально. Всю информацию о расписании занятий, залах и ведущих тренерах вы можете найти в соответсвующих разделах сайта. На тренировках вы приобретете не только базовые знания техник Айкидо, но и научитесь ударной техники, технике работы с оружием и повысите уровень физической подготовки. Ждем Вас в наших залах!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(57, 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 0, 'on', '0', 'klub-ajkido-dzikisinkaj-na-volgogradskom-prospekte', '0', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', '0b12c056f3cb0b483a394d2c53088f76.jpg', 23, '11', 7, '51', 12, 'Москва, Волгоградский проспект, д. 28', '', '', '', 'www.jikishinkai.ru', '8:00-22:00', '<p>В 1992 году Номура сенсей постановил, что Огнян Найдов-Железов, имевший в то время 1 Дан и Андрей Лычев (тоже 1 Дан) должны организовать свою отдельную секцию. Такая секция начала работать в сентябре 1992 года при Колледже Сбербанка РФ и просуществовала целый год. Один из занимавшихся в секции новичков &ndash; Сергей Волошко предложил организовать секцию в МГТУ.</p>\n\n<p>Благодаря поддержке кафедры физвоспитания и лично декана Киселева такая секция начала работать 4 октября 1993 года. Эта дата и считается Днем Рождения Айкидо в МГТУ.</p>\n\n<p>Практически с самого начала секция работала под пристальным вниманием Хомбу Додзе. Сиханы Хомбу Додзе Итихаси и Миямото первый раз посетили занятия в секции Айкидо МГТУ в декабре 1993 года, к этому периоду относится и первое официальное показательное выступление членов Клуба перед широкой аудиторией. С 1995 года Миямото сихан, решением Досю, был назначен техническим куратором клуба. С тех пор, ежегодно Миямото сихан проводит в Москве семинар по Айкидо, организатором которого является Федерация Айкидо Айкикай России и лично Огнян Кременович Найдов-Железов.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(58, 'Дом культуры "Берендей"', 0, 'on', '0', 'dom-kultury-berendej', '0', 'Дом культуры "Берендей"', 'Дом культуры "Берендей"', 'Дом культуры "Берендей"', '1011a7b8137f2619ab1ed4c839fbb638.jpg', 23, '0', 0, '0', 0, 'Москва, проспект маршала Жукова, д. 76, корп. 1', '', '', '', '', '12:00-18:00 ф', '<p>В 1991 году был открыт ДК &laquo;Берендей&raquo;, который с начала своего возникновения и по сегодняшний день пользуется большой популярностью среди населения.</p>\n\n<p>Здесь каждый может найти по душе любимое занятие.</p>\n\n<p>Много талантов вырастил &laquo;Берендей&raquo;, многим помог определиться в жизни, а кому-то подарил момент общения.</p>\n\n<p>Одна из самых любимых и посещаемых секций - секция айкидо для детей.</p>\n\n<p>График занятий:<br />\n- вторник - с 17:00 до 18:00;<br />\n- суббота - с 12:00 до 13:00.</p>\n\n<p>Инструктор: Щеглова (Коваленко) Наталья, 2 дан айкидо айкикай</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(59, 'Московский центр боевых искусств', 0, 'on', '0', 'moskovskij_centr_boevyh_iskusstv', '0', 'Московский центр боевых искусств', 'Московский центр боевых искусств', 'Московский центр боевых искусств', '1ad436df1828d80c8e6198dda334277d.jpg', 23, '16', 16, '0', 0, 'Москва, Варшавское шоссе, д. 118, корп. 1', '', '', '', 'www.mcbi.ru', '8:00-21:00', '<p>Московский центр боевых искусств &ndash; это крупнейший в Европе спортивный комплекс, специализирующийся на развитии различных видов единоборств. Уникальность проекта МЦБИ позволяет обеспечивать как полный цикл учебно-тренировочного процесса, таки проведение различных спортивных и культурно-массовых мероприятий, в том числе соревнований международного уровня. В МЦБИ под руководством высококвалифицированных тренеров проводятся занятия по более чем 20 видам боевых искусств.</p>\n\n<p>Тренажерный зал МЦБИ</p>\n\n<p>В центре функционирует тренажерный зал.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(60, 'Айкидо-центр', 0, 'on', '0', 'ajkido-centr', '0', 'Айкидо-центр', 'Айкидо-центр', 'Айкидо-центр', '75bc7906478f7ca8bf72684ec9379c39.jpg', 23, '17', 7, '18', 21, 'Москва, Ленинградский просп., д. 35', '', '', '', 'aikidocenter.ru', '8:00-21:00', '<p>Центр был создан в 2004 г с целью развития Айкидо, для чего был оборудован один из первых залов в Москве, предназначенный только для занятий Айкидо. До этого времени тренировки проводились на базе залов спортивных школ и институтов, где на одном ковре тренировались представители различных единоборств - дзюдо, самбо, каратэ. В такой обстановке было невозможно создать ту атмосферу, которая присуща Айкидо: Атмосферу внутренней сосредоточенности, самодисциплины, работы над собой. Для Айкидо характерно тщательное внимание ко многим вещам: к чистоте формы и тела, к соблюдению этикета, к осанке. На татами человек не боец, а прежде всего личность, для которой цель занятий &ndash; развиваться телесно и духовно, совершенствовать себя.</p>\n\n<p>В центре занимаются дети в возрасте от 5 до 13 лет, самые младшие тренируются по специальной подготовительной программе в мини-группах по 6 человек. Всего в нашем Центре занимается более 80 мальчиков и девочек всех возрастов.</p>\n\n<p>В результате регулярных тренировок у детей возрастает выносливость и психологическая устойчивость, улучшается осанка, координация и чувство равновесия, исчезают проблемы с общением. У ребят появляются навыки поведения в нестандартных и критических ситуациях, они становятся более внимательными и дисциплинированными.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(61, 'Школа воинских искусств "Кодокан Син-рю" на Кубинке', 0, 'on', '0', 'shkola-voinski-iskusstv-kodokan-sin-rju-na-kubinke', '0', 'Школа воинских искусств', 'Школа воинских искусств "Кодокан Син-рю" на Кубинке', 'Школа воинских искусств "Кодокан Син-рю" на Кубинке', '2a4a38f24ad05f02c3a57981e1d24e4e.jpg', 23, '19', 27, '0', 0, 'Москва, Кубинка ул., 7', '', '', '', 'kodokanshin.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Школа воинских искусств &quot;Кодокан Син-рю&quot; является международной организацией и имеет филиалы не только в России, но и в странах СНГ, в Польше, Германии и Швеции. Штаб-квартира школы находится в Москве. Основатель и глава школы Кодокан Син-рю - Таир Арифович Нариманов. Мастер международного уровня (8 дан дзю-дзюцу, 6 дан дзюдо), международный инструктор - кёси, судья международной категории, мастер БИ России.</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Тренировки в школе проходят ежедневно, в хорошо оборудованных просторных залах, под руководством профессиональных инструкторов, воспитанников школы Кодокан Син-рю.</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">В дни школьных каникул проводятся лагеря с усиленной тренировочной программой, с последующей аттестацией на степени.</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Школа организовывает и проводит соревнования различного уровня в разделах иригуми-го, хэнтай-кумитэ, дзю-хо рандори (грэплинг или сабмишн-рэслинг) и других.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(62, 'Cпортивно-оздоровительный учебный центр "Лидер"', 0, 'on', '0', 'cportivno-ozdorovitelnyj-uchebnyj-centr-lider', '0', 'Cпортивно-оздоровительный учебный центр', 'Cпортивно-оздоровительный учебный центр "Лидер"', 'Cпортивно-оздоровительный учебный центр "Лидер"', 'ff95e04bbdc41d80a067ba26f92d90d8.jpg', 23, '21', 11, '22', 29, 'Москва, Ленинский пр-т, д. 78', '', '', '', 'fitness-lider.ru', '8:00-21:00', '<p>Клуб основан в 1994 году и работает над осуществлением спортивных и фитнес программ в районе &laquo;Ломоносовский&raquo; ЮЗАО.</p>\n\n<p>Клуб имеет многочисленные спортивные награды, и почётные грамоты, благодарственные письма от руководства района и округа г. Москвы</p>\n\n<p>Льготные категории:</p>\n\n<p>студенты (бюджетное отделение), учащиеся 100 руб.</p>\n\n<p>Льготные категории бесплатно:</p>\n\n<p>1. Из многодетных, малообеспеченных семей, по направлению из Управы района.</p>\n\n<p>2. Ветераны боевых действий, &laquo;чернобольцы&raquo;.</p>\n\n<p>3. Инвалиды.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(63, 'Фитнес клуб "ГринСити"', 0, 'on', '0', 'fitnes-klub-grinsiti', '0', 'Фитнес клуб', 'Фитнес клуб "ГринСити"', 'Фитнес клуб "ГринСити"', '4659de8f7ea27b1c9f8e1da11805aadf.jpg', 23, '0', 0, '0', 0, '', '', '', '', 'www.greenfitness.ru/', '8:00-22:00', '<p>Грин Сити &mdash; первый в Зеленограде фитнес клуб, предназначенный для всей семьи. Грин Сити &mdash; это 3 500 м2 надежных технологий и профессиональная команда квалифицированных специалистов индустрии фитнеса и красоты. Грин Сити &mdash; фитнес клуб, который способен изменить Ваше отношение к здоровому образу жизни. Всё, что необходимо для качественных занятий спортом и комфортного отдыха Вы найдете в Грин Сити.&nbsp;</p>\n\n<p>Самый укомплектованный в Зеленограде тренажерный зал, большая кардиозона и огромный набор свободных весов. Профессионально оборудованный зал единоборств. Три просторных зала для аэробики, силовых, танцевальных и индивидуальных занятий. Школа танцев, в том числе танцы на пилоне. Детский фитнес: игровая комната и занятия для детей. Финские сауны, бассейны для взрослых и детей, два бассейна под открытым небом. СПА-студия, а именно косметология, массаж, гидромассажные ванны, а также солярий. Фитнес-бар и летняя веранда. Пляжный волейбол и уроки на свежем воздухе. Комплексные услуги, клубные привилегии и индивидуальный подход во всем. Мы с уверенностью говорим, фитнес клуб Грин Сити достойно представляет фитнес в Зеленограде. В Грин Сити Вам всегда рады.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(64, 'Айкидо клуб "Буюкан"', 0, 'on', '0', 'ajkido-klub-bujukan', '0', 'Айкидо клуб "Буюкан"', 'Айкидо клуб "Буюкан"', 'Айкидо клуб "Буюкан"', '0a0d5beb57a80f213b035eab4eda8816.jpg', 23, '8', 21, '0', 0, 'Москва, ул. Приорова, д. 26', '', '', '', '', '8:00-21:00', '<p><strong>Описание</strong></p>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В клубе действуют секции классического и соревновательного айкидо (взрослые, подростки, дети с 5 лет), айкидо с оружием, &nbsp;традиционного японского фехтования Тэнсин Сёдэн Катори &nbsp;Синто Рю.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<p>&nbsp;</p>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Ежегодно проводятся семинары мастеров боевых искусств из Японии и других стран. Регулярно проводятся национальные и международные аттестации (выдаются соответствующие сертификаты из Японии).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<p>&nbsp;</p>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Члены клуба принимают активное участие в национальных и международных соревнованиях по Томики айкидо.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Инструкторы клуба не только занимаются педагогической деятельностью, но и сами активно изучают боевые искусства &ndash; как в России, так и в Японии и Китае.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<p>&nbsp;</p>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Активные интересные занятия принесут не только спортивные результаты, но и отличное настроение. Приходите и тренируйтесь. Мы вам рады!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(65, 'Школа "Вакайдо" на Комсомольском', 0, 'on', '0', 'shkola-vakajdo-na-komsomolskom', '0', 'Школа "Вакайдо" на Комсомольском', 'Школа "Вакайдо" на Комсомольском', 'Школа "Вакайдо" на Комсомольском', '691058e55fc5373217172be1611b5e63.jpg', 23, '23', 12, '0', 0, 'Москва, Комсомольский проспект, д.45', '', '', '', '', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Углубленное изучение Айкидо:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Ударная техника, техника работы с оружием (боккен &ndash; деревянный меч, танто нож, дзе &ndash; палка).</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Общие группы Айкидо (изучение базовых техник):</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Ученики имеют возможность посещать занятия до 5 раз в неделю.</li>\n	<li>Клуб работает совместно с немецкими мастерами Айкидо.</li>\n	<li>Регулярно проводятся лагеря и семинары в России и за рубежом.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;От простого к сложному&raquo; (три составляющие направлений Айкидо):</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>1 этап &ndash; расслабление, релаксация.</li>\n	<li>2 этап &ndash; классическое айкидо.</li>\n	<li>3 этап &ndash; айкидо высшего уровня.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Первое занятие бесплатно.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(66, 'Клуб единоборств "Гакумон додзё" на Винокурова', 0, 'on', '0', 'klub-edinoborstv-gakumon-dodzjo-na-vinokurova', '0', 'Клуб единоборств "Гакумон додзё" на Винокурова', 'Клуб единоборств "Гакумон додзё" на Винокурова', 'Клуб единоборств "Гакумон додзё" на Винокурова', 'f074d251744d86ebe079fe387865da3d.jpg', 23, '24', 21, '25', 35, 'Москва, ул. Винокурова, 24, корп. 4', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Гакумон додзё - это комфортабельный клуб единоборств, где преподают квалифицированные тренеры и есть все необходимое для занятий: от теплых раздевалок и душа, до чайной комнаты и почти домашних интерьеров. Но есть еще в Гакумон Додзе нечто, что сложно описать стандартным набором понятий для рекламного проспекта. Это - особый дух, тщательно создаваемый и трепетно поддерживаемый его создателями. Оказавшись в этом уникальном месте, ты попадаешь в другую страну и другую эпоху. Им нет названия. Это - удивительный симбиоз почти сказочной Азии и наших самых романтических представлений о Востоке. С того самого мига, как ты переступил порог этого удивительного клуба, с тобой начинают общаться как с давним знакомым. Никакого дискомфорта и излишнего официоза. Это- общность людей объединенных едиными интересами и получающих искреннее удовольствие от самого процесса занятий. Не смотря на то, что здесь очень серьезно и профессионально занимаются единоборствами, на всех без исключения тренировках царит удивительный дух взаимопонимания. Каждый инструктор &ndash; личность. Каждый сенсей, гуру и шифу собирают вокруг себя тех, кто готов следовать с ними, и за ними по избранному пути.Это действительно Клуб с большой буквы, за стенами которого продолжается суетливая жизнь огромного и такого неприветливого мегаполиса, тогда как здесь каждый получает уникальную возможность, забыть о проблемах, остановиться и встретиться с самим собой. Поверьте, ради возможности этой встречи, ради познания себя и своих возможностей, ради обретения цельности и чего-то значительного и важного в своей жизни стоит придти в Гакумон Додзе.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(67, 'Московский клуб традиционного Айкидо "ИВАМА"', 0, 'on', '0', 'moskovskij-klub-tradicionnogo-ajkido-ivama', '0', 'Московский клуб традиционного Айкидо "ИВАМА"', 'Московский клуб традиционного Айкидо "ИВАМА"', 'Московский клуб традиционного Айкидо "ИВАМА"', 'ab194abbf86011068a9ec5209b698fe9.jpg', 23, '26', 12, '0', 0, 'Москва, ул. Вилиса Лациса, д. 11, корп. 2', '', '', '', 'vk.com/iwama', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Московский клуб традиционного Айкидо &quot;ИВАМА&quot; Takemusu Aiki открыт 9 июня 2000 года. Это официальный клуб Такемусу Айкидо в России. Здесь проводятся регулярные занятия с оружием и без оружия. Техника без оружия включает в себя броски, болевые приёмы и контроли. Техника с оружием включает в себя работу c джо (палка), бокен (деревянный меч) и танто (нож).</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Хотя клуб расположен в 500 метрах от метро, найти его первый раз может быть сложно, поэтому прежде чем отправляться в клуб - следует посмотреть подробное описание о том как его найти на сайте.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(68, 'Клуб Айкидо Ёсинкан "Ки нагарэ" на Холодильном переулке', 0, 'on', '0', 'klub-ajkido-josinkan-ki-nagare-na-holodilnom-pereulke', '0', 'Клуб Айкидо Ёсинкан "Ки нагарэ" на Холодильном переулке', 'Клуб Айкидо Ёсинкан "Ки нагарэ" на Холодильном переулке', 'Клуб Айкидо Ёсинкан "Ки нагарэ" на Холодильном переулке', '8cd1c17c9f3abe7ec69a28e66e898beb.jpg', 23, '27', 4, '28', 27, 'Москва, Холодильный переулок, д. 3', '', '', '', 'aikido2.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Клуб Айкидо Ёсинкан &laquo;Ки нагарэ&raquo; является официальным представителем в Москве Международной федерации Айкидо Ёсинкан (Aikido Yoshinkan Foundation), штаб&ndash;квартира которой находится в Токио (Япония). Наш клуб входит в состав Международной Евро&ndash;азиатской федерации айкидо (МЕАФА), Центра Айкидо Ёсинкан и Федерации Айкидо Ленинградской области.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;Ки нагарэ&raquo; (или ки&ndash;но&ndash;нагарэ) в переводе с японского языка обозначает непрерывный поток Ки. Ки (кит. &laquo;Ци&raquo;) представляет собой жизненную энергию, пронизывающую все сущее в мире, являющуюся основой жизни во Вселенной. Айкидо &mdash; это инструмент, с помощью которого мы учимся управлять своим потоком жизненной энергии Ки.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Ёсинкан считают одним из наиболее эффективных стилей Айкидо, которым занимаются десятки тысяч людей по всему миру. Мы, члены Клуба Айкидо Ёсинкан &laquo;Ки нагарэ&raquo;, являемся единомышленниками, занимающимися развитием и распространением Айкидо Ёсинкан в Москве и за её пределами.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Деятельность Клуба основана на следующих принципах:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>сохранение традиций Айкидо Ёсинкан как классической школы боевого искусства;</li>\n	<li>профессиональный подход к тренировочному процессу, обеспечивающий индивидуальный подход к каждому занимающемуся;</li>\n	<li>нацеленность на практический результат физического и духовного совершенствования занимающихся.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(69, 'Айкидо Клуб "Малышев Додзе"', 0, 'on', '0', 'ajkido-klub-malyshev-dodze', '0', 'Айкидо Клуб "Малышев Додзе"', 'Айкидо Клуб "Малышев Додзе"', 'Айкидо Клуб "Малышев Додзе"', '9787f9f1bef48514025292c63bc818c9.jpg', 23, '16', 17, '0', 0, 'Москва, Варшавское ш., д. 118а', '', '', '', 'www.aikido-tatami.ru', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(70, 'Спортивный клуб "ARENA Fight Club"', 0, 'on', '0', 'sportivnyj_klub_arena_fight_club', '0', 'Спортивный клуб "ARENA Fight Club"', 'Спортивный клуб "ARENA Fight Club"', 'Спортивный клуб "ARENA Fight Club"', '29cbc4d54e0c708516d89dc93489548a.jpg', 23, '17', 6, '18', 24, 'Москва, Ленинградский проспект, д. 31, стр. 4', '', '', '', 'arenafightclub.ru', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(71, 'Центр семейного отдыха "Карибия"', 0, 'on', '0', 'centr-semejnogo-otdyha-karibija', '0', 'Центр семейного отдыха "Карибия"', 'Центр семейного отдыха "Карибия"', 'Центр семейного отдыха "Карибия"', '093f959eb4c42369704a2e6c4518e12c.jpg', 23, '29', 12, '0', 0, '', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Можно ли в Москве быстро отвлечься от рутины и суматохи, от постоянного шума и бешеного ритма жизни? Конечно же, можно! И сделать это лучше всего в аквапарке. Вы не только отлично скрасите свой досуг, но и значительно поправите здоровье. После водных процедур организм скажет вам только спасибо! А если это не аквапарк, а целый развлекательный и оздоровительный центр, в котором есть место и отдыху, и веселью? Конечно же, это только к лучшему. И именно такие услуги предлагает аквапарк &quot;Карибия&quot; в Москве!&nbsp;</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(72, 'Клуб Айкидо "Дайвадо"', 0, 'on', '0', 'klub-ajkido-dajvado', '0', 'Клуб Айкидо "Дайвадо"', 'Клуб Айкидо "Дайвадо"', 'Клуб Айкидо "Дайвадо"', '926ee5d51cb47c87eb47d9437b629716.jpg', 23, '0', 0, '0', 0, 'Москва, 3-й Новомихалковский проезд, 6', '', '', '', 'daiwado.ru', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(73, 'Бойцовский клуб "CLASSclub"', 0, 'on', '0', 'bojcovskij-klub-classclub', '0', 'Бойцовский клуб CLASSclub', 'Бойцовский клуб CLASSclub', 'Бойцовский клуб CLASSclub', '839e8182615a8880d8830453e08126e2.jpg', 24, '33', 10, '34', 10, 'Москва, ул. Сельскохозяйственная, влад. 26', '', '', '', 'http://classclub.ru/', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Все виды аэробики, тренажерный зал, детские секции, солярий, массаж, спа-обертывания, миостимуляция лица и тела, спорт-бар. Бокс, кикбоксинг, таеквон-до, детские секции, бокс для женщин. Тренеры международной категории, групповые и персональные тренировки.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(78, 'Фитнес-центр "TERRASPORT Коперник"', 0, 'on', '0', 'fitnes-centr-terrasport-kopernik', '0', 'Фитнес-центр "TERRASPORT Коперник"', 'Фитнес-центр "TERRASPORT Коперник"', 'Фитнес-центр "TERRASPORT Коперник"', 'f2b2c7e1a1e34db89f6a827affaa2b02.jpg', 24, '31', 17, '32', 0, 'Москва, ул. Большая Якиманка, д. 22, стр.1', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Москва, ул. Большая Якиманка, д. 22, стр.1</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(79, 'Фитнес клуб "Локо-парк"', 0, 'on', '0', 'fitnes-klub-loko-park', '0', 'Фитнес клуб "Локо-парк"', 'Фитнес клуб "Локо-парк"', 'Фитнес клуб "Локо-парк"', 'c78c28a9268384eedd0ca35d9bdc8b79.jpg', 24, '35', 15, '0', 0, 'Москва, ул. Верхоянская, д.9', '', '', '', '', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Выбор фитнес-клуба в СВАО - важная задача, к решению которой нужно подойти с особой ответственностью. В Москве, на Бабушкинской, в парковой зоне района Свиблово (СВАО), находится фитнес-центр &quot;ЛОКО парк&quot;, общей площадью 32000 кв.м. и охраняемой парковкой. &nbsp;Это действительно уникальное предложение, сочетающее в себе разнообразие видов спорта, полноценного отдыха и красоты.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Одно из главных неоспоримых преимуществ клуба &ndash; аква-зона бассейна с его развитой инфраструктурой: 2 сауны, гидромассажная ванна, противоток, гейзер, тропический бар, солярий и многое другое. Здесь проводятся как групповые, так и индивидуальные занятия по плаванию и аквааэробике.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Тренажерный зал фитнес-клуба &quot;ЛОКО парк&quot; оснащен самым современным оборудованием, здесь ведут свою работу опытные и высококвалифицированные инструкторы &ndash; в тренажерном зале созданы лучшие условия для эффективных тренировок.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(80, 'Фитнес клуб "ФизКульт" Полежаевская', 0, 'on', '0', 'fitnes-klub-fizkult-polezhaevskaja', '0', 'Фитнес клуб "ФизКульт" Полежаевская', 'Фитнес клуб "ФизКульт" Полежаевская', 'Фитнес клуб "ФизКульт" Полежаевская', 'b2c97f9b786d86daa3d08c2240f44663.jpg', 24, '36', 0, '0', 0, 'Москва, ул. Демьяна Бедного, д. 4, корп. 2', '', '', '', 'http://www.fizkult.ru/', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(81, 'Фитнес клуб "Озон"', 0, 'on', '0', 'fitnes-klub-ozon', '0', 'Фитнес клуб "Озон"', 'Фитнес клуб "Озон"', '', 'e36ca34dfc9a4b6f4fd1e0e79cf75472.jpg', 24, '0', 0, '0', 0, 'Московская область, Мытищи, ул. Терешковой, 1а', '', '', '', 'www.fitozon.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В клубе работают молодые, но опытные инструктора, призеры различных региональных кубков по фитнесу. Все инструкторы имеют специальное физкультурное образование, опыт работы в спортивных клубах не менее пяти лет.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Первое занятие инструктор обязательно уделяет новичкам повышенное внимание: поможет подобрать программу тренировок, продемонстрирует правильную технику выполнения упражнений. В дальнейшем Вы всегда можете рассчитывать на помощь и консультации инструкторов.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Для тех, кто пожелает получить особое внимание со стороны инструктора на протяжении всей тренировки, а также максимум полезной информации о питании, восстановлении после нагрузок, применении добавок, - предлагается услуга &quot;персональный тренинг&quot;, как в виде разовых занятий, так и в виде месячного абонемента.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Отличительной особенностью клуба является проведение антропометрического тестирования занимающихся. Тестирование можно проводить ежемесячно, все результаты обрабатываются с применением специальной компьютерной программы. Результаты тестов позволяют инструкторам для каждого разрабатывать индивидуальное питание, а так же анализ ошибок питания. подбирать программу тренировок и постоянно ее корректировать в зависимости от того, как меняется ваша фигура.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В клубе Вам будет предложен широкий выбор тонизирующих, энергетических и витаминных напитков, спортивные коктейли, а также большой ассортимент специализированного спортивного питания ведущих зарубежных производителей.&nbsp;</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES
(82, 'Фитнес клуб "ФизКульт" Варшавка', 0, 'on', '0', 'fitnes-klub-fizkult-varshavka', '0', 'Фитнес клуб "ФизКульт" Варшавка', 'Фитнес клуб "ФизКульт" Варшавка', 'Фитнес клуб "ФизКульт" Варшавка', '2a3e49ef98316efb666f584858bd96fd.jpg', 24, '16', 13, '0', 0, 'Москва, Варшавское ш., д. 122а', '', '', '', 'www.fizkult.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Всегда к Вашим услугам - квалифицированные инструкторы, которые обучат Вас и Ваших детей технике плавания и всем видам тренировок в воде. Зона водных программ включает в себя взрослый бассейн, детский бассейн, джакузи и турецкую баню. Длина взрослого бассейна 25 метров. Для очистки воды используются механические фильтры (кварц, песок), ультрафиолет и хлорирование.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(83, 'Спортивный клуб "Ермак"', 0, 'on', '0', 'sportivnyj-klub-ermakboks', '0', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', 'a07cbc3203f9479645eaa9edfb73594f.jpg', 24, '5', 15, '0', 0, 'Москва, ул. Обручева, д. 23, корп. 3', '', '', '', 'www.ermakclub.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Cпортивный клуб &quot;Ермак&quot; приглашает всех желающих на тренировки по различным видам единоборств: Бокс, Кикбоксинг, Тайский бокс (Муай-Тай), Боевое самбо, Карате, Айкидо, Дзюдо, Джиу-джитсу, Микс файт (ММА).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Также мы рады предложить для ваших детей (от 5 лет) тренировки по следующим направлениям: Самбо, Бокс, Дзюдо, Карате, Айкидо, Джиу-джитсу и ОФП.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Для женщин у нас предусмотрены групповые программы по аэробике, стретчингу, тайбо, современным танцам и балету.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В тренерский состав спортивного клуба &quot;Ермак&quot; входят: заслуженные мастера спорта, чемпионы России, Европы и Мира, а также Олимпийские призеры.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Ждем Вас в нашем клубе!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(84, 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 0, 'on', '0', 'klub-smeshannyh-edinoborstv-r.o.d..', '0', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', '6f8d8b5d7d7913c6e71b4943ea8a6dcd.jpg', 24, '37', 16, '38', 17, 'Москва, ул. Летниковская, д. 6 А', '', '', '', 'mma-russia.ru', '8:00-21:00', '<p>&quot;Самооборона&quot;, &quot;тактика ближнего боя&quot;, &quot;самозащита&quot;, &quot;ножевой бой&quot;, &quot;обращение с травматическим оружием и условия его использования&quot; - в Клубе &quot;Р.О.Д.Ъ.&quot;!&nbsp;</p>\n\n<p>Интернет пестрит предложениями, обещающими обучить Вас всему вышеуказанному!</p>\n\n<p><strong>Чем уроки в Клубе &quot;Р.О.Д.Ъ.&quot; лучше?!</strong></p>\n\n<p>На сегодняшний день наш Клуб заслужил уважение и признание в области смешанных единоборств. Успех - плод работы команды: руководители, тренеры и спортсмены.</p>\n\n<p>Наш подход - результат в сжатые сроки. Результат не разовый, а постоянный. Наращивание присутствуя, в интересующей нас области, умение разбираться в людях; создавать взаимовыгодные условия - позволяет нам достигать значимых результатов.</p>\n\n<p>Аналогичным образом мы будем действовать развивая в Клубе дисциплину - самооборона.</p>\n\n<p>Общеизвестно - навыки в области единоборств, наличие спортивных разрядов, степеней и званий приравнивается к обладанию - &quot;оружием&quot;. Мы не спорим с этим, но и не соглашаемся. Однако убеждены, что правовые границы &laquo;необходимой обороны&raquo; не помешает знать и мастерам спорта, чтобы при случае, своим &quot;оружием&quot;, не причинить вреда себе.</p>\n\n<p>Уроки самообороны - это как физическая, так и умственная нагрузка.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Сравним ММА (смешанные единоборства) и самооборону.</strong></p>\n\n<p>ММА - бой на ринге или в клетке; жесткий бой, но по правилам; по обоюдному согласию; присутствуют секунданты; рефери и медики. Все, за исключением исхода боя, известно и понятно.</p>\n\n<p>Самооборона - угроза жизни или имуществу; нарушение Вашей свободы и права на неприкосновенность личности; фактор неожиданности; помощи нет. Цель - выйти из опасной ситуации без потерь.</p>\n\n<p>Опытнейшие инструкторы, привлекаемые нами для обучения, помогут Вам обрести свободу и уверенность в себе!</p>\n\n<p>С нашей помощью Вы сможете защитить свою свободу! Ибо свобода других людей, заканчивается там - где начинается Ваша!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(85, 'СДЮШОР единоборствам', 0, 'on', '0', 'sdjushor-edinoborstvam', '0', 'СДЮШОР единоборствам', 'СДЮШОР единоборствам', 'СДЮШОР единоборствам', '775d16b9a5ba5c30bb7977d37734d02b.jpg', 24, '0', 0, '0', 0, 'Москва, Зеленоград, корп. 813', '', '', '', '', '8:00-21:00', '<p>Занятия спортивными единоборствами - идеальный вариант развивающего досуга для Вашего ребенка. Единоборства развивают дисциплину, уверенность в себе, дают навыки самообороны и защиты.</p>\n\n<p>Мы приглашаем на занятия детей от 7 лет и выше.</p>\n\n<p>Условия приёма в школу и всю прочую интересующую вас информацию уточняйте по телефонам:&nbsp;+7 (499) 731-68-85, +7 (496) 574-41-95.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(90, 'Фитнес-центр "TERRASPORT Коперник"', 0, 'on', '0', 'fitnes-centr-terrasport-kopernikborba', '0', 'Фитнес-центр "TERRASPORT Коперник"', 'Фитнес-центр "TERRASPORT Коперник"', 'Фитнес-центр "TERRASPORT Коперник"', 'd029fa6b9b62cda2cde9d591ba973653.jpg', 25, '31', 7, '32', 17, 'Москва, ул. Большая Якиманка, д. 22, стр.1', '', '', '', '', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&laquo;TERRASPORT Коперник&raquo; &mdash; фитнес-центр премиум-класса общей площадью 2 700 кв м. расположен в центре Москвы, в жилом комплексе нового поколения &laquo;Коперник&raquo;.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Оснащение фитнес-центра и сервис предоставляемых услуг &mdash; на уровне лучших элитных клубов мира.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Использование последних достижений инженерии и фитнес-индустрии, клиентский сервис, изысканный дизайн внутреннего пространства, а также использование в отделке помещений исключительно природных материалов обеспечивают беспрецедентный уровень экологичности и комфорта, достойный посетителей клуба &mdash; успешных людей нового поколения.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В 2008 г. &laquo;TERRASPORT Коперник&raquo; по мнению Всероссийской Премии &laquo;Грация&raquo; был признан Лучшим фитнес-центром премиум-класса в Москве.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В 2011 и 2012 г. Детский клуб фитнес-центра первым и пока единственный в Москве получил знак качества &laquo;ЛУЧШЕЕ ДЕТЯМ&raquo;.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В 2011 г. &laquo;TERRASPORT Коперник&raquo; по мнению Международной Премии &laquo;Грация&raquo; был признан Лучшим фитнес-центром России.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">\n<ul>\n	<li>3 зала групповых программ;</li>\n	<li>2 студии Pilates;</li>\n	<li>залы для персональных тренировок;</li>\n	<li>тренажерный зал, оснащенный самым современным оборудованием ведущих мировых производителей таких, как Precor, Cybex, Ivanko;</li>\n	<li>кардио-зона с кардио-театром;</li>\n	<li>бассейн длинной 25 м., в котором проводятся как индивидуальные, так и групповые занятия по плаванию и аква-аэробике;</li>\n	<li>кабинет функциональной диагностики и диетологии;</li>\n	<li>велостудия;</li>\n	<li>фитнес-бар, в котором можно не только выпить стакан свежевыжатого сока или специального фитнес-коктейля, но и заказать завтрак, обед или ужин, приготовленный по всем правилам здорового питания, а также заказать дневной рацион правильного питания в зависимости от вашей фитнес-цели с доставкой в любое удобное для вас место;</li>\n	<li>солярий;</li>\n	<li>детский центр со спортивными, развивающими и творческими классами;</li>\n	<li>индивидуальные сейфы;</li>\n	<li>SPA-салон, оказывающий полный спектр парикмахерских и косметических услуг.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(92, 'СДЮШОР единоборствам', 0, 'on', '0', 'sdjushor-edinoborstvamborba', '0', 'СДЮШОР единоборствам', 'СДЮШОР единоборствам', 'СДЮШОР единоборствам', '4608001cd5553fe9a79358348bbcec64.jpg', 25, '0', 0, '0', 0, 'Москва, Зеленоград, корп. 813', '', '', '', '', '8:00-21:00', '<p>Занятия спортивными единоборствами - идеальный вариант развивающего досуга для Вашего ребенка. Единоборства развивают дисциплину, уверенность в себе, дают навыки самообороны и защиты.</p>\n\n<p>Мы приглашаем на занятия детей от 7 лет и выше.</p>\n\n<p>Условия приёма в школу и всю прочую интересующую вас информацию уточняйте по телефонам:&nbsp;+7 (499) 731-68-85, +7 (496) 574-41-95.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(93, 'Детско-юношеская спортивная школа №86', 0, 'on', '0', 'detsko-junosheskaja-sportivnaja-shkola-86', '0', 'Детско-юношеская спортивная школа №86', 'Детско-юношеская спортивная школа №86', 'Детско-юношеская спортивная школа №86', 'a7c22a1e00ea61f3dfa1a3ea7701a56f.png', 25, '39', 7, '40', 7, 'Москва, ул. Яблочкова, д. 3', '', '', '', '', '8:00-21:00', '<p>Детско-юношеская спортивная школа №86 предоствляет секции вольной борьбы и баскетбола.</p>\n\n<p><span style="color:rgb(68, 67, 67); font-family:verdana,tahoma,arial; font-size:12px"><span style="font-family:arial,helvetica,sans-serif; font-size:11.9999990463257px">Ежегодно в ДЮСШ № 86 проводятся&nbsp;учебно-тренировочные сборы в&nbsp;зимних и летних спортивно-оздоровительных лагерях.&nbsp;Занятия бесплатные.</span></span></p>\n\n<p>Расписание секций узнавайте по телефонам: +7 (495) 610-78-05, +7 (495) 639-87-23</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(94, 'СДЮШОР № 42', 0, 'on', '0', 'sdjushor-42', '0', 'СДЮШОР № 42', 'СДЮШОР № 42', 'СДЮШОР № 42', '087ec6eb10b1a9edc879eb764af02741.jpg', 25, '41', 9, '0', 0, 'Москва, Россошанский пр-д, д. 4, корп. 4', '', '', '', 'vk.com/club66149340', '8:00-21:00', '<p>СДЮШОР № 42 представляет секции:</p>\n\n<p>- Бокс для детей с 7 лет;</p>\n\n<p>-&nbsp;Вольная борьба для детей с 7 лет;</p>\n\n<p>- Бейсбол для детей с 8-10 лет.</p>\n\n<p>Все интересующие вас подробности о работе секций и школы в целом уточняйте по телефонам:&nbsp;+7 (495) 381-42-28, +7 (495) 113-59-63.</p>\n\n<p>&nbsp;</p>\n\n<p>ФОК &quot;СДЮСШОР № 42&quot; предлагает в аренду мини-футбольный зал, имеются раздевалки, душевые.</p>\n\n<p>от 2000 руб./час.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(95, 'Центр образования "Олимп"', 0, 'on', '0', 'centr-obrazovanija-olimp', '0', 'Центр образования "Олимп"', 'Центр образования "Олимп"', 'Центр образования "Олимп"', '5791f5de6a59143947b7a11b1ab3a10f.jpg', 25, '42', 7, '0', 0, 'Москва, ул. Удальцова, д. 67', '', '', '', 'http://olimp-volley.narod.ru/olimp1.html', '8:00-21:00', '<p>Центр образования &quot;Олимп&quot; представляет секции вольной борьбы и волейбола.</p>\n\n<p>График работы секций уточняйте по телефонам: +7 (495) 432-98-11, +7 (495) 133-17-28, +7 (495) 131-80-77</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(96, 'Легкоатлетическо-футбольный комплекс ЦСКА', 0, 'on', '0', 'legkoatletichesko-futbolnyj-kompleks-cska', '0', 'Легкоатлетическо-футбольный комплекс ЦСКА', 'Легкоатлетическо-футбольный комплекс ЦСКА', 'Легкоатлетическо-футбольный комплекс ЦСКА', 'e62fe5ab9c88e433cc12dde401a5b4fe.jpg', 25, '43', 7, '0', 0, 'Москва, Ленинградский пр-т, д. 39', '', '', '', 'www.cska.ru', '8:00-21:00', '<p>Крытый каток: да</p>\n\n<p>Круглогодичный: да</p>\n\n<p>Заточка коньков: да</p>\n\n<p>Прокат коньков: да</p>\n\n<p>Камера хранения: да</p>\n\n<p>Гардероб: да</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Общая площадь комплекса 65 570,1 кв.м. Чем знаменит: Этот спорткомплекс, сданный в эксплуатацию в ноябре 1979 года, &ndash; одно из самых грандиозных специализированных сооружений российской столицы. Впечатляет ЛФК прежде всего своими размерами: 318 метров в длину, 190 &ndash; в ширину, 21 &ndash; в высоту. Хотя чему тут удивляться: когда под одной крышей соседствуют футбольное поле практически стандартных размеров и просторный манеж для легкоатлетических экзерсисов, меньшими параметрами никак не обойтись. Тем более что здесь же нашлось место еще для двух залов &ndash; художественной гимнастики и мини-футбола.</p>\n\n<p>Во время московской Олимпиады ЛФК с блеском доказал свою многофункциональность. В легкоатлетическом манеже проходили соревнования по вольной и классической (или, по-современному, греко-римской) борьбе, а в футбольной половине спорткомплекса разыгрывали медали фехтовальщики.</p>\n\n<p>В 2003 году после ремонта легкоатлетического ядра часть ЛФК, обозначенная литерой &quot;Л&quot;, заметно похорошела. Уложенное здесь современное покрытие MONDO позволяет проводить соревнования не только всероссийского, но и международного ранга. Такие, например, как &quot;Русская зима&quot;, &quot;Звезды XXI века&quot;, &quot;Кубок надежды&quot;. Шесть двухсотметровых и восемь спринтерских дорожек, две ямы для прыжков в высоту и с шестом, две &ndash; для прыжков тройным и в длину, сектор для толкания ядра способствуют одновременному проведению соревнований по восьми видам легкоатлетической программы. А когда на трибунах, вмещающих 4000 зрителей, аншлаг, то громогласная поддержка спортсменам обеспечена.</p>\n\n<p>Футбольная составляющая ЛФК по физическим параметрам &ndash; сестра-двойняшка легкоатлетической. Данные идентичны: 126 метров в длину, 62 &ndash; в ширину, 14,6 &ndash; в высоту. Да и болельщиков на трибунах те же четыре тысячи может уместиться. Но и отличия, конечно, имеются. Все-таки футбол &ndash; не легкая атлетика, хотя оба и претендуют в спорте на королевские титулы соответственно мужского и женского рода.</p>\n\n<p>Так вот, искусственный газон футбольного манежа помнит официальные матчи союзного чемпионата, проводившиеся в середине 80-х годов под крышей в холодное время года &ndash; ранней весной и поздней осенью. В наши дни под крышей ЛФК проводятся такие турниры, как Кубок чемпионов Содружества, Кубок Федерации, всероссийские соревнования среди воспитанников СДЮШОР.</p>\n\n<p>Гостили в футбольном манеже и другие виды спорта: гимнастки-&quot;художницы&quot; разыгрывали здесь медали чемпионата страны, стрелки оспаривали награды чемпионата Европы по стрельбе из пневматического оружия, а мастера клинка выявляли сильнейших на международном турнире &quot;Московская сабля&quot;.</p>\n\n<p>Впрочем, художественная гимнастика в ЛФК давно уже не на правах гостя. У юных спортсменок и их наставниц здесь имеется свой зал (размеры 45х18х7,6), успешно работает СДЮШОР.</p>\n\n<p>По соседству &ndash; еще один спортзал (45х24х7,6), в котором раньше занималась гандбольная команда, а теперь квартируют мини-футболисты. Кроме того, две мини-футбольных площадки и семь теннисных кортов волшебным образом появляются на месте большого искусственного газона в дни, когда футбольных баталий под крышей ЛФК нет.</p>\n\n<p>В целом за сутки пропускная способность спорткомплекса составляет более 500 человек: 300 занимаются в легкоатлетическом манеже и более 200 &ndash; в футбольном.</p>\n\n<p>Каток дворец спорта ЦСКА<br />\nРасписание и цены:<br />\nс 22:00 до 01:00 ночи - 450 рублей за сеанс, 350 рублей за сеанс для студентов очной формы обучения (при предъявлении студенческого билета).<br />\nс 02:00 до 5:00 утра - 350 рублей за сеанс, 250 рублей для студентов очной формы обучения за сеанс (при предъявлении студенческого билета).</p>\n\n<p>Услуги:<br />\nАренда сейфовой ячейки &ndash; бесплатно (залог 100 рублей);<br />\nГардероб &ndash; бесплатно;<br />\nЗвуковое поздравление &ndash; 100 рублей (работает светомузыка);<br />\nМожно прийти со своими коньками, а можно взять пару в прокат за 150 руб./час;<br />\nЗаточка хоккейных и фигурных коньков &ndash; 200 руб. за пару;<br />\nVIP зона с индивидуальным обслуживанием &ndash; 3000 руб./сеанс.</p>\n\n<p>Дополнительно:<br />\nВ дворце спорта к вашим услугам гардероб, аренда коньков для ночного катания на катке, музыкальное сопровождение, медпункт, буфет, гардероб, удобная парковка.</p>\n\n<p>Плавательный бассейн СК ЦСКА<br />\nТренировочный каток СК ЦСКА</p>\n\n<p>Крытый каток 3400 кв. м. с профессиональным ледовым покрытием. Регулярно производится очистка и восстановление льда. Опытные инструктора проводят консультации для желающих.<br />\nГимнастический зал СК ЦСКА<br />\nТренажерный зал СК ЦСКА</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(97, 'СДЮШОР "Олимп-Внуково"', 0, 'on', '0', 'sdjushor-olimp-vnukovo', '0', 'СДЮШОР "Олимп-Внуково"', 'СДЮШОР "Олимп-Внуково"', 'СДЮШОР "Олимп-Внуково"', '3c536eb07594402b7557cb82c4fde150.jpg', 25, '0', 0, '0', 0, 'Москва, ул. Интернациональная, д. 10', '', '', '', 'olimp-co.ru', '8:00-21:00', '<p>СДЮШОР &quot;Олимп-Внуково&quot; представляет секции волейбола, пляжного волейбола и вольной борьбы.</p>\n\n<p>Условия приема, график занятий и всю прочую интересующую вас информацию уточняйте по телефону:&nbsp;+7 (495) 432-98-11</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(98, 'СДЮСШОР по боксу "Спартак"', 0, 'on', '0', 'sdjusshor-po-boksu-spartak', '0', 'СДЮСШОР по боксу "Спартак"', 'СДЮСШОР по боксу "Спартак"', 'СДЮСШОР по боксу "Спартак"', 'e74952a28faa64d86a40cfd36832b0ea.jpg', 25, '44', 10, '0', 0, 'Москва, Малый Гавриков пep., д. 29', '', '', '', '', '8:00-21:00', '<p>СДЮСШОР по боксу &quot;Спартак&quot;&nbsp; представляет секции вольной борьбы, бокса, самбо и дзюдо.</p>\n\n<p>Клуб дзюдо и самбо &quot;Рандори&quot; под руководством Руслана Сазонова - заслуженного мастера спорта, Чемпиона мира, победителя кубка мира, чемпиона Европы, пятикратного чемпиона России, приглашает на тренировки по дзюдо и самбо детей и взрослых. В клуб принимаются все желающие, независимо от возраста и уровня подготовки.</p>\n\n<p>В программе тренировок:<br />\n&ndash; изучение техники дзюдо и самбо;<br />\n&ndash; изучение навыков самообороны;<br />\n&ndash; общефизическая подготовка.</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(99, 'Специализированная детско-юношеская спортивная школа олимпийского резерва "Динамо"', 0, 'on', '0', 'specializirovannaja-detsko-junosheskaja-sportivnaja-shkola-olimpijskogo-rezerva-dinamo', '0', 'Специализированная детско-юношеская спортивная школа олимпийского резерва "Динамо"', 'Специализированная детско-юношеская спортивная школа олимпийского резерва "Динамо"', 'Специализированная детско-юношеская спортивная школа олимпийского резерва "Динамо"', '4b093a900664210562a68f834ae9cb7f.jpg', 25, '45', 2, '46', 3, 'Москва, Цветной бульвар, д. 5', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Здесь представлена информация об учреждении Специализированная детско-юношеская спортивная школа олимпийского резерва &quot;Динамо&quot;. Оно представляет секцию вольной борьбы.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(100, 'Борцовский клуб "Tiger"', 0, 'on', '0', 'borcovskij-klub-tiger', '0', 'Борцовский клуб "Tiger"', 'Борцовский клуб "Tiger"', 'Борцовский клуб "Tiger"', '31175e7426dab5e259e92830c53c50b4.jpg', 25, '47', 0, '0', 0, 'Москва, ул. Олимпийская деревня, д. 2', '', '', '', 'www.wrestling-club.com', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Клуб Вольной борьбы TIGER - это не спортивная школа, где жесткие рамки&nbsp;по возрасту и высокие требования к результату. Это клуб борьбы для настоящих мужчин, для тех кому надоело просто тягать железо или еще хуже лежать на диване!!! Для тех у кого есть реальная цель и огромное желание изменить мир начав с себя. Для тех кто хочет в совершенстве овладеть своим телом и поддерживать великолепную физическую форму. Наши двери открыты для всех возрастов начиная с 10 лет.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(101, 'Спортивный клуб "Сандрс"', 0, 'on', '0', 'sportivnyj-klub-sandrs', '0', 'Спортивный клуб "Сандрс"', 'Спортивный клуб "Сандрс"', 'Спортивный клуб "Сандрс"', '2a36aeeed86223f6950933e57661eaf1.jpg', 26, '48', 5, '49', 7, 'Москва, ул. Брянская, д. 8', '', '', '', 'sportzapad.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">В спортивном клубе Сандрс проходят занятия по дзюдо, боевому самбо, спортивному самбо, джиуджитсу. Опытные мастера. Воспитанники регулярно участвуют на городских первенствах. Занятия проводятся для юношей и взрослых. Возраст спортсменов от 9 до 35 лет и выше. 3 минуты пешком от метро. Рядом с ТЦ &laquo;Европейский&raquo;.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(102, 'Спортивный клуб "Ермак"', 0, 'on', '0', 'sportivnyj-klub-ermakzhudzhitsu', '0', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', '8ca7444a2a9f006a120ec777bbc2f8d9.jpg', 26, '5', 17, '0', 0, 'Москва, ул. Обручева, д. 23, корп. 3', '', '', '', 'www.ermakclub.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Cпортивный клуб &quot;Ермак&quot; приглашает всех желающих на тренировки по различным видам единоборств: Бокс, Кикбоксинг, Тайский бокс (Муай-Тай), Боевое самбо, Карате, Айкидо, Дзюдо, Джиу-джитсу, Микс файт (ММА).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Также мы рады предложить для ваших детей (от 5 лет) тренировки по следующим направлениям: Самбо, Бокс, Дзюдо, Карате, Айкидо, Джиу-джитсу и ОФП.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Для женщин у нас предусмотрены групповые программы по аэробике, стретчингу, тайбо, современным танцам и балету.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В тренерский состав спортивного клуба &quot;Ермак&quot; входят: заслуженные мастера спорта, чемпионы России, Европы и Мира, а также Олимпийские призеры.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Ждем Вас в нашем клубе!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(103, 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 0, 'on', '0', 'klub-smeshannyh-edinoborstv-r.o.d.', '0', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', '6b690211e60f6627afaa9770b6d041f3.jpg', 26, '37', 16, '38', 17, 'Москва, ул. Летниковская, д. 6 А', '', '', '', 'mma-russia.ru', '8:00-21:00', '<p>&quot;Самооборона&quot;, &quot;тактика ближнего боя&quot;, &quot;самозащита&quot;, &quot;ножевой бой&quot;, &quot;обращение с травматическим оружием и условия его использования&quot; - в Клубе &quot;Р.О.Д.Ъ.&quot;!&nbsp;</p>\n\n<p>Интернет пестрит предложениями, обещающими обучить Вас всему вышеуказанному!</p>\n\n<p><strong>Чем уроки в Клубе &quot;Р.О.Д.Ъ.&quot; лучше?!</strong></p>\n\n<p>На сегодняшний день наш Клуб заслужил уважение и признание в области смешанных единоборств. Успех - плод работы команды: руководители, тренеры и спортсмены.</p>\n\n<p>Наш подход - результат в сжатые сроки. Результат не разовый, а постоянный. Наращивание присутствуя, в интересующей нас области, умение разбираться в людях; создавать взаимовыгодные условия - позволяет нам достигать значимых результатов.</p>\n\n<p>Аналогичным образом мы будем действовать развивая в Клубе дисциплину - самооборона.</p>\n\n<p>Общеизвестно - навыки в области единоборств, наличие спортивных разрядов, степеней и званий приравнивается к обладанию - &quot;оружием&quot;. Мы не спорим с этим, но и не соглашаемся. Однако убеждены, что правовые границы &laquo;необходимой обороны&raquo; не помешает знать и мастерам спорта, чтобы при случае, своим &quot;оружием&quot;, не причинить вреда себе.</p>\n\n<p>Уроки самообороны - это как физическая, так и умственная нагрузка.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Сравним ММА (смешанные единоборства) и самооборону.</strong></p>\n\n<p>ММА - бой на ринге или в клетке; жесткий бой, но по правилам; по обоюдному согласию; присутствуют секунданты; рефери и медики. Все, за исключением исхода боя, известно и понятно.</p>\n\n<p>Самооборона - угроза жизни или имуществу; нарушение Вашей свободы и права на неприкосновенность личности; фактор неожиданности; помощи нет. Цель - выйти из опасной ситуации без потерь.</p>\n\n<p>Опытнейшие инструкторы, привлекаемые нами для обучения, помогут Вам обрести свободу и уверенность в себе!</p>\n\n<p>С нашей помощью Вы сможете защитить свою свободу! Ибо свобода других людей, заканчивается там - где начинается Ваша!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(104, 'МУ "Радуга-Свиблово" на Кольской', 0, 'on', '0', 'mu-raduga-sviblovo-na-kolskoj', '0', 'МУ "Радуга-Свиблово" на Кольской', 'МУ "Радуга-Свиблово" на Кольской', 'МУ "Радуга-Свиблово" на Кольской', 'ef82cfd7d121a2d8b48c54594cbce080.jpg', 26, '50', 14, '0', 0, 'Москва, ул. Кольская, д.11', '', '', '', 'raduga-sv.ru', '8:00-21:00', '<p>Джиу-джитсу относят к наиболее древним видам японской борьбы. Основной принцип джиу-джитсу &mdash; &laquo;не идти на прямое противостояние, чтобы победить&raquo;, не сопротивляться, а уступать натиску противника, лишь направляя его действия в нужную сторону до тех пор, пока тот не окажется в ловушке и тогда обратить силу и действия врага против него самого. Принцип этот связан с преданием о враче Сиробэй Акаяма, который однажды заметил, что ветки больших деревьев в бурю сломались, а ветки ивы, поддавшись силе, затем поднялись и уцелели. Вдохновлённый этим наблюдением, врач позже основал первую школу джиу-джитсу.</p>\n\n<p>В нашем центре джиу-джитсу преподают для взрослых от 18 лет.</p>\n\n<p>Занятия проходят по понедельникам и четвергам с 19:00 до 21:00.<br />\nВавилов А.Н.<br />\n+7 (915) 267-61-40</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(105, 'Международный центр исторического фехтования "Эскалибур"', 0, 'on', '0', 'mezhdunarodnyj-centr-istoricheskogo-fehtovanija-eskalibur1', '0', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', '5383165ff361668e21869576adfbdee4.jpg', 35, '1', 6, '0', 0, 'Москва, ул. Шарикоподшипниковская, д. 17', '', '', '', 'excalibur-center.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Мы обеспечиваем всю необходимую инфраструктуру для полноценных и комфортных тренировок, производства и ремонта экипировки, а также &laquo;сезонного хранения&raquo; крупногабаритных элементов реконструкторского быта - шатров, мебели, etc.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В Спортивном комплексе Вас ждут:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>четыре комфортабельных зала, оборудованных централизованной вентиляцией;</li>\n	<li>удобные раздевалки и душевые;</li>\n	<li>индивидуальные камеры хранения;</li>\n	<li>WiFi-зона;</li>\n	<li>мини-буфет;</li>\n	<li>полный комплект необходимой аппаратуры;</li>\n	<li>силовые и специальные тренажеры;</li>\n	<li>спортивное оборудование и инвентарь.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Наши залы:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Зеркальный зал с балетными &laquo;станками&raquo; площадью 90 кв.м.;</li>\n	<li>Малый зал для единоборств с профессиональным борцовским покрытием, зеркалами, подвесами для боксерских мешков и &laquo;груш&raquo;, хореографическим &laquo;станком&raquo; для растяжки, площадью 90 кв.м.;</li>\n	<li>Спортивный зал для фехтования и единоборств, с верхними подвесами для использования лонжи (воздушная акробатика) площадью 120 кв.м.;</li>\n	<li>Спортивный зал для единоборств, покрытие &laquo;ласточкин хвост&raquo;, с подвесами для боксерских мешков и &laquo;груш&raquo; , площадью 120 кв.м.;</li>\n	<li>Тренажерный зал площадью 90 кв.м.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Залы разделены мобильными перегородками и могут быть объединены в любой конфигурации для проведения тренировок, семинаров, мастер-классов, соревнований.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES
(108, 'Ушу в Клубе контактных единоборств "Комбат"', 0, 'on', '0', 'ushu-v-klube-kontaktnyh-edinoborstv-kombat', '0', 'Ушу в Клубе контактных единоборств "Комбат"', 'Ушу в Клубе контактных единоборств "Комбат"', 'Ушу в Клубе контактных единоборств "Комбат"', '7fa29df54e53dc926ae574c9a834d7c4.jpg', 35, '6', 8, '7', 8, 'Москва, ул. Новинский бульвар, д.18а', '', '', '', 'combat.narod.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Автономная некоммерческая организация Клуб Единоборств &quot;Комбат&quot; основной своей целью ставит развитие спортивных и традиционных видов единоборств и систем самозащиты.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Спортсмены клуба &quot;Комбат&quot; - многократные победители и призеры чемпионатов Москвы по тайскому боксу, призеры всероссийских соревнований и неоднократные победители профессиональных турниров по тайскому боксу, а также победители и призеры соревнований по кикбоксингу, боксу, армейскому рукопашному бою, контактному каратэ.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Клуб Комбат является соучредителем Ассоциации Клубов Боевых Искусств (АКБИ) ЦАО города Москвы, &nbsp;совместно с которой было проведено 15 Открытых турниров ЦАО по каратэ, кикбоксингу и рукопашному бою.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Клуб Единоборств &quot;Комбат&quot; существует с 1997 года. Клуб возник на части коллектива спорт клуба &quot;Арбат 51&quot;, в котором в конце 80-х тренировали известные специалисты единоборств: Глеб Горячев, Николай Гречко, Александр Королев (каратэ Сэн&quot;э), Юрий Семенов (кикбоксинг ЕПАКК), Игорь Федорович Пестун, Александр Столяров (кикбоксинг КИТЭК), Константин Давыдов (каратэ, кикбоксинг клуб &quot;Будо&quot;), Алексей Иванов (каратэ Дзесимон).</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(110, 'Фитнес клуб "Палестра Sport"1', 0, 'on', '0', 'fitnes-klub-palestra-sport1', '0', 'Фитнес клуб "Палестра Sport"1', 'Фитнес клуб "Палестра Sport"1', 'Фитнес клуб "Палестра Sport"', '0e62ef5dd0133fe2f0f58d864e8b5b2e.jpg', 35, '8', 12, '0', 0, 'Москва, ул. 2-я Песчаная, д. 4а.', '', '', '', 'palestrasport.ru', '8:00-21:00', '<p>На территории &laquo;ПАЛЕСТРА Sport&raquo; находятся:</p>\n\n<ul>\n	<li>SPA-салон.</li>\n	<li>Три бассейна (детский, бассейн с морской водой и большой бассейн (25 м) с тремя плавательными дорожками и отдельной зоной для занятий по аква-аэробике).</li>\n	<li>Два тренажерных зала с новейшим оборудованием.</li>\n	<li>Зал единоборств.</li>\n	<li>Крытый теннисный корт со специальным покрытием.</li>\n	<li>Два зала для персональных тренировок.</li>\n	<li>Три зала для групповых тренировок.</li>\n	<li>Марокканский хаммам, сауна и русская баня.</li>\n	<li>SPA-кафе, ресторан, летняя терраса.</li>\n	<li>Детский Пиратский Клуб.</li>\n</ul>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(111, 'Спортивный комплекс "Олимпийский"', 0, 'on', '0', 'sportivnyj-kompleks-olimpijskij', '0', 'Спортивный комплекс "Олимпийский"', 'Спортивный комплекс "Олимпийский"', 'Спортивный комплекс "Олимпийский"', '1077a70df11684b33eb7433611b5124e.jpg', 35, '52', 10, '53', 10, 'Москва, Олимпийский пр., д. 16, корп. 2', '', '', '', 'www.olimpik.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">График занятий уточняйте по телефону.Олимпийский&raquo; - уникальный многофункциональный спортивно-зрелищный объект России, который по праву считается достопримечательностью Москвы. Он был построен к XXII Московским Олимпийским играм 1980 года и именно 19 июля &ndash; день открытия Олимпиады в столице стало официальным днем рождения комплекса.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;Олимпийский&raquo; состоит из двух основных зданий &ndash; стадиона и плавательного бассейна. С момента постройки и по сей день &laquo;Олимпийский&raquo; остается самым большим крытым спортивным сооружением на территории Европы, а на момент открытия ему не было равных и в мире.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">При этом стоит отметить, что &laquo;Олимпийский&raquo; - единственный комплекс такого масштаба, располагающийся в непосредственной близости к историческому центру города (вблизи станции метро &laquo;Проспект мира&raquo;).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Центральная арена &laquo;Олимпийский&raquo; вмещает 35 000 зрителей. Она имеет размеры стандартного футбольного поля, но ее отличительной чертой является возможность разделения зала на две автономные части, в которых мероприятия могут проводиться одновременно. Причем как спортивные турниры (в том числе по зимним видам спорта), так и концертно-цирковые представления или выставки.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<h1 style="text-align:center">Като</h1>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(112, 'Парк "Крылатское"', 0, 'on', '0', 'park-krylatskoe', '0', 'Парк "Крылатское"', 'Парк "Крылатское"', 'Парк "Крылатское"', 'bad684609edf2c209131bb61c8b16e2b.jpg', 36, '30', 27, '0', 0, 'Москва, ул. Крылатская, д. 17', '', '', '', '', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(113, 'Спортивный клуб "Вымпел" на Домодедовской', 0, 'on', '0', 'sportivnyj-klub-vympel-na-domodedovskoj', '0', 'Спортивный клуб "Вымпел" на Домодедовской', 'Спортивный клуб "Вымпел" на Домодедовской', 'Спортивный клуб "Вымпел" на Домодедовской', 'b4a5f010ee435296bcbfc922e9f6cbf3.jpg', 35, '54', 17, '0', 0, 'Москва, Каширское ш., д. 144, корп. 2', '', '', '', 'www.vympelclub.ru', '8:00-21:00', '<p>Как известно, всякий театр начинается с вешалки, а клуб &laquo;Вымпел&raquo; начинается с зоны ресепшн.<br />\nНет! Клуб &laquo;Вымпел&raquo; начинается прямо в вашем доме!</p>\n\n<p>Вы только что проснулись, умылись, и не знаете, что готовит для вас новый день? Вспомните о том, что вечером у вас запланирован поход в &laquo;Вымпел&raquo;, и ваше настроение сразу же улучшится.</p>\n\n<p>Спросите у любого человека, хочет ли он быть успешным и добиться наилучших результатов на работе, мечтает ли он о дружной семье и крепкой дружбе, и наверняка получите утвердительный ответ.</p>\n\n<p>Конечно, все мы ставим перед собой какие-то цели, и упорно трудимся для того, чтобы их достичь. Но иногда наших стараний попросту не хватает. Неприятности на работе или учебе снижают нашу самооценку, и мы теряем стимулы для движения вперед. В таком случае нужно срочно искать новое увлечение, знакомиться с новыми людьми. Идеальным местом для такого времяпровождения является клуб &laquo;Вымпел&raquo;.</p>\n\n<p>Здесь функционируют секции фитнеса, боевых искусств, танцев, работает солярий и массажный кабинет. Вы запросто можете провести день в одном здании, и вам ни капельки не надоест.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(114, 'Фитнес клуб "MAXIMA fitness"', 0, 'on', '0', 'fitnes-klub-maxima-fitness', '0', 'Фитнес клуб "MAXIMA fitness"', 'Фитнес клуб "MAXIMA fitness"', 'Фитнес клуб "MAXIMA fitness"', 'ae1daa1fad1bbb170a3cecc95fc0e856.jpg', 35, '57', 9, '0', 0, 'Москва, ул. Перерва, д. 52, стр. 1', '', '', '', 'vk.com/club4718615', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Клуб для всей семьи, расположенный в непосредственной близости от м. Марьино, площадью 1720 кв.м. Тренажерный зал, 2 зала групповых направлений, зал восточных единоборств, кардиозона, сауна, солярий, салон красоты.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Открытие фитнес-клуба состоялось в феврале 2001 года. Он создавался с целью развития физической культуры и спорта, и достаточно быстро мы пришли к выводу, что для достижения успеха необходимо создавать условия для возможности занятий спортом всей семьей.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Наш клуб сейчас является одним из крупнейших фитнес-центров в районе Марьино и занимает площадь 1720 кв.м. Ежедневно клуб посещают от 150 до 300 человек, в распоряжении которых находятся тренажерный зал (360 кв.м.), 2 зала групповых занятий (180 кв.м.), зал восточных единоборств (200 кв.м.), массажный кабинет, солярий, салон красоты, сауна.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В клубе доступен широкий спектр фитнес-программ (степ-аэробика, шейпинг, калланетик, пилатес, йога, тай-чи, силовая аэробика, клубные танцы, танец живота, фитбол-гимнастика и оздоровительная аэробика для детей, каратэ, у-шу, тайский бокс, дзюдо, для взрослых, детей и подростков, персональные занятия) и постоянно открываем новые перспективные направления, следуя последним тенденциям развития фитнеса.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(115, 'ВДНХ', 0, 'on', '0', 'vdnh', '0', 'ВДНХ', 'ВДНХ', 'ВДНХ', '4b727c49c2a8f3262cd325e66f059830.jpg', 36, '55', 19, '56', 24, 'Москва, просп. Мира, вл. 119', '', '', '', '', '8:00-21:00', '<p>Обучение: да</p>\n\n<p>Прокат: да</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Велопрогулки по ВДНХ:</p>\n\n<p>Ровные асфальтовые дорожки и живописное окружение делают ВВЦ идеальным местом для катании на велосипеде. Площадь парка 237.5 га.<br />\nПокрытие: асфальт.</p>\n\n<p>Катание на роликах и скейтборде:</p>\n\n<p>Специально оборудованная площадка площадью более тысячи квадратных метров и освещенная двадцатью четырьмя проекторами предназначена не только для профессиональных скейтеров и роллеров, но и для начинающих любителей активного отдыха.</p>\n\n<p>Телефон: +7 (495) 544-34-00.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(116, 'Центр Развития Личности "iPerson"', 0, 'on', '0', 'centr-razvitija-lichnosti-iperson', '0', 'Центр Развития Личности "iPerson"', 'Центр Развития Личности "iPerson"', 'Центр Развития Личности "iPerson"', '7b6e6e305f3ac8f63238da102776cd68.jpg', 35, '58', 6, '0', 0, 'Москва, ул. Строителей, д. 11, корп.1', '', '', '', 'http://vk.com/wall-52924418', '8:00-21:00', '<p>Основная задача центра помощь в реабилитации и развитии детей с ограниченными возмодностями.</p>\n\n<p>Но во второй попловине дня проходят развивающие занятия для детей и взрослых, в том числе на базе единоборств (УШУ, Каратэ, Дзюдо, Бокс, Кикбоксинг, греплинг).</p>\n\n<p>Занятия проводят мастера и кандидаты в мастера спорта, с высшим психологическим и педагогическим образованием.</p>\n\n<p>Занятия проходят в минигруппах (до 7 человек) или индивидуально.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(117, 'Физкультурно-оздоровительный комплекс "Борец"', 0, 'on', '0', 'fizkulturno-ozdorovitelnyj-kompleks-borec', '0', 'Физкультурно-оздоровительный комплекс "Борец"', 'Физкультурно-оздоровительный комплекс "Борец"', 'Физкультурно-оздоровительный комплекс "Борец"', 'b1ba421b24c59dfa1c085a1cba6f6592.jpg', 34, '0', 0, '0', 0, 'Москва, ул. Богданова, д. 12, корп. 2', '', '', '', 'borec.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Открытие спортивной школы &quot;Борец&quot; стало ярким событием в жизни столицы. Оно состоялось 23 февраля 2001 года в День защитника Отечества, что само по себе уже символично. Перед многочисленными почётными гостями предстал современный спортивный комплекс, оснащённый всем необходимым для занятий борьбой детей и подростков, воспитания их в духе патриотизма, подготовки будущих строителей и защитников Родины.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(118, 'ДЮСШ № 96 "Борец"', 0, 'on', '0', 'djussh-96-borec', '0', 'ДЮСШ № 96 "Борец"', 'ДЮСШ № 96 "Борец"', 'ДЮСШ № 96 "Борец"', '00c3dc0e9d3965edd3a4a09c45a6aef7.jpg', 34, '0', 0, '0', 0, 'Москва, Боровское ш., д. 37, корп. 1', '', '', '', 'www.borec.ru', '8:00-21:00', '<p>Спортивные единоборства на западе Москвы были популярны издавна. С середины 60-х годов здесь уже работали секции классической борьбы, воспитанники которых добивались весьма высоких результатов на московских и всесоюзных соревнованиях.</p>\n\n<p>В 1981 году на базе школы N 7 (ныне школа N 1004) усилиями энтузиастов Заслуженного тренера РСФСР Бессонова Д.Н. и председателя Солнцевского горисполкома мастера спорта СССР Брячихина А.М. была создана первая секция Самбо, ставшая уже через год спортивной школой N2, в которой увлеченно занимались сотни мальчишек.</p>\n\n<p>Однако, клубы и секции первое время либо вовсе не имели своей базы, арендуя залы, либо ютились в подвалах и полуподвалах.</p>\n\n<p>Учитывая огромный спрос населения на занятия борьбой, в 1990 году спортивной школе № 2 было передано старое полуразрушенное здание бывшей общеобразовательной школы в Ново-Переделкино.</p>\n\n<p>Кроме того, что здание требовало капитального ремонта, оно ещё требовало и реконструкции под спортивный комплекс и увеличения площадей. Ремонт и реконструкция требовали немалых средств, и мечта о новом комплексе так и оставалась долгие годы лишь мечтой.</p>\n\n<p>В 1999 году на должность директора ДЮСШ был назначен Заслуженный мастер спорта, неоднократный чемпион мира И.И.Куринной.</p>\n\n<p>С появлением нового руководства появились и инвесторы в лице Финансово-строительной корпорации &quot;ТЕСКО&quot; и инвестиционной компании &quot;Мир Фантазий&quot;, которые взяли на себя нелёгкий груз по реконструкции и ремонту здания школы, находившейся в то время в плачевном состоянии.</p>\n\n<p>Также полным ходом шло и строительство системы управления новой школы, схем и принципов её дальнейшего функционирования. В результате этой интенсивной работы уже в марте 2000 года начала свое существование ДЮСШ &quot;БОРЕЦ&quot;, объединившая под своим началом школы борьбы в Солнцево, Ново-Переделкино, Кокошкино и Внуково, а в декабре того же года была завершена реконструкция здания.</p>\n\n<p>Был подобран работоспособный персонал, созданы хозяйственно-административные и методические основы работы нового образовательного учреждения Москвы, распахнувшего свои двери для всех желающих встать на путь своего физического развития и самосовершенствования.</p>\n\n<p>Открытие спортивной школы &quot;Борец&quot; стало ярким событием в жизни столицы. Оно состоялось 23 февраля 2001 года в День защитника Отечества, что само по себе уже символично. Перед многочисленными почётными гостями предстал современный спортивный комплекс, оснащённый всем необходимым для занятий борьбой детей и подростков, воспитания их в духе патриотизма, подготовки будущих строителей и защитников Родины.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(120, 'Фитнес-центр "TERRASPORT Коперник"', 0, 'on', '0', 'fitne-centr-terrasport-kopernikplavanie', '0', 'Фитнес-центр "TERRASPORT Коперник"', 'Фитнес-центр "TERRASPORT Коперник"', 'Фитнес-центр "TERRASPORT Коперник"', 'ea881a33f18540020cb02dce0646487d.jpg', 49, '31', 7, '32', 17, 'Москва, ул. Большая Якиманка, д. 22, стр.1', '', '', '', '', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;TERRASPORT Коперник&raquo; &mdash; фитнес-центр премиум-класса общей площадью 2 700 кв м. расположен в центре Москвы, в жилом комплексе нового поколения &laquo;Коперник&raquo;.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Оснащение фитнес-центра и сервис предоставляемых услуг &mdash; на уровне лучших элитных клубов мира.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Использование последних достижений инженерии и фитнес-индустрии, клиентский сервис, изысканный дизайн внутреннего пространства, а также использование в отделке помещений исключительно природных материалов обеспечивают беспрецедентный уровень экологичности и комфорта, достойный посетителей клуба &mdash; успешных людей нового поколения.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В 2008 г. &laquo;TERRASPORT Коперник&raquo; по мнению Всероссийской Премии &laquo;Грация&raquo; был признан Лучшим фитнес-центром премиум-класса в Москве.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В 2011 и 2012 г. Детский клуб фитнес-центра первым и пока единственный в Москве получил знак качества &laquo;ЛУЧШЕЕ ДЕТЯМ&raquo;.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В 2011 г. &laquo;TERRASPORT Коперник&raquo; по мнению Международной Премии &laquo;Грация&raquo; был признан Лучшим фитнес-центром России.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>3 зала групповых программ;</li>\n	<li>2 студии Pilates;</li>\n	<li>залы для персональных тренировок;</li>\n	<li>тренажерный зал, оснащенный самым современным оборудованием ведущих мировых производителей таких, как Precor, Cybex, Ivanko;</li>\n	<li>кардио-зона с кардио-театром;</li>\n	<li>бассейн длинной 25 м., в котором проводятся как индивидуальные, так и групповые занятия по плаванию и аква-аэробике;</li>\n	<li>кабинет функциональной диагностики и диетологии;</li>\n	<li>велостудия;</li>\n	<li>фитнес-бар, в котором можно не только выпить стакан свежевыжатого сока или специального фитнес-коктейля, но и заказать завтрак, обед или ужин, приготовленный по всем правилам здорового питания, а также заказать дневной рацион правильного питания в зависимости от вашей фитнес-цели с доставкой в любое удобное для вас место;</li>\n	<li>солярий;</li>\n	<li>детский центр со спортивными, развивающими и творческими классами;</li>\n	<li>индивидуальные сейфы;</li>\n	<li>SPA-салон, оказывающий полный спектр парикмахерских и косметических услуг.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(121, 'Фитнес клуб "Белая камелия"', 0, 'on', '0', 'fitnes-klub-belaja-kamelija', '0', 'Фитнес клуб "Белая камелия"', 'Фитнес клуб "Белая камелия"', 'Фитнес клуб "Белая камелия"', '73931366108c408b7f2228ba3b280fa1.jpg', 33, '59', 14, '0', 0, 'Москва, ул. Ленская, д. 2, корп. 21', '', '', '', 'white-kamelia.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;Ты &ndash; прекрасна&raquo; - на языке цветов означает преподнесение белой камелии.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Именно поэтому мы и решили так назвать наш клуб. Мы хотим сказать, что каждая женщина прекрасна.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">И только она знает и чувствует себя лучше, чем окружающие. Поэтому мы не предлагаем решить какие-либо проблемы, или сказать что делать, мы просто идем за желаниями женщины.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Мы представляем наши услуги, что удовлетворить ее потребности в информации, общении, движении, положительных эмоциях.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(122, 'Национальный аэроклуб России им. Чкалова', 0, 'on', '0', 'nacionalnyj-aeroklub-rossii-i-chkalova', '0', 'Национальный аэроклуб России им. Чкалова', 'Национальный аэроклуб России им. Чкалова', 'Национальный аэроклуб России им. Чкалова', 'bdefcf65b404f20809ad7cb8b2ca7a0c.jpg', 37, '60', 9, '0', 0, 'Москва, Волоколамское шоссе, д. 88, стр. 1', '', '', '', 'www.aero-club.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<p>Обучение:&nbsp;да</p>\n\n<p>Прокат:&nbsp;да</p>\n\n<p>Национальный аэроклуб России им. Чкалова (ФГУП &laquo;НАК России им. Чкалова&raquo;), один из старейших в нашей стране, ведет историю с 1935 года и является наследником Центрального аэроклуба ДОСААФ СССР. Сегодня авиационная деятельность аэроклуба сосредоточена в филиале &ndash; Авиационном центре &laquo;Борки&raquo; (Тверская Область), на аэродроме которого идет подготовка спортсменов &ndash; летчиков, парашютистов, авиамоделистов. В своей деятельности Национальный аэроклуб активно сотрудничает с Федерацией парашютного спорта России, Федерацией вертолетного спорта России, Федерацией воздухоплавания и другими профильными федерациями авиационного спорта.</p>\n\n<p>В 2012 году ФГУП &laquo;НАК России им. Чкалова&raquo; начало реализацию программы модернизации материально&ndash;технической базы и аэродромной инфраструктуры, цель которой - создание на базе АЦ &laquo;Борки&raquo; отвечающего современным мировым требованиям спортивного аэродрома.</p>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(124, 'Клуб смешанных единоборств "Р.О.Д.Ъ."1', 0, 'on', '0', 'klub-smeshannyh-edinoborstv-r.o.d..1', '0', 'Клуб смешанных единоборств "Р.О.Д.Ъ."1', 'Клуб смешанных единоборств "Р.О.Д.Ъ."1', 'Клуб смешанных единоборств "Р.О.Д.Ъ."', 'ad30da84803dc238e821c093338e9a84.jpg', 33, '37', 17, '8', 0, 'Москва, ул. Летниковская, д. 6 А', '', '', '', 'mma-russia.ru', '8:00-21:00', '<p>&quot;Самооборона&quot;, &quot;тактика ближнего боя&quot;, &quot;самозащита&quot;, &quot;ножевой бой&quot;, &quot;обращение с травматическим оружием и условия его использования&quot; - в Клубе &quot;Р.О.Д.Ъ.&quot;!&nbsp;</p>\n\n<p>Интернет пестрит предложениями, обещающими обучить Вас всему вышеуказанному!</p>\n\n<p><strong>Чем уроки в Клубе &quot;Р.О.Д.Ъ.&quot; лучше?!</strong></p>\n\n<p>На сегодняшний день наш Клуб заслужил уважение и признание в области смешанных единоборств. Успех - плод работы команды: руководители, тренеры и спортсмены.</p>\n\n<p>Наш подход - результат в сжатые сроки. Результат не разовый, а постоянный. Наращивание присутствуя, в интересующей нас области, умение разбираться в людях; создавать взаимовыгодные условия - позволяет нам достигать значимых результатов.</p>\n\n<p>Аналогичным образом мы будем действовать развивая в Клубе дисциплину - самооборона.</p>\n\n<p>Общеизвестно - навыки в области единоборств, наличие спортивных разрядов, степеней и званий приравнивается к обладанию - &quot;оружием&quot;. Мы не спорим с этим, но и не соглашаемся. Однако убеждены, что правовые границы &laquo;необходимой обороны&raquo; не помешает знать и мастерам спорта, чтобы при случае, своим &quot;оружием&quot;, не причинить вреда себе.</p>\n\n<p>Уроки самообороны - это как физическая, так и умственная нагрузка.</p>\n\n<p>&nbsp;</p>\n\n<p><strong>Сравним ММА (смешанные единоборства) и самооборону.</strong></p>\n\n<p>ММА - бой на ринге или в клетке; жесткий бой, но по правилам; по обоюдному согласию; присутствуют секунданты; рефери и медики. Все, за исключением исхода боя, известно и понятно.</p>\n\n<p>Самооборона - угроза жизни или имуществу; нарушение Вашей свободы и права на неприкосновенность личности; фактор неожиданности; помощи нет. Цель - выйти из опасной ситуации без потерь.</p>\n\n<p>Опытнейшие инструкторы, привлекаемые нами для обучения, помогут Вам обрести свободу и уверенность в себе!</p>\n\n<p>С нашей помощью Вы сможете защитить свою свободу! Ибо свобода других людей, заканчивается там - где начинается Ваша!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(125, 'Семейный клуб "Орион"', 0, 'on', '0', 'semejnyj-klub-orion', '0', 'Семейный клуб "Орион"', 'Семейный клуб "Орион"', 'Семейный клуб "Орион"', '1d0d2aa73d90e87d218430118eaf5727.jpg', 51, '0', 0, '0', 0, 'Москва, ул. Главмосстроя, д. 9', '', '', '', 'tks-solntsevo.ru', '8:00-21:00', '<p>Клуб &quot;Орион&quot; - это один из самых светлых и современных клубов ТКС &quot;Солнцево&quot;. Несмотря на то, что расположен он в четырех квартирах на первом этаже пятиэтажного жилого дома, здесь работают не только различные студии детского творчества, но и небольшой уютный хореографический зал, где занимаются взрослые и дети. У нас работают высокопрофессиональные специалисты - мастера своего дела, которые с удовольствием и вниманием относятся к своей профессии, привнося в клуб уют и доброжелательную атмосферу.</p>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">К сожалению, в связи с реконструкцией улицы Главмосстроя, д.3 к.3 скоро будет снесен, и занятия будут проводится в другом помещении, но пока еще у вас есть возможность поучавствовать в занятиях именно по этому адресу.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(126, 'Аэроград "Коломна" (аэродром "Коробчеево")', 0, 'on', '0', 'aerograd-kolomna-aerodrom-korobcheevo', '0', 'Аэроград "Коломна" (аэродром "Коробчеево")', 'Аэроград "Коломна" (аэродром "Коробчеево")', 'Аэроград "Коломна" (аэродром "Коробчеево")', '35714e46f3fd92681b55f13c4771f0e9.jpg', 37, '0', 0, '0', 0, 'Московская область, Коломенский район, поселок Коробчеево, аэродром Коробчеево', '', '', '', 'www.aerograd.ru', '8:00-21:00', '<p>Аэроклуб &laquo;Аэроград Коломна&raquo; &mdash; это безграничные возможности для экстремального отдыха и развлечений. Профессионалы обеспечат полную безопасность и высокий уровень обучения.</p>\n\n<p>На протяжении 14 лет в аэроклубе проводится индивидуальное обучение прыжкам с парашютом, а также курсы подготовки, переподготовки пилотов-любителей. Помимо основных направлений деятельности, при аэроклубе предоставляются дополнительные ресторанные и гостиничные услуги.</p>\n\n<p>Для желающих ближе познакомиться с небом аэроклубом представлены программы различного уровня сложности как для начинающих, так и для опытных спортсменов. В &laquo;Аэрограде Коломна&raquo; есть спортивный парашютный клуб, летная школа, городок с хорошо оборудованной зоной для семейного и корпоративного отдыха.</p>\n\n<p>В &laquo;Аэрограде Коломна&raquo; есть необходимая техническая база, работает прокат оборудования и снаряжения. На территории аэроклуба ежегодно проводятся соревнования международного и федерального масштаба.</p>\n\n<p>Для спортсменов и начинающих предусмотрены специальные и пакетные предложения, скидки и акции. Как и прочие ведущие аэроклубы Москвы, &laquo;Аэроград Коломна&raquo; предлагает приобрести подарочные сертификаты. Заказать их можно в режиме онлайн с возможностью удобной формы расчета и оперативной курьерской доставки.</p>\n\n<p>Подробнее узнать об условиях сотрудничества можно по телефонам: +7 (495) 790-15-11, +7 (499) 400-37-56, +7 (495) 972-73-80.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(127, 'Аэроклуб "Пересвет-Аэро"', 0, 'on', '0', 'aeroklub-peresvet-aero', '0', 'Аэроклуб "Пересвет-Аэро"', 'Аэроклуб "Пересвет-Аэро"', 'Аэроклуб "Пересвет-Аэро"', '4dc2efb2528e40ffffc5cd7c627f6c53.jpg', 37, '0', 0, '0', 0, 'Московская область, дер. Вихрево', '', '', '', 'www.vihrevo.ru', '8:00-21:00', '<p>Прыжок с парашютом в Москве является одним из наиболее популярных видов развлечения у любителей экстремальных видов спорта! Приглашаем вас прыгнуть с парашютом с борта самолета АН-2 и получить массу незабываемых впечатлений. Даже если вы ранее никогда не прыгали, и это ваш первый прыжок с парашютом - не беда, опытный инструктор всему научит и сделает так, чтобы прыжок был безопасным!</p>\n\n<p>Телефоны: +7 (905) 757-62-41, +7 (495) 649-51-99.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(128, 'Авиационный спортивный клуб "Аэроклассика"', 0, 'on', '0', 'aviacionnyj-sportivnyj-klub-aeroklassika', '0', 'Авиационный спортивный клуб "Аэроклассика"', 'Авиационный спортивный клуб "Аэроклассика"', 'Авиационный спортивный клуб "Аэроклассика"', '66ab5464c2c958144e9262afec9948de.jpg', 37, '0', 0, '0', 0, 'Московская область, дер. Ватулино', '', '', '', 'www.parashut.com', '8:00-21:00', '<p>Авиационный спортивный клуб &laquo;Аэроклассика&raquo; был создан в начале 2004 года. Уже более семи лет мы базируемся на историческом для советской авиации месте &mdash; аэродроме Ватулино, расположенном в 100 км к западу от Москвы.</p>\n\n<p>Сегодня &laquo;Аэроклассика&raquo; &mdash; перспективный центр развития парашютного спорта, обладающий высокопрофессиональным инструкторским и летным составом.</p>\n\n<p>Авиационный спортивный клуб &laquo;Аэроклассика&raquo; &mdash; это некоммерческая образовательная организация, а потому извлечение прибыли не является ни целью, ни мотивацией нашей работы. В первую очередь мы стремимся организовать прыжки с парашютом для тех, кто состоит в нашем клубе, и для тех, кто только начинает свое знакомство с небом. Членство в аэроклубе добровольное и основано на общности интересов &mdash; любви к авиации и прыжкам с парашютом. &laquo;Аэроклассика&raquo; гостеприимна: мы всегда готовы поддержать новичков, а наши более опытные спортсмены &mdash; поделиться своим опытом и знаниями.</p>\n\n<p>А еще &laquo;Аэроклассика&raquo; оказывает содействие в организации физкультурных, спортивных и патриотических мероприятий для общественных организаций и частных компаний.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES
(129, 'Фитнес клуб "Физ-Ра"', 0, 'on', '0', 'fitnes-klub-fiz-ra', '0', 'Фитнес клуб "Физ-Ра"', 'Фитнес клуб "Физ-Ра"', 'Фитнес клуб "Физ-Ра"', '5d54075d9adb1453858492de6ecc6acb.jpg', 51, '61', 27, '0', 0, 'Москва, Филевский Бульвар, д. 10', '', '', '', 'vk.com/club54899561', '8:00-21:00', '<p>ДОБРО ПОЖАЛОВАТЬ В НАШ ФИТНЕС-КЛУБ!</p>\n\n<p>Фитнес-клуб &quot;Физ-Ра&quot; &mdash; место, сочетающее в себе спортивный зал, кардио-зону, зал аэробики, танцевальные программы.</p>\n\n<p>В фитнес-клубе Вы можете заниматься самостоятельно либо выбрать профессионального инструктора, который составит индивидуальную программу оздоровления и укрепления организма.</p>\n\n<p>Наш фитнес-клуб также предоставляет услуги массажа, салона красоты, сауны. Также у нас Вы можете приобрести спортивное питание для лучших результатов.</p>\n\n<p>Фитнес-клуб &quot;Физ-Ра&quot; расположен по адресу: Москва, м. Фили, Филевский бульвар, 10.</p>\n\n<p>Мы работаем без выходных!</p>\n\n<p>Узнать подробнее о наших занятиях, записаться в солярий или на массаж Вы можете по телефону либо отправив Ваш запрос с нашего сайта.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(130, 'Школа паркура "Parkour School" м. Динамо', 0, 'on', '0', 'shkola-parkura-parkour-school-m.-dinamo', '0', 'Школа паркура "Parkour School" м. Динамо', 'Школа паркура "Parkour School" м. Динамо', 'Школа паркура "Parkour School" м. Динамо', '775055e7896f4f65f09754dca3b9b652.jpg', 38, '17', 12, '0', 0, 'Москва, Ленинградский просп., д. 36, корп. 56', '', '', '', 'parkourschool.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<p>Обучение:&nbsp;да</p>\n\n<p>Прокат:&nbsp;да</p>\n\n<p>Parkour School - состав опытных инструкторов, развивающих ваши возможности. Школа Паркура создает атмосферу позитива и легкости в понимании перемещения.</p>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Обучение на первоклассном уровне всех видов паркура: базовый паркур (old school), фриран (new scool), трикинг, акробатика, ОФП.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(131, 'Школа паркура "Parkour School" м. Киевская', 0, 'on', '0', 'shkola-parkura-parkour-school-m-kievskaya', '0', 'Школа паркура "Parkour School" м. Киевская', 'Школа паркура "Parkour School" м. Киевская', 'Школа паркура "Parkour School" м. Киевская', 'f1149ea1a74f3a3dff7d33ca571b56ed.jpg', 38, '62', 12, '0', 0, 'Москва, 2-ой Сетуньский проезд, вл. 5б', '', '', '', 'parkourschool.ru', '8:00-21:00', '<p><strong>Обучение: да</strong></p>\n\n<p><strong>Прокат: да</strong></p>\n\n<p><strong>Parkour School - состав опытных инструкторов, развивающих ваши возможности. Школа Паркура создает атмосферу позитива и легкости в понимании перемещения.</strong></p>\n\n<p><strong>Обучение на первоклассном уровне всех видов паркура: базовый паркур (old school), фриран (new scool), трикинг, акробатика, ОФП.</strong></p>\n\n<p><strong>В школе имеется всё необходимое для проведения безопасных тренировок для детей. Родители могут присутствовать на занятиях, смотреть и набираться энтузиазма к самостоятельным занятиям.<br />\nТак же разработана тренировочная программа для взрослых, в рамках которой основное внимание уделяется отработке базовых техник, движений и элементов искусства перемещения. Обучение акробатике и различным стилям перемещения, применимых в различных жизненных ситуациях.</strong></p>\n\n<p><strong>Телефоны:&nbsp;+7 (926) 698-30-31.</strong></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(132, 'Школа паркура "Parkour School" м. Университет', 0, 'on', '0', 'shkola-parkura-parkour-school-m-universitet', '0', 'Школа паркура "Parkour School" м. Университет', 'Школа паркура "Parkour School" м. Университет', 'Школа паркура "Parkour School" м. Университет', '10c77daacfdb7024cc3daa9934993941.jpg', 38, '63', 22, '0', 0, 'Москва, Ломоносовский проспект, д. 27, корп. 4', '', '', '', 'parkourschool.ru', '8:00-21:00', '<p>Обучение: да</p>\n\n<p>Прокат: да</p>\n\n<p>Parkour School - состав опытных инструкторов, развивающих ваши возможности. Школа Паркура создает атмосферу позитива и легкости в понимании перемещения.</p>\n\n<p>Обучение на первоклассном уровне всех видов паркура: базовый паркур (old school), фриран (new scool), трикинг, акробатика, ОФП.</p>\n\n<p>В школе имеется всё необходимое для проведения безопасных тренировок для детей. Родители могут присутствовать на занятиях, смотреть и набираться энтузиазма к самостоятельным занятиям.<br />\nТак же разработана тренировочная программа для взрослых, в рамках которой основное внимание уделяется отработке базовых техник, движений и элементов искусства перемещения. Обучение акробатике и различным стилям перемещения, применимых в различных жизненных ситуациях.</p>\n\n<p>Телефон: +7 (925) 000-14-37.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(133, 'Воздухоплавательный клуб "Аэровальс"', 0, 'on', '0', 'vozduhoplavatelnyy-klub-aerovals', '0', 'Воздухоплавательный клуб "Аэровальс"', 'Воздухоплавательный клуб "Аэровальс"', 'Воздухоплавательный клуб "Аэровальс"', '90f6cf3513d8b74e634fc25023ab8d2d.jpg', 39, '60', 9, '0', 0, 'Москва, Волоколамское ш., 88, стр. 1, офис 214', '', '', '', 'Тушинская9 мин Контактная информация: Москва, Волоколамское ш., 88, стр. 1, офис 214 aerowaltz.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Воздухоплавательный клуб Аэровальс проводит обучение и организацию полётов на аэростатах (воздушных шарах). При поддержке администрации Дмитровского района, клуб ежегодно проводит соревнования на &laquo;Кубок губернатора московской области по воздухоплавательному спорту&raquo;, который с 2004 г. проходит с санкции СИА ФАИ и имеет международный статус.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Кроме этого, в рамках празднования 850-летия Москвы клуб являлся устроителями международного фестиваля воздухоплавателей &laquo;Москва-850&raquo; в 1997г, организаторами воздухоплавательной программы на авиасалоне &laquo;МАКС-2003&raquo; в г. Жуковский. Воздухоплавательная часть празднования 850-летия г.Дмитрова также была организована нами. В 2005 году клуб провёл фестивали воздухоплавания, посвященные 750-летию Калининграда и 1000-летию Казани.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Офис работает ежедневно с 09:00 до 19:00, кроме выходных, полёты проходят ежедневно.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(134, 'Воздухоплавательный клуб "Прикоснись к небу"', 0, 'on', '0', 'vozduhoplavatelnyy-klub-prikosnis-k-nebu', '0', 'Воздухоплавательный клуб "Прикоснись к небу"', 'Воздухоплавательный клуб "Прикоснись к небу"', 'Воздухоплавательный клуб "Прикоснись к небу"', '849969a679a34ed40c37d29e86091c69.jpg', 39, '0', 0, '0', 0, 'Московская область, Мытищинский район, дер. Грибки, ул. Складская, д. 13', '', '', '', 'www.touch-the-sky.ru', '8:00-21:00', '<p>Наш клуб проводит полеты на воздушном шаре в Дмитровском районе Московской области, позвоните нам по телефону уже через несколько дней Вы будете любоваться неповторимыми пейзажами из корзины теплового аэростата (так в авиации называют воздушный шар).</p>\n\n<p>Телефон:&nbsp;+7 (985) 210-01-21.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(135, 'Физкультурно-оздоровительный комплекс "Потаповский"', 0, 'on', '0', 'fizkulturno-ozdorovitelnyy-kompleks-potapovskiy/', '0', 'Физкультурно-оздоровительный комплекс "Потаповский"', 'Физкультурно-оздоровительный комплекс "Потаповский"', 'Физкультурно-оздоровительный комплекс "Потаповский"', '94798ca1069ee0706c267a015f37f2d9.jpg', 52, '64', 8, '65', 11, 'Москва, Чистопрудный бульвар, д. 14, корп. 4', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">29 февраля 2008 года состоялось торжественное открытие нового физкультурно-оздоровительного комплекса &quot;Потаповский&quot;. Общая площадьфизкультурного комплекса - 1100 кв.м. с размещением физкультурно-спортивного универсального зала (26 м. x 16 м.) для спортивных игр: минифутбол, волейбол, флорбол, бадминтон, стритбол, настольный теннис. В цокольном этаже расположены залы для учебно-тренировочных занятий по боксу и борьбе, оборудованные раздевалками и душевыми.&nbsp;</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(136, 'Роллердром "Magic Park"', 0, 'on', '0', 'rollerdrom-magic-park', '0', 'Роллердром "Magic Park"', 'Роллердром "Magic Park"', 'Роллердром "Magic Park"', 'e3356025217c6eee1c5880890b9544ff.jpg', 40, '66', 10, '0', 0, 'Москва, Багратионовский пр-д, д. 5', '', '', '', 'happylon.com', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(137, 'Крытый скейтпарк на м. Семеновская', 0, 'on', '0', 'krytyy-skeytpark-na-m-semenovskaya', '0', 'Крытый скейтпарк на м. Семеновская', 'Крытый скейтпарк на м. Семеновская', 'Крытый скейтпарк на м. Семеновская', '938385300518059bdc39107495e6bf61.jpg', 40, '69', 15, '69', 23, 'Москва, ул. Ибрагимова, д. 25', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(0, 0, 0); font-family:segoe,sans-serif; font-size:16px">Парк находится в здании комплекса МОЦВС. Из оборудования в парке есть: большая рампа, несколько квотеров, радиусный фанбокс, поролоновая яма и разгонка к ней.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(138, 'Физкультурно-оздоровительный комплекс "Марьина роща"', 0, 'on', '0', 'fizkulturno-ozdorovitelnyy-kompleks-marina-roshcha/', '0', 'Физкультурно-оздоровительный комплекс "Марьина роща"', 'Физкультурно-оздоровительный комплекс "Марьина роща"', 'Физкультурно-оздоровительный комплекс "Марьина роща"', 'c0cf48954a4c52c426c887497c4fe3a1.jpg', 52, '67', 10, '68', 19, 'Москва, 3-я ул. Марьиной Рощи, д. 8', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">ФОК &quot;Марьина роща&quot; - это большой современный комплекс, где есть все необходимое для занятий спортом и укреплением здоровья. Комплекс предоставляет большие возможности для всех желающих заниматься спортом с любым уровнем физической подготовки, в том числе и для людей с ограниченными возможностями. Комплекс предназначен как для групповых, так и для индивидуальных занятий, а так же для проведения корпоративных и спортивных мероприятий, как на профессиональном, так и на любительском уровне.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(139, 'Скалодром Red Point', 0, 'on', '0', 'skalodrom-red-point', '0', 'Скалодром Red Point', 'Скалодром Red Point', 'Скалодром Red Point', 'ff14732e452c2722bce177dc35f65479.jpg', 41, '12', 11, '0', 0, 'Москва, ул. Вятская, д. 27, корп. 12', '', '', '', 'redpoint.msk.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Скалодром Red Point расположен в Москве по адресу Москва, улица Вятская, дом 27, корпус 12, на территории одного из лучших фитнес-клубов Москвы Zupre.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Высота скалодрома 12,5 метров, уникальная в своем роде конструкция &laquo;арка&raquo;, единственная на территории города Москвы. Скалодром состоит из четырех модулей:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>один нависающий модуль шириной 9 метров;</li>\n	<li>один слабонависающий модуль шириной 9 метров;</li>\n	<li>два вертикальных и частично положительных модуля шириной 6+9=15 метров.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(140, 'Фитнес клуб "X-Fit" Алтуфьево', 0, 'on', '0', 'fitnes-klub-x-fit-altufevo/', '0', 'Фитнес клуб "X-Fit" Алтуфьево', 'Фитнес клуб "X-Fit" Алтуфьево', 'Фитнес клуб "X-Fit" Алтуфьево', '7d965b518639f7e24d3483ad53c07a59.jpg', 53, '71', 29, '0', 0, 'Москва, ул. Угличская, д. 13', '', '', '', 'www.xfit.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Фитнес-клуб X-Fit Алтуфьево открылся в 1996 году в зеленой зоне столицы &ndash; Лианозовском парке, на экологически &nbsp;благоприятной для занятия фитнесом территории.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Особенности фитнес-центра: 25 метровый бассейн с отдельной зоной для аквааэробики и гидромассажной ванной, пять открытых и два крытых теннисных корта, открытая площадка для занятия футболом, волейболом, баскетболом, более 70 видов групповых программ.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Все фитнес-инструкторы имеют специальное высшее образование и спортивные достижения, прошли подготовку в Фитнес Университете X-Fit. Проводятся персональные тренировки.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Детский фитнес в нашем клубе включает плавание, спортивные игры, соревнования, персональные тренировки и групповые занятия. Детский клуб проводит общеразвивающие занятия, интеллектуальные игры, конкурсы и праздники.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Площадь клуба 2200 кв. метров;</li>\n	<li>Бассейн 25 м, гидромассажные ванны;</li>\n	<li>Тренажерный зал &nbsp;400 кв.м.;</li>\n	<li>Кардиозона;</li>\n	<li>Четыре зала групповых занятий общей площадью 350 кв.м.;</li>\n	<li>Теннисные корты: пять открытых и два крытых;</li>\n	<li>Открытая площадка для игровых видов спорта (мини-футбол, волейбол, баскетбол);</li>\n	<li>Детская игровая комната;</li>\n	<li>Массажный кабинет;</li>\n	<li>Финская сауна и турецкая парная;</li>\n	<li>Салон красоты;</li>\n	<li>Солярий;</li>\n	<li>Спортивный магазин;</li>\n	<li>Фитнес бар;</li>\n	<li>Клубная автостоянка для вашего удобства.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Большой теннис для детей:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>ДЮСШ по теннису круглый год;</li>\n	<li>Муниципальные и коммерческие группы;</li>\n	<li>Летний лагерь;</li>\n	<li>Проводятся соревновния по теннису.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(141, 'Детско-юношеская спортивная школа Озёрки', 0, 'on', '0', 'detsko-yunosheskaya-sportivnaya-shkola-ozyorki', '0', 'Детско-юношеская спортивная школа Озёрки', 'Детско-юношеская спортивная школа Озёрки', 'Детско-юношеская спортивная школа Озёрки', '2c6f97f0bd7a14e713a32f1baf4638b4.jpg', 41, '72', 20, '73', 24, 'Москва, ул. Бориса Галушкина, 17', '', '', '', 'www.ozerki.ru', '8:00-21:00', '<p>ДЮСШ &laquo;Озерки&raquo; работает по 3 направлениям: плавание, триатлон, альпинизм и скалолазание. В начале занятий одним из культивируемых в школе видов спорта дети обучаются в течение трех месяцев плавать четырьмя спортивными способами. Ученики, показавшие в течение этого периода прилежание и желание заниматься спортивным плаванием, триатлоном или скалолазанием, переводятся в группы начальной подготовки.</p>\n\n<p>С целью усовершенствования учебно-тренировочного процесса в школе организуются детские лагеря спорта и отдыха.</p>\n\n<p>Ученики школы выступают в муниципальных, городских и российских соревнованиях. Внутришкольные соревнования проводятся согласно учебным планам, утвержденным комитетом физической культуры. Сборная команда школы, составленная из спортсменов, показавших, показавших наилучшие результаты, участвует в различных соревнованиях городского и российского масштаба.</p>\n\n<p>Телефон:&nbsp;+7 (499) 760-39-91.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(145, 'Олимпийский комплекс "Лужники"', 0, 'on', '0', 'olimpiyskiy-kompleks-luzhniki/', '0', 'Олимпийский комплекс "Лужники"', 'Олимпийский комплекс "Лужники"', 'Олимпийский комплекс "Лужники"', '3bf73b10de373d86a1d63a64b7cb97a5.jpg', 53, '9', 9, '0', 0, 'Москва, ул. Лужники, д. 24', '', '', '', 'luzhniki.ru', '8:00-21:00', '<p>Олимпийский комплекс &quot;Лужники&quot; - крупнейший спортивно-развлекательный комплекс в России и Европе. Территория Лужников занимает площадь свыше 180 га, на которой расположены разнообразные объекты, предназначенные для проведения спортивных соревнований, концертов, других мероприятий и занятия спортом. Важнейшими сооружениями являются Большая спортивная арена , Малая спортивная арена, Дворец спорта, Плавательный бассейн, УСЗ &laquo;Дружба&raquo;, Спортивный городок, Топ-гольф комплекс (driving range).&nbsp;</p>\n\n<p>&quot;Лужники&quot; - грандиозный стадион, который не только обладает богатой историей, но и живет активной жизнью. На территории спорткомплекса регулярно проходят матчи и соревнования всероссийского и международного уровня, а также фестивали и концерты мировых знаменитостей.</p>\n\n<p>Среди занимающихся и посетителей стадиона систематически проводятся многочисленные спортивно-массовые соревнования по различным видам спорта, как среди детей, так и среди взрослых. Большое количество спортивных мероприятий проводятся совместно с городским спорткомитетом и Управлением спорта Центрального административного округа, спортивными Федерациями России.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(146, 'Бейсбольный стадион МГУ имени М.В. Ломоносова', 0, 'on', '0', 'beysbolnyy-stadion-mgu-imeni-mv-lomonosova/', '0', 'Бейсбольный стадион МГУ имени М.В. Ломоносова', 'Бейсбольный стадион МГУ имени М.В. Ломоносова', 'Бейсбольный стадион МГУ имени М.В. Ломоносова', '7f1f55e6233227f8877ab38df0e9098d.jpg', 54, '21', 13, '0', 0, 'Москва, Ленинские горы, МГУ имени М.В. Ломоносова', '', '', '', '', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Специализировання детско-юношеская школа олимпийского резерва &quot;Юность Москвы&quot; по бейсболу &ndash; одно из отделений ГОУ ДОДСН ФСО &laquo;Юность Москвы&raquo; Департамента физической культуры и спорта г. Москвы.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Школа основана в сентябре 1997 года.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Минимальный возраст зачисления в Школу с 6 лет, на основании письменного заявления от родителей и медицинского заключения. Также обязательным условием зачисления, является наличие у ребенка страхового полиса от несчастных случаев.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Занятия в Школе бесплатны. Ежегодно, в рамках выделяемых бюджетных средств, приобретается необходимый инвентарь и спортивная форма.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(147, 'СДЮШОР № 42', 0, 'on', '0', 'sdyushor-no-42', '0', 'СДЮШОР № 42', 'СДЮШОР № 42', 'СДЮШОР № 42', 'eee79bbdee0315df3108a30cf37ecb0f.jpg', 54, '41', 9, '0', 0, 'Москва, Россошанский пр-д, д. 4, корп. 4', '', '', '', 'vk.com/club66149340', '8:00-21:00', '<p>СДЮШОР № 42 представляет секции:</p>\n\n<p>- Бокс для детей с 7 лет;</p>\n\n<p>-&nbsp;Вольная борьба для детей с 7 лет;</p>\n\n<p>- Бейсбол для детей с 8-10 лет.</p>\n\n<p>Все интересующие вас подробности о работе секций и школы в целом уточняйте по телефонам:&nbsp;+7 (495) 381-42-28, +7 (495) 113-59-63.</p>\n\n<p>&nbsp;</p>\n\n<p>ФОК &quot;СДЮСШОР № 42&quot; предлагает в аренду мини-футбольный зал, имеются раздевалки, душевые.</p>\n\n<p>от 2000 руб./час</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(148, 'Дворец спорта "Надежда"', 0, 'on', '0', 'dvorec-sporta-nadezhda', '0', 'Дворец спорта "Надежда"', 'Дворец спорта "Надежда"', 'Дворец спорта "Надежда"', 'd1d332fdd843eea6fea96191bc28bcaf.jpg', 55, '0', 0, '0', 0, 'Серпуховский район, пос. Большевик, ул. Спортивная, д. 13', '', '', '', 'ds-nadezhda.ucoz.ru', '8:00-21:00', '<ul>\n	<li>\n	<div class="block" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: left; max-width: 960px; width: 960px; height: auto; overflow: hidden;">\n	<div class="view view-sport-point-description view-id-sport_point_description view-display-id-block view-dom-id-63a5096ae478bfa0ca698b331a317dce" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n	<div class="view-content" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n	<div class="views-row views-row-1 views-row-odd views-row-first views-row-last" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n	<div class="description-block" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n	<div class="field-content" style="margin: 0px; padding: 0px 8px 0px 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-width: 472px; width: 472px; float: right;">\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">Дворец спорта &laquo;Надежда&raquo; распахнул свои двери для посетителей в августе 2007 года. Универсальное спортивное сооружение дворца спорта расположено в поселке Большевик Серпуховского муниципального района.&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">ДС &laquo;Надежда&raquo; - это многофункциональное сооружение &ndash; четко выраженная концепция планировки, современный интерьер здания, обилие света, сложное оборудование &ndash; позволяет его использовать в разнообразных режимах. Трехэтажное здание спортивного комплекса каркасной конструкции выполнено с наружными стенами из панелей типа &laquo;Сэндвич&raquo;, размеры в осях 60,0х57,6м. Строительный объем здания &ndash; 58025,0 м&sup3;, общая площадь здания - 7304,0 м&sup2;, вместимость 1000 зрительских мест.&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">Комплекс предназначен для организационных и самостоятельных физкультурно-оздоровительных, физкультурно-спортивных занятий и активного отдыха различных групп населения, а также для проведения соревнований по баскетболу, волейболу, гандболу и теннису.&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">В универсальном спортивном зале для проведения спортивных мероприятий кроме игровой арены и трибун имеются электронное табло, отображающее игровое время, счет, период, штрафное время, звуковое оборудование, судейская, бытовые помещения для спортсменов, тренерские комнаты.&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">Дворец спорта стал родным домом и основной тренировочной базой для женской команды по волейболу &laquo;Надежда&raquo; и мужской команды по мини-футболу &laquo;Молодая гвардия&raquo;. А так же своеобразным центром активного и культурного отдыха населения Серпуховского района, местом проведения значительного количества разнообразных мероприятий, необходимых для жизни Серпуховского района: соревнований крупного масштаба по различным видам спорта, концертов, форумов, праздничных елок для детей и других мероприятий. По мнению представителей Российского Футбольного Союза, Всероссийской Федерации Волейбола, уровень организации и проведения этих соревнований отвечает установленным стандартам.&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">Дворец спорта &laquo;Надежда&raquo; &ndash; это большой сложный и постоянно развивающийся организм, от четкой работы которого зависит и спортивная слава Серпуховского района, и будущее тех юных спортсменов, которые здесь растут, и здоровый образ жизни населения, который всегда пропагандирует Дворец спорта. Для поклонников спорта Дворец стал любимым местом отдыха, а для огромного ряда спортсменов &ndash; своеобразной стартовой площадкой к вершинам большого спорта, дорогой к высоким спортивным достижениям на всесоюзный, мировой и олимпийский пьедесталы.&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">&nbsp;</div>\n\n	<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 12px; font-family: Arial, Helvetica, sans-serif; vertical-align: baseline; color: rgb(99, 106, 105); line-height: normal;">Дворец спорта приносит радость, здоровье и хорошее настроение людям. Мы всегда рады видеть Вас во Дворце спорта &laquo;Надежда&raquo;!</div>\n	</div>\n	</div>\n	</div>\n	</div>\n	</div>\n	</div>\n	</li>\n	<li>\n	<div>&nbsp;</div>\n	</li>\n	<li>\n	<div class="block" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: left; max-width: 960px; width: 960px; height: auto; overflow: hidden;">&nbsp;</div>\n	</li>\n</ul>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(149, 'Школа волейбола "Залп"', 0, 'on', '0', 'shkola-voleybola-zalp/', '0', 'Школа волейбола "Залп"', 'Школа волейбола "Залп"', 'Школа волейбола "Залп"', '4e29b250037eef4a2aaa5ae389a6fb80.jpg', 55, '77', 18, '2', 20, 'г. Москва, Переведеновский переулок, д. 21, стр. 1', '', '', '', 'volleyup.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">\n<p>Волейбольная школа Залп создана для профессионального обучения волейболу любителей обоих полов и всех возрастов.&nbsp;</p>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">Наша главное отличие и конкурентное преимущество в высококлассных тренерских кадрах и понимании ожиданий &nbsp;наших клиентов по тренировочному процессу и результату тренировок. &nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">Только в нашей школе для любителей работают специалисты, для которых обучение волейболу является основным трудовым видом деятельности и призванием.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">Наши тренеры играли и работали как &nbsp;на профессиональном, так и на любительском уровне.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">Находясь в тесном контакте с действующими тренерами и игроками самого высокого уровня, Школа волейбола Залп &nbsp;обладает современной методикой обучения и дает возможность игрового роста в техническом, тактическом и физическом плане.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px; text-align: justify;">Волейболист любого уровня мастерства может найти нечто заслуживающего внимания из услуг нашей школы!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES
(150, 'Международный центр исторического фехтования "Эскалибур"', 0, 'on', '0', 'mezhdunarodnyj-centr-istoricheskogo-fehtovanija-eskalibur', '0', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', 'aefd4eee6cfd72321d1e96decbb98f14.jpg', 32, '1', 6, '0', 0, 'Москва, ул. Шарикоподшипниковская, д. 17', '', '', '', 'excalibur-center.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Мы обеспечиваем всю необходимую инфраструктуру для полноценных и комфортных тренировок, производства и ремонта экипировки, а также &laquo;сезонного хранения&raquo; крупногабаритных элементов реконструкторского быта - шатров, мебели, etc.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В Спортивном комплексе Вас ждут:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>четыре комфортабельных зала, оборудованных централизованной вентиляцией;</li>\n	<li>удобные раздевалки и душевые;</li>\n	<li>индивидуальные камеры хранения;</li>\n	<li>WiFi-зона;</li>\n	<li>мини-буфет;</li>\n	<li>полный комплект необходимой аппаратуры;</li>\n	<li>силовые и специальные тренажеры;</li>\n	<li>спортивное оборудование и инвентарь.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Наши залы:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Зеркальный зал с балетными &laquo;станками&raquo; площадью 90 кв.м.;</li>\n	<li>Малый зал для единоборств с профессиональным борцовским покрытием, зеркалами, подвесами для боксерских мешков и &laquo;груш&raquo;, хореографическим &laquo;станком&raquo; для растяжки, площадью 90 кв.м.;</li>\n	<li>Спортивный зал для фехтования и единоборств, с верхними подвесами для использования лонжи (воздушная акробатика) площадью 120 кв.м.;</li>\n	<li>Спортивный зал для единоборств, покрытие &laquo;ласточкин хвост&raquo;, с подвесами для боксерских мешков и &laquo;груш&raquo; , площадью 120 кв.м.;</li>\n	<li>Тренажерный зал площадью 90 кв.м.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Залы разделены мобильными перегородками и могут быть объединены в любой конфигурации для проведения тренировок, семинаров, мастер-классов, соревнований.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(151, 'СДЮШОР "Олимп-Внуково"', 0, 'on', '0', 'sdyushor-olimp-vnukovo/', '0', 'СДЮШОР "Олимп-Внуково"', 'СДЮШОР "Олимп-Внуково"', 'СДЮШОР "Олимп-Внуково"', '2e3a685aa16860114e43298efc3dbf09.jpg', 56, '0', 0, '0', 0, 'Москва, ул. Интернациональная, д. 10', '', '', '', 'olimp-co.ru', '8:00-21:00', '<p>СДЮШОР &quot;Олимп-Внуково&quot; представляет секции волейбола, пляжного волейбола и вольной борьбы.</p>\n\n<p>Условия приема, график занятий и всю прочую интересующую вас информацию уточняйте по телефону:&nbsp;+7 (495) 432-98-11</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(152, 'Школа пляжного волейбола Сергея Молчанова', 0, 'on', '0', 'shkola-pljazhnogo-volejbola-sergeja-molchanova', '0', 'Школа пляжного волейбола Сергея Молчанова', 'Школа пляжного волейбола Сергея Молчанова', 'Школа пляжного волейбола Сергея Молчанова', '3418f7550b7fe95a4e4a38b0a411147d.jpg', 56, '79', 25, '0', 0, 'Москва, 4-я линия Хорошевского Серебряного Бора, пляж №3', '', '', '', 'www.beachvolleyballschool.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Школа пляжного волейбола создана в 2009 году при активном участии тренера РФ Молчанова Сергея Николаевича, авторитетнейшего мастера пляжного волейбола, является первой частной школой пляжного волейбола в России. За основу взят опыт европейских и американских школ обучения пляжному волейболу.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В школе пляжного волейбола могут пройти обучение все желающие. Квалифицированные тренеры нашей школы волейбола проводят занятия по методике известного Российского специалиста &ndash; Сергея Николаевича Молчанова.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(153, 'СДЮШОР № 101 "Тушино"', 0, 'on', '0', 'sdyushor-no-101-tushino/', '0', 'СДЮШОР № 101 "Тушино"', 'СДЮШОР № 101 "Тушино"', 'СДЮШОР № 101 "Тушино"', '9413f8d685aff0ee00b05789a839ddd3.jpg', 57, '84', 24, '0', 0, 'Москва, ул. Вилиса Лациса, д. 20', '', '', '', 'sportschool101.ru.', '8:00-21:00', '<p>Спортивная школа создана на основании решения Московского отдела народного образования от 24 февраля 1969 г. №39 и с того самого момента взяла курс на интенсивную подготовку профессиональных спортсменов для участия в серьезных соревнованиях, в том числе и в соревнованиях на международной арене.<br />\nДалее спортшкола год от года уверенно расширяла свой функционал, и вскоре здесь сконцентрировался настолько высококвалифицированный персонал опытных тренеров и руководителей, что школа уверенно приступила к профессиональной подготовке ребят по бадминтону, гандболу и лыжным гонкам.</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(154, 'Детско-юношеская спортивная школа № 80 "Бибирево"', 0, 'on', '0', 'detsko-yunosheskaya-sportivnaya-shkola-no-80-bibirevo/', '0', 'Детско-юношеская спортивная школа № 80 "Бибирево"', 'Детско-юношеская спортивная школа № 80 "Бибирево"', 'Детско-юношеская спортивная школа № 80 "Бибирево"', 'd1481630545a151d442343627fcec71c.jpg', 57, '89', 27, '0', 0, 'Москва, ул. Корнейчука, д. 28, корп. 2', '', '', '', 'www.dush80-svao.ru', '8:00-21:00', '<p>Спортивная школа начала свою деятельность в 2003 году, делая упор на два вида спорта &ndash; плавание и гандбол. Общее количество учащихся составило 450 человек.</p>\n\n<p>В 2004 году на базе школы было открыто отделение мини-футбола, которое в сентябре 2005 года переименовано в отделение футбола.</p>\n\n<p>За три года деятельности: 30 спортсменов выполнили нормативы I разряда, 6 спортсменов &ndash; II разряда, 113 &ndash; III юношеского разряда.</p>\n\n<p>Отделение гандбола насчитывает около 200 спортсменов (девочек и мальчиков).Команды гандболистов ежегодно участвуют в Первенстве Москвы и Московской области, занимаю призовые места.Спортсмены дважды принимали участие во Всероссийском Фестивале гандбола в городе Тольятти.</p>\n\n<p>Команда спортсменов 1993 г.р. также была участником первенства России сезона 2005-2006 г.г.</p>\n\n<p>Не отстают от гандболистов и футболисты - воспитанники отделения футбола являются постоянными участниками соревнований городского и окружного масштаба, товарищеских матчей с другими футбольными коллективами.</p>\n\n<p>В сентябре 2006 года на базе ДЮСШ № 80 открыто первое в Москве отделение инвалидного спорта (плавание) на 30 мест для детей и подростков до 18 лет с нарушениями опорно-двигательного аппарата</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(155, 'Московский городской гольф-клуб', 0, 'on', '0', 'moskovskiy-gorodskoy-golf-klub/', '0', 'Московский городской гольф-клуб', 'Московский городской гольф-клуб', 'Московский городской гольф-клуб', '80d995811a989e619d859ccc2d2d2e70.jpg', 58, '90', 14, '91', 25, 'Москва, ул. Довженко, д. 1', '', '', '', 'www.mcgc.ru', '8:00-21:00', '<p><span style="color:rgb(99, 106, 105); font-family:arial,helvetica,sans-serif; font-size:12px">Детская школа гольфа Московского городского Гольф Клуба &ndash; ровесница Клуба. Она была организована в 1988 году самим Свеном Тумбой и с тех пор в школе круглогодично занимаются более 60 детей, а ее первые воспитанники работают в гольф-клубах России и Казахстана. Тренеры детской школы с многолетним стажем педагогической работы, что позволяет им грамотно и интересно построить процесс обучения детей разных возрастов и физической подготовки.</span></p>\n\n<p><span style="color:rgb(99, 106, 105); font-family:arial,helvetica,sans-serif; font-size:12px">Руководитель детской программы клуба, профессиональный тренер &ndash; Михлина Елена Александровна после окончания в 1985 году ГЦОЛИФК постоянно работает с детьми: сначала тренером по легкой атлетике, а в 1997 году ее пригласили в Клуб. Это опытный и терпеливый педагог, не знающий ни усталости, ни плохого настроения, способный даже ребенку в возрасте 3,5 года хорошо поставить свинг, освоить этикет, привить любовь к гольфу.</span></p>\n\n<p><span style="color:rgb(99, 106, 105); font-family:arial,helvetica,sans-serif; font-size:12px">Ребят постарше тренирует Зубрилин Сергей Эдуардович пользуясь у них большим уважением и непререкаемым авторитетом. Сергей играет в Клубе с 1994 года. С 1999 года после окончания Московского Педагогического Университета по специальности &laquo;физическая культура&raquo; работает тренером.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(156, 'Олимпийский учебно-спортивный центр "Крылатское"', 0, 'on', '0', 'olimpiyskiy-uchebno-sportivnyy-centr-krylatskoe/', '0', 'Олимпийский учебно-спортивный центр "Крылатское"', 'Олимпийский учебно-спортивный центр "Крылатское"', 'Олимпийский учебно-спортивный центр "Крылатское"', '62b50a4eca5f3d8f2a43aa4cd20ff09d.jpg', 58, '92', 30, '0', 0, 'Москва, ул. Крылатская, д. 2', '', '', '', '', '8:00-21:00', '<p>Начавший свою работу в апреле 2004 года тренировочный гольф комплекс в Крылатском стал самым доступным и популярным местом тренировок для столичных гольфистов.</p>\n\n<p>Он расположен в одном из самых живописных районов столицы. Крылатские холмы, гребной канал, велотрек, пойма Москвы реки &mdash; все это в сочетании с изумрудной травой гольф поля создает неповторимый ансамбль.</p>\n\n<p>В основе комплекса &mdash; прекрасный драйвинг-рейндж: длина поля 300 метров, ширина 250 метров. За последним щитом с цифрой &laquo;200&raquo; ощутим еще солидный резерв по длине. Важной особенностью рейнджа является то, что здесь разрешено бить непосредственно с травы.</p>\n\n<p>В левой части рейнджа архитектор разместил живописный бункер с высокой губой, что невольно заставляет вспомнить о родине гольфа &mdash; Шотландии. На поле установлена корзина для отработки коротких ударов.</p>\n\n<p>На рейдже 13 тренировочных помостов с искуственной травой, из них 6 под навесом, что немаловажно для неустойчивой московской погоды. В непосредственной близости от помостов расположен паттинг грин. А также площадка для отработки короткой игры &mdash; питчинг грин.</p>\n\n<p>Рядом с тренировочной зоной находится зона рекреации и уютный ресторан. Для гостей комплекса открыта бесплатная парковка.</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(157, 'Московский керлинг-клуб', 0, 'on', '0', 'moskovskiy-kerling-klub/', '0', 'Московский керлинг-клуб', 'Московский керлинг-клуб', 'Московский керлинг-клуб', '1e4d3455a5f68a0f4a81e3fd6c049077.jpg', 59, '12', 10, '94', 11, 'Москва, ул. Правды, д. 24, стр. 2', '', '', '', 'moscowcurlingclub.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Московский керлинг-клуб является не только лучшим спортивным центром, но и местом, которое предоставит все, что нужно для отдыха на высочайшем уровне и во всех возможных трактовках этого понятия.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Это то самое место, где вы сможете отдохнуть от повседневных забот, организовать незабываемый праздник для себя, семьи или сотрудников вашей компании, а также насытиться атмосферой молодого, но крайне привлекательного спорта. Высокий уровень подготовки наших специалистов в искусстве отдыха и спорта превзойдет даже самые смелые ожидания!</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В нашем центре вы найдете:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>дорожки для керлинга международного стандарта и качества;</li>\n	<li>детская дорожка;</li>\n	<li>высококачественный лед для игры;</li>\n	<li>профессиональное оборудование и инвентарь;</li>\n	<li>высокопрофессиональный инструкторский состав;</li>\n	<li>зона диванов с торца у каждой дорожки;</li>\n	<li>обогреватели диванов в зоне посетителей;</li>\n	<li>спортивное освещение для ТВ-съемки;</li>\n	<li>ТВ-панели на дорожках для обзора ситуации в противоположном &laquo;доме&raquo;;</li>\n	<li>раздевалки для игроков с душевыми кабинами;</li>\n	<li>кафе с 2-мя банкетными и одним закрытым залами;</li>\n	<li>доступ в интернет на всей территории клуба;</li>\n	<li>расположение в пределах ТТК (м. Белорусская, м. Савёловская);</li>\n	<li>удобный подъезд с ТТК и Ленинградского проспекта.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(158, 'Спортивный комплекс "Орбита"', 0, 'on', '0', 'sportivnyy-kompleks-orbita/', '0', 'Спортивный комплекс "Орбита"', 'Спортивный комплекс "Орбита"', 'Спортивный комплекс "Орбита"', '5f8202ca51425afed141c78f60e435c2.jpg', 59, '0', 0, '0', 0, 'Москва, Зеленоград, микрорайон 6, Озерная аллея, д. 4', '', '', '', 'zel-orbita.ru', '8:00-21:00', '<p><span style="font-family:arial,sans-serif; font-size:10pt">Спортивный комплекс школы включает в себя здания Ледового дворца и Плавательного бассейна. Количество занимающихся спортсменов составляет более 1000 человек. Учебно-тренировочный процесс обеспечивают 24 тренера-преподавателя.</span></p>\n\n<p><span style="font-family:arial,sans-serif; font-size:10pt">Комплекс бассейнов &quot;Орбита&quot;</span></p>\n\n<p><span style="font-family:arial,sans-serif; font-size:10pt">В составе комплекса два плавательных бассейна: большой и малый. Малый - 8 х 16 м., глубина 0,7 - 1,2 м., большой - 6 дорожек по 25 м., глубина 2,5 м.<br />\nЛедовый дворец &quot;Орбита&quot;</span></p>\n\n<p><span style="font-family:arial,sans-serif; font-size:10pt">В июне в дневное время каток Ледового Дворца не работает. На льду проводятся только утренние тренировки - расписание можно уточнить у администратора.<br />\nТренажерный зал &quot;Орбита&quot;</span></p>\n\n<p><span style="font-family:arial,sans-serif; font-size:10pt">В комплексе функционирует тренажерный зал</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(159, 'Детско-юношеская спортивная школа №48 "Новая лига"', 0, 'on', '0', 'detsko-yunosheskaya-sportivnaya-shkola-no48-novaya-liga/', '0', 'Детско-юношеская спортивная школа №48 "Новая лига"', 'Детско-юношеская спортивная школа №48 "Новая лига"', 'Детско-юношеская спортивная школа №48 "Новая лига"', 'cb37d10c0b51e6448f248922ebb0f262.jpg', 60, '95', 11, '0', 25, 'Москва, ул. Радио, д. 10, стр. 9', '', '', '', '', '8:00-21:00', '<p>Секция мини-футбола в ДЮСШ №48.</p>\n\n<p>График занятий уточняйте по телефону:&nbsp;+7 (495) 261-67-30</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(160, 'Физкультурно-оздоровительный комплекс завода ЗИЛ "Торпедо"', 0, 'on', '0', 'fizkulturno-ozdorovitelnyy-kompleks-zavoda-zil-torpedo/', '0', 'Физкультурно-оздоровительный комплекс завода ЗИЛ "Торпедо"', 'Физкультурно-оздоровительный комплекс завода ЗИЛ "Торпедо"', 'Физкультурно-оздоровительный комплекс завода ЗИЛ "Торпедо"', '4e9e3d317e9c57113f79fa6e4617294b.jpg', 60, '97', 8, '0', 0, 'Москва, ул. Автозаводская, д. 21', '', '', '', 'torpedo-zil.ucoz.ru', '8:00-21:00', '<p>На базе объекта есть секция каратэ-до.</p>\n\n<p>Бассейн &quot;Торпедо&quot;</p>\n\n<p>Бассейн 25 метров, глубина &ndash; от 1,7 до 6,5 метров, 6 дорожек. Есть специальный бассейн для самых маленьких.<br />\nТренажерный зал Фитнес-клуба &quot;Арена&quot;</p>\n\n<p>Фитнес клуб располагает отличным тренажерным залом, который вмещает в себе все доступные тренажеры для любой степени подготовленности тренирующегося.</p>\n\n<p>Спортивный комплекс завода &quot;ЗИЛ&quot; предлагает в аренду спортивный зал для мини-футбола, имеются раздевалки, душевые.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(161, 'Спортивная детско-юношеская школа олимпийского резерва №44', 0, 'on', '0', 'sportivnaya-detsko-yunosheskaya-shkola-olimpiyskogo-rezerva-no44/', '0', 'Спортивная детско-юношеская школа олимпийского резерва №44', 'Спортивная детско-юношеская школа олимпийского резерва №44', 'Спортивная детско-юношеская школа олимпийского резерва №44', '2817b27e9c061eaa2da5a08a8d72002f.jpg', 61, '98', 7, '0', 0, 'Москва, ул. Лисичанская, д. 3', '', '', '', 'vk.com/club717382', '8:00-21:00', '<p>Спортивная детско-юношеская школа олимпийского резерва №44 представляет секцию настольного тенниса и футбола.</p>\n\n<p>График занятий уточняйте по телефону:&nbsp;+7 (495) 321-66-55</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(162, 'СДЮШОР № 72 "Афина"', 0, 'on', '0', 'sdyushor-no-72-afina/', '0', 'СДЮШОР № 72 "Афина"', 'СДЮШОР № 72 "Афина"', 'СДЮШОР № 72 "Афина"', 'ecd75d7805b3a8264e9c87298b22b69e.jpg', 61, '0', 0, '0', 0, 'Москва, бульвар Матроса Железняка, д. 22, стр. 2', '', '', '', 'afina-72.weebly.com', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;"><span style="font-family:inherit">ГБУ &quot;Спортивная школа олимпийского резерва № 72 &quot;Афина&quot; Москомспорта.</span></div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Наша школа - одна из старейших школ города Москвы. Она образована в октябре 1941 года.</li>\n	<li><u><span style="font-family:inherit">В настоящее время в школе 2 отделения: спортивная гимнастика и настольный теннис.</span></u></li>\n	<li>За последние 20 лет наша спортивная школа подготовила победителей и призеров первенства Европы, 5 мастеров спорта международного класса, 37 мастеров спорта.</li>\n	<li>Наши услуги предоставляются безвозмездно.</li>\n	<li>Набор на отделение настольного тенниса: девочки и мальчики 6-10 лет.</li>\n	<li><span style="font-family:inherit">Условия зачисления:&nbsp;</span>жонглирование мячом правой стороной ракетки 10-15 раз, жонглирование мячом левой стороной ракетки 10-15 раз, жонглирование мячом поочередно правой и левой стороной ракетки 8-10 раз, прыжок в длину с места 100-110 см., отжимание в упоре от стола (за 1 минуту) 15-20 раз, бег на месте высоко поднимая колени (за 10 сек) 15-20 раз.</li>\n	<li>У ребенка должна быть медицинская справка об отсутствии противопоказаний для занятий выбранным видом спорта.</li>\n</ul>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(163, 'Спортивный клуб "Будь здоров"', 0, 'on', '0', 'sportivnyy-klub-bud-zdorov/', '0', 'Спортивный клуб "Будь здоров"', 'Спортивный клуб "Будь здоров"', 'Спортивный клуб "Будь здоров"', 'a5b6182e7939fc027ef6973c86f1dde4.jpg', 62, '0', 0, '0', 0, 'Москва, пос. Мосрентген', '', '', '', 'www.bzsport.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&quot;Будь Здоров!&quot; - первый спортивный клуб на Калужском шоссе, расположенный в парковой зоне - в самом центре усадьбы Троицкое. Уникальное местоположение клуба открывает широкие возможности для приятного летнего и зимнего отдыха! &laquo;Будь здоров!&raquo; - это современный теннисный клуб, который готов предоставить к вашим услугам теннисные корты высочайшего уровня, и предоставить возможность пользоваться ими в течение целого года.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Клуб &laquo;Будь здоров&raquo; - это не только хорошая теннисная школа и великолепные теннисные корты. Здесь ценят каждого посетителя, поэтому предоставляется целый комплекс услуг. Помимо тенниса Вы сможете заняться фитнесом, научиться танцевать в специально оборудованных танцевальных студиях, расслабиться в СПА-салоне или сделать необходимую покупку в магазине товаров для тенниса.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(164, 'Теннисный клуб "Держава"', 0, 'on', '0', 'tennisnyy-klub-derzhava/', '0', 'Теннисный клуб "Держава"', 'Теннисный клуб "Держава"', 'Теннисный клуб "Держава"', '0a1ef8be67f11ed10694dda1f848e6f2.jpg', 62, '92', 13, '92', 0, 'Москва, Кутузовский, д. 71', '', '', '', 'clubworld-power.wix.com/derzavatennis', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Большой теннис-один из самых удивительных и престижных видов спорта,символ здорового образа жизни и успеха!Обучение в теннисном клубе &quot;Держава&quot; рассчитано как на новичков впервые взявших ракетку,так и на играющих любителей большого тенниса.В зависимости от Вашего уровня игры,индивидуальных осоенностей, с учетом физических возможностей и пожеланий, мы предложим максимально подходящую программу с оптимальной тренировочной нагрузкой.</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Виды занятий:</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">ГРУППОВЫЕ ТРЕНИРОВКИ:</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">&nbsp;количество человек 6-8</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">-МИНИ ГРУППЫ:</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">количество человек 4-6</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">ТРЕНИРОВКИ В ПАРЕ:</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">количесто человек 2</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">ИНДИВИДУАЛЬНЫЕ ТРЕНИРОВКИ:</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">количество человек 1</span><br />\n<span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">СПАРИННГ ПАРТНЕР</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(165, 'ДЮСШ Московской Сельскохозяйственной Академии им. К.А. Тимирязева', 0, 'on', '0', 'dyussh-moskovskoy-selskohozyaystvennoy-akademii-im-ka-timiryazeva/', '0', 'ДЮСШ Московской Сельскохозяйственной Академии им. К.А. Тимирязева', 'ДЮСШ Московской Сельскохозяйственной Академии им. К.А. Тимирязева', 'ДЮСШ Московской Сельскохозяйственной Академии им. К.А. Тимирязева', '0499862133a409659cdb87f344a19972.jpg', 63, '99', 12, '0', 0, 'Москва, Лиственничная аллея, д. 14б', '', '', '', '', '8:00-21:00', '<p>На базе объекта&nbsp;представлены услуги футбола, тенниса и баскетбола.&nbsp;Кроме того, на базе объекта есть бассейн ДЮСШ РГАУ-МСХА им. К.А. Тимирязева .</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(166, 'СДЮШОР № 112 "Спутник"', 0, 'on', '0', 'sdyushor-no-112-sputnik/', '0', 'СДЮШОР № 112 "Спутник"', 'СДЮШОР № 112 "Спутник"', 'СДЮШОР № 112 "Спутник"', '49b9c8a58ca909f5a1eecf017d207231.jpg', 63, '0', 0, '0', 0, 'Москва, Зеленоград, 9-й микрорайон, корп. 907', '', '', '', 'sputnik-96.narod.ru', '8:00-21:00', '<p>Специализированная детско-юношеская школа олимпийского резерва №112 &quot;Спутник&quot; была открыта 1 сентября 1979 г. Статус специализированной был присвоен ей в 1993 г. Школа является членом Московской федерации футбола.</p>\n\n<p>С марта 2004 г. по 2010 спортшколу возглавлял Михаил Викторович Тулупов, проработавший здесь 15 лет тренером-преподавателем. В настоящее время спортивной школой руководит Кулин Николай Александрович.</p>\n\n<p>Главным соревнованием для учеников школы является Первенство Москвы по футболу. Школа ежегодно в ноябре проводит традиционный турнир, посвященный памяти мастера спорта международного класса Михаила Еремина, вратаря сборной СССР, ЦСКА, чемпиона СССР, обладателя кубка СССР, чемпиона Европы, воспитанника СДЮШОР №112 &quot;Спутник&quot;.</p>\n\n<p>Наиболее перспективных спортсменов зеленоградцы передают в ведущие клубы Москвы. Учащиеся спортшколы Алексей Колокольчиков, Игорь Ачапкин привлекались в юношескую сборную России. Среди выпускников спортшколы можно выделить Дениса Киселева, игравшего в команде &quot;Томь&quot; (г.Томск), выступающей в премьер-лиге российского футбола и Ивана Лапина, бывшего игрока ФК &quot;Зенит&quot; - Чемпиона России 2007 г.</p>\n\n<p>Одна из важнейших задач спортшколы - привлечение как можно большего количества детей к занятиям спортом. Чтобы сделать их здоровыми и сильными, каждое лето, в осенние и зимние каникулы команды выезжают в спортивные лагеря.</p>\n\n<p>Телефон:&nbsp;+7 (499) 731-16-17.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(167, 'Ледовый дворец "Умка"', 0, 'on', '0', 'ledovyy-dvorec-umka/', '0', 'Ледовый дворец "Умка"', 'Ледовый дворец "Умка"', 'Ледовый дворец "Умка"', 'c7160b8d0f58004f3e69089a1b08f534.jpg', 64, '100', 27, '0', 0, 'Москва, ул. Левобережная д. 12, корп. 1', '', '', '', '', '8:00-21:00', '<p>Ледовый дворец &laquo;Умка&raquo; представляет собой не только арену для проведения ледовых спортивных мероприятий, но и детскую спортивную школу №1.</p>\n\n<p>С 2007 года детская спортивная школа №1 получила звание специализированной школы олимпийского резерва. Здесь дети могут получить обучение по таким спортивным дисциплинам, как хоккей и фигурное катание. Набор в школу происходит осенью каждого года для детей с пяти лет.</p>\n\n<p>Также в ледовом дворце &laquo;Умка&raquo; есть тренажерные залы, залы для занятий хореографией, спортивные площадки для занятий единоборствами и теннисный корт.</p>\n\n<p>В ледовом дворце &laquo;Умка&raquo; регулярно проводятся различные ледовые спортивные соревнования и мероприятия, а также массовые катания, билеты на которые нужно приобретать заранее, так как во избежание перенасыщенности арены их количество строго регламентировано.</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(168, 'Дворец спорта "Русь"', 0, 'on', '0', 'dvorec-sporta-rus/', '0', 'Дворец спорта "Русь"', 'Дворец спорта "Русь"', 'Дворец спорта "Русь"', '525760f1682024702b17445a9f9b6875.jpg', 64, '101', 18, '102', 20, 'Москва, ул. Воронежская, д. 13, корп. 3', '', '', '', '', '8:00-21:00', '<p>Каток &quot;Русь&quot;<br />\nСеансы:<br />\nКатание по пятницам, субботам и воскресеньям в 20:15 и в 21:30.<br />\nПродолжительность сеанса &ndash; 1 час.</p>\n\n<p>Цены:<br />\nСтоимость сеанса &ndash; 100 руб.</p>\n\n<p>Дополнительно:<br />\nПроката коньков нет.<br />\nЗаточка &ndash; 150 руб.<br />\nЕсть гардероб и раздевалка.</p>\n\n<p>Керлинг-клуб &quot;Планета льда&quot; - первый и единственный спортивно-развлекательный комплекс в России, для занятий олимпийским видом спорта кёрлинг.</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(169, 'Школьный спортивный Клуб "Бадминтоник"', 0, 'on', '0', 'shkolnyy-sportivnyy-klub-badmintonik/', '0', 'Школьный спортивный Клуб "Бадминтоник"', 'Школьный спортивный Клуб "Бадминтоник"', 'Школьный спортивный Клуб "Бадминтоник"', '1cd1d7a3fbfe2ce7bd1a97a702091a07.jpg', 52, '103', 15, '104', 20, 'г. Москва, 1-я улица Текстильщиков, д. 16', '', '', '', 'badmintonik.jimdo.com', '8:00-21:00', '<p>Оздоровительные и специализированные заниятия по бадминтону для детей, подростков и взрослых<br />\nШкольный клуб &quot;Бадминтоник&quot;- это сообщество школьников, которых объединяет...<br />\n&nbsp;<br />\n... любовь к активному образу жизни<br />\n... стремление к достижению целей<br />\n... желание становиться лучше<br />\n... радость от общения с единомышленниками<br />\n... любовь к свисту быстро летящего волана, энергии в каждой клетке, к отточенным движениям кисти, красиво сыгранным партиям, к ритуалу игры ...к БАДМИНТОНу!<br />\n&nbsp;<br />\n&nbsp;&nbsp;Приходите к нам - поймете! :)</p>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(170, 'Спортивный комплекс "МосГУ"', 0, 'on', '0', 'sportivnyy-kompleks-mosgu/', '0', 'Спортивный комплекс "МосГУ"', 'Спортивный комплекс "МосГУ"', 'Спортивный комплекс "МосГУ"', '7dd62e23864bef141e2b69f265f7e9b0.jpg', 52, '106', 13, '105', 27, 'Москва, ул. Юности, д. 5/1', '', '', '', 'www.mosgu.ru', '8:00-21:00', '<p>Спортивный комплекс Московского Гуманитарного Университета (МосГУ) предлагает в аренду открытые и крытые теннисные корты, имеются раздевалки, душевые, парковка.<br />\n&nbsp;<br />\nМосковском Гуманитарном Университете (МосГУ) созданы все необходимые условия для реализации возможностей в области физической культуры и спорта. Московский гуманитарный университет имеет современный спортивный комплекс: зал игровых видов спорта общей площадью 1008 м2; зал аэробики, шейпинга и силовых единоборств (350 м2), тренажерный зал (120м2), плавательный бассейн (6 дорожек по 25 метров).</p>\n\n<p>Университет имеет свой стометровый стрелковый тир, лыжную базу на 250 пар лыж. Плоскостные сооружения находятся в лесопарковой зоне. Стадион с 400- метровыми беговыми дорожками, футбольным полем (100х68м), хоккейная коробка (60х33м), две волейбольные площадки, площадка для мини-футбола (38х16м). Кроссовая и лыжная (зимой) трассы на 1.5 и 2 километра. На базе спортивного комплекса Университета работали 14 студенческих секций по следующим видам спорта: армспорт, баскетбол, волейбол (муж., жен), бадминтон, плавание, легкая атлетика, гандбол (муж., жен.), мини-футбол, пулевая стрельба, футбол, группа поддержки спортивных команд, настольный теннис.</p>\n\n<p>Осуществляется работа по дальнейшему развитию материально-технической базы спортивного комплекса.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` VALUES
(171, 'Бадминтон клуб "Мичспорт"', 0, 'on', '0', 'badminton-klub-michsport/', '0', 'Бадминтон клуб "Мичспорт"', 'Бадминтон клуб "Мичспорт"', 'Бадминтон клуб "Мичспорт"', 'c799458f8c2ef2a2cfb9d0d6c546fe18.jpg', 52, '0', 0, '0', 0, '', '', '', '', '', '8:00-21:00', '<div id="content" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 16px; font-family: inherit; vertical-align: baseline; position: relative; max-width: 1920px; min-width: 1200px; height: auto;">\n<div class="blocks" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-width: 960px; width: 960px; min-height: 500px; height: auto;">\n<div class="bx-wrapper" style="margin: 0px auto; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; max-width: 100%;">\n<div class="bx-viewport" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; height: 636px; width: 960px; overflow: hidden; position: relative;">\n<p>клуб Бадминтона &laquo;Мичспорт&raquo; в своем расположении имеет 4 площадки для игры в бадминтон. Весь зал полностью крытый и утепленный. Поэтому здесь комфортно заниматься как летом, так и зимой. Все площадки имеют профессиональное покрытие на акриловой основе. Также разметка на площадках полностью соответствует всем стандартам Федерации бадминтона. Этим же стандартам соответствует и высота помещения, достигающая 11 метров.</p>\n\n<p>В зале &laquo;Мичпорт&raquo; работают тренеры, которые имеют высокую квалификацию и соответствующие дипломы. Также вы можете арендовать площадку для игры в бадминтон на определенное время. Для этого нужно просто позвонить по телефону и забронировать корт, а также можете записаться на занятия, которые проводятся индивидуально.</p>\n\n<p>Также в нашем клубе работает магазин. Здесь в наличие есть вся экипировка, которая нужна для игры в бадминтон. Вы здесь приобретете воланы, ракетки, аксессуары. А также спортивную одежду, в которой будет комфортно играть в бадминтон.</p>\n\n<p>Также в бадминтонном клубе &laquo;Мичспорт&raquo; есть гостиница, кафетерий и сауна, в которой можно хорошо расслабиться после жарких поединков.</p>\n\n<p>Клуб бадминтона &laquo;Мичспорт&raquo; распложен в ДСК &laquo;Мичуринец&raquo;. Совсем рядом с ДСК расположилась одна из достопримечательностей Москвы &ndash; городок писателей &laquo;Переделкино&raquo;. Все это расположено по Можайскому шоссе в 8 километрах от МКАДа.</p>\n</div>\n</div>\n</div>\n</div>\n\n<p>&nbsp;</p>\n\n<div id="footer" style="margin: 100px auto 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 16px; font-family: inherit; vertical-align: baseline; position: relative; max-width: 1920px; min-width: 1200px; height: 350px; width: 1349px; background: rgb(51, 51, 51);">\n<div id="footList" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-family: ''Times New Roman''; vertical-align: baseline; position: absolute; height: 127px; top: 60px; left: 337.25px; color: rgb(0, 0, 0); line-height: 16px; width: 900px !important;">\n<div class="footer-subcategory" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 14px; font-family: Arial, sans-serif; vertical-align: baseline; font-stretch: normal; line-height: normal; overflow: hidden; text-align: center;">\n<div class="view view-subcategory-footer view-id-subcategory_footer view-display-id-block view-dom-id-c785594b3a440a6af2e7be19567f0823" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n<div class="view-content" style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n<div class="views-limit-grouping-group" style="margin: 0px 10px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline; float: left;">\n<div class="views-row views-row-even views-limit-grouping" style="margin: 2px 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">\n<div style="margin: 2px 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-family: inherit; vertical-align: baseline;">&nbsp;</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n</div>\n\n<p>&nbsp;</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(172, 'Крытый скейтпарк на м. Семеновская', 0, 'on', '0', 'krytyy-skeytpark-na-m-semenovskaya1', '0', 'Крытый скейтпарк на м. Семеновская', 'Крытый скейтпарк на м. Семеновская', 'Крытый скейтпарк на м. Семеновская', '87931e688ad2cb69b9801e2680ec62ad.jpg', 42, '69', 15, '70', 23, 'Москва, ул. Ибрагимова, д. 25', '', '', '', '', '8:00-21:00', '<p><span style="color:rgb(0, 0, 0); font-family:segoe,sans-serif; font-size:16px">Парк находится в здании комплекса МОЦВС. Из оборудования в парке есть: большая рампа, несколько квотеров, радиусный фанбокс, поролоновая яма и разгонка к ней.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(173, 'Серфинг', 0, 'on', '0', 'serfing', '0', 'Серфинг', 'Серфинг', 'Серфинг', 'dd8c7f3d513735a6441a1676a559b26d.jpg', 42, '69', 17, '70', 24, 'Москва,ул. Ибрагимова,д. 30', '', '', '', 'surfway.ru', '8:00-21:00', '<p>Стань крутым серфером за 3 часа в неделю.В океане нет подъемников, поэтому тебе нужно быть в отличной форме! Для этого и существует наш спортивный коктейль.</p>\n\n<p>Наши ингредиенты:</p>\n\n<p>1.Катания на специальных серф-скейтах и индобрдах, имитирующие движения на океанских волнах и дающие нагрузку на все группы мышц, и индо-бордах, развивающие координацию движений и чувство равновесия</p>\n\n<p>2.Занятия в в бассейне, направленные на развитие выносливости и правильной техники плавания</p>\n\n<p>3.Классы йоги, направленные на развития силы и баланса, а главное гармонии ума и тела</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(174, 'Парк "Сокольники"', 0, 'on', '0', 'park-sokolniki', '0', 'Парк "Сокольники"', 'Парк "Сокольники"', 'Парк "Сокольники"', 'f608f3ccebe09763dc3fdf53ae5fe5aa.jpg', 36, '108', 5, '0', 0, 'Москва, Сокольнический вал, 1, стр. 1', '', '', '', '', '8:00-21:00', '<p><strong>&laquo;Сокольники&raquo; &ndash; уникальная площадка для катания. Парк является старейшим в Москве и одним из самых больших в Европе.</strong><br />\n<strong>Длина основных дорожек парка превышает 15 км. Хорошее освещение в парке позволяет так же наслаждаться приятным вечерним маршрутом.</strong><br />\n<strong>Покрытие: асфальт.</strong></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(175, 'Парк "Кусковский"', 0, 'on', '0', 'park-kuskovskiy', '0', 'Парк "Кусковский"', 'Парк "Кусковский"', 'Парк "Кусковский"', '3e8e94c7f3e2c65f91b6b678dc26de3f.jpg', 36, '105', 22, '106', 25, 'Москва, ул. Юности, д. 2', '', '', '', '', '8:00-21:00', '<p><strong>Прогулочный маршрут через два парка с красивой природой и интересной историей. Маршрут пролегает от Измайловского острова до музея-усадьбы &quot;Кусково&quot;.</strong><br />\n<strong>Покрытие: асфальт.</strong></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(176, 'Бассейн МСХА им. Тимирязева', 0, 'on', '0', 'bassejn-msha-im.-timirjazeva', '0', 'Бассейн МСХА им. Тимирязева', 'Бассейн МСХА им. Тимирязева', 'Бассейн МСХА им. Тимирязева', '5dfd19e7ec90ab434c7bcaa78aeab331.jpg', 32, '10', 14, '0', 0, 'Москва, Лиственничная аллея, д. 12 , корп. 2', '', '', '', '', '8:00-21:00', '<p>В бассейне проводятся групповые занятия в секциях по спортивному плаванию. Для детей и взрослых в рамках разового или абонементного посещения &ndash; сеансы оздоровительного плавания. Отдельные получасовые занятия для мам с детьми старше трех лет. В группы обучения плаванию набор осуществляется с 6 лет.&nbsp;</p>\n\n<p>Детский бассейн 12.5 м.</p>\n\n<p>Длина - 12.5 метров, глубина - 0.5 метра</p>\n\n<p>Бассейн 5 дорожек по 25 м.</p>\n\n<p>5 дорожек по 25 метров, глубина - 5 метров.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(177, 'Парк "Серебряный бор"', 0, 'on', '0', 'park-serebryanyy-bor', '0', 'Парк "Серебряный бор"', 'Парк "Серебряный бор"', 'Парк "Серебряный бор"', '06c70a18ecc9494a262bf93ff0f1f4d6.jpg', 36, '0', 0, '0', 0, 'Москва, Хорошевского Серебряного Бора Центральный пр., д. 74', '', '', '', '', '8:00-21:00', '<p>Веломаршрут в Серебряном бору</p>\n\n<p>Замечательный маршрут по лесам Серебряного Бора. Осторожно, маршрут пролегает через нудистский пляж.<br />\nПокрытие: асфальт.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(179, 'Фитнес клуб "Белая камелия"1', 0, 'on', '0', 'fitnes-klub-belaja-kamelija1', '0', 'Фитнес клуб "Белая камелия"1', 'Фитнес клуб "Белая камелия"1', 'Фитнес клуб "Белая камелия"1', '0a6852ef310462f0cba3e64f40358573.jpg', 31, '35', 0, '0', 0, 'Москва, ул. Ленская, д. 2, корп. 21', '', '', '', 'white-kamelia.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;Ты &ndash; прекрасна&raquo; - на языке цветов означает преподнесение белой камелии.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Именно поэтому мы и решили так назвать наш клуб. Мы хотим сказать, что каждая женщина прекрасна.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">И только она знает и чувствует себя лучше, чем окружающие. Поэтому мы не предлагаем решить какие-либо проблемы, или сказать что делать, мы просто идем за желаниями женщины.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Мы представляем наши услуги, что удовлетворить ее потребности в информации, общении, движении, положительных эмоциях.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(181, 'Международный центр исторического фехтования "Эскалибур"2', 0, 'on', '0', 'mezhdunarodnyj-centr-istoricheskogo-fehtovanija-eskalibur2', '0', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', '535808527298dc42294ab64bdc034ea9.jpg', 31, '1', 6, '0', 0, 'Москва, ул. Шарикоподшипниковская, д. 17', '', '', '', 'excalibur-center.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Мы обеспечиваем всю необходимую инфраструктуру для полноценных и комфортных тренировок, производства и ремонта экипировки, а также &laquo;сезонного хранения&raquo; крупногабаритных элементов реконструкторского быта - шатров, мебели, etc.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В Спортивном комплексе Вас ждут:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>четыре комфортабельных зала, оборудованных централизованной вентиляцией;</li>\n	<li>удобные раздевалки и душевые;</li>\n	<li>индивидуальные камеры хранения;</li>\n	<li>WiFi-зона;</li>\n	<li>мини-буфет;</li>\n	<li>полный комплект необходимой аппаратуры;</li>\n	<li>силовые и специальные тренажеры;</li>\n	<li>спортивное оборудование и инвентарь.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Наши залы:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">\n<ul>\n	<li>Зеркальный зал с балетными &laquo;станками&raquo; площадью 90 кв.м.;</li>\n	<li>Малый зал для единоборств с профессиональным борцовским покрытием, зеркалами, подвесами для боксерских мешков и &laquo;груш&raquo;, хореографическим &laquo;станком&raquo; для растяжки, площадью 90 кв.м.;</li>\n	<li>Спортивный зал для фехтования и единоборств, с верхними подвесами для использования лонжи (воздушная акробатика) площадью 120 кв.м.;</li>\n	<li>Спортивный зал для единоборств, покрытие &laquo;ласточкин хвост&raquo;, с подвесами для боксерских мешков и &laquo;груш&raquo; , площадью 120 кв.м.;</li>\n	<li>Тренажерный зал площадью 90 кв.м.</li>\n</ul>\n</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Залы разделены мобильными перегородками и могут быть объединены в любой конфигурации для проведения тренировок, семинаров, мастер-классов, соревнований.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(183, 'Фитнес клуб "Озон"1', 0, 'on', '0', 'fitnes-klub-ozon1', '0', 'Фитнес клуб "Озон"', 'Фитнес клуб "Озон"', 'Фитнес клуб "Озон"', '29f7a9f593c812c7dd137ed1f59f7873.jpg', 30, '0', 0, '0', 0, 'Московская область, Мытищи, ул. Терешковой, 1а', '', '', '', 'www.fitozon.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В клубе работают молодые, но опытные инструктора, призеры различных региональных кубков по фитнесу. Все инструкторы имеют специальное физкультурное образование, опыт работы в спортивных клубах не менее пяти лет.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Первое занятие инструктор обязательно уделяет новичкам повышенное внимание: поможет подобрать программу тренировок, продемонстрирует правильную технику выполнения упражнений. В дальнейшем Вы всегда можете рассчитывать на помощь и консультации инструкторов.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Для тех, кто пожелает получить особое внимание со стороны инструктора на протяжении всей тренировки, а также максимум полезной информации о питании, восстановлении после нагрузок, применении добавок, - предлагается услуга &quot;персональный тренинг&quot;, как в виде разовых занятий, так и в виде месячного абонемента.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Отличительной особенностью клуба является проведение антропометрического тестирования занимающихся. Тестирование можно проводить ежемесячно, все результаты обрабатываются с применением специальной компьютерной программы. Результаты тестов позволяют инструкторам для каждого разрабатывать индивидуальное питание, а так же анализ ошибок питания. подбирать программу тренировок и постоянно ее корректировать в зависимости от того, как меняется ваша фигура.&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">В клубе Вам будет предложен широкий выбор тонизирующих, энергетических и витаминных напитков, спортивные коктейли, а также большой ассортимент специализированного спортивного питания ведущих зарубежных производителей.&nbsp;</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(184, 'Клуб Муай Тай "Bangkok Team"', 0, 'on', '0', 'klub-muaj-taj-bangkok-team', '0', 'Клуб Муай Тай "Bangkok Team"', 'Клуб Муай Тай "Bangkok Team"', 'Клуб Муай Тай "Bangkok Team"', '6940fb5278380e670984aa819409bd73.jpg', 30, '40', 0, '0', 0, 'Москва, ул. Новодмитровская, д. 5а, корп. 2', '', '', '', 'www.risesport.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Спортивный клуб обучает миксфайту и кикбоксингу.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(185, 'Аэроклуб "Волосово"', 0, 'on', '0', 'aeroklub-volosovo', '0', 'Аэроклуб "Волосово"', 'Аэроклуб "Волосово"', 'Аэроклуб "Волосово"', '0be9c286070fdf58aeed6ec32f6a8953.jpg', 37, '0', 0, '0', 0, 'Московская область, дер. Волосово', '', '', '', 'dz-volosovo.ru', '8:00-21:00', '<p>Московский городской объединенный аэроклуб Российской оборонной спортивно-технической организации (ДОСААФ) приглашает прыгнуть с парашютом всех желающих в возрасте от 14-ти до 60-ти лет на Аэродроме Волосово (г. Чехов). Так же можно выполнить ознакомительные или учебные полеты на самолете АН-2. Аэроклуб работает в выходные и праздничные дни с 9-ти до 18 часов.</p>\n\n<p>Вы можете выполнить прыжки с парашютами:<br />\n- Д-6 (десантный), с задержкой раскрытия 3-5 секунд;<br />\n- &quot;Юниор&quot; (учебный), с принудительным стягиванием чехла. Высота 600-800 м.;<br />\n- При предъявлении документов о ранее выполненных прыжках, пройдя процесс обучения, можно выполнить прыжки с парашютной системой ПТЛ-72 (Парашют тренировочный лётчика, управляемый), с высоты 1200-2500 м. (в зависимости от подготовки).</p>\n\n<p>Телефоны: +7 (916) 223-55-72, +7 (916) 820-95-65, +7 (917) 578-87-60, +7 (915) 211-79-66</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(186, '1-й Московский областной аэроклуб ДОСААФ России', 0, 'on', '0', '1-y-moskovskiy-oblastnoy-aeroklub-dosaaf-rossii', '0', '1-й Московский областной аэроклуб ДОСААФ России', '1-й Московский областной аэроклуб ДОСААФ России', '1-й Московский областной аэроклуб ДОСААФ России', 'c9ea6504e9a5e7df7396b0db2e341bfe.jpg', 37, '0', 0, '0', 0, 'Московская область. г. Егорьевск', '', '', '', '', '8:00-21:00', '<p>1-й Московский городской аэроклуб РОСТО создан в 1947 году. Является одним из ведущих вертолетных клубов России. Расположен в живописном месте Московской области в 157 км от Москвы. Имеет богатый опыт по обучению летному делу, подготовке спортсменов высочайшей квалификации и курсантов для училищ ВВС, а также по обучению любительским полётам иностранных граждан.</p>\n\n<p>Телефон:&nbsp;+7 (495) 491-86-77.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(187, 'Центр парашютной подготовки и спорта', 0, 'on', '0', 'centr-parashyutnoy-podgotovki-i-sporta', '0', 'Центр парашютной подготовки и спорта', 'Центр парашютной подготовки и спорта', 'Центр парашютной подготовки и спорта', '2728ecc7845a8a8fc6b253d496ed7709.jpg', 37, '0', 0, '0', 0, 'Московская область, дер. Липицы', '', '', '', '', '8:00-21:00', '<p>Дропзона &laquo;Центра парашютной подготовки и спорта&raquo; - Пущино приглашает Вас!</p>\n\n<p>Это лучшее место для прыжков с парашютом вообще, и, уж точно лучшее для самого первого прыжка с парашютом. Основная область деятельности аэроклуба &mdash; подготовка спортсменов-парашютистов как начального уровня (программа AFF), так и опытных спортсменов в рамках основных дисциплин (групповая акробатика, формации, артистические виды: фрифлай, фристайл и скайсерфинг), а также воздушных фото-видео операторов. В сфере подготовки наша дропзона завоевала серьёзную репутацию, тренироваться здесь предпочитают многие известные спортсмены.</p>\n\n<p>Прыжок, совершённый у нас, будет безопасен и оставит неизгладимые впечатления, т.к. здесь вас ждут высококвалифицированные инструкторы и пилоты, удобное оборудование и современная техника. Среди наших инструкторов чемпионы Мира и Европы, известные мастера парашютного спорта, которые, кроме всего прочего, просто замечательные, добрые и интересные люди.</p>\n\n<p>Приезжайте, неповторимые ощущения мы обещаем!</p>\n\n<p>Телефоны:&nbsp;+7 (499) 713-72-72, +7 (903) 737-74-47.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(188, 'Клуб воздухоплавания "A-Club"', 0, 'on', '0', 'klub-vozduhoplavaniya-club', '0', 'Клуб воздухоплавания "A-Club"', 'Клуб воздухоплавания "A-Club"', 'Клуб воздухоплавания "A-Club"', '3cf61c237012a79e498384eafd7fcd23.jpg', 39, '0', 0, '0', 0, 'Московская область, г. Жуковский', '', '', '', 'a-club.lightwings.com', '8:00-21:00', '<p>Полет на воздушном шаре незабываем!</p>\n\n<p>Невозможно забыть полёт на воздушном шаре, похожий на волшебный сон! Не забываются золотые купола сельского храма, торжественно проплывающие мимо на расстоянии вытянутой руки, тень от шара на земле молчаливо сопровождающая Вас в полёте, шишки, свисающие в корзину с верхушек сосен и елей! Районы полетов воздушных шаров - это живописные места Подмосковья.</p>\n\n<p>Телефоны:&nbsp;+7 (495) 724-60-56, +7 (909) 655-13-18.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(189, 'Клуб воздухоплавания "Воздухоплаватели"', 0, 'on', '0', 'klub-vozduhoplavaniya-vozduhoplavateli', '0', 'Клуб воздухоплавания "Воздухоплаватели"', 'Клуб воздухоплавания "Воздухоплаватели"', 'Клуб воздухоплавания "Воздухоплаватели"', 'df545e503000b94ef818cb3535c18e00.jpg', 39, '89', 22, '0', 0, 'Москва, Алтуфьевское шоссе, д. 48, корп. 1', '', '', '', 'www.vozduhoplavateli.ru', '8:00-21:00', '<p>Клуб &quot;Воздухоплаватели&quot; - это команда профессионалов, способная организовать оригинальный корпоративный праздник, незабываемый подарок на свадьбу, День рождения, юбилей, который по достоинству оценят ваши друзья, партнеры, клиенты и сотрудники. Мы с удовольствием организуем для Вас увлекательные индивидуальные и корпоративные полеты на воздушных шарах, вертолетах, дирижаблях по всему миру. Летать это классно!</p>\n\n<p>Профессиональный клуб &quot;Воздухоплаватели поможет Вам осуществить следующие мечты:<br />\nполетать на воздушном шаре, дирижабле или вертолете;<br />\nарендовать или приобрести воздухоплавательную технику;<br />\nпройти летную подготовку и стать пилотом воздушного шара, дирижабля, вертолета;<br />\nпровести нестандартную рекламную кампанию;<br />\nполучить незабываемые впечатления в небе и приобрести новых друзей.</p>\n\n<p>Телефон:&nbsp;+7 (495) 410-78-02.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(190, 'Клуб воздухоплавания "Аэронавт"', 0, 'on', '0', 'klub-vozduhoplavaniya-aeronavt', '0', 'Клуб воздухоплавания "Аэронавт"', 'Клуб воздухоплавания "Аэронавт"', 'Клуб воздухоплавания "Аэронавт"', '24f399e78fa2d68db008740b0ebb3d9c.jpg', 39, '0', 0, '0', 0, 'Москва, Дмитровское ш., д. 167, стр. 29', '', '', '', 'www.aeronavt.ru', '8:00-21:00', '<p>Клуб воздухоплавания &quot;Аэронавт&quot; приглашает всех в романтическое путешествие. В нашем клубе Вы можете совершить полет на воздушном шаре в любое время года. Прогулка на шаре - это оригинально, незабываемо и главное безопасно. Аэростат поможет украсить Ваш праздник и доставить массу удовольствия всем присутствующим. Для этого мы можем организовать для Вас и Ваших гостей привязные подъемы на тепловом аэростате.</p>\n\n<p>Телефоны: +7 (495) 969-39-65, +7 (903) 108-40-35, +7 (903) 108-40-41.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(192, 'Фитнес клуб "ФизКульт" Варшавка1', 0, 'on', '0', 'fitnes-klub-fizkult-varshavka1', '0', 'Фитнес клуб "ФизКульт" Варшавка', 'Фитнес клуб "ФизКульт" Варшавка', 'Фитнес клуб "ФизКульт" Варшавка', '07eff8b2a32f1fc6f0e47231413fb7e8.jpg', 29, '16', 0, '0', 0, 'Москва, Варшавское ш., д. 122а', '', '', '', 'www.fizkult.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Всегда к Вашим услугам - квалифицированные инструкторы, которые обучат Вас и Ваших детей технике плавания и всем видам тренировок в воде. Зона водных программ включает в себя взрослый бассейн, детский бассейн, джакузи и турецкую баню. Длина взрослого бассейна 25 метров. Для очистки воды используются механические фильтры (кварц, песок), ультрафиолет и хлорирование.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(193, 'Бойцовский клуб "CLASSclub"1', 0, 'on', '0', 'bojcovskij-klub-classclub1', '0', 'Бойцовский клуб "CLASSclub"', 'Бойцовский клуб "CLASSclub"', 'Бойцовский клуб "CLASSclub"', 'b00f0df02a512b34dcba6eb59f77fac5.jpg', 29, '33', 10, '55', 10, 'Москва, ул. Сельскохозяйственная, влад. 26', '', '', '', 'classclub.ru', '8:00-21:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:16px">Все виды аэробики, тренажерный зал, детские секции, солярий, массаж, спа-обертывания, миостимуляция лица и тела, спорт-бар. Бокс, кикбоксинг, таеквон-до, детские секции, бокс для женщин. Тренеры международной категории, групповые и персональные тренировки.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(195, 'Фитнес клуб "Локо-парк"1', 0, 'on', '0', 'fitnes_klub_loko-park1', '0', 'Фитнес клуб "Локо-парк"', 'Фитнес клуб "Локо-парк"', 'Фитнес клуб "Локо-парк"', 'ba38f160e81ddcaaae2ca94f8a1de66d.jpg', 28, '59', 15, '0', 0, 'Москва, ул. Верхоянская, д.9', '', '', '', '', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Выбор фитнес-клуба в СВАО - важная задача, к решению которой нужно подойти с особой ответственностью. В Москве, на Бабушкинской, в парковой зоне района Свиблово (СВАО), находится фитнес-центр &quot;ЛОКО парк&quot;, общей площадью 32000 кв.м. и охраняемой парковкой. &nbsp;Это действительно уникальное предложение, сочетающее в себе разнообразие видов спорта, полноценного отдыха и красоты.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Одно из главных неоспоримых преимуществ клуба &ndash; аква-зона бассейна с его развитой инфраструктурой: 2 сауны, гидромассажная ванна, противоток, гейзер, тропический бар, солярий и многое другое. Здесь проводятся как групповые, так и индивидуальные занятия по плаванию и аквааэробике.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Тренажерный зал фитнес-клуба &quot;ЛОКО парк&quot; оснащен самым современным оборудованием, здесь ведут свою работу опытные и высококвалифицированные инструкторы &ndash; в тренажерном зале созданы лучшие условия для эффективных тренировок.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(196, 'Фитнес клуб "Бриз"', 0, 'on', '0', 'fitnes-klub-briz', '0', 'Фитнес клуб "Бриз"', 'Фитнес клуб "Бриз"', 'Фитнес клуб "Бриз"', '9d68f0889200920dbcaaf159d20198e5.jpg', 28, '0', 0, '0', 0, 'Московская область, Люберцы, ул. Кирова, д. 14а', '', '', '', 'www.fitness-briz.ru', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(197, 'Фитнес-клуб "Старт"', 0, 'on', '0', 'fitnes-klub-start', '0', 'Фитнес-клуб "Старт"', 'Фитнес-клуб "Старт"', 'Фитнес-клуб "Старт"', 'ca4058e7fd9e30e75024a6c46932204f.jpg', 27, '67', 10, '68', 19, 'Московская область, Королёв, Костино, ул. Исаева, д. 2а', '', '', '', 'www.fitnes-start.narod.ru', '8:00-21:00', '', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(199, 'Фитнес клуб "Белая камелия"1', 0, 'on', '0', 'fitnes_klub_belaja_kamelija1', '0', 'Фитнес клуб "Белая камелия"', 'Фитнес клуб "Белая камелия"', 'Фитнес клуб "Белая камелия"', '62f9e80566680cad83f6eab2f1c6b14f.jpg', 27, '59', 14, '0', 0, 'Москва, ул. Ленская, д. 2, корп. 21', '', '', '', 'white-kamelia.ru', '8:00-21:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&laquo;Ты &ndash; прекрасна&raquo; - на языке цветов означает преподнесение белой камелии.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Именно поэтому мы и решили так назвать наш клуб. Мы хотим сказать, что каждая женщина прекрасна.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">И только она знает и чувствует себя лучше, чем окружающие. Поэтому мы не предлагаем решить какие-либо проблемы, или сказать что делать, мы просто идем за желаниями женщины.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 16px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 16px;">Мы представляем наши услуги, что удовлетворить ее потребности в информации, общении, движении, положительных эмоциях.</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Table structure for table `points_halls`
--

DROP TABLE IF EXISTS `points_halls`;
CREATE TABLE IF NOT EXISTS `points_halls` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `order` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=323 ;

--
-- Dumping data for table `points_halls`
--

INSERT INTO `points_halls` VALUES
(5, 'КАРАТЭ "САКУРА" ДЛЯ МУЖЧИН ОТ 21 ГОДА - МЕЖДУНАРОДНЫЙ ЦЕНТР ИСТОРИЧЕСКОГО ФЕХТОВАНИЯ "ЭСКАЛИБУР"', '1418225972_6ad78c8e7e13169fb1ba0af7e12d0acf.jpg', 'Каратэ "Сакура" для мужчин от 21 года - Международный центр исторического фехтования "Эскалибур" В соответствии с Уставом Каратэ-клуба «САКУРА» его членами могут быть только мужчины в возрасте от 21 года и старше (без ограничения). Сейчас возраст участников клуба варьируется от 24 до 52 лет. Руководство Клуба считает нецелесообразным включать в тренировочный процесс представительниц прекрасного пола, а также детей и подростков в связи с тем, что они требуют специфического подхода в методике тренировки. Тренировки проводятся два-три раза в неделю под руководством инструкторов, имеющих квалификацию не ниже 1 Дана. Основной тренировочный день - суббота, первая половина дня. Занятие длится 5-6 часов с одним перерывом на 30 мин. Время проведения второй и третьей тренировки (рабочие дни) выбирается при формировании группы и по длительности составляет 1,5-2 часа. Набор в группы производится дважды в год: в сентябре и в феврале. Каждая группа состоит из 8 - 16 человек.', 0, 39),
(7, 'РУКОПАШНЫЙ БОЙ ДЛЯ ВСЕХ ЖЕЛАЮЩИХ В МЕЖДУНАРОДНОМ ЦЕНТРЕ ИСТОРИЧЕСКОГО ФЕХТОВАНИЯ "ЭСКАЛИБУР"', '1418226091_e7686556da84c215100e0be28be4ff65.jpg', 'Рукопашный бой для всех желающих в международном центре исторического фехтования "Эскалибур" Эффективность обучения зависит от многих факторов. В том числе от того, чему и как учат. КПД наших тренировок практически 100%, кроме всего прочего, еще и потому, что мы точно знаем чему и на каком этапе, следует обучать.', 0, 39),
(8, 'АЙКИДО ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 13 ЛЕТ - МЕЖДУНАРОДНЫЙ ЦЕНТР ИСТОРИЧЕСКОГО ФЕХТОВАНИЯ "ЭСКАЛИБУР"', '1418226645_9f1bea3ddbf339911b8f93606b7e460f.jpg', 'Айкидо для взрослых и детей с 13 лет - Международный центр исторического фехтования "Эскалибур" Наш клуб ориентирован на серьёзно и интенсивно занимающихся людей возрастом от 13 лет (средний возраст в группах 25-40 лет) и желающих изучать и применять на практике традиционное Айкидо Ивама рю. Мы создаём для этого все условия: возможность тренироваться каждый день, семинары с участием главы школы Хитохира Сайто Сенсея, ученики нашего клуба ежегодно посещают Иваму (Япония) в качестве учидеши, летние лагеря, спецтренировки для старших учеников, аттестации на кю и даны с выдачей японских дипломов. Также для таких учеников действуют специальные условия оплаты.', 0, 39),
(9, 'АЙКИДО В МОСКОВСКОЙ ШКОЛЕ АЙКИДО "КАННАГАРА ДОДЗЁ"', '1418227320_808f957cfd300f51ab6ad4aa9cc0d563.jpg', 'Айкидо в Московской школе Айкидо "Каннагара Додзё" Есть группы для новичков. Все подробности уточняйте по телефону.', 0, 40),
(10, 'Дзюдо для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_629395549dfa0d6152e8a4fc32512a65.jpg', 'Дзюдо для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41),
(11, 'Бокс для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_f5369c5bf339ecf5e991a204a5a9ec5a.jpg', 'Бокс для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41),
(12, 'Айкидо для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_29eccc600d4ae4411bac90b5cec68554.jpg', 'Айкидо для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41),
(13, 'Самбо для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227689_3a850bdbc1444f888d9f65fdc2a07b2c.jpg', 'Самбо для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41),
(14, 'Джиу-джитсу для взрослых и детей 5 лет в спортивном клубе "Ермак"', '1418227866_d7e8a94f95448abd5312917bea987198.jpg', 'Джиу-джитсу для взрослых и детей с 5 лет в спортивном клубе "Ермак"', 0, 41),
(15, 'Ушу в клубе контактных единоборств "Комбат"', '1418300170_12105b18ea9595b93265b0b2f42cf185.jpg', 'Ушу в Клубе контактных единоборств "Комбат"', 0, 42),
(16, 'Айкидо в клубе контактных единоборств "Комбат"', '1418300170_ada8158543387321b45cdd4ca45d33c4.jpg', 'Айкидо в Клубе контактных единоборств "Комбат"', 0, 42),
(17, 'ТРЕНАЖЕРНЫЙ ЗАЛ "ПАЛЕСТРА SPORT"', '1418300694_f0989c73902307bb89e4ace34b49bf8d.jpg', 'Тренажерный зал "Палестра Sport" Дизайн, простор, технологии – вот три основные характеристики нашего нового тренажерного зала с новейшей линией профессионального оборудования итальянской марки TechoGym, с индивидуальным экраном и программой развлечений.', 0, 43),
(18, 'МОРСКОЙ БАССЕЙН "ПАЛЕСТРА SPORT"', '1418300694_26b248f133ced082c96bc65c8325c4d4.jpg', 'Морской бассейн "Палестра Sport" Отправиться в морское путешествие прямо из Москвы? Это не только возможно, но и полезно для кожи, которая с радостью впитывает минералы, содержащиеся в морской воде. Плазма человеческой крови и морская вода очень схожи по составу, как утверждают биохимики. Вот почему тело человека в море ощущает себя на редкость уютно. 15 минут расслабления в морской воде восстанавливают организм как 1,5 часа сна, укрепляет иммунитет и нервную систему.', 0, 43),
(19, 'МАЛАЯ СПОРТИВНАЯ АРЕНА ОЛИМПИЙСКОГО КОМПЛЕКСА "ЛУЖНИКИ"', '1418303894_530460bcae3464db5dd4418a6b67535b.jpg', 'Малая спортивная арена олимпийского комплекса "Лужники" Малая спортивная арена представляет собой универсальное спортивное сооружение длиной 146 м, шириной 100 м и высотой 16 м с игровым полем 80 х 36 м. Игровое поле трансформируется в ледяную площадку 60 х 31 м.', 0, 44),
(20, 'БОЛЬШАЯ СПОРТИВНАЯ АРЕНА ОЛИМПИЙСКОГО КОМПЛЕКСА "ЛУЖНИКИ"', '1418303904_c3cba42b46218f2fe2d4a5de44ec61a8.jpg', 'Большая спортивная арена олимпийского комплекса "Лужники" Большая спортивная арена - один из самых крупных пятизвездных футбольных стадионов мира, имеет форму, близкую к эллипсу, размером 301x240 м. Футбольное поле размером 105х68 м. покрыто искусственным газоном, и окружено 8-полосной круговой беговой дорожкой длиной 400 м.', 0, 44),
(21, 'АЙКИДО ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 5 ЛЕТ - ИМ. И.И. ЛАТЫШЕВА', '1418304456_53f7e71fc8a77167ff7ff69c01c6437c.jpg', 'Айкидо для взрослых и детей с 5 лет - им. И.И. Латышева Расписание занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 482-29-24', 0, 45),
(22, 'САМБО ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 5 ЛЕТ - ИМ. И.И. ЛАТЫШЕВА', '1418304457_30c11856d130076b855b2bf30b848554.jpg', 'Самбо для взрослых и детей с 5 лет - им. И.И. Латышева Расписание занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 482-29-24', 0, 45),
(23, 'АЭРОБИКА ДЛЯ ДЕВУШЕК И ЖЕНЩИН - ИМ. И.И. ЛАТЫШЕВА', '1418304499_78dc4bea7e5e64f1e7c74a3eaecc2d18.jpg', 'Аэробика для девушек и женщин - им. И.И. Латышева Расписание занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 482-29-24', 0, 45),
(24, 'ПИЛАТЕС В ФИТНЕС-ЦЕНТРЕ "BANANA GYM" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_b518f0331405448748595454f17a7410.jpg', 'Пилатес в Фитнес-центре "Banana Gym" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46),
(25, 'КИКБОКСИНГ В ФИТНЕС-КЛУБЕ "MAXIMUS" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_4d0eca35e0cf3e508f3d8f4b69af3d71.jpg', 'Кикбоксинг в Фитнес-клубе "Maximus" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 632-66-00', 0, 46),
(26, 'АРАБСКИЕ ТАНЦЫ ДЛЯ ВСЕХ ЖЕЛАЮЩИХ - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_9b5ea558c5340fb66e5e5e4aa807886a.jpg', 'Арабские танцы для всех желающих - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46),
(27, 'ТЕННИСНЫЕ КОРТЫ ФОК "АТЛАНТ" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_4f37086e5a2214442c8d2f3c4b0dc784.jpg', 'Теннисные корты ФОК "Атлант" - "Атлант" ("Коралл") ФОК "Атлант" предлагает в аренду универсальный спортивный зал для тенниса и открытый теннисный корт с покрытием искусственная трава, имеются раздевалки, душевые, парковка. от 700 руб./час', 0, 46),
(28, 'ФИТНЕС БОКС ДЛЯ ВСЕХ ЖЕЛАЮЩИХ В "BANANA GYM" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_1a3bdadeec07e5287e269579109019f1.jpg', 'Фитнес бокс для всех желающих в "Banana Gym" - "Атлант" ("Коралл") Тренировки построены так, чтобы в них было сочетание и аэробных, и анаэробных нагрузок. При этом включаются все группы мышц - спины, плечевого пояса, брюшного пресса, шеи, рук и ног. Бокс делает их выносливыми, эластичными, и в это же время рельефными. Обмен веществ улучшается, здоровее становится организм - лишний вес постепенно уходит, исчезает отечность, дряблость. Занятие фитнес боксом на Таганской (Волгоградский Проспект) очень многое дает также и эмоциональной жизни человека. В боксе на Пролетарской любое движение должно быть точным и выверенным. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46),
(29, 'БОКС ДЛЯ ВЗРОСЛЫХ И ДЕТЕЙ С 8 ЛЕТ - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_ade14d6746e4a4e2995812eee7e5198a.jpg', 'Бокс для взрослых и детей с 8 лет - "Атлант" ("Коралл") Групповые и индивидуальные занятия боксом для всех желающих. +7 (495) 632-66-00', 0, 46),
(30, 'АЙКИДО В СПОРТИВНО-ОЗДОРОВИТЕЛЬНЫЙ КОМПЛЕКС "АТЛАНТ" ("КОРАЛЛ") - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_b1f8f58eeb23103f21c550c4c233fe61.jpg', ' Айкидо в Спортивно-оздоровительный комплекс "Атлант" ("Коралл") - "Атлант" ("Коралл") Телефон: +7 (495) 671-73-70', 0, 46),
(31, 'АЭРОБИКА В ФИТНЕС-ЦЕНТРЕ "BANANA GYM" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_910428b7e4117ed54da9a867dd08c89d.jpg', ' Аэробика в Фитнес-центре "Banana Gym" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46),
(32, 'ПЛАВАНИЕ В СОК "АТЛАНТ" - "АТЛАНТ" ("КОРАЛЛ")', '1418305069_6842350de9692c3a3a96160919cfca73.jpg', 'Плавание в СОК "Атлант" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 234-02-54, +7 (495) 671-73-68', 0, 46),
(33, 'Аэробика в Фитнес-клубе "Maximus" - "Атлант" ("Коралл") ', '1418305069_1399d76e358f21c562688b415a190765.jpg', 'Аэробика в Фитнес-клубе "Maximus" - "Атлант" ("Коралл") Расписание занятий и прочую информацию уточняйте по телефону. +7 (495) 632-66-00', 0, 46),
(34, 'Мини-футбол для всех желающих - "Zupre"', '1418306727_e175cd095b953cbf7800cec6205c8727.jpg', 'Мини-футбол для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(35, 'Айкидо для всех желающих - "Zupre"', '1418306727_1d11efeb9459d6af330ea39ba7782488.jpg', 'Айкидо для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(36, 'Бокс для всех желающих - "Zupre" ', '1418306727_91999c24ee6dd5a008d411d6dd183371.png', 'Бокс для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(37, 'Аэробика для всех желающих - "Zupre"', '1418306727_b2b86cb6813163946092982ebb094593.jpg', 'Аэробика для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(38, 'Фитнес клуб "Zupre" ', '1418306727_4e5d96296b630dc8565b7e2d42a61154.jpg', 'Фитнес клуб "Zupre" Современный трёхэтажный фитнес клуб общей площадью более 4000 кв. м.', 0, 47),
(39, 'Скалодром для всех желающих - "Zupre"', '1418306727_d623813d5e38b195ec087d8da40137b8.jpg', 'Скалодром для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(40, 'Пилатес для всех желающих - "Zupre"', '1418306830_f6a6ed2c9ba82d7552080a49f3da7f2c.jpg', 'Пилатес для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(41, 'Танцевальные занятия для всех желающих - "Zupre"', '1418306958_517de1928495ee754764eb458a45e1e2.jpg', 'Танцевальные занятия для всех желающих - "Zupre" Танцевальные направления: - reggae; - belly dance; - flamenco; - jazz.', 0, 47),
(42, 'Волейбол для всех желающих - "Zupre"', '1418306958_00453c66b772f93cd96c1b76cc7b0ba1.jpg', 'Волейбол для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(43, 'Настольный теннис для всех желающих - "Zupre"', '1418307121_b40513450b813833bcb40b5a659b67ec.jpg', 'Настольный теннис для всех желающих - "Zupre" Телефон: +7 (495) 775-88-89', 0, 47),
(44, 'Айкидо для детей и взрослых - "СурьяРам" ', '1418307493_727525ebd53e4e349d5398d7301a8788.jpg', 'Айкидо для детей и взрослых - "СурьяРам" Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48),
(45, 'Самооборона для детей и взрослых - "СурьяРам" ', '1418307493_7602e9fe058305a0af9bc9b0dcd3e698.jpg', 'Самооборона для детей и взрослых - "СурьяРам" Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48),
(46, 'Гатка и Пантра - "СурьяРам" ', '1418307493_c588a967a2f04cb4780cbf1dd62b610e.jpg', 'Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48),
(48, 'Йога для детей и взрослых - "СурьяРам" ', '1418307493_c2165760e11327d576b55d4e0e022ee9.jpg', 'Йога для детей и взрослых - "СурьяРам" Приглашаем на занятия всех желающих. Множество различных направлений, приходите и Вы не пожалеете! Направления: хатха, кундалин, для беременных, фитнес-йога, сукшма вьяяма. Телефон: +7 (985) 766-49-70 Адрес: Москва, Нижний Сусальный переулок, дом 5, строение 10 Сайт: www.suryaram.ru', 0, 48),
(49, 'Айкидо для взрослых и детей с 4 лет - "Союз-Спорт" ', '1418307842_3fa16878d81cb72b80ac9c4a80b8675d.jpg', 'Возрастные группы: - 4-7 лет; - 7-9 лет; - 10-14 лет; - от 14 лет. Стоимость занятий для детей: - 3300 руб./мес. - 3 раза в неделю; - 2500 руб./мес. - 2 раза в неделю. Стоимость занятий для взрослых: - 5000 руб./мес. - 3 раза в неделю; - 3500 руб./мес. - 2 раза в неделю. Занятия проводятся при поддержке центра развития Айкидо. Центр развития Айкидо является общественной организацией, которая была создана группой ведущих тренеров и спортивных специалистов России с целью развития Айкидо в стране, накопления и совершенствования опыта, популяризации физкультуры и спорта среди населения, развития социальных спортивных программ', 0, 49),
(50, 'Волейбол для всех желающих - "Союз-Спорт"', '1418307842_23387e8b60f8fcb9a07c3c76eef7ca1c.jpg', 'С 07:00 до 24:00 в будни и выходные дни, наш клуб предлагает Вам две универсальные площадки, с профессиональным покрытием Teraflex. Покрытие Taraflex обеспечивает необходимую амортизацию, высокий уровень безопасности, комфорта и качества игры. Снижает негативное воздействие на суставы, препятствуя возникновению чувства усталости у игроков, позволяет избегать травматизма!', 0, 49),
(51, '', '1418307842_140efef4ef210d407005e9e0afac43bc.jpg', '', 0, 49),
(53, 'Pilates для всех желающих - "Союз-Спорт"', '1418307842_cb97f3a2fc626f5119804c8c2e48ad68.jpg', ' График занятий уточняйте по телефону или на сайте клуба. Телефон: +7 (495) 781-84-84', 0, 49),
(54, 'Мини-футбол для детей и взрослых - "Союз-Спорт" ', '1418307842_348b6077e289a00853f5b6b24b6806c0.jpg', 'Футбольный зал может стать местом встречи не только друзей, но и коллег. Редкий мужчина откажется от ', 0, 49),
(55, 'Спортивный клуб "Союз-Спорт" ', '1418307842_c19be4a2700ce9b9e2b3104864482ad1.jpg', 'Подробности уточняйте по телефону: +7 (495) 781-84-84 Направления: пилатес, body sculpt, калланетика, степ, стрейчинг, аэробика.', 0, 49),
(56, 'Танцы для детей 5-13 лет - "Союз-Спорт" ', '1418307842_50811cbbc9671f925d27db864ac92d5f.jpg', 'В клубе ведет свою работу школа танцев "Мир Движения" для детей от 5 до 13 лет. Занятия проходят по будним дням, в тренерском составе 3 высококвалифицированных педагога. Направления: современные, хореография. Цена: 2500-3000 руб./месяц', 0, 49),
(57, 'Айкидо для детей от 4 лет - "Союз-Спорт" ', '1418307842_62699c69320781f1e48c453b1d8cc1c9.jpg', 'Все подробности о работе секции уточняйте по телефону: +7 (495) 781-84-84', 0, 49),
(58, 'Настольный теннис для школьников 7-16 лет - "Союз-Спорт" ', '1418307842_d24fc3f6ef868857565056b2b67900c0.jpeg', 'Занятия проходят в просторном, хорошо освещённом зале в мини-группах до 8 человек. В нашем арсенале несколько теннисных столов в том числе Cornilleau Competition 740 - официальный стол чемпионата Европы, одобренный ITTF. Занятия проходят по субботам и воскресеньям с 14:30 до 16:00. Стоимость занятий: - 4300 руб. - 2 раза в неделю; - 2600 руб. - 1 раз в неделю.', 0, 49),
(59, 'Теннис для взрослых и детей 5-15 лет - "Союз-Спорт" ', '1418307842_a98661a885f754a0179a17fa21c2dd8b.jpg', 'На территории "Союз-спорт" расположено два теннисных корта, размеры и разметка которых соответствуют международным стандартам. А профессиональное покрытие Taraflex обеспечивает правильную амортизацию, высокий уровень безопасности, комфорта и качества игры. Кроме того, в спортклубе "Союз-спорт" есть две универсальные площадки с профессиональным универсальным покрытием и разными разметками под разные виды спорта. Вариант игры на такой площадке будет более бюджетным. Такая площадка подойдёт для новичков и игроков среднего уровня и может заменить корт крытый теннисный. Обучение, индивидуальные занятия теннисом, крытый теннисный корт, опытные тренеры – это то, на что вы можете рассчитывать, приходя в "Союз-спорт" в любое время года. Наши площадки и условия тренировок подойдут игрокам с разным уровнем игры, как профессионалам, так любителям и новичкам игры в большой теннис, как взрослым, так и детям. На базе спортклуба "Союз-спорт" работает детская школа большого тенниса. Здесь занимаются дети от 5 до 15 лет. Тренировки проходят как в групповой, так и индивидуальной форме. Стоимость обучения - 6000 руб./месяц.', 0, 49),
(105, '', '1418311937_2b187237eed4836869058b4e638e0f35.jpg', '', 0, 50),
(106, '', '1418311937_78fcc3e0c2cb9aad44ea3e0d83f8f956.jpg', '', 0, 50),
(107, '', '1418311937_ca50fe3979ec407edc5852b9373ebca4.jpg', '', 0, 50),
(108, '', '1418311937_10f65921dd0303af3ee1467bc2975bf3.jpg', '', 0, 50),
(109, '', '1418311937_94ed602a64b31b9522af0756940673a8.jpg', '', 0, 50),
(110, '', '1418311937_dea768e90089199dc4415e3972917ad2.jpg', '', 0, 50),
(111, '', '1418311937_b4010882f060ebdc5ae1c25f33c00138.jpg', '', 0, 50),
(112, '', '1418311937_c1d4b9b122d14c93a0b2c573348144f8.jpg', '', 0, 50),
(113, '', '1418311937_1a02bddd4ed96b63440e493f868fdcfb.jpg', '', 0, 50),
(114, 'Фитнес - "Миллениум" ', '1418313031_fa894c101cdf7cf35148ea408495dbf2.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51),
(115, 'Аквааэробика - "Миллениум" ', '1418313031_e341b608a9637d18602078e398006fdc.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51),
(116, 'Различные виды единоборств - "Миллениум" ', '1418313031_da38e590462745e0ac259a4c195786ca.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51),
(117, 'Студия Пилатес - "Миллениум" ', '1418313031_209dab8308d2755d4d4ba82e44493e10.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51),
(118, 'Бальные, хип-хоп, восточные и т.п - "Миллениум" ', '1418313031_e4aabba4057e557a2393019163c0d60e.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 988-99-99 Адрес: Москва, Каширское шоссе, д. 55А Сайт: milfit.ru', 0, 51),
(119, 'Айкидо для всех желающих - "Синяя Птица" ', '1418313452_d4af989460ad48c2cbdacd52580e96b4.jpg', 'Подробности уточняйте по телефону: +7 (495) 714-98-18, +7 (495) 714-98-27', 0, 52),
(121, 'Джиу-джитсу для всех желающих - "Синяя Птица" ', '1418313452_1d96ce5f7d0baf0dbc1c3aefd9e56231.jpg', 'Уточняйте подробности по телефонам: +7 (495) 714-98-18, +7 (495) 714-98-27.', 0, 52),
(122, 'Бокс для детей до 12 лет и взрослых с 12 лет - "Синяя Птица" ', '1418313452_75b9bbf02da670ec9dc9014b8212f091.jpg', 'Основной акцент в обучении боксом в центре делается на овладение навыков самозащиты, а не на соревновательную деятельность. Поэтому здесь не делят воспитанников на одаренных и не очень, на слишком юных и взрослых. Центр работает со всеми желающими получить полезные навыки. Группа под руководством Бобоева Икрома Аминовича занимается по пн, ср и пт. Группа под руководством Шишлова Родиона Витальевича занимается по вт, чт и сб. Цены: 3000-3500 руб./месяц', 0, 52),
(123, 'Самбо для детей 6-16 лет и взрослых от 16 лет - "Синяя Птица"', '1418313452_a2a7c9ef212ea2f8d72af3853e2b48fd.jpg', ' Расписание занятий для детей: по понедельникам и пятницам с 18:00 до 19:30, по средам с 17:00 до 18:00. Расписание занятий для взрослых: по понедельникам и средам с 20:00 до 21:00. Рекомендуем уточнить график занятий по телефонам: +7 (495) 714-98-18, +7 (495) 714-98-27', 0, 52),
(124, 'Футбол для детей 4-6, 6-8, 8-10 и 12-15 лет - "Синяя Птица"', '1418313452_df0875c61da617c7c5dffbfa6049372a.jpg', 'Футбольный клуб "Синяя птица" проводит дополнительный набор в группы 4-6, 6-8, 8-10 и 12-15 лет. Тренировки проходят на откром поле в летнее время и на закрытом поле - в зимнее время. В летний период организуются выездные сборы а рубеж. Каргинов Юрий Витальевич +7 (495) 714-98-18, +7 (926) 149-57-42', 0, 52),
(125, 'Теннис для взрослых и детей с 3 лет - "Синяя Птица"', '1418313452_2f1a889381bc80e2fe61d5dea4c0df29.jpg', ' Спортивный центр «Синяя Птица» предоставляет для занятия теннисом и детским теннисом семь крытых теннисных кортов, один с покрытием тарафлекс, шесть с покрытием «искусственная трава». В летний период с мая по сентябрь в нашем cпортивном центре функционируют пять открытых кортов c покрытием «искусственная трава». Так же проходят занятия мини-теннисом - это методика введения в полноформатный теннис, называемая в США "Быстрый старт".', 0, 52),
(128, 'Баскетбол для мальчиков 7-14 лет - "Синяя Птица" ', '1418313453_ed7387bb4fabbd2a7846b3f09fe6b9e6.jpg', 'Спортивная секция по баскетболу для мальчиков с 1 по 7 классы. Занятия проходят в спортивном зале на базе СК "Синяя птица" (Северное Бутово). Тренировки: вторник, среда, пятница, суббота. Шипорин Михаил Николаевич +7 (916) 131-79-60 Цены: 1900 руб./2 дня в неделю, 2500 руб./3 дня в неделю', 0, 52),
(129, 'Клуб бокса "Московский бокс" - "Синяя Птица" ', '1418313688_4a3bba808bbc3b70a826f20445d2a9fe.jpg', 'Клуб бокса в Москве, открытый в марте 2009 года. Сейчас имеет две секции, команду разрядников-спортсменов, начинающую группу и старшую. Болуков А.В., Шишлов Р.В. +7 (915) 128-08-24', 0, 52),
(130, 'Айкидо для детей - "Чудо-школа умница" ', '1418314593_0bdaf32290ee027e398958c171832ae5.jpg', 'Направления: современные; хореография; Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53),
(131, 'Хореография и современные танцы для детей - "Чудо-школа умница" ', '1418314594_aa128478d7d191a3d3be17ee14f24f26.jpg', 'Направления: современные; хореография; Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53),
(132, 'Шахматы для детей - "Чудо-школа умница" ', '1418314594_b64666929c1304c331e0bd0770e525b2.jpg', 'Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53),
(133, 'Йога для детей - "Чудо-школа умница" ', '1418314594_7de26f4dc14a54346a0136733fcf79cc.jpg', 'Телефон: +7 (495) 748-61-26 Адрес: Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2 Сайт: www.chudo-shkola.ru', 0, 53),
(134, 'Айкидо для взрослых и детей - "Аметсучи" ', '1418315072_8cff4b70924169a8ac1328d1d47d9ce8.jpg', 'Добро пожаловать! Телефон: +7 (495) 716-40-27 Адрес: Москва, ул. Поляны, д. 35 Сайт: www.ametsuchi.ru', 0, 54),
(138, 'Айкидо для взрослых и детей с 4 лет в Сокольниках ', '1418315346_484581ac40b7f1b1ad940a8548d32b1c.jpg', 'Расписание занятий с сентября. Взрослые (с 18 лет) и подростки (с 14 лет): - вт 19.00-20.00 или 21.00-22.00; - пт 19.00-20.00 или 21.00-22.00; - вс 14.00-15.30. Кобудо (традиционное японское фехтование) для ВЗРОСЛЫХ (с 18 лет) и ПОДРОСТКОВ (с 14 лет): - вт 20.00-21.00; - пт 20.00-21.00; - вс 15.30-16.30. Старшая детская группа (11-13 лет): - вт 18.00-19.00; - пт 18.00-19.00; - вс 16.30-18.00. Средняя детская группа (8-10 лет): - вт 17.00-18.00; - пт 17.00-18.00; - вс 16.30-18.00. Младшая детская группа (6-8 лет): - вт 16.00-17.00; - чт 16.00-17.00; - сб 12.00-13.30. Старшая дошкольная группа: - пн 17.00-18.00; - чт 17.00-18.00; - сб 11.00-12.00. Младшая дошкольная группа (4-5 лет): - вт 15.00-16.00; - чт 15.00-16.00; - сб 11.00-12.00. Утренняя группа для ВЗРОСЛЫХ: - вт 7.30-8.30; - чт 7.30-8.30; - сб 14.00-15.00. Телефон: +7(917)556-23-26, +7(903)227-01-13', 0, 55),
(139, 'Айкидо - Айкидо клуб ', '1418315502_f9065c05ae3c7eca47a0431905674310.jpg', 'Приглашаем на занятия детей от 6-16 лет Телефон: +7 (968) 076-51-00 Адрес: Москва, Ул. 7-я Текстильщиков, дом 5 Сайт: Aikido1.ru', 0, 56),
(140, '', '1418315801_e0dadab8af0a48c8e650809f7a925e6d.jpg', '', 0, 57),
(141, ' Айкидо для детей - "Берендей" ', '1418315984_305ff8b67cde45bd563cb52dd4f52488.jpg', 'График занятий: - вторник - с 17:00 до 18:00; - суббота - с 12:00 до 13:00. Инструктор: Щеглова (Коваленко) Наталья, 2 дан айкидо айкикай Телефон: +7 (905) 524-94-36', 0, 58),
(142, '', '1423691596_da2fefe1e47d6b02f36b1ec68cae12a1.jpg', '', 0, 40),
(143, 'Айкидо для детей и взрослых -', '1425565235_eaffcc8c6ef0079131e2bda70a0c6edc.jpg', ' Московский центр боевых искусств Тренировки проходят по понедельникам и пятницам с 20:00 до 21:00. Сафонов М. +7 (495) 585-45-75', 0, 59),
(144, ' Айкидо-центр ', '1425566027_51dfada41d41cbf70697ad6e4315fe81.jpg', 'Айкидо для детей 5-13 лет -Подробности узнавайте по телефону: +7 (499) 585-45-75', 0, 60),
(145, 'Айкидо в ', '1425566403_8cb29fa0c404af1555cf70da77a4934f.jpg', 'Школе воинских искусств "Кодокан Син-рю" Подробности по телефону: +7 (495) 355-03-95', 0, 61),
(147, 'Айкидо для детей от 5-6 лет - "Лидер" ', '1425566770_6866def6611cf0af8a2884a0532b1ad5.jpg', 'Все подробности о работе секции уточняйте по телефонам: +7 (903) 166-12-18, +7 (925) 367-83-45, +7 (909) 160-01-89', 0, 62),
(148, 'Айкидо - "ГринСити" ', '1425567086_513a2475a777a1dc5635c3cbda491987.jpg', 'Приглашаем всех желающих. Телефон: +7 (495) 229-77-85 Адрес: Москва,Зеленоград, 1-ый Западный проезд, д.12/6 Сайт: www.greenfitness.ru/', 0, 63),
(149, '', '1425648556_68cce33409229e581e91ca19b8f7c596.jpg', '', 0, 64),
(150, 'Айкидо в Вакайдо ', '1425648810_c266099536e844766490771b979c1417.jpg', 'Подробности узнавайте по телефону: +7 (915) 111-11-55', 0, 65),
(151, 'Айкидо в Клубе единоборств "Гакумон додзё" на Винокурова ', '1425649045_54b01e8b63c193fff8a00b01f32accd3.jpg', 'Расписание занятий и наличие мест в группах уточняйте по телефону: +7 (985) 768-98-15', 0, 66),
(152, 'Айкидо в Московском клубе традиционного Айкидо "ИВАМА" ', '1425649233_b563a50859a5b061dfb4d758d35d89a3.jpg', 'Подробности узнавайте по телефонам: +7 (916) 247-18-06, +7 (916) 117-88-75, +7 (916) 427-53-25, +7 (917) 521-12-80', 0, 67),
(153, 'Айкидо в Секция айкидо ёсинкан ', '1425649456_b8f6e2b1533cd729c059c02d927d5774.jpg', 'Подробности узнавайте по телефону: +7 (499) 390-46-99', 0, 68),
(154, 'Айкидо в Айкидо клубе "Малышев Додзе" ', '1425649590_6f637722cd5779f3466507aa5c045e8d.jpg', 'Телефоны: +7 (495) 509-32-91, +7 (495) 789-08-60.', 0, 69),
(155, 'Айкидо для всех желающих - "ARENA Fight Club" ', '1425649778_9f20a63b31ae3afba124dca3a7f49b75.jpg', 'Телефон: +7 (495) 940-82-06', 0, 70),
(156, 'Айкидо для взрослых и подростков - "Карибия" ', '1425649978_0d855db20c4733b79834d8ca11f5d1e1.jpg', 'Занятия проводятся утром и вечером. Телефон: +7 (495) 780-67-97 Адрес: Москва, Зеленый проспект, д. 10Б Сайт: karibiya.ru', 0, 71),
(157, '', '1425650079_5da29c6a720a7d38e92be35dc81d083d.jpg', '', 0, 72),
(158, 'Бокс для всех желающих в бойцовском клубе "CLASSclub" ', '1425720350_58d9e7be9450a1e0a5decda1a7d87e2a.jpg', 'Тренировки под руководством Звезды Мирового бокса и кикбоксинга! - 3-х кратный Чемпион Мира. - по боксу и кикбоксингу среди профессионалов. - 4-х кратный Чемпион России. - по боксу и кикбоксингу среди профессионалов. - Победитель Чемпионата СНГ и Славянских государств. - по боксу и кикбоксингу среди профессионалов.', 0, 73),
(159, 'Бокс в фитнес-центре "TERRASPORT Коперник"', '1425721709_5bb04643acac679976e6dca5ffc315d3.png', '', 0, 78),
(160, 'Бокс для взрослых и детей с 5 лет в Фитнес клубе "Локо-парк" ', '1425722042_8b954d0db2a8f58c4c82265b3842e177.jpg', 'Проводятся персональные тренировки по боксу для взрослых и детей. Обратите внимание: для желающих заниматься боксом с персональным тренером, необходима предварительная запись.', 0, 79),
(161, 'Бокс для всех желающих в фитнес клубе "Озон"', '1425722928_addc5ad3b5be179695ec2b0db44d5715.jpg', '', 0, 81),
(162, 'Тренажерный зал Фитнес-клуба "ФизКульт" Варшавка ', '1425723120_10b4b8fb168c37dec8e8bbea54529e0c.jpg', 'Просторный тренажерный зал делится на зону свободных весов и зону механических тренажеров. В основном используются тренажеры ведущих мировых производителей: Precor, Hammer, Flex Fitness.', 0, 82),
(163, 'Бокс для взрослых и детей с 5 лет в спортивном клубе "Ермак"', '1425723567_a1646030f4a18b53c8dc077d2ffe1736.jpg', '', 0, 83),
(164, 'Бокс для взрослых и детей с 6 лет - Клуб смешанных единоборств "Р.О.Д.Ъ."', '1425723849_9b05763a4acc6f5de53a73e59820d278.jpg', '', 0, 84),
(165, 'Бокс для детей с 7 лет - СДЮШОР единоборствам ', '1425723957_0de39ece2f9889015e997277d2c810de.jpg', 'Условия приёма в школу и всю прочую интересующую вас информацию уточняйте по телефону.', 0, 85),
(166, 'Вольная борьба в фитнес-центре "TERRASPORT Коперник"', '1425724874_36f9727a597fd93c2b135b30b5fc0324.png', '', 0, 90),
(167, 'Вольная борьба для детей с 7 лет - СДЮШОР единоборствам ', '1425725040_0d93443ecffef4bbd124ed9b6da948f7.jpg', 'Условия приёма в школу и всю прочую интересующую вас информацию уточняйте по телефону.', 0, 92),
(168, 'Борьба вольная в ДЮСШ №86 Расписание секции узнавайте по телефону.', '1425725475_5690966ef03d84fdef4589a844b250c0.jpg', '', 0, 93),
(169, 'Вольная борьба для детей с 7 лет - № 42 ', '1425725701_8b1be26c86408593182501c4ef675b00.jpg', 'Все интересующие вас подробности о работе секции и школы в целом уточняйте по телефону. +7 (495) 381-42-28, +7 (495) 113-59-63', 0, 94),
(170, 'Борьба вольная в ЦО "Олимп" ', '1425726056_55ab29eee173b5046d43c1f7036c5d30.jpg', 'График работы секции уточняйте по телефону. +7 (495) 432-98-11, +7 (495) 133-17-28, +7 (495) 131-80-77', 0, 95),
(171, '', '1425727056_c38339ec6785ace227de778b6629c985.jpg', '', 0, 96),
(172, 'Вольная борьба для детей с 6 лет - "Олимп-Внуково" ', '1425727388_8909a78ccd61d0b061bd00dbf9db228f.jpg', 'Условия приема, график занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 432-98-11', 0, 97),
(173, 'Вольная борьба для детей с 10 лет - "Спартак" ', '1425727516_d2d19f49db0ae4162cacd890f4fff9b1.jpg', 'Условия приема в школу и график занятий уточняйте по телефону: +7 (495) 267-33-26', 0, 98),
(174, 'Вольная борьба в СДЮШОР "Динамо" - "Динамо" ', '1425727827_ac5bfef581e7233a37beb709a0976d94.jpg', 'График занятий уточняйте по телефону: +7 (495) 924-93-37', 0, 99),
(175, 'Вольная борьба - "Tiger" ', '1425728076_146b40b062ad975237ab65cc99db2109.jpg', 'Приглашаем всех желающих. Телефон: +7 (916) 605-86-08. Сайт: www.wrestling-club.com', 0, 100),
(176, 'Джиу-джитсу для всех желающих 9-35 лет и старше в спортивном клубе "Сандрс" ', '1425728480_243e9f4ca2deb5f21fbfa47b3337d31a.jpg', 'В нашем клубе тренируются люди разных возрастов. Юноши и девушки в возрасте от 9 до 35 лет и старше. Занятия проходят с 16.00 до 22.00. Старшие группы занимаются вечером. Для каждой возрастной группы разработана отдельная программа тренировки в зависимости от уровня подготовки и предполагаемых к достижении целей тренировок (поддержка физической формы, самооборона, выступление на соревнованиях). Занятия проводятся опытным тренером, имеющим большой опыт работы, воспитавший чемпионов международного класса.', 0, 101),
(177, 'Джиу-джитсу для взрослых и детей с 5 лет в спортивном клубе "Ермак"', '1425728736_83232c08be26ffeba31feab5c037e953.jpg', '', 0, 102),
(178, 'Джиу-джитсу для взрослых и детей с 6 лет - Клуб смешанных единоборств "Р.О.Д.Ъ."', '1425728956_f874b8ad4f4122856d78fef2119760d4.jpg', '', 0, 103),
(180, 'Джиу-джитсу для взрослых от 18 лет - "Радуга-Свиблово" Занятия проходят по понедельникам и четвергам с 19:00 до 21:00', '1425729245_ea0cde548d7c1b2cb2e3c6a3bc5a2fcb.jpg', 'Вавилов А.Н. +7 (915) 267-61-40', 0, 104);
INSERT INTO `points_halls` VALUES
(181, 'Международный центр исторического фехтования "Эскалибур"', '1425744147_e4438c428a42b06419ded29dd17391e7.jpg', 'Каратэ "Сакура" для мужчин от 21 года -  В соответствии с Уставом Каратэ-клуба «САКУРА» его членами могут быть только мужчины в возрасте от 21 года и старше (без ограничения). Сейчас возраст участников клуба варьируется от 24 до 52 лет. Руководство Клуба считает нецелесообразным включать в тренировочный процесс представительниц прекрасного пола, а также детей и подростков в связи с тем, что они требуют специфического подхода в методике тренировки. Тренировки проводятся два-три раза в неделю под руководством инструкторов, имеющих квалификацию не ниже 1 Дана. Основной тренировочный день - суббота, первая половина дня. Занятие длится 5-6 часов с одним перерывом на 30 мин. Время проведения второй и третьей тренировки (рабочие дни) выбирается при формировании группы и по длительности составляет 1,5-2 часа. Набор в группы производится дважды в год: в сентябре и в феврале. Каждая группа состоит из 8 - 16 человек.', 0, 105),
(183, 'Ушу в Клубе контактных единоборств "Комбат"', '1425745160_4691be784e242a19d78114dd425f4728.jpg', '', 0, 108),
(185, 'Тренажерный зал "Палестра Sport"', '1425746842_bf9ede1bc8dd3a470492cb745784e56b.jpg', 'Дизайн, простор, технологии – вот три основные характеристики нашего нового тренажерного зала с новейшей линией профессионального оборудования итальянской марки TechoGym, с индивидуальным экраном и программой развлечений.', 0, 110),
(186, 'Бассейн спорткомплекса "Олимпийский" ', '1425747686_51c58c17c7d09d818a9e36de7ef180ea.jpg', 'Соответствует всем стандартам проведения соревнований международного уровня. Включает в себя тренировочную ванну длиной 50 м., демонстрационную ванну длиной 50 м. и прыжковую ванну длиной 25 м. и глубиной 6 м.', 0, 111),
(187, 'Велотрасса "Olympia 80 PRO" ', '1425748236_a81500a7ad1d15652acceeb2ab0c6f25.jpg', 'В большое кольцо входит так же малое кольцо 4,3 км. По большому кольцу можно ездить исключительно по часовой стрелке. Покрытие: асфальт.', 0, 112),
(189, 'Велотрасса "Olympia 80 Jr." ', '1425748246_93f86796481b000f0770682142a94f3d.jpg', 'Уникальная кольцевая велотрасса на Крылатских холмах, на которой в 1980 году проходили Олимпийские гонки по велоспорту. Помните, это спортивный объект со сложной трассой. Не забудьте взять шлем. Движение по кольцу – по часовой стрелке. Покрытие: асфальт.', 0, 112),
(190, 'Фитнес клуб "Вымпел"', '1425748254_c1ab17038d7b5719a559c00f1ab23f5a.jpg', 'В клубе оборудован тренажерный зал, солярий, массажный кабинет, финская сауна, СПА-капсула. Проводятся групповые занятия фитнесом, персональный тренинг. Групповые занятия: классическая аэробика, современная аэробика, силовая аэробика, степ-аэробика, "разумное дело".', 0, 113),
(191, 'Велопрогулки по ВДНХ ', '1425748792_8997eddf156834811fc620f8e5d05345.jpg', 'Ровные асфальтовые дорожки и живописное окружение делают ВВЦ идеальным местом для катании на велосипеде. Площадь парка 237.5 га. Покрытие: асфальт.', 0, 115),
(192, 'Катание на роликах и скейтборде ', '1425748839_b25236b1b4eb8fb4080d3eefdb59a01c.jpg', 'Специально оборудованная площадка площадью более тысячи квадратных метров и освещенная двадцатью четырьмя проекторами предназначена не только для профессиональных скейтеров и роллеров, но и для начинающих любителей активного отдыха', 0, 115),
(193, 'Пилатес для всех желающих - "MAXIMA fitness"', '1425748876_1415c5c0faf8ae6a9fc3af42e9ccd47d.jpg', '', 0, 114),
(194, 'Ушу - "iPerson" ', '1425749313_76b485efba14cd702658c615aa3fd539.jpg', '', 0, 116),
(195, 'Сумо для взрослых и детей с 5 лет в физкультурно-оздоровительном комплексе "Борец', '1425749737_6753abb8cb69920474d4d1455ce21c6c.jpg', '', 0, 117),
(196, 'Сумо для взрослых и детей с 5 лет - № 96', '1425750008_5713def44c0e7b8f4981b0476a7acac3.jpg', '', 0, 118),
(197, 'Фитнес в Фитнес-клубе "Белая Камелия"', '1425750518_3325c12dd666539a59765e73468a0188.jpg', '', 0, 121),
(198, 'Прыжки с парашютом в тандеме и индивидуально ', '1425750803_f888bae9d4e94056fcacfe7e364143c3.jpg', 'В настоящее время аэроклуб работает по следующим направлениям: - AFF (Acceleraited Free Fall) — ускоренное обучение свободному падению; - групповая и индивидуальная парашютная акробатика; - тандем-прыжки (прыжки инструктора с пристёгнутым пассажиром); - прыжки на куполах круглой фирмы. Огромной популярностью пользуются тандем-прыжки Особенно среди тех, кто не может заставить себя сделать шаг в бездну, но очень бы хотел испытать себя. В клубе для этого созданы все условия: работают тандем мастера, имеющие международные сертификаты и опыт работы за рубежом (Таиланд, Египет, Турция и т. д ). Специальные тандем-парашюты, рассчитанные на 2-х человек, надёжны и оснащены помимо запасного парашюта, суперсовременными страхующими приборами «Cypres». Прыжки на куполах круглой формы являются наиболее доступными для широких слоев населения. Практически, любой желающий, может совершить прыжок с круглым куполом в день обращения. Была бы только приемлемая погода.', 0, 122),
(199, 'Самооборона для взрослых и детей с 6 лет - Клуб смешанных единоборств "Р.О.Д.Ъ."', '1425750991_08b448acdc4a187af5f6fe3d29eabf1c.jpg', '', 0, 124),
(200, 'Плавание в фитнес-центре "TERRASPORT Коперник"', '1425751233_88fc71728ff274c790a6baa78f3cc5bf.jpg', '', 0, 120),
(201, 'Прыжки с парашютом ', '1425751326_e6c4bab1c371f84b77e7ec946ed8a674.jpg', 'На территории клуба располагается не только парашютный клуб, летная школа по обучению, но и целый городок с рекреационной зоной. Здесь представлены широкие возможности для семейного и корпоративного отдыха: от гостиничных до ресторанных услуг. В «Аэрограде Коломна» ежегодно проводятся соревнования по парашютным прыжкам международного и федерального масштаба. Для клиентов предусмотрены специальные предложения, выгодные пакеты услуг, акции. Действуют скидки на все, включая проживание и питание. Регулярно проводятся вечеринки для членов компании по случаю открытия и закрытия сезонов, соревнований.', 0, 126),
(202, 'Армрестлинг для детей 13-15 лет и подростков 15-17 лет ', '1425751398_051ac5ffc76d6ba1b694d0061174bc0c.jpg', 'График занятий и наличие мест в группах уточняйте по телефону.', 0, 125),
(203, 'Прыжки с парашютом - "Пересвет-Аэро" ', '1425751529_e3f9ca3a9311c8b959ced33de978c049.jpg', 'В нашем аэроклубе "Пересвет - Аэро" вы можете совершить свой первый прыжок с парашютом и пройти полный курс обучения прыжкам, если вы ранее не занимались по классической программе обучения прыжкам с парашютом, или закончить обучение прыжкам с парашютом если вы уже начали заниматься и имеете за спиной несколько прыжков. На нашей аэродромной площадке "Вихрево" мы выполняем десантирование с борта комфортабельного лайнера АН-2, высота десантирования с парашютами Д 6 - 800 метров. Перед выполнением прыжка вы пройдете обязательный инструктаж у опытного инструктора по парашютному спорту. По Вашему желанию можно снять видео прыжков с парашютом.', 0, 127),
(204, 'Прыжки для парашютистов-спортсменов ', '1425751550_b54c6836d8c7c0e1a30208175eb722f2.jpg', 'Для парашютистов-спортсменов мы предоставляем возможность высотных прыжков с высоты 3500 м. Прыжки возможны только со своей системой, к сожалению, в данный момент мы не имеем возможности предоставить систему в аренду.', 0, 127),
(205, 'Прыжки индивидуальные и в тандеме - "Аэроклассика" ', '1425751778_c9ce98e67c55048905115f4209ae2597.jpg', 'Авиационный спортивный клуб «Аэроклассика» на базе аэродрома «Ватулино» производит следующие виды прыжков: - ознакомительные прыжки с парашютом с самолёта Ан-2 для начинающих парашютистов; - прыжки в рамках курса начального обучения; - специальные виды прыжков в рамках начальной парашютно-десантной подготовки; - показательные прыжки; - спортивные прыжки. Прыжки с круглыми парашютами возможны для всех желающих с 18 лет (с 14 до 18 лет - с разрешения родителей). Прыжки в тандеме - для всех желающих с 18 лет (с 8 до 18 лет - с разрешения родителей).', 0, 128),
(206, 'Парашютный спорт для всех желающих - "Аэроклассика" ', '1425751798_142a10e1afccf70154de02e81aad3706.jpg', 'Авиационный спортивный клуб «Аэроклассика» на базе аэродрома «Ватулино» производит следующие виды прыжков: - ознакомительные прыжки с парашютом с самолёта Ан-2 для начинающих парашютистов; - прыжки в рамках курса начального обучения; - специальные виды прыжков в рамках начальной парашютно-десантной подготовки; - показательные прыжки; - спортивные прыжки.', 0, 128),
(207, 'Армрестлинг для всех желающих - "Физ-Ра" ', '1425752132_c33a95d7321c02ee1b8cc415b2f123b7.jpg', 'Телефон: +7 (495) 738-31-97, +7 (910) 000-49-42 Адрес: Москва, Филевский Бульвар, д. 10 Сайт: vk.com/club54899561', 0, 129),
(208, '', '1425752261_60649c8dd4cecb64deee82fb870f6932.jpg', '', 0, 130),
(209, 'Обучение паркуру для взрослых и детей ', '1425752607_2d37c588e956264aeb4dd663acb7abeb.jpg', 'В школе имеется всё необходимое для проведения безопасных тренировок для детей. Родители могут присутствовать на занятиях, смотреть и набираться энтузиазма к самостоятельным занятиям. Так же разработана тренировочная программа для взрослых, в рамках которой основное внимание уделяется отработке базовых техник, движений и элементов искусства перемещения. Обучение акробатике и различным стилям перемещения, применимых в различных жизненных ситуациях.', 0, 131),
(210, 'Обучение паркуру для взрослых и детей ', '1425753160_f78bc949f2494caad65b54f9993fd31e.jpg', 'В школе имеется всё необходимое для проведения безопасных тренировок для детей. Родители могут присутствовать на занятиях, смотреть и набираться энтузиазма к самостоятельным занятиям. Так же разработана тренировочная программа для взрослых, в рамках которой основное внимание уделяется отработке базовых техник, движений и элементов искусства перемещения. Обучение акробатике и различным стилям перемещения, применимых в различных жизненных ситуациях.', 0, 132),
(211, 'Полеты на воздушных шарах - Воздухоплавательный клуб "Аэровальс" ', '1425753417_5c10c483d2ba06b628d0b303d81019f5.jpg', 'Полеты на воздушных шарах проходят в любое время года, в том числе и зимой. Главные задачи для нас - обеспечение безопасности полетов и максимальное удовлетворение потребностей наших гостей, поэтому Вы можете быть уверены, что Ваш полет на воздушном шаре будет профессионально и безопасно организован и проведен. Такой полет останется в памяти на долгое время.', 0, 133),
(212, 'Полёты на воздушном шаре', '1425753577_63d1c4c4abefffaed22e74bff48cc9f0.jpg', 'Полёты на воздушном шаре в Дмитровском районе МО Телефон: +7 (985) 210-01-21.', 0, 134),
(213, '0', '1425753738_3fa4d695c131d4ac6a946d24621655b7.jpg', '0', 0, 135),
(214, 'Катание на роликах для детей и взрослых', '1425753758_4e85308c2aae6ba8ab8143ec43aff79d.jpg', 'Катание на роликах для детей и взрослых', 0, 136),
(215, 'Крытый скейтпарк ', '1425754145_8a49f0b9e7f12a239eac727ea701b75e.jpg', 'Недорогие цены. Скейтпарк оборудован большой рампой, несколькими квотерами, радиусным фанбоксом, поролоновой ямой и разгонкой к ней.', 0, 137),
(216, 'Универсально-спортивный зал ФОК "Марьина Роща" Спортивный зал для игровых видов спорта.', '1425754218_345e4192524db15b759741b795c08cec.jpg', '', 0, 138),
(217, 'Свободное посещение скалодрома "Red Point" ', '1425754376_6027ba8883020710f0c5bdd649e319fe.jpg', '50% процентов площади скалодрома рассчитаны на новичков и начинающих скалолазов. Это вертикальные стенки, на которых вы сможете отработать свою технику лазания прежде чем перейдете к более нависающим проектам. Для продвинутых скалолазов есть нависающие модули и потолок. Любой желающий может посетить скалодром. Расписание и цены уточняйте по телефону или на сайте скалодрома.', 0, 139),
(218, 'Плавание в ДЮСШ "Озёрки" ', '1425754642_394f65ea584d55544a19c0608d920530.jpg', 'В ДЮСШ «Озерки» всегда будут рады новым ученикам, причем самого разного возраста – от 7 до 17 лет. Специалисты высокого класса найдут должный подход и к самым маленьким своим воспитанникам, делающим первые шаги не только в плавании, но, может быть, и вообще в спорте. Не для кого, наверное, не секрет, что чем раньше ребенок начинает заниматься спортом, тем больше его шансы на достижение высоких результатов, но мы рады принять в наши ряды и тех, кто чуть позже своих сверстников осознал, что плавание для него – это не только способ провести время на берегу моря или реки, это не просто хобби, это гораздо больше. Ну а если ваш ребенок раньше занимался каким-нибудь другим видом спорта, и теперь решил несколько больше внимания уделить плаванию, то наши тренеры будут только рады помочь ему в этом. К настоящему моменту тренерский состав отделения плавания насчитывает 14 специалистов самого высокого уровня, которые занимаются с ребятами в 30 группах. Общая численность учеников отделения составляет около 350 человек. С целью усовершенствования учебно-тренировочного процесса в дни школьных каникул ДЮСШ «Озерки» проводит сборы в Подмосковье, а летом, как правило, и на морском побережье России. Не забывают в нашей школе и о таком важном аспекте в подготовке спортсмена, как соревновательная практика, а потому наши ученики регулярно принимают участие в различных городских, российских и даже международных соревнованиях, где добиваются в последние годы самых высоких результатов.', 0, 141),
(219, 'Скалолазание в ДЮСШ "Озёрки" ', '1425754662_10548c9edeea6bf643940aa4c9396341.jpg', 'В настоящее время на отделении альпинизма и скалолазании работают три тренера: Владимир Бобров, Геннадий Сергевнин и Владимир Коломыцев. Тренировки проводятся четыре раза в неделю на большом (6 этаж ДДС) и малом (1 этаж ДС «Сокольники») скалодромах. Для обеспечения максимальной эффективности тренировок в начале каждого учебного года, в зависимости от количества учеников отделения, комплектуются группы для занятий на всех площадках. Спортсмены отделения разделены на группы: группа начальной подготовки, учебно-тренировочная группа, группа спортивного совершенствования. Учебно-тренировочные сборы на отделении альпинизма и скалолазания проводятся один раз в год на открытых скалах в Карелии. Это объясняется спецификой тренировочной работы, которая определяет скалолазание, как начальный этап альпинизма.', 0, 141),
(232, '0', '1425755054_4f4401cefd518cbe971113d679055de7.jpg', '0', 0, 140),
(234, '', '1425755595_9b16c3a11d552e3c258a2de8309b5fdd.jpg', 'Малая спортивная арена олимпийского комплекса "Лужники" Малая спортивная арена представляет собой универсальное спортивное сооружение длиной 146 м, шириной 100 м и высотой 16 м с игровым полем 80 х 36 м. Игровое поле трансформируется в ледяную площадку 60 х 31 м', 0, 145),
(235, 'Бейсбол в СДЮШОР "Юность Москвы" по бейсболу', '1425799103_5ec3be5461aa5cb3391151dc85971c60.jpg', '', 0, 146),
(244, '', '1425799924_0e92432de34e6e9cdeae38b3611d7b8d.jpg', 'Вольная борьба для детей с 7 лет - № 42 Все интересующие вас подробности о работе секции и школы в целом уточняйте по телефону. +7 (495) 381-42-28, +7 (495) 113-59-63', 0, 147),
(245, '', '1425799949_27e8b2544674f8adcfed7d640f8deb87.jpg', 'Мини-футбольный зал СДЮШОР № 42 ФОК "СДЮСШОР № 42" предлагает в аренду мини-футбольный зал, имеются раздевалки, душевые. от 2000 руб./час +7 (495) 381-42-28, +7 (495) 113-59-63', 0, 147),
(246, '', '1425799997_b5537a4ae694768426a4ed6639685a37.jpg', 'Бейсбол для детей с 8-10 лет - № 42 Все интересующие вас подробности о работе секции и школы в целом уточняйте по телефону. +7 (495) 381-42-28, +7 (495) 113-59-63', 0, 147),
(247, '', '1425800029_14d7631e113bd2ab480c35265e5306d8.jpg', 'Бокс для детей с 7 лет Все интересующие вас подробности о работе секции и школы в целом уточняйте по телефонам: +7 (495) 381-42-28, +7 (495) 113-59-63', 0, 147),
(248, 'Тренажерный зал ДС "Надежда"', '1425800703_c67e0c21f4bc2a63e7b2ba0af4bf6bb1.jpg', '', 0, 148),
(249, 'Бассейн ДС "Надежда"', '1425800703_18ba9bfa4cc8db51fb6d6df203fbb978.jpg', '', 0, 148),
(250, 'Волейбольный зал ДС "Надежда"', '1425800703_d6b22d1dfd5c042b3986785039c5f847.jpg', 'Волейбольный зал ДС "Надежда" Дворец спорта "Надежда" предлагает в аренду спортивный зал для волейбола, имеются раздевалки, душевые, парковка. Во Дворце имеются специально оборудованные залы и площадки для занятий на профессиональном и любительском уровнях. Возможны следующие виды услуг: абонемент, разовое посещение, аренда. Тренировки проходят в отлично оборудованных залах с удобными раздевалками и душевыми. Приветливые администраторы дадут Вам исчерпывающую информацию, а опытные инструкторы помогут правильно подобрать комплексы упражнений и разумно распределить физическую нагрузку. Мы подумали также и о тех, кто хотел бы получать дополнительную спортивную нагрузку и улучшать физическую форму в сочетании с эстетическим удовольствием. Для них в нашем Дворце Спорта организованы занятия по аэробике, аква-аэробике и спортивным танцам.', 0, 148),
(251, 'Мини-футбольный зал ДС"Надежда" ', '1425800703_ec4d544d3648b1962a187f7d7d6b9c8f.jpg', 'Мини-футбольный зал ДС "Надежда" Дворец спорта "Надежда" предлагает в аренду спортивный зал для волейбола, имеются раздевалки, душевые, парковка. Во Дворце имеются специально оборудованные залы и площадки для занятий на профессиональном и любительском уровнях. Возможны следующие виды услуг: абонемент, разовое посещение, аренда. Тренировки проходят в отлично оборудованных залах с удобными раздевалками и душевыми. Приветливые администраторы дадут Вам исчерпывающую информацию, а опытные инструкторы помогут правильно подобрать комплексы упражнений и разумно распределить физическую нагрузку. Мы подумали также и о тех, кто хотел бы получать дополнительную спортивную нагрузку и улучшать физическую форму в сочетании с эстетическим удовольствием. Для них в нашем Дворце Спорта организованы занятия по аэробике, аква-аэробике и спортивным танцам.', 0, 148),
(252, 'Волейбол - "Залп"', '1425801289_d1744f6f7c750a69a33f790dd5988d1d.jpg', 'Волейбол - "Залп" Добро пожаловать! Телефон +7 (495) 764-87-20 Адрес: г. Москва, Переведеновский переулок, д. 21, стр. 1 Сайт: volleyup.ru', 0, 149),
(253, '', '1425801576_0b4a2dcf99a0ae15a895f28415b8fffa.jpg', 'Вольная борьба для детей с 6 лет - "Олимп-Внуково" Условия приема, график занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 432-98-11', 0, 151),
(254, '', '1425801613_e4e8da93004ce396744ae8f14dbc633e.jpg', 'Волейбол для детей с 6 лет - "Олимп-Внуково" Условия приема, график занятий и всю прочую интересующую вас информацию уточняйте по телефону: +7 (495) 432-98-11', 0, 151),
(255, '0', '1425801637_f35a12afdb35f1247dde9fa4e724b008.jpg', '0', 0, 151),
(256, 'Школа пляжного волейбола Сергея Молчанова «Школа пляжного волейбола Сергея Молчанова»', '1425801878_f959459f7b90a630827a215ad4ad294e.jpg', 'Школа пляжного волейбола Сергея Молчанова «Школа пляжного волейбола Сергея Молчанова» принимает на обучение детей в возрасте от 15 лет, находящихся в хорошей физической форме, не имеющих индивидуальных медицинских противопоказаний для занятия этим видом спорта. Молчанов Сергей +7 (985) 258-66-06', 0, 152),
(257, '', '1425802387_765d14076b9627ab115bb16ca693c2ee.jpg', 'Бадминтон в СДЮШОР №101 Условия приёма, график занятий и прочее уточняйте по телефону. Физкультурно оздоровительный комплекс ДЮСШ № 101 "Тушино" предлагает в аренду спортивный зал для бадминтона, имеются раздевалки, душевые, парковка. От 800 руб./час', 0, 153),
(258, '', '1425802410_6dfbb913c5b5fcb43489ac888d5572b8.jpg', 'Гандбол в СДЮШОР №101 Условия приёма, график занятий и прочее уточняйте по телефону.', 0, 153),
(259, '', '1425802446_277344aa4636c6b6776122992938ebae.jpg', 'Волейбольный зал ДЮСШ № 101 "Тушино" Физкультурно оздоровительный комплекс ДЮСШ № 101 "Тушино" предлагает в аренду спортивный зал для волейбола, имеются раздевалки, душевые, парковка. От 2000 руб./час +7 (499) 762-03-05', 0, 153),
(260, '', '1425805682_0440e356f82bbff4406cb75a682e8786.jpg', 'Баскетбол в ДЮСШ №80 Условия приема в школу и график проведение тренировок уточняйте по телефону. +7 (495) 707-05-82', 0, 154),
(261, '', '1425805705_c3ade94dcbb281140d58df6c9dbbd386.jpg', 'Гандбол в ДЮСШ №80 Условия приема в школу и график проведение тренировок уточняйте по телефону. +7 (495) 707-05-82\n', 0, 154),
(262, '', '1425805721_1c8b6767b95dcb519d259b42f429664c.jpg', 'Футбол в ДЮСШ №80 Условия приема в школу и график проведение тренировок уточняйте по телефону. +7 (495) 707-05-82', 0, 154),
(263, '', '1425805739_73e9b6748e136c2cd7f13851f16b7d8a.jpg', 'Плавание в ДЮСШ №80 Условия приема в школу и график проведение тренировок уточняйте по телефону. +7 (495) 707-05-82', 0, 154),
(264, '', '1425806714_95cd3ecb3968853b16187ec246c87754.jpg', 'ольф для детей и взрослых В клубе работает детская школа гольфа, школа гольфа для взрослых. Возможны занятия всей семьёй. Все подробности об условиях вступления и расписании тренировок уточняйте по телефону.', 0, 155),
(265, '', '1425806728_30616c8640d81d2592a481ec86be799f.jpg', 'Тренажерный зал Московского гольф-клуба Зал фитнесс-центра Московского городского Гольф Клуба оборудован одиннадцатью новейшими тренажерами итальянской фирмы NEW FORM, рассчитанными на комплексное развитие всех групп мышц.', 0, 155),
(266, '', '1425806928_e797d5172af5a64151b276575d706db5.jpg', ' Гольф для подростков и студентов - "Крылатское" Шульгин Е.С. +7 (916) 300-02-32', 0, 156),
(267, '', '1425806943_cf512a8be789e998617a547a22aa74ba.jpg', 'Свободное катание на роликах для всех желающих - "Крылатское" Роллерпарк работает в летнее время. Проката роликов нет. Катание бесплатное. +7 (495) 740-97-48', 0, 156),
(268, '0', '1425806963_830e75ff5454830c0e51f1350d2cff20.jpg', '0', 0, 156),
(269, '', '1425807447_e800c2855031e9b237fbeedbe9d5a3ef.jpg', 'Керлинг для взрослых и детей в Московском керлинг-клубе Обучение игре в керлинг, свободная игры, организация соревнований и пр.', 0, 157),
(270, '', '1425807683_bbb739f1302b8d7e8e7d56e0bf8aaf4e.jpg', 'Керлинг для детей и подростков 7-17 лет - "Орбита" Количество занимающихся спортсменов составляет более 1000 человек. Учебно-тренировочный процесс обеспечивают 24 тренера-преподавателя. Телефоны: +7 (495) 944-55-10, +7 (499) 734-23-02, +7 (499) 734-71-86, +7 (499) 735-84-45', 0, 158),
(271, '', '1425807700_e427a6165705c65c4c218fe0f452d47d.jpg', 'Плавание для детей с 5-7 лет - "Орбита" Комплекс бассейнов "Орбита" В составе комплекса два плавательных бассейна: большой и малый. Малый - 8 х 16 м., глубина 0,7 - 1,2 м., большой - 6 дорожек по 25 м., глубина 2,5 м. 1800 руб./месяц Телефоны: +7 (495) 944-55-10, +7 (499) 734-23-02, +7 (499) 734-71-86, +7 (499) 735-84-45', 0, 158),
(272, '', '1425807727_bd73b65c738432c1a02b1da3c3d4fba7.jpg', 'Хоккей для мальчиков с 4 лет - "Орбита" Набор мальчиков с 4 лет в группы начальной подготовки. Прием начинается в августе. 1800 руб./месяц Телефоны: +7 (495) 944-55-10, +7 (499) 734-23-02, +7 (499) 734-71-86, +7 (499) 735-84-45', 0, 158),
(273, '', '1425807735_d85ffa2438f3fcadd5b02f6dd736435f.jpg', 'Настольный теннис для детей с 9 лет - "Орбита" Телефоны: +7 (495) 944-55-10, +7 (499) 734-23-02, +7 (499) 734-71-86, +7 (499) 735-84-45', 0, 158),
(274, '', '1425807760_f7a72d7b8f1aad9e0bafb884e712d140.jpg', 'Настольный теннис для детей с 9 лет - "Орбита" Телефоны: +7 (495) 944-55-10, +7 (499) 734-23-02, +7 (499) 734-71-86, +7 (499) 735-84-45', 0, 158),
(275, '', '1425808056_5d827e3eb3624ee46f9e9720613f992b.jpg', 'Мини-футбол в ДЮСШ №48 График занятий уточняйте по телефону. +7 (495) 261-67-30', 0, 159),
(276, '', '1425808348_c916e85e37b8f16c674f5a5d1d7ae800.jpg', 'Плавание для всех желающих - "Торпедо" Бассейн "Торпедо" Бассейн 25 метров, глубина – от 1,7 до 6,5 метров, 6 дорожек. Есть специальный бассейн для самых маленьких. Телефоны: +7 (499) 675-02-79, +7 (499) 277-22-80', 0, 160),
(277, '', '1425808367_e6484156a4cedb548645735e58f15fce.jpg', 'Каратэ-до для всех желающих - "Торпедо" Телефоны: +7 (499) 675-02-79, +7 (499) 277-22-80', 0, 160),
(278, '', '1425808382_9dfe630e55dce1874f0d89a1d5983822.jpg', 'Фитнес и тренажерный зал в Фитнес-клубе "Арена" - "Торпедо" Тренажерные залы, солярии и сауна, которые объединяет фитнес клуб "Арена", имеют богатую историю. Создавались они на рубеже появления в Москве культуристического движения, и просуществовали до наших дней, видоизменившись из подвальных тренажерных залов, в просторный фитнес клуб с современными тренажерами и дипломированными тренерами. Индивидуальный подход и вменяемые цены сделали нас популярными как среди новичков, так и среди профессиональных культуристов. +7 (495) 677-89-69\n3 из 8« ПредыдущийСледующий »Закрыть\n', 0, 160),
(279, '', '1425808413_099a1eb4f39832eeee3928c881d3bf08.jpg', 'Мини-футбольный зал СК Завода "ЗИЛ" - "Торпедо" Спортивный комплекс завода "ЗИЛ" предлагает в аренду спортивный зал для мини-футбола, имеются раздевалки, душевые. от 3000 руб./час', 0, 160),
(280, '', '1425808629_3006477ebc1485fc7cecce6044faab6a.jpg', 'Настольный теннис в СДЮШОР №44 График занятий уточняйте по телефону. +7 (495) 321-66-55', 0, 161),
(281, '', '1425808647_bccd40cf91727441fa1b496b66dc26f7.jpg', 'Футбол в СДЮШОР №44 График занятий уточняйте по телефону. +7 (495) 321-66-55', 0, 161),
(282, '', '1425808804_936064c7282f7752d92e007006cada98.jpg', 'Настольный теннис для детей и подростков 7-18 лет - № 72 "Афина" Набор проводится путем конкурсного приема детей 7-10 лет.', 0, 162),
(283, '', '1425808823_2179b00c60fbf91875db23796e0e82bc.jpg', 'Настольный теннис СДЮШОР №72 "Афина" Специализированная детско-юношеская школа олимпийского резерва "Афина" предлагает в аренду столы и инвентарь для настольного тенниса. +7 (499) 154-55-20', 0, 162),
(284, '', '1425809190_d1629a093452a1f1e312bc6c7e733ab3.jpg', 'Теннисные корты для всех желающих - Спортивный клуб "Будь здоров" В распоряжении членов и гостей клуба 13 кортов: - 5 крытых кортов; - 8 открытых кортов. Крытые корты: - 4 корта с покрытием Teraflex; - 1 корт с покрытием LayKold Super Tennis Court. Открытые корты: - 4 грунтовых корта (2 из них освещаемые в темное время суток); - 4 корта хард. Есть стенка и теннисная пушка. Расписание работы кортов на очередной календарный месяц можно узнать по телефонам клуба', 0, 163),
(285, '', '1425809518_53e3ed7594d886e3f5c338ffe86f8419.jpg', 'Большой теннис для взрослых и детей - "Держава" Проведи приятно время с пользой для тела и души! Телефон: +7(903)-580-67-48, +7(919)-770-35-75 Адрес: Москва, Кутузовский, д. 71 Сайт: clubworld-power.wix.com/derzavatennis', 0, 164),
(286, '', '1425809718_cd16ea8435b52134c7d430df646078e7.jpg', 'Футбол в ДЮСШ РГАУ-МСХА им. К.А. Тимирязева График занятий уточняйте по телефону.', 0, 165),
(287, '', '1425809735_a11c140defb61dbe625e80de05200c35.jpg', 'Теннис в ДЮСШ РГАУ-МСХА им. К.А. Тимирязева График занятий уточняйте по телефону.\n', 0, 165),
(288, '', '1425809752_c417c4069503de1045d44eaae9a98ad8.jpg', 'Баскетбол в ДЮСШ РГАУ-МСХА им. К.А. Тимирязева График занятий уточняйте по телефону.\n', 0, 165),
(289, '', '1425809760_9e42068f738eccfa9aa3411d9c5d4dce.jpg', 'Бассейн в ДЮСШ РГАУ-МСХА им. К.А. Тимирязева График занятий уточняйте по телефону.\n', 0, 165),
(290, '', '1425810779_77980069942e1d052b9737ed34f0de07.jpg', 'Футбол для детей и подростков - №112 Все подробности о работе секции уточняйте по телефону.', 0, 166),
(291, '', '1425811072_2af291ed2756f1844bb81b29f530f9cf.jpg', 'Хоккей в ДЮСШ № 1 - "Умка" С 2007 года детская спортивная школа №1 получила звание специализированной школы олимпийского резерва. Здесь дети могут получить обучение по таким спортивным дисциплинам, как хоккей и фигурное катание. Набор в школу происходит осенью каждого года для детей с пяти лет. Телефон: +7 (499) 458-10-84', 0, 167),
(292, '', '1425811273_50b4982a96e658e2eed308c4250a38b7.jpg', 'Хоккей для детей с 5 лет Условия приема, график занятий и всю прочую информацию уточняйте по телефону: +7 (495) 399-13-27', 0, 168),
(293, '', '1425811288_cc29f4a8084696ffa0f10a70aea4d134.jpg', 'Керлинг-клуб "Планета льда" для всех желающих Керлинг-клуб "Планета льда" - первый и единственный спортивно-развлекательный комплекс в России, для занятий олимпийским видом спорта кёрлинг. Телефон: +7 (495) 343-57-69', 0, 168),
(294, '', '1425813216_cfe1f78c6b694fd43ca43bdfd8534a0a.jpg', 'Школьный спортивный клуб "Бадминтоник" Оздоровительные и специализированные заниятия по бадминтону для детей, подростков и взрослых Телефон: 8 (964) 582-73-64 Адрес: г. Москва, 1-я улица Текстильщиков, д. 16 Сайт: badmintonik.jimdo.com', 0, 169),
(295, '', '1425813463_91077c18a452661af7efe81021e91261.jpg', 'Мини-футбол для всех желающих - "МосГУ" Мини-футбол для всех желающих Телефон: +7 (499) 374-75-97, +7 (499) 374-57-21 Адрес: Москва, ул. Юности, д. 5/1 Сайт: www.mosgu.ru', 0, 170),
(296, '', '1425813483_1ff9bb17f85f9abe1333e41d8642a323.jpg', 'Баскетбол для всех желающих - "МосГУ" Баскетбол для всех желающих Телефон: +7 (499) 374-75-97, +7 (499) 374-57-21 Адрес: Москва, ул. Юности, д. 5/1 Сайт: www.mosgu.ru', 0, 170),
(297, '', '1425813502_935d03477b0a458bb54cf5e5de078924.jpg', 'Волейбол для всех желающих - "МосГУ" Волейбол для всех желающих Телефон: +7 (499) 374-75-97, +7 (499) 374-57-21 Адрес: Москва, ул. Юности, д. 5/1 Сайт: www.mosgu.ru', 0, 170),
(298, '', '1425813521_44bda249bad91c24637b8921731e496f.jpg', 'Бадминтон для всех желающих - "МосГУ" Бадминтон для всех желающих Телефон: +7 (499) 374-75-97, +7 (499) 374-57-21 Адрес: Москва, ул. Юности, д. 5/1 Сайт: www.mosgu.ru', 0, 170),
(299, '', '1425813788_ea06dbdb36de74914e90cfabadfc485a.jpg', 'Бадминтон для взрослых и детей - "Мичспорт" Наш бадминтонный зал представляет собой крытый утепленный корт, оборудованный 4-мя бадминтонными площадками. Каждая площадка - это профессиональное акриловое покрытие с индивидуальной разметкой, специально предназначенное для игры в бадминтон. Высота потолков – около 11 метров. Телефон: +7 (905) 585-21-54 Адрес: Москва, поселок Мичуринец, ул. Энгельса д. 8Ю', 0, 171),
(300, '', '1425816727_654b5190ee68b7b2ff794b13c3ea2d35.jpg', '', 0, 172),
(301, 'Серфинг ', '1425817005_f099d5e42981cfa7fc1032637c41fa46.jpg', 'Наши ингредиенты: 1.Катания на специальных серф-скейтах и индобрдах, имитирующие движения на океанских волнах и дающие нагрузку на все группы мышц, и индо-бордах, развивающие координацию движений и чувство равновесия 2.Занятия в в бассейне, направленные на развитие выносливости и правильной техники плавания 3.Классы йоги, направленные на развития силы и баланса, а главное гармонии ума и тела Телефон: +7 (964) 514-15-68 Адрес: Москва,ул. Ибрагимова,д. 30 Сайт: surfway.ru', 0, 173),
(302, 'Катание в парке "Сокольники" ', '1425817425_2479a019d5d7b3de39c1c76990b97f73.jpg', '«Сокольники» – уникальная площадка для катания. Парк является старейшим в Москве и одним из самых больших в Европе. Длина основных дорожек парка превышает 15 км. Хорошее освещение в парке позволяет так же наслаждаться приятным вечерним маршрутом. Покрытие: асфальт.', 0, 174),
(303, 'Катание в Кусковском лесопарке', '1425817697_deb36c01cbf4caf09cbafeace1457147.jpg', 'Прогулочный маршрут через два парка с красивой природой и интересной историей. Маршрут пролегает от Измайловского острова до музея-усадьбы "Кусково". Покрытие: асфальт.', 0, 175);
INSERT INTO `points_halls` VALUES
(304, 'Айкидо для взрослых и детей с 13 лет - Международный центр исторического фехтования "Эскалибур" ', '1425817757_7c34ee8ac23e631d34650209e12528b7.jpg', ' Наш клуб ориентирован на серьёзно и интенсивно занимающихся людей возрастом от 13 лет (средний возраст в группах 25-40 лет) и желающих изучать и применять на практике традиционное Айкидо Ивама рю. Мы создаём для этого все условия: возможность тренироваться каждый день, семинары с участием главы школы Хитохира Сайто Сенсея, ученики нашего клуба ежегодно посещают Иваму (Япония) в качестве учидеши, летние лагеря, спецтренировки для старших учеников, аттестации на кю и даны с выдачей японских дипломов. Также для таких учеников действуют специальные условия оплаты.', 0, 150),
(305, 'Веломаршрут в Серебряном бору ', '1425818097_f892ccdbe835ef7c63967f0a191b29ac.jpg', 'Замечательный маршрут по лесам Серебряного Бора. Осторожно, маршрут пролегает через нудистский пляж. Покрытие: асфальт.', 0, 177),
(306, 'Аэробика в Фитнес-клубе "Белая Камелия"', '1425818336_4f8c952ef2e24b33e67bd67bb62ae004.jpg', '', 0, 179),
(307, 'Каратэ "Сакура" для мужчин от 21 года - Международный центр исторического фехтования "Эскалибур"', '1425818558_cc0aa6be591447debd86d3a25e121a0c.jpg', ' В соответствии с Уставом Каратэ-клуба «САКУРА» его членами могут быть только мужчины в возрасте от 21 года и старше (без ограничения). Сейчас возраст участников клуба варьируется от 24 до 52 лет. Руководство Клуба считает нецелесообразным включать в тренировочный процесс представительниц прекрасного пола, а также детей и подростков в связи с тем, что они требуют специфического подхода в методике тренировки. Тренировки проводятся два-три раза в неделю под руководством инструкторов, имеющих квалификацию не ниже 1 Дана. Основной тренировочный день - суббота, первая половина дня. Занятие длится 5-6 часов с одним перерывом на 30 мин. Время проведения второй и третьей тренировки (рабочие дни) выбирается при формировании группы и по длительности составляет 1,5-2 часа. Набор в группы производится дважды в год: в сентябре и в феврале. Каждая группа состоит из 8 - 16 человек.', 0, 181),
(308, 'Фитнес клуб "Озон" Фитнес клуб "Озон" ', '1425818971_19f0d54f62da30adb2959dec45dc679e.jpg', '(Мытищи) предлагает вашему вниманию оборудованный тренажерный зал, зал для занятий шейпингом, аэробикой и йогой. Он создан для желающих приобрести отлиную физическую форму, используя современные технологии и программы в области фитнеса. В нашем клубе вы получите широкий выбор фитнес-услуг по доступной цене. Вежливый и доброжелательный персонал создаст для Вас атмосферу уюта и комфорта.', 0, 183),
(309, 'Прыжки с парашютом - "Волосово" ', '1425819166_fdf64d5d711f46df772acf222e2326b8.jpg', 'Московский городской объединенный аэроклуб Российской оборонной спортивно-технической организации (ДОСААФ) приглашает прыгнуть с парашютом всех желающих в возрасте от 14-ти до 60-ти лет на Аэродроме Волосово (г. Чехов). Так же можно выполнить ознакомительные или учебные полеты на самолете АН-2. Аэроклуб работает в выходные и праздничные дни с 9-ти до 18 часов. Вы можете выполнить прыжки с парашютами: - Д-6 (десантный), с задержкой раскрытия 3-5 секунд; - "Юниор" (учебный), с принудительным стягиванием чехла. Высота 600-800 м.; - При предъявлении документов о ранее выполненных прыжках, пройдя процесс обучения, можно выполнить прыжки с парашютной системой ПТЛ-72 (Парашют тренировочный лётчика, управляемый), с высоты 1200-2500 м. (в зависимости от подготовки).', 0, 185),
(310, 'Кикбоксинг для всех желающих в клубе Муай Тай "Bangkok Team"', '1425819173_af10f23e236eabfc671fb031da88bf0c.jpg', ' Приглашаются все желающие,независимо от физической подготовки, возраста и пола. Тренер - заслуженный мастер спорта России- Арсен Элдарханов, который подготовил чемпионов мира Шамхалов Артур, Шарапов Шарап и т.д. Стаж работы более 30 лет. Тренер - Уллуби Магомедов: 10-ти кратный чемпион Москвы,чемпион России, призер Чемпионата мира.', 0, 184),
(311, 'Прыжки с парашютом - ДОСААФ России ', '1425823443_fe54f31432f84c6fe6eba9fb558b2e2c.jpg', 'Обучение прыжкам с парашютом, разовые прыжки с парашютом для всех желающих.', 0, 186),
(312, 'Прыжки с парашютом самостоятельные и с инструктором ', '1425823927_d2dbe8d0432fe683d1d2b4d1d5c9a848.jpg', 'В период с 1 ноября по 31 марта аэроклуб работает каждую субботу, воскресенье и в праздничные дни. C апреля по октябрь — каждую пятницу, субботу, воскресенье и в праздничные дни в зависимости от погоды. Информацию о работе в другие дни уточняйте по телефонам: +7 (499) 713-72-72, +7 (903) 737-74-47.', 0, 187),
(313, 'Обучение парашютным прыжкам по программе AFF', '1425823973_2752a82e26955af8782cb9295b2825fe.jpg', 'Вы совершили свой первый прыжок и вдруг поняли, что небо - это то, о чем Вы мечтали всю жизнь? Или Вы это и так всегда знали и сейчас решили осуществить эту мечту? Так или иначе, но вы пришли по адресу. Мы обучаем парашютистов по программе AFF (Accelerated Free Fall — программа ускоренного обучения свободному падению). Окончив программу AFF, Вы становитесь спортсменом-парашютистом, имеющим право выполнять самостоятельные парашютные прыжки на любой российской или западной дропзоне. Далее Вам остается лишь совершенствовать свои навыки, осваивать новые виды прыжков, прыгая сначала в одиночку, потом — в маленьких группах, позднее — в составе все больших и больших групп.', 0, 187),
(314, 'Полеты на воздушном шаре - "A-Club" ', '1425824265_098902bff5c9322813342bdbdb61b73d.jpg', 'Телефоны: +7 (495) 724-60-56, +7 (909) 655-13-18.', 0, 188),
(315, '', '1425824476_21d9e0facd8e16b6b06665a7cb1b9c95.jpg', '', 0, 189),
(316, '', '1425824662_e29a187c7e25116db5acedb8108d4dab.jpg', '', 0, 190),
(317, 'Фитнес в Фитнес-клубе "ФизКульт" Варшавка', '1425827861_edc87f883e9b1bb23b217ddb0a0d6222.jpg', '', 0, 192),
(318, 'Кикбоксинг для всех желающих в бойцовском клубе "CLASSclub"', '1425828080_b15c1d1e5361294ba204f4ea0908991f.jpg', ' Тренировки под руководством Звезды Мирового бокса и кикбоксинга! - 3-х кратный Чемпион Мира. - по боксу и кикбоксингу среди профессионалов. - 4-х кратный Чемпион России. - по боксу и кикбоксингу среди профессионалов. - Победитель Чемпионата СНГ и Славянских государств. - по боксу и кикбоксингу среди профессионалов.', 0, 193),
(319, 'Бассейн "Локо-парк" ', '1425828640_9bdef59d12b6700af5f08cdb4708b401.jpg', 'В распоряжении клуба два бассейна. Взрослый - 25 м. х 15 м., оснащен противотоком, горкой и водопадом. Глубина 1.2 - 1.8 м. Температура 26-29 градусов. Также есть детский бассейн глубиной 60 см. и температурой воды 32 градуса.', 0, 195),
(320, 'Пилатес в Фитнес-клубе "Бриз" Пилатес', '1425828963_ea544cf4bd7ff83ea9be2c09bb2def9f.jpg', 'тренировка направлена на укрепление и тонизирование мышц, развития гибкости и чувства равновесия. Формирование более стройного тела.', 0, 196),
(321, 'Тренажерный зал Фитнес-клуба "Старт" ', '1425829324_84e56f768b4572fe2878db076dcf149e.jpg', 'Тренажерный зал (для мужчин и женщин), оснащенный комплектами тренажерного оборудования (тренажерами) всемирно известных западных и российских фирм (Jonson, Hoist, Body-Solid, Steelflex, VASIL GYM), где профессиональные тренеры и инструктора подберут для Вас индивидуальную программу, которая позволит Вам добиться наилучших результатов в занятиях.', 0, 197),
(322, 'Фитнес в Фитнес-клубе "Белая Камелия"', '1425829648_a12df637115a4908779e98057f5a395c.jpg', '', 0, 199);

-- --------------------------------------------------------

--
-- Table structure for table `points_images`
--

DROP TABLE IF EXISTS `points_images`;
CREATE TABLE IF NOT EXISTS `points_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=732 ;

--
-- Dumping data for table `points_images`
--

INSERT INTO `points_images` VALUES
(14, '1418225869_999a9ebabfa60808ed9bf1a0e8c89a4e.jpg', 0, 39),
(15, '1418225895_281016bd2f4ca673495f0b5b7c99c28b.jpg', 0, 39),
(16, '1418225906_d5310f8d3fba9a877a0c4579025ed681.jpg', 0, 39),
(17, '1418225909_24e47414a7d48fa696f01eae595ee4b9.jpg', 0, 39),
(18, '1418227284_8815a089de85c940e19fab99219b2c58.jpg', 0, 40),
(19, '1418227284_7b7fcfdfdab110400e66d709626bdaff.jpg', 0, 40),
(20, '1418227284_b64c242df2ff7677093cdf58cf8eb93a.jpg', 0, 40),
(21, '1418227616_c1317867316d246918e08d09e6ffdeba.jpg', 0, 41),
(22, '1418227616_72806667b9fad0b4f5546fbe12a5bf2c.jpg', 0, 41),
(23, '1418227616_07fc790f6c8c089fc6728771fdd9607d.jpg', 0, 41),
(24, '1418300103_d354ac8a35de57bdd9c69552735f6704.jpg', 0, 42),
(25, '1418300103_9808775d149a2f78616cb567e554de48.jpg', 0, 42),
(26, '1418300103_c5d86eab2e3c2bcb23e25a715e17fa38.jpg', 0, 42),
(27, '1418300686_76df91ab42b5115a903e83210d8d7a33.jpg', 0, 43),
(28, '1418300686_ece6d6c071733df71ac0f5672c769129.jpg', 0, 43),
(29, '1418300686_34e2055076b11d4dc1b9c1f723b69c20.jpg', 0, 43),
(30, '1418301162_397d9f3148a98b156debc2b12e0ef5f5.jpg', 0, 44),
(31, '1418301162_c8bb307f744f5d5780b50e79eb59d829.jpg', 0, 44),
(32, '1418301162_827eeff0661dc2cd1c064a71b2492b80.jpg', 0, 44),
(33, '1418301162_9953504c93808e81375f828d9b4c3c77.jpg', 0, 44),
(34, '1418301162_639e0ad110c3b6dc5ee398ffd7ff835e.jpg', 0, 44),
(35, '1418301162_1f3ba9027dd9986f1960c42453d93e9f.jpg', 0, 44),
(36, '1418301162_e575284d9181b2e15d26fa23944032a1.jpg', 0, 44),
(37, '1418301162_a31874a5776bb27fa8dfe7ca8727b77b.jpg', 0, 44),
(38, '1418304447_55c03912803795385c39059e421c4fbc.jpg', 0, 45),
(39, '1418304447_fbcc55d8792b4fd658593ab7b79c53ba.jpg', 0, 45),
(40, '1418304447_64d827f519911cb0d7927a12a4874e63.jpg', 0, 45),
(41, '1418305058_010c3f6c16169965f5d42b05eadfb6fa.jpg', 0, 46),
(42, '1418305058_2f0d4c5edaf1629e0e7301750d0f800e.jpg', 0, 46),
(43, '1418305058_62017132e55f0f81f636afc92db3a9a7.jpg', 0, 46),
(44, '1418305058_bd30e706777b982e565353be2b126ae5.jpg', 0, 46),
(45, '1418305058_a8a49af2042a2f61dfbef063013fac70.jpg', 0, 46),
(46, '1418305058_63b26af0e4f47762eb2bf8938dc15b3d.jpg', 0, 46),
(47, '1418305058_0046404cc559602c1ccc50738491049d.jpg', 0, 46),
(48, '1418305059_d5cfcefd8cbddba18d306f97b7cea405.jpg', 0, 46),
(49, '1418305059_599a859a165ec431bce1777308b1603c.jpg', 0, 46),
(50, '1418305059_4b03176540db51891b065e5ed64e2c75.jpg', 0, 46),
(51, '1418306703_54105e3ed5f54e343db61f949ee7a405.jpg', 0, 47),
(52, '1418306704_a88557fbe0d331eec4a5c86abee1cf64.jpg', 0, 47),
(53, '1418306704_fa9872dea921c91b73123b88e5aecbf9.png', 0, 47),
(54, '1418306704_78423f4412e0ee73cfefd4e4341d7c61.jpg', 0, 47),
(55, '1418306704_eea11c7937867b7f7dc34f0013deff48.jpg', 0, 47),
(56, '1418306704_84e318944bda1143483ed9db29a7e3d8.jpg', 0, 47),
(57, '1418307477_0c444a9ac9af4f03c9328c1080a6c88b.jpg', 0, 48),
(58, '1418307477_adb095f74b588b648c1eed8ae5fd32e3.jpg', 0, 48),
(59, '1418307477_a53e7c37ca9a4e1998d503ff69d1feaa.jpg', 0, 48),
(60, '1418307477_b64f7b03e7532ba3b0288c266624bc09.jpg', 0, 48),
(61, '1418307477_02497a8a4648f501c2d134e94ed920e9.jpg', 0, 48),
(62, '1418307832_0c5e4d307e9138ee7ba86ff95d8949dc.jpg', 0, 49),
(63, '1418307832_260b1c049f9384e9bc087ef5382c9818.jpg', 0, 49),
(64, '1418307832_1bd0c862bf0649f37b841abfa5f13560.jpg', 0, 49),
(65, '1418307832_a7b25fb43fbc2146938d60221867840f.jpg', 0, 49),
(66, '1418307832_4915c15d15cbd6b0c8c409aa8e41ea4c.jpg', 0, 49),
(67, '1418307832_8b1d5b5fdc9684f736f61fd3e2c4c705.jpg', 0, 49),
(68, '1418307832_be42c2b9db9e05e6002ff79eb6c831c3.jpg', 0, 49),
(69, '1418307832_1b1299d46edc84bb3d2c2dd0abde288a.jpg', 0, 49),
(70, '1418307832_3d6344145f0b37af2d1b21ffa2f6141b.jpg', 0, 49),
(71, '1418307832_0948d617653120f48ef7dcf1904d0f13.jpeg', 0, 49),
(72, '1418307832_004b62871e22e2f177fea75a1ebb843c.jpg', 0, 49),
(73, '1418308602_afdc5cc089a1afe4b8dd7fe2c014bfed.jpg', 0, 50),
(74, '1418308602_615ce4758e260adc5570aff050e75116.jpg', 0, 50),
(75, '1418308602_a5ca9b3ee68e672e2ed7a00bc0dbf1d7.jpg', 0, 50),
(76, '1418308602_9054e3d1564a3255b9bb91b7b470535f.jpg', 0, 50),
(77, '1418308602_84201ae1bf51d287d0144de2c3c8485d.jpg', 0, 50),
(78, '1418308602_ee2ab0321addffc07210f7c74f2a9038.jpg', 0, 50),
(79, '1418308602_c46861683efedfd98054f5899947bec2.jpg', 0, 50),
(80, '1418308602_1ea67b38c777762605cab03133bc9b2f.jpg', 0, 50),
(81, '1418308602_f3f2aee9449b8a543468f1000453a3e5.jpg', 0, 50),
(109, '1418312936_3e37cb28ff729c4dff9867cf81c2c3a2.jpg', 0, 51),
(110, '1418312936_7896e4e9ff6860506a576dbeef3dedab.jpg', 0, 51),
(111, '1418312936_a3f5942709af90aa89f34475a29cc80f.jpg', 0, 51),
(112, '1418312936_f9820ad83cd023f4cb8a6288d9f77eb4.jpg', 0, 51),
(115, '1418313370_e8c5d4fbb963d2e1ea87c0d98f50a32f.jpg', 0, 52),
(116, '1418313370_8425e0d844089faa406aa982eea22121.jpg', 0, 52),
(117, '1418313370_9207ef0e8a82c4acc074e72df1103b7d.jpg', 0, 52),
(118, '1418313370_08a0f61f5bd7cc946c770230d8129817.jpg', 0, 52),
(119, '1418313370_7393944315bd53484d5abeef4eeed25d.jpg', 0, 52),
(120, '1418313370_cc38d77b93d90a3a877cc5a8146ca6da.jpg', 0, 52),
(121, '1418313370_3ec3a9d3542a756eb7dedc83c0108f06.jpg', 0, 52),
(122, '1418313370_6c7d00807538e48e0373d2af628899b5.jpg', 0, 52),
(124, '1418313370_4439edf5f8382dc5bf241bfb0d011271.jpg', 0, 52),
(125, '1418313370_7fbd23d614e11811f1816338a7b908ea.jpg', 0, 52),
(130, '1418314588_c5f7c8851da893b0674bfc523f07158d.jpg', 0, 53),
(131, '1418314588_9df9bc6ec59b0653193e6844d002566c.jpg', 0, 53),
(132, '1418314588_d2fa314b49c2f4c55a3a3ca0b613607b.jpg', 0, 53),
(133, '1418314588_9c8328bc33c91c69e3bdbb299e6b82d2.jpg', 0, 53),
(134, '1418315065_0abce55a0f0f99c82b5546e9912712b7.jpg', 0, 54),
(135, '1418315065_10b5502620efcf6a9d74da7a830a7dfd.jpg', 0, 54),
(136, '1418315066_5643aead3f0d7aa286710ba1c3f683e4.jpg', 0, 54),
(137, '1418315066_c00338a7a64c8e237c65ce241c0a3dd5.jpg', 0, 54),
(138, '1418315323_91f23b0984477307d9423237f3824c19.jpg', 0, 55),
(139, '1418315323_b655730f1d3efe48237a10e9e1abdc90.jpg', 0, 55),
(140, '1418315323_7e10432da6d029eeea7ee3eb0a1bb364.jpg', 0, 55),
(141, '1418315323_53415dd6878f25b328ea5e9e0bd07008.jpg', 0, 55),
(142, '1418315323_cd5d52602a812ac52b075f2d9d4d96f8.jpg', 0, 55),
(143, '1418315496_ce9cae0ee164c04cb318e3462691875c.jpg', 0, 56),
(144, '1418315496_194df4b336eeaefb3f545feab9370a9d.jpg', 0, 56),
(145, '1418315496_e85520d3af6e7ca95ab98bfac1eb12dd.jpg', 0, 56),
(146, '1418315496_f8127dbfea62ce7afaad2c0aac1e5ccd.jpg', 0, 56),
(147, '1418315790_ec12cae91e3fb5032fd6c6a0a3d27bb8.jpg', 0, 57),
(148, '1418315790_16043ca80e41e7ec62c809c7f01cefc5.jpg', 0, 57),
(149, '1418315790_0dd0fc4e7235d6721c2d2dcfb940be76.jpg', 0, 57),
(150, '1418315790_b909c5fdcedb687fa312db14b435d790.jpg', 0, 57),
(151, '1418315976_b5ced9ac42bd6d9c8f54607c5dfb8786.jpg', 0, 58),
(152, '1418315976_dec84726568a5fc21dcc7f605ba48676.jpg', 0, 58),
(153, '1418315976_cae85455cd31db815237f470d34e827e.jpg', 0, 58),
(154, '1418315976_4edd95f03931ca63cce611904dc9431a.jpg', 0, 58),
(155, '1425565209_fb9809f8209fa13e3c2e66d99065250f.jpg', 0, 59),
(156, '1425565210_aa9c791a1d2dd95345d4d87b5d065e61.jpg', 0, 59),
(157, '1425565210_20c16c786320fb32ca156e1bba8725ee.jpg', 0, 59),
(158, '1425565210_c95dfcc5df90fac9b4bd44012f9d3813.jpg', 0, 59),
(159, '1425565210_8a11cb742ae59fed50f93aa2316cba28.jpg', 0, 59),
(160, '1425565210_cadbf14643b4b5d992762e1c3dae6a55.jpg', 0, 59),
(161, '1425565210_698a8eafa299ce4e196e81045c505257.jpg', 0, 59),
(162, '1425565210_a4f5ab73484208a8522c02171fb6a223.jpg', 0, 59),
(163, '1425566009_eb42332405e4fd417ef6fc54a0bab46f.jpg', 0, 60),
(164, '1425566009_2ce5498271ec219b2c6e96cf7c804076.jpg', 0, 60),
(165, '1425566009_a868ed60d4d8b2c67f135f163aab3d5d.jpg', 0, 60),
(166, '1425566009_f25c7843e5c226b3c0409b6c5a1a572f.jpg', 0, 60),
(167, '1425566395_6e00afa44ec331bbec7c3ac73fc80c72.jpg', 0, 61),
(168, '1425566395_9b0ea235a656929ca462ebb66964ff73.jpg', 0, 61),
(169, '1425566395_974c9aca442c41453215817d557b6d28.jpg', 0, 61),
(170, '1425566395_0100e4d73928b4632ae2f0c8ee552277.jpg', 0, 61),
(171, '1425566710_ae69ddc3ed8a793bc62297fed6cf441d.jpg', 0, 62),
(172, '1425566710_1aebdca60078ae3be4a1348210fc681f.jpg', 0, 62),
(173, '1425566710_43dd1097204f509953391b8594aba48c.jpg', 0, 62),
(174, '1425567053_b0fdbd801a924fa8166548f3037441db.jpg', 0, 63),
(175, '1425567053_ed4d0828b4b5dea2874e17f65acd9b99.jpg', 0, 63),
(176, '1425567053_66f56369fe4a4fb09ee5ed77bc7718a2.jpg', 0, 63),
(177, '1425567053_62e129ab7d41ecd16b9964e121d84d6a.jpg', 0, 63),
(178, '1425648549_6ed8c559204a30e4544c71d5308fe3d9.jpg', 0, 64),
(179, '1425648549_44be940c114ea70046e16d3f76ec02c9.jpg', 0, 64),
(180, '1425648549_92a1efffe478e3b34163a61016934441.jpg', 0, 64),
(181, '1425648549_51d1c5a50e3fccdc663850e6fcfbb69b.jpg', 0, 64),
(182, '1425648800_44948a9f3de6a2dedfbeda0c79b9aa28.jpg', 0, 65),
(183, '1425648800_07a64c7803f7fcae5baf173908e27943.jpg', 0, 65),
(184, '1425648800_a67ff5c6ea9478bfe8b7af84c462ea7e.jpg', 0, 65),
(185, '1425648801_70beef70fbbfc872918c37419b440e03.jpg', 0, 65),
(186, '1425649039_cadad4a9b499764ed82fb0ea4135aca3.jpg', 0, 66),
(187, '1425649039_831cd5de6bd391d58662832fe6b07fb7.jpg', 0, 66),
(188, '1425649039_5455ae68f2e1e5a106d2634ad15d06c9.jpg', 0, 66),
(189, '1425649039_f560cd80017d5ead2b2898f4c5ec3634.jpg', 0, 66),
(190, '1425649039_bb1d97c5b2cb5a36c602c8fa75fc0c27.jpg', 0, 66),
(191, '1425649039_dbf66f7cb81f08c8033c45de717d652d.jpg', 0, 66),
(192, '1425649227_7a08c1be42ae0c04645b3869138c4b15.jpg', 0, 67),
(193, '1425649227_86c485943343855246e03545602b1d21.jpg', 0, 67),
(194, '1425649227_cc82f5df5af30a0fd6e961851fa34e93.jpg', 0, 67),
(195, '1425649227_4a8f672560afaabb90a086341bbf036d.jpg', 0, 67),
(196, '1425649448_a6cfe03f7de98876364dd16bc7ea8c3b.jpg', 0, 68),
(197, '1425649448_c3b6d63766d463a1a0b8541ae9d6b125.jpg', 0, 68),
(198, '1425649448_2540c87cf7489fdf61fd34d78c6e8d1c.jpg', 0, 68),
(199, '1425649448_e1a9a0a9d78821ec83f4fa7de4b95bb5.jpg', 0, 68),
(200, '1425649579_c5f083438861d5d838e0611b687b3688.jpg', 0, 69),
(201, '1425649579_3cec3845ed01dbde6641e746fa002087.jpg', 0, 69),
(202, '1425649579_222b54daf432c7664ccec33b0d3e9bb8.jpg', 0, 69),
(203, '1425649579_2b92968e60869c7841e4102504ba1c4e.jpg', 0, 69),
(204, '1425649579_96965744cfa63646ec811edee5192cec.jpg', 0, 69),
(205, '1425649579_83f0de02c90cf06a9ab8e75e2de4383c.jpg', 0, 69),
(206, '1425649579_b747cd5e45e37d00e1b6e6105ef9db29.jpg', 0, 69),
(207, '1425649579_ed4cc859641ecc61b37001766a49f827.jpg', 0, 69),
(208, '1425649774_650669137dcefe7416f6b859e88885a0.jpg', 0, 70),
(209, '1425649774_6653cfa463167ad57fad4a3e6f1241c4.jpg', 0, 70),
(210, '1425649774_955b7b44ce80826a6f4fdde747539daa.jpg', 0, 70),
(211, '1425649774_604a36fee1b6d40ff4cc3f25cc4a93eb.jpg', 0, 70),
(212, '1425649969_5baadb97b79b3cbd3e7dc6429458d613.jpg', 0, 71),
(213, '1425649969_eb72514b5af56f1a6c0d459ab280e03b.jpg', 0, 71),
(214, '1425649969_5c1af0db003842cec01e4aad442672b4.jpg', 0, 71),
(215, '1425649969_333065e59ad1293e072e8643b822759f.jpg', 0, 71),
(216, '1425649969_1c9602e7873ae14d8d83f83ce8300366.jpg', 0, 71),
(217, '1425650071_10ab52498a9fdb33ae4b2ce261d149bd.jpg', 0, 72),
(218, '1425650071_edd2a731173b3f56444827ba00fedc78.jpg', 0, 72),
(219, '1425650071_0850600ed3ae579e926d031186be6bff.jpg', 0, 72),
(220, '1425650071_b05baa209522831f27878f18a1a7c0d7.jpg', 0, 72),
(221, '1425720344_0f59a2eb5b3e7a2c5638573b54fb8b55.jpg', 0, 73),
(222, '1425720344_fc17f1f85f99a55533c072cf5613bf41.jpg', 0, 73),
(223, '1425721655_e043651656de502c119e551d36447d12.png', 0, 78),
(224, '1425721655_135ba890c853fbaa85b33ebad39bf66f.jpg', 0, 78),
(225, '1425721655_2bc7743bbc8403f4d679a6cb35b45d1d.jpg', 0, 78),
(226, '1425721656_32fa95be9c43af0bce400a4b95d1d6a8.jpg', 0, 78),
(227, '1425721656_50ed3b80ce8c060247b7cbc9070db493.jpg', 0, 78),
(228, '1425722015_a1d5be4ae5f0998ab75d89f2005393bf.jpg', 0, 79),
(229, '1425722015_2654bde7f8fa736a0324210d8a66f03f.jpg', 0, 79),
(230, '1425722015_fee81534cdb2f855ca17334345d8ad72.jpg', 0, 79),
(231, '1425722015_042db65c466620db5793bc7addec4beb.jpg', 0, 79),
(232, '1425722015_608831d96a12fc39afffd04378fcd085.jpg', 0, 79),
(233, '1425722015_b452122ace1d7dab26708ceabef402b5.jpg', 0, 79),
(234, '1425722015_305586ddaf9c477deccc468efdb27031.jpg', 0, 79),
(235, '1425722015_81252fb9e54b25521108c34f5f64aea5.jpg', 0, 79),
(236, '1425722016_7bed8dab691d7172f8b1ca80c3c69e75.jpg', 0, 79),
(237, '1425722016_216f4e7e58094c9fafaae2bcbad4e966.jpg', 0, 79),
(238, '1425722016_1271e58c97750ae8987697e5b63cb1f6.jpg', 0, 79),
(239, '1425722016_d835e435596d6645d64207a529a49b3e.jpg', 0, 79),
(240, '1425722016_925c53cda5a7d587effadf9d60802736.jpg', 0, 79),
(241, '1425722016_0ebd17bdf82905968a26c739c0aefc32.jpg', 0, 79),
(242, '1425722016_1371aac29c3f63cc7a142a02ccf7185c.jpg', 0, 79),
(243, '1425722227_b481acc6fd0a1517ff20fdc464bb81a0.jpg', 0, 80),
(244, '1425722227_abfb0d5ca5c82b7add30410642757e0e.jpg', 0, 80),
(245, '1425722228_10278cd4a67e33b9e046b52daf9a9b05.jpg', 0, 80),
(246, '1425722228_9a59d9d9d96a2a8f69affff1d17e033f.jpg', 0, 80),
(247, '1425722570_584c6a199b27106b7aa2122db42929ec.jpg', 0, 81),
(248, '1425722570_862643fe48a950c07565acb1ae58d571.jpg', 0, 81),
(249, '1425722570_ff24260594b0a60341ca6afccf01b756.jpg', 0, 81),
(250, '1425722570_6e5f7f0474d422b00caf69bcbba42382.jpg', 0, 81),
(251, '1425723111_7eace827deea8d443bcd07292ebc94bf.jpg', 0, 82),
(252, '1425723111_6c80573ffd0b9491bf672a5ac4c1f08a.jpg', 0, 82),
(253, '1425723111_8583cff170cb0e75a3bfec10f8e8348c.jpg', 0, 82),
(254, '1425723111_99ce1184e81323341421389d450f7617.jpg', 0, 82),
(255, '1425723111_5f5cec1c73510b32d1be8b4a4cc0dccb.jpg', 0, 82),
(256, '1425723111_b8cff8409cef4c53bee285ea41c61a9e.jpg', 0, 82),
(257, '1425723111_f6c105766d6de9bf4ee01a0d473baac5.jpg', 0, 82),
(258, '1425723112_bc398af91f817d204b8241840071689f.jpg', 0, 82),
(259, '1425723560_8f828ba9ee273e5d79b9427e479f6596.jpg', 0, 83),
(260, '1425723560_1ce7f34b4fd01b62f38c12a18dbcf7e3.jpg', 0, 83),
(261, '1425723560_49fd8f02685768f735fb425af9a60112.jpg', 0, 83),
(262, '1425723560_dea81a31cb1bbaff482a317b8689bd35.jpg', 0, 83),
(263, '1425723823_8b7fa753a22d7235b14731552899637b.jpg', 0, 84),
(264, '1425723823_ee253d3cca46f894b8dac20ada68f9a1.jpg', 0, 84),
(265, '1425723823_d661261c9d7265461561c10431f63ec0.jpg', 0, 84),
(266, '1425723823_faf8f7956f1589d9183501b5e7f464f5.jpg', 0, 84),
(267, '1425723823_4ba4417bc850a1fc3b4fb11d40a1791e.jpg', 0, 84),
(268, '1425723823_69f12e80a0cf827193c498d1e2512162.jpg', 0, 84),
(269, '1425723823_d9f13f469794d8bd8bee9600bc61ad10.jpg', 0, 84),
(270, '1425723823_2adad9185c8b7728fff8d8d9b7eee9a1.jpg', 0, 84),
(271, '1425723823_cccb0427520c5ee95d11f7a21fc421e7.jpg', 0, 84),
(272, '1425723823_5f19dbe3325d8553d5892ce58195e98d.jpg', 0, 84),
(273, '1425723823_3c3e2a7fded65ce18e18c842ed271a28.jpg', 0, 84),
(274, '1425723823_a854836284b539a5989a41ad5cd3f904.jpg', 0, 84),
(275, '1425723823_69b9b9ec4461868827acebae5c6753ac.jpg', 0, 84),
(276, '1425723823_e05d63b43ef184742ebb2c267380c1f6.jpg', 0, 84),
(277, '1425723823_4634df78f00511e4f92d48a6fce52451.jpg', 0, 84),
(278, '1425723823_f84a234ae287bdc3616b2ffffecacdbe.jpg', 0, 84),
(279, '1425723823_0be6b39589d67a771ad4e16928a1fc48.jpg', 0, 84),
(280, '1425723823_07c1d6cacfccfab4cc44be102687d952.jpg', 0, 84),
(281, '1425723823_0e92f9ddf229df30b27ad1448e0c4428.jpg', 0, 84),
(282, '1425723950_65752bd31a0f6a0366327d46cef5a03c.jpg', 0, 85),
(283, '1425723950_2e62527916fc161fe51a74434832d8c8.jpg', 0, 85),
(284, '1425723950_f36e22e1a98e27b10463f34812e5a9ba.jpg', 0, 85),
(285, '1425723950_abee6bee735904b6b5baadab52e0bd42.jpg', 0, 85),
(286, '1425724789_6cc889994957b127ec227dd0c0691fee.png', 0, 90),
(287, '1425724789_7db41ac396be8eba37137b2d610ec177.jpg', 0, 90),
(288, '1425724789_5870ddcd321f88f1707cda928374e6b1.jpg', 0, 90),
(289, '1425724789_6bbe5c4d4d90a9fa4a64921a856de701.jpg', 0, 90),
(290, '1425724789_ab19473783080cc8ead5e1b0f99a6bb4.jpg', 0, 90),
(291, '1425725002_557ff952591f4403a21370ee95f77777.jpg', 0, 92),
(292, '1425725002_8d33a176af849c93932c1f5936aa49e2.jpg', 0, 92),
(293, '1425725002_564afa45b3cee3ff0dd84ddcad881180.jpg', 0, 92),
(294, '1425725002_3665cdcc67dac702685e712d09abcc86.jpg', 0, 92),
(295, '1425725448_41904cb0b8c88d532521898fa2665127.jpg', 0, 93),
(296, '1425725448_72caa635023c8a7619de39be1b09e373.png', 0, 93),
(297, '1425725448_ea735d963a6f441c453b33eb7a37978c.jpg', 0, 93),
(298, '1425725448_890c24142164b5c68fdc4c7802835df8.jpg', 0, 93),
(299, '1425725691_7459bbc0e5ed8fb68d119c9758148b47.jpg', 0, 94),
(300, '1425725691_70f95b78fa3fa598cd568ebb69fc5520.jpg', 0, 94),
(301, '1425725691_667e1f7793c8152e561999404840cd4b.jpg', 0, 94),
(302, '1425725691_ce342751ab546bc13ebac951f8b9dcb4.jpg', 0, 94),
(303, '1425726042_910f13bd6f7141044fee21e1c86f1fb3.jpg', 0, 95),
(304, '1425726042_cff536be02d78703c137661eec673bd2.jpg', 0, 95),
(305, '1425726042_5bf094425a4819d21808773307165c63.jpg', 0, 95),
(306, '1425726042_73e25f5da7517299964d03711eff5a0c.jpg', 0, 95),
(307, '1425727048_0d281c8e6ead8ee6d416636e9a0cbe7b.jpg', 0, 96),
(308, '1425727048_8dbbe058d4545d8132319b1a9cff30d6.jpg', 0, 96),
(309, '1425727048_4049a624bbaf402aebdcbfc441f0fb74.jpg', 0, 96),
(310, '1425727048_653905198dcc332ea26d2bd6f3c1fdf9.jpg', 0, 96),
(311, '1425727371_bb458a8372c541935e1057c797f30236.jpg', 0, 97),
(312, '1425727371_789c56d365598c2167c4faa6d0ecb07a.jpg', 0, 97),
(313, '1425727371_714800f393a0a89022d82ea7d8d35194.jpg', 0, 97),
(314, '1425727371_548f2a923c3295c477c3ffc16e0ed6e3.jpg', 0, 97),
(315, '1425727505_d15a1b37caa1cd7fd2434927077c8dd6.jpg', 0, 98),
(316, '1425727506_ba4b3fbc1b07463b798ca486374d4ca3.jpg', 0, 98),
(317, '1425727506_a815e2ed4f3f6d07b4bf4aaffbf52b81.jpg', 0, 98),
(318, '1425727506_b39e06dacc16211ebc0cdcfee3d3dd03.jpg', 0, 98),
(319, '1425727821_36bd18f13266725bfed90b15f64b04ea.jpg', 0, 99),
(320, '1425727821_8e443010c3c44da0e2a4319d1fb55021.jpg', 0, 99),
(321, '1425727821_a8ef0c30fe6d9db8913d26c03561638c.jpg', 0, 99),
(322, '1425728070_67559f78429bd8d9ae9943fb6160c93d.jpg', 0, 100),
(323, '1425728070_698a6689542bdf3a72cd5c0165894a4d.jpg', 0, 100),
(324, '1425728070_842757ad2e88d4c031fdb4b4bd01caee.jpg', 0, 100),
(325, '1425728070_2a80707579861684ef7eefbc7d4ddc5a.jpg', 0, 100),
(326, '1425728468_d32b5b65e5e33a8d94e87c79beb9f22e.jpg', 0, 101),
(327, '1425728468_dbcfd43e965ad612d9b37c57e94ea036.jpg', 0, 101),
(328, '1425728468_53314685d3e451b425c2753e1d1cf3f9.jpg', 0, 101),
(329, '1425728468_3db5de6b5783e1e04790bf17012a22a7.jpg', 0, 101),
(330, '1425728468_d2add718c041f0f2aca9ccfb17100bfe.jpg', 0, 101),
(331, '1425728468_5bf997e8494fff0b54ea090f65fa1c50.jpg', 0, 101),
(332, '1425728468_8ae2709f93a817bf9d340f0dcdbc4eba.jpg', 0, 101),
(333, '1425728468_1777abf33edba74fd62a9bcf11e4fa1d.jpg', 0, 101),
(334, '1425728716_d3857a7047dfe6d7f4b36f1c030fe374.jpg', 0, 102),
(335, '1425728716_fc7ac197eefc9526a0f01025ddb84d72.jpg', 0, 102),
(336, '1425728716_6bfe188a1245696914d2b5c141f522c7.jpg', 0, 102),
(337, '1425728716_dabac777de798c0fb705d981153742b1.jpg', 0, 102),
(338, '1425728941_a42f22903527754847624d192801b3d8.jpg', 0, 103),
(339, '1425728941_e186d3d07d51179f94cf084094e18516.jpg', 0, 103),
(340, '1425728941_4419e66b2f836b40f3534b02c6dd7890.jpg', 0, 103),
(341, '1425728941_86d10d5e37b52114fd4ba89494f1dcb5.jpg', 0, 103),
(342, '1425728941_6b723ddfbb3d39d4c3d22971c21989a0.jpg', 0, 103),
(343, '1425728941_157594cfa38ce6c3c1ae9399f9ebfff5.jpg', 0, 103),
(344, '1425728941_572d4ff2046170d59e6c25b8898ac1ec.jpg', 0, 103),
(345, '1425728941_45f008fde4629ee6b6c730b26c4955e9.jpg', 0, 103),
(346, '1425728941_711fda03f67bbc18464c209a889bf305.jpg', 0, 103),
(347, '1425728941_2ecb690fabb90d7b062b3a9f48a8b21b.jpg', 0, 103),
(348, '1425728941_75f0ad188cf2d55c063c8c6d153abe0d.jpg', 0, 103),
(349, '1425728942_a46927cb35e1b37d055d8d6bdc2ce22e.jpg', 0, 103),
(350, '1425728942_6e7831294e5709fe163a717d2fcd4792.jpg', 0, 103),
(351, '1425728942_74d9d38f637f522537c8cec8074fe069.jpg', 0, 103),
(352, '1425728942_08ac89f7120187d4c4c31494725c4b50.jpg', 0, 103),
(353, '1425728942_80532d1564cc324715fa4cf25de353b8.jpg', 0, 103),
(354, '1425728942_0bbe75f8e663a2621db574e2c759818c.jpg', 0, 103),
(355, '1425728942_019c85a3cee2ed236260843e793dfc03.jpg', 0, 103),
(356, '1425728942_6fa4fff8e51c41aac867775e0551cda8.jpg', 0, 103),
(357, '1425729225_737def9df0e96fcd0abc7a953c4c941b.jpg', 0, 104),
(358, '1425729226_e43ba4e0ad09c226f34ee16585ee7a4b.jpg', 0, 104),
(359, '1425744106_e29e8ac1f73902a80f0020815d6be489.jpg', 0, 105),
(360, '1425744106_c753ce6efdf69dc01536970607f81d03.jpg', 0, 105),
(361, '1425744106_8e3020e80d615485eab74b27f9dc5c4a.jpg', 0, 105),
(362, '1425744106_0404ab1330def2f4f9548da6bd683eb2.jpg', 0, 105),
(363, '1425744106_09bf517586ad859af623c00cffcaf847.jpg', 0, 105),
(364, '1425745061_75976d94171cb1d241979951c0f20607.jpg', 0, 108),
(365, '1425745062_1ddcfa8129f0873977a2f6ddafa88cc6.jpg', 0, 108),
(366, '1425745062_2e1c88251401e7f2248035bb15c3c993.jpg', 0, 108),
(367, '1425745062_23c27fb8a28246359aac76b7e61b49b0.jpg', 0, 108),
(368, '1425745062_c7590cbd94ee7538c4bf1994c99508b3.jpg', 0, 108),
(369, '1425746695_521577be4597a02326658b0d40c92bf9.jpg', 0, 110),
(370, '1425746695_987de00efea230c1f557df0037caf42f.jpg', 0, 110),
(371, '1425746695_0aaddc739d04ebeaf117acf199098ede.jpg', 0, 110),
(372, '1425746695_c85364b2c29e848565b4f94a7927a89d.jpg', 0, 110),
(373, '1425747556_ad577567c84f3261c89062260f5a3f32.jpg', 0, 111),
(374, '1425747556_d135a3164b4678d3ddb78ed8374f6697.jpg', 0, 111),
(375, '1425747556_032cc0a4deee3bfeb238a015e28d3455.jpg', 0, 111),
(376, '1425747556_a3077ab9f4d0f98d931973af7549c791.jpg', 0, 111),
(377, '1425747577_11ce62525978b680869ddffa915e1858.jpg', 0, 111),
(378, '1425748210_2e89ae1d66ca728af99199d849587baa.jpg', 0, 112),
(379, '1425748210_4bbdc5fbecd671bee45227ebd20fc0b5.jpg', 0, 112),
(380, '1425748210_30e6ae0ed27a15532f7161a6f1fcd5ab.jpg', 0, 112),
(381, '1425748215_9bd71ae1105ad7eadde2ad0a4cb27050.jpg', 0, 113),
(382, '1425748215_faf39fa7831ad988a5757a7ee5cd078e.jpg', 0, 113),
(383, '1425748215_09dde2c2aef6f25edbc944c4a8b385dd.jpg', 0, 113),
(384, '1425748215_983c6226c245a36027776305ce31f54c.jpg', 0, 113),
(385, '1425748215_eb40e0c0bc2ee48e21f43ec2cc7e17b2.jpg', 0, 113),
(386, '1425748663_eb8ac031d776d2e459016e8dad3805b9.jpg', 0, 114),
(387, '1425748664_f653bfd917f39d386dac0e424be3374f.jpeg', 0, 114),
(388, '1425748664_a6a3c55f1a661d602b3fa0b94883e872.jpg', 0, 114),
(390, '1425748664_98192c6cea30d0fd160742be992b0620.jpg', 0, 114),
(391, '1425748750_1205ebbc3f2d9c9c25f66ad3d8814c70.jpg', 0, 115),
(392, '1425748750_47e46ff6fe2493b4d38cdbfb1eff8c77.jpg', 0, 115),
(393, '1425748750_bc8ffb8347b362ccc90ef7a5c158c734.jpg', 0, 115),
(394, '1425748750_93681b97185cf8e1715ad1bb86a5cb28.jpg', 0, 115),
(395, '1425748860_b2d145a64903983e75809abd5ee1aeb8.jpg', 0, 114),
(396, '1425749262_89da19ddd4d74d9befa93c45531bb527.jpg', 0, 116),
(397, '1425749262_bf8917979b2fe62a8894ff4283a47144.jpg', 0, 116),
(398, '1425749262_404d991330c0f804c0a3a285b650ac99.jpg', 0, 116),
(399, '1425749262_d1dc507b186de465b01e9b4198aedf4c.jpg', 0, 116),
(400, '1425749262_74178279cac4721d14ebe9f9ee4dae33.png', 0, 116),
(401, '1425749992_72eb4bf41480e3bd9355af2c8f5f9a2e.jpg', 0, 118),
(402, '1425749992_c21ea542039d7fa2e2f3176a9c35ca35.jpg', 0, 118),
(403, '1425749992_8f741facb758e49ef77656c918078933.jpg', 0, 118),
(404, '1425749992_b2e2d9796a689d84e34654967942cceb.jpg', 0, 118),
(406, '1425750206_97afb49f3f83f55cd633ec78f8ea52d2.png', 0, 120),
(407, '1425750206_94c3c64ee12314a0e801c9ff75807a8e.jpg', 0, 120),
(408, '1425750207_3cf061f5a7624afcebe4ab7cc5bc3c34.jpg', 0, 120),
(409, '1425750207_11481d597724cf1eca61cc47b4a98676.jpg', 0, 120),
(410, '1425750207_c332b025ecb8a9b6288cdd56a6962f32.jpg', 0, 120),
(411, '1425750490_4d2368e228a314f2802aa9becf7867cf.jpg', 0, 121),
(412, '1425750490_279459ae6aec10df6b81bd55157d4fb9.jpg', 0, 121),
(413, '1425750490_e255a9380bce50bc747d1ea0ac2404c3.jpg', 0, 121),
(414, '1425750490_283f273cfd0f09a52fa40235449b9182.jpg', 0, 121),
(415, '1425750781_18064d7fefe86874cd26f84fc3d2f833.jpg', 0, 122),
(416, '1425750781_fead86829bb4efdf4dc07f55b0892b33.jpg', 0, 122),
(417, '1425750847_3d9ed5e3afa38731dcf4f1d3733325ff.jpg', 0, 124),
(418, '1425750847_ddffe238aaeba86001cded6eb523c255.jpg', 0, 124),
(419, '1425750847_8f293bbd2529085afe314c0393414954.jpg', 0, 124),
(420, '1425750847_7fd4e282eeca0c145ae1badaed0e61ef.jpg', 0, 124),
(421, '1425750847_40966ef02ad0b52ed39c4f27dd908ff2.jpg', 0, 124),
(422, '1425750847_80aef2a2581b0308ace8919c333d986a.jpg', 0, 124),
(423, '1425750848_27a29bfa0d0abdf72867f7283999320b.jpg', 0, 124),
(424, '1425750848_80fe34fba28afa77d289001473b8dd07.jpg', 0, 124),
(425, '1425750848_3a0e690033c1b4766618bccf4e273981.jpg', 0, 124),
(426, '1425750848_6eba5bbb8acc491247bcacf4d666f37b.jpg', 0, 124),
(427, '1425750848_0f5103854f7ae87a88b09938f772b21d.jpg', 0, 124),
(428, '1425750848_6aa81e614cd7e5a4fd7e04e2351b9be4.jpg', 0, 124),
(429, '1425750848_610eae5b38535834ba6ab8a46721eb41.jpg', 0, 124),
(430, '1425750848_3d8ced8572e4df99d934c35c96f9fa00.jpg', 0, 124),
(431, '1425750848_6b6d730ef5c00160c20ecee9090de9f9.jpg', 0, 124),
(432, '1425750848_e563cc6ab8f44f06344184c4997dad16.jpg', 0, 124),
(433, '1425750848_ac3a7b4fb7376b42f96ea858837bbe17.jpg', 0, 124),
(434, '1425750848_8a5e917625dd08f86ccdcc2939d6c7e1.jpg', 0, 124),
(435, '1425750848_e1fc37dde8c8ac4b53eedab60fe0c86e.jpg', 0, 124),
(436, '1425750848_e11a6e2f330489c481ce060a01de49c3.jpg', 0, 124),
(437, '1425750851_d877720b134ead12f61c170234dd0599.jpg', 0, 124),
(438, '1425750851_bb9304a71b8d1aba62a78a20567d6883.jpg', 0, 124),
(439, '1425750851_afef03a90759bbbf3cb8f97828a47717.jpg', 0, 124),
(440, '1425750851_7b3d2d820cde17f1ba3573bccf7dc902.jpg', 0, 124),
(441, '1425750851_65c3589307293ae580bb05bf7d7f337d.jpg', 0, 124),
(442, '1425750851_ad7d42090c5e479704582017d6933358.jpg', 0, 124),
(443, '1425750851_a67062d0fcd9f336303b0ef1d36dafb4.jpg', 0, 124),
(444, '1425750851_acb00a601f24efc24d77493e11297751.jpg', 0, 124),
(445, '1425750851_224b474325f2613239add39842e74a2f.jpg', 0, 124),
(446, '1425750851_e394b1cdad6766bb2c95cfdfa0cd2191.jpg', 0, 124),
(447, '1425750851_55636a784d940e1f6149d6b4ab32b23a.jpg', 0, 124),
(448, '1425750851_15d569d1d28589c444412cf68c28c5c1.jpg', 0, 124),
(449, '1425750851_8999c431731ae13f32a91bf456569290.jpg', 0, 124),
(450, '1425750851_b2a94e39cff83c48de2f2165499c32c4.jpg', 0, 124),
(451, '1425750851_a28cf9c220e921e8189719236fe8ce95.jpg', 0, 124),
(452, '1425750852_6bb83bbf993884feef824124b878470c.jpg', 0, 124),
(453, '1425750852_d2f18dc54d902a5407dc94fdbf297fec.jpg', 0, 124),
(454, '1425750852_680f576dfe7e79634abdd8a95bd7b63a.jpg', 0, 124),
(455, '1425750852_d8a2a996171794a8bd6b32025051d1ca.jpg', 0, 124),
(456, '1425750852_1946c9dfb98021ee38e897830bf86905.jpg', 0, 124),
(457, '1425751312_424c5685946dde2b7916a4e376bad777.jpg', 0, 126),
(458, '1425751312_21bba6f90bd6ed3c6adbe809f140bc49.jpg', 0, 126),
(459, '1425751312_fe90002a21abc6a5d8c2068edda34ec6.gif', 0, 126),
(460, '1425751312_5c103ce4ab1061a0d45bc11a08cfb3bb.jpg', 0, 126),
(461, '1425751391_3088e6dfed05274d41d03ff63a50e164.jpg', 0, 125),
(462, '1425751505_d2a60638e006221b763309c017eb4d81.jpg', 0, 127),
(463, '1425751506_f25363b7d19e5b2769e600fcf040ac3b.jpg', 0, 127),
(464, '1425751507_30a2e53004984b8384f7bb80db66c5b2.jpg', 0, 127),
(465, '1425751507_a5d133e6e551e24f0621031d3a46666a.jpg', 0, 127),
(466, '1425751759_d8841644d5125402b59fa7dc7d6ee18b.jpg', 0, 128),
(467, '1425751759_c38cc097972412e9f5bb3b330a66b054.jpg', 0, 128),
(468, '1425751759_0e8e1fab94312b9c519f21239b9ab11e.jpg', 0, 128),
(469, '1425751759_d1e45a7461b768cac8ee11bb51ed2521.jpg', 0, 128),
(470, '1425752105_00d7b8119f945db029bbe8feadd96817.jpg', 0, 129),
(471, '1425752105_e5c9784eb3a3c38aea1de61ac9a4d5b3.jpg', 0, 129),
(472, '1425752105_1090ad87824c6e524f09117ed10c5a07.jpg', 0, 129),
(473, '1425752106_7dec15138c9cbb2f1ce6853d9365281d.jpg', 0, 129),
(474, '1425752535_7c491c2de298ea4a0ecdfd7ce15b355d.jpg', 0, 131),
(475, '1425752535_59b35054fee43cb80cabaf2dda2af675.jpg', 0, 131),
(476, '1425752535_058b3c9eeca40f45d81c5e1512c7c68c.jpg', 0, 131),
(477, '1425752535_f59177929bd5c7c67a9d98a95e1fe49f.jpg', 0, 131),
(478, '1425752535_0eca4692d671c3a358adb35537655ab3.jpg', 0, 131),
(479, '1425753140_6026aa0200ddd4eb405d2df98fb9c07e.jpg', 0, 132),
(480, '1425753140_25ad89230957ad10b1568d7c756b88df.jpg', 0, 132),
(481, '1425753140_980f28fc4627e57bd6962926ea9586b9.jpg', 0, 132),
(482, '1425753140_91ec9fdead736847539d775ebe298405.jpg', 0, 132),
(483, '1425753140_e474ccd7d325bc77ca6031477bd55f02.jpg', 0, 132),
(484, '1425753141_510f08eb3a9f3ba7b55607c847e8d95c.jpg', 0, 132),
(485, '1425753141_d430c18bc4294f531651b7a0500eadd9.jpg', 0, 132),
(486, '1425753141_cab9531eb63cff1582a306b037610d81.jpg', 0, 132),
(487, '1425753399_287280e6de420bb0c1ad1f612e78cfac.jpg', 0, 133),
(488, '1425753399_71397ab2037dfc92aeae49cc78cca392.jpg', 0, 133),
(489, '1425753399_c6ad77fe86a9e9b3418fc8a91354e6ab.jpg', 0, 133),
(490, '1425753399_843a66b25e32fe699e3a4045a01be3f9.jpg', 0, 133),
(491, '1425753562_56fb4f1fd74e2bc46a3373fc865f4663.jpg', 0, 134),
(492, '1425753562_678df92fefdc5627a46ec81644faa95e.jpg', 0, 134),
(493, '1425753562_c91ac80ab8205996728b316bf29326d6.jpg', 0, 134),
(494, '1425753562_2c033e4d34f1ebeeb4f9c95d1d3c69cb.jpg', 0, 134),
(495, '1425753651_261f9842fa7046843f4aac80270e2d16.jpg', 0, 135),
(496, '1425753651_225e85cffdba042f7d68fa4c7badee0a.jpg', 0, 135),
(497, '1425753651_56be9193b18ba2a98ee5d7d217edc38a.jpg', 0, 135),
(498, '1425753652_1371cbf841d47acf919e9a70bde049df.jpg', 0, 135),
(499, '1425753745_6bc79a4f47a32574a403719cf378aa8b.jpg', 0, 136),
(500, '1425754125_3c0063782c61eea642cd8f268ae4a9a6.jpg', 0, 137),
(501, '1425754125_f89181f5b0e9e2d2367f1c93d32071b5.jpg', 0, 137),
(502, '1425754125_43f85b355ac55036b96ff4588b10e390.jpg', 0, 137),
(503, '1425754125_f668fcec54ba10e93a2f764075560378.jpg', 0, 137),
(504, '1425754151_5e57816ebec031189b1ee241af458b30.jpg', 0, 138),
(505, '1425754151_5f1aee95ac1ad6399a906bd2bf330cbb.jpg', 0, 138),
(506, '1425754151_efec6a69f83f91d7646e77aba9953306.jpg', 0, 138),
(507, '1425754151_9ebc12801cd9d6dce5de00fdf7868aa1.jpg', 0, 138),
(508, '1425754362_217b0e9d4d0c59f59f7f7058ec94ffa7.jpg', 0, 139),
(509, '1425754362_f2140aac559959e32c396c0bfe60a930.jpg', 0, 139),
(510, '1425754628_313a7c1458d8df27c63bdd6f5a687e4d.jpg', 0, 141),
(511, '1425754628_1535a9bf8df4d34d639ff6940d243994.jpg', 0, 141),
(512, '1425754628_a2190a9f2731a2b2df6a03ef65499b2c.jpg', 0, 141),
(513, '1425754740_72a17d31437f5f886d012eb7ba2a2fa9.jpg', 0, 140),
(514, '1425754740_6a5da60c5cc7a4a8f689ce9af0913a1f.jpg', 0, 140),
(515, '1425754740_802497ecfe17b71683098785223bed03.jpg', 0, 140),
(516, '1425754740_fc2ef9e53ea080003a606f1484bd0209.jpg', 0, 140),
(517, '1425754740_d3de16e48f676115cd3daa4f4e76b366.jpg', 0, 140),
(518, '1425754740_582ee8f71846461a02262f03dfaaae1b.jpg', 0, 140),
(519, '1425754740_34d18cdd22c2283a1457777a93eb9ad5.jpg', 0, 140),
(520, '1425754741_2bd76567b575397ffe7f7d90e8e31dc9.jpg', 0, 140),
(521, '1425755477_07c6beb12d5493b93b43ad7e711ef8a9.jpg', 0, 145),
(522, '1425755477_7a36e328992745902a6fd4ab26c15052.jpg', 0, 145),
(523, '1425755477_81e7a38674f8267860caedf718c15adb.jpg', 0, 145),
(524, '1425755477_c7d6b7d72e3134d4831c2f6627969fc6.jpg', 0, 145),
(525, '1425755478_79049701a0c9639f66539e2dd4b39123.jpg', 0, 145),
(526, '1425755478_706e7f435e66963cf49f092010e2a915.jpg', 0, 145),
(527, '1425755478_43fee38cb75efe3f1f39c75dcb8a5974.jpg', 0, 145),
(528, '1425755478_4d9c622c1cfba96c5a1bdc40246c4a74.jpg', 0, 145),
(529, '1425799094_33c498f2ff4f55eaa31f1a8182877250.jpg', 0, 146),
(530, '1425799807_f1aa84fa264271e1e08f275f362a6f2f.jpg', 0, 147),
(531, '1425799808_ecc83f4628a2c0e761e708e04dcd6117.jpg', 0, 147),
(532, '1425799808_0154bc9d2e56e9f9d728d8bf861105c9.jpg', 0, 147),
(533, '1425799808_3fbe1e60009951f53a208149e0b7be96.jpg', 0, 147),
(535, '1425800667_22eacfcfac02ed594d98ea9ed530406f.jpg', 0, 148),
(536, '1425801271_731189c0ae2f6cb1fa3ed5c9aee2f0af.jpg', 0, 149),
(537, '1425801271_ee3dc256899a6038eac3a185b011fcad.jpg', 0, 149),
(538, '1425801271_8dda2af23463478c927b1347053eb0c2.jpg', 0, 149),
(539, '1425801546_568fc96c82f0bbb5b88cd2271b63c902.jpg', 0, 151),
(540, '1425801546_29c93c0e8011110284497dfb4ed140e9.jpg', 0, 151),
(541, '1425801546_66195821ff2e37f2c5f9910338474b15.jpg', 0, 151),
(542, '1425801849_73b4c1e8f0a3a3809609e37938cf9f74.jpg', 0, 152),
(543, '1425801852_fd531c226a3a71a37c5f9dfac959806a.jpg', 0, 152),
(544, '1425801856_f7416dcf73f54baff906d13fdd0c9d91.jpg', 0, 152),
(545, '1425801859_aa14424566c8f788f7e3d6358852e68d.jpg', 0, 152),
(546, '1425802362_70194b9805d3bd2fad9105125b698911.jpg', 0, 153),
(547, '1425802362_ad983e7ed77ffdc279ca5f45b41162d4.jpg', 0, 153),
(548, '1425802362_9bf209c0157c213972873d92e60b7a29.jpg', 0, 153),
(549, '1425802363_4b3fc61e141554bf5cbcc4fc0c8f0c4e.jpg', 0, 153),
(550, '1425805667_7f1a7f9d470e66a35029cd301adc4f1c.jpg', 0, 154),
(551, '1425805667_344214f97413fd2eda3b3ac81a348fa1.jpg', 0, 154),
(552, '1425805667_6885be6e2d3a8769c230c143cb8ba5f6.jpg', 0, 154),
(553, '1425805667_af3ac50bd56be1b28d397ce806c3fb8b.png', 0, 154),
(554, '1425806686_04a2b4c814dcfeb7bdf0569c841672b9.jpg', 0, 155),
(555, '1425806686_b586fc309d5e75c829f8d579affe789d.jpg', 0, 155),
(556, '1425806686_e9fdc2c11d5959a3cda853527a983dda.jpg', 0, 155),
(557, '1425806686_62972324f30a8e6b9c35408b1ffe2b00.jpg', 0, 155),
(558, '1425806686_8cf5b492155a0a378664921454d803c2.jpg', 0, 155),
(559, '1425806686_3421f4b90983e4135a4de0d3262857d6.jpg', 0, 155),
(560, '1425806686_7d6b4f5035414bc96d2f5ed0b04df66d.jpg', 0, 155),
(561, '1425806686_c3f52655bb8c0644089b68c01a3a17f6.jpg', 0, 155),
(562, '1425806900_edbf53875dd52306fe2274e793153415.jpg', 0, 156),
(563, '1425806900_18d00a59ada39e39643ba3d49f3273df.jpg', 0, 156),
(564, '1425806900_51427a26abd0aaeeaf084350a0557ffe.jpg', 0, 156),
(565, '1425806900_3663c05daa88e5707e470ec63d19d010.jpg', 0, 156),
(566, '1425807433_dd799d73f469bc97bd0270dec08d774b.jpg', 0, 157),
(567, '1425807434_e33eb40f3db4f07cbaa2605af5f2efe4.jpg', 0, 157),
(568, '1425807434_051c4a43c311683be9f325b5e7936998.jpg', 0, 157),
(569, '1425807434_24b66d9b66192f8bd216f0b616939029.jpg', 0, 157),
(571, '1425807644_bed7a94bb7e32d58a065b73ae94ff75f.jpg', 0, 158),
(572, '1425807645_e94217129f7955aab24ad3145abad983.jpg', 0, 158),
(574, '1425807645_d8644a144d0db03950f09d57ea42f274.jpg', 0, 158),
(577, '1425807645_1840557b0f183320e92cde7ee7a78478.jpg', 0, 158),
(578, '1425807645_c6c1e90c7b41ed597252646cd82baf51.jpg', 0, 158),
(580, '1425807645_d15bf43296e56428a9be65ae93b2b49a.jpg', 0, 158),
(583, '1425807645_b14cca7d4961587750b3cd6724dcc8a4.jpg', 0, 158),
(584, '1425808038_e55c9047046cfba0e30901dc9b9b007d.jpg', 0, 159),
(585, '1425808038_6eb7d04ba67396fc4fe950ddb8a1c354.jpg', 0, 159),
(586, '1425808038_9362da862a06694f56dfc09830df15ee.jpg', 0, 159),
(587, '1425808038_2854da891fa81a2e8c651ee8842749b8.jpg', 0, 159),
(588, '1425808339_a040e3dc9d1088769b04c56e4b7fc3fe.jpg', 0, 160),
(589, '1425808339_0951798d336eb8b27267a9c727a30f55.jpg', 0, 160),
(590, '1425808339_58e3f5ee44209c9f73f09def7235a954.jpg', 0, 160),
(591, '1425808339_4a6b42893efc671cf7fcd58031ae1413.jpg', 0, 160),
(592, '1425808613_82db235371e3675136dff495d7effc4e.jpg', 0, 161),
(593, '1425808613_b0191696b751885840c216ee1b764a4a.jpg', 0, 161),
(594, '1425808613_ca008e17a0d14e08f93645740171a2d9.jpg', 0, 161),
(595, '1425808613_0a7322d49bae2abb9500c086bd5028bf.jpg', 0, 161),
(596, '1425808779_a05fb249e7a2e6e8dbb11cf476e740b4.jpg', 0, 162),
(597, '1425808779_febcb4a532d3e187e522d5e9be12ab77.jpg', 0, 162),
(598, '1425808779_7296eaba1004be8dc6b3969bde5a7615.jpg', 0, 162),
(599, '1425809179_1e5082b2dbf1754b8690dbb0900a8113.jpg', 0, 163),
(600, '1425809179_3c11c186aad48aefaf444650564a7c21.jpg', 0, 163),
(601, '1425809179_e624311e068b8e887caa9dbb2a5c2f46.jpg', 0, 163),
(602, '1425809179_7a7092227261d817036af9fb2cc38015.jpg', 0, 163),
(603, '1425809504_043857fed01e4dd14ee96d8da97198cd.jpg', 0, 164),
(604, '1425809504_84d384dfb72acf4a525a7dab40bd6146.jpg', 0, 164),
(605, '1425809504_484b668582ba949b08ca8f955fe7b8a6.jpg', 0, 164),
(606, '1425809504_bf0d85a6e091212e01ffb245e7c87613.jpg', 0, 164),
(607, '1425809707_b09384b94060fd1fb696c2287f6c1d33.jpg', 0, 165),
(608, '1425809707_b1a240af8238a0b7625b44170fe06fc5.jpg', 0, 165),
(609, '1425809707_99a8bb00e9019f599340f0fb7ab9bc5f.jpg', 0, 165),
(610, '1425809707_2c8ba833f7d58d3353e4c442f5b9492b.jpg', 0, 165),
(611, '1425810758_754e95583148963d81fee07538706f14.jpg', 0, 166),
(612, '1425810758_012cc8c8f5ee400cb6667e14eaee47e3.jpg', 0, 166),
(613, '1425810758_0712886e88325539967d79e28e026483.jpg', 0, 166),
(614, '1425810758_648ba72f505ba48564411e360ac37cd1.gif', 0, 166),
(615, '1425811054_676aca72428ea6c2c68e55cd5b461250.jpg', 0, 167),
(616, '1425811054_40b25ec5ad576b5184adab8109321177.jpg', 0, 167),
(617, '1425811054_dc2f921edf3f009596dc20fc68b4dbc6.jpg', 0, 167),
(618, '1425811054_76fe48ec81cee72d855a50171a5bab3d.jpg', 0, 167),
(619, '1425811249_0738198b2e4e7367dcd053d7c73a5a5e.jpg', 0, 168),
(620, '1425811249_99bf3bec23b235a6ac5cf88c25e1a1e0.jpg', 0, 168),
(621, '1425811249_e8bb647eb8ab17d474bcec4a8f476e58.jpg', 0, 168),
(622, '1425811249_1e859abd7bd64408118df5ab4d7a8b1f.jpg', 0, 168),
(623, '1425813203_aee9bf5c7ffff804c96672bf1d43eecc.jpg', 0, 169),
(624, '1425813203_284c3838c066dae464fa5bc613da4584.jpg', 0, 169),
(625, '1425813203_d538b6e7d83a3f51a7a5709fc2e43ff6.jpg', 0, 169),
(626, '1425813203_d7e47a6f83f7cddc5f7147ff7901f824.jpg', 0, 169),
(627, '1425813438_4bacc9241f3dd962e9be205a1b20f2b9.jpg', 0, 170),
(628, '1425813438_8d2df2b8990664b53020b1e78a105bcc.jpg', 0, 170),
(629, '1425813438_5855f3e6d94532380dffd0d8951ea316.jpg', 0, 170),
(630, '1425813438_b6a53e4fc61e313712ffaeafc6340593.jpg', 0, 170),
(631, '1425813785_de42c0cc89821315c04b73b4eff3fb45.jpg', 0, 171),
(632, '1425816710_6ceac2e658d9ec3372b561e6d459f241.jpg', 0, 172),
(633, '1425816710_938a6a7b22036381d58841dc93cb1435.jpg', 0, 172),
(634, '1425816710_cfffa6e906260d302d05571389ffb2a7.jpg', 0, 172),
(635, '1425816710_a4246449a018a8ca36507d9b4a0c4a9d.jpg', 0, 172),
(636, '1425816976_358f8865dd0f5454c31311cd0c930a07.jpg', 0, 173),
(637, '1425816976_8352c1b914d62c3030c329903898b431.jpg', 0, 173),
(638, '1425816976_ceb3762ee557147e47a4c3aca9585c40.jpg', 0, 173),
(639, '1425816976_8416f24603c3f03971ee881c727edb37.jpg', 0, 173),
(640, '1425816976_efd097b58637de3f0b94df4f02d39881.jpg', 0, 173),
(641, '1425817397_1b2acbe242c5603a2972a99a73041899.jpg', 0, 174),
(642, '1425817398_98d92c5c0af838a5c74cb0f119a1dc68.jpg', 0, 174),
(643, '1425817398_6a8a560f8772c6fc5163e5136cf063a0.jpg', 0, 174),
(644, '1425817398_c2bae010d32629553f923cf430bbe5aa.jpg', 0, 174),
(645, '1425817684_2d5ed557e2e074dbc0cc7089d3c3dd22.jpg', 0, 175),
(646, '1425817684_af0ffd93aa79dd53eef6c5dbd7aaef89.jpg', 0, 175),
(647, '1425817686_103328907b27f706f14a1a30c659c811.jpg', 0, 175),
(648, '1425817686_243c0aaa0af1db47da1657a8dd2b5020.jpg', 0, 175),
(649, '1425817729_e71982cf7b86a5020ee4d0a035934fab.jpg', 0, 150),
(650, '1425817729_eae2991d63c25c895463236c844edefc.jpg', 0, 150),
(651, '1425817729_541866c1aa2092ef72bf6f036c6c72f6.jpg', 0, 150),
(652, '1425817729_68fcf0d9414190dcffb5074460353a4d.jpg', 0, 150),
(653, '1425817729_f557aab84a5258bb278b9267ac2181b9.jpg', 0, 150),
(654, '1425818074_b48b768e4942535f881e895ab844b044.jpg', 0, 177),
(655, '1425818074_31d56d188e7a652682b60abbe011cb17.jpg', 0, 177),
(656, '1425818074_c42d78c75b1e52d7ee96b5d3e80c37d5.jpg', 0, 177),
(657, '1425818074_4ca8bf6d6529d9a7204cf4d1efcba6fe.jpg', 0, 177),
(658, '1425818327_aaabd77e228746d640389a2a0b5a979e.jpg', 0, 179),
(659, '1425818327_d1a5197d780c67617568831df2bdffed.jpg', 0, 179),
(660, '1425818327_491cdc43870de4f7e7e8c7f55da91922.jpg', 0, 179),
(661, '1425818327_3dcd62fd7b3f7c1f9d81083b373a3281.jpg', 0, 179),
(662, '1425818536_eea28efd685696ef5f0d68f49c20b732.jpg', 0, 181),
(663, '1425818536_8baafddeedca2a3c2f904b67c24ec667.jpg', 0, 181),
(664, '1425818536_1e852e67df894bd025642974f379ddd0.jpg', 0, 181),
(665, '1425818536_f0953f20b3a90d4b748195c8039abfff.jpg', 0, 181),
(666, '1425818943_d66335af3a0f1ef15f8db813d5db80cd.jpg', 0, 183),
(667, '1425818943_3a3ccacf055774a8b92d27ad1afc98bd.jpg', 0, 183),
(668, '1425818943_3726a8a9cc1a5acadcf9668e28ec41c2.jpg', 0, 183),
(669, '1425818943_5fc59261df76212245e03b3df36a6ada.jpg', 0, 183),
(670, '1425819161_219c2b0700a2459eca19733c1fa07991.jpg', 0, 185),
(671, '1425819161_bfcf6d64d6685253f9b6752077bf2de3.jpg', 0, 184),
(672, '1425819161_16f7be5230e340cc6a432fb64d0e679f.jpg', 0, 185),
(673, '1425819161_bcf2597c48c4b0cd6abd055015610fb7.jpg', 0, 184),
(674, '1425819162_5900756d7ffb847aeb2127ca40effd99.jpg', 0, 185),
(675, '1425819162_a0e60cda208cb5fae1fe0cd5a029666c.jpg', 0, 184),
(676, '1425819162_ced7c38d792aa692b363966489ed9454.jpg', 0, 184),
(677, '1425819162_2f280b9477eb87c7c8f8f4459ddc18d5.jpg', 0, 185),
(678, '1425823420_afafe26a6094263b9a688c7d9af34f35.jpg', 0, 186),
(679, '1425823420_145dd0ad26fa06a554f1b6f7753dc63d.jpg', 0, 186),
(680, '1425823420_0490acafc8f6ef1b44bc4e5851175d01.jpg', 0, 186),
(681, '1425823420_4ea1beed96b48feed28c8cedd1ba117a.jpg', 0, 186),
(682, '1425823915_8133310f1d9105a1d1d1c0d32768fbd5.jpeg', 0, 187),
(683, '1425823915_7b2d447d936df9c25355afc00b02c246.jpg', 0, 187),
(684, '1425823915_a312f6853cb6a78e590166f84a90818a.jpg', 0, 187),
(685, '1425823915_62a5a4555394c50ea37eb0f8c6930302.jpg', 0, 187),
(686, '1425824241_34ca538e9607f3a31811ba34a030273c.jpg', 0, 188),
(687, '1425824241_8c06134b76279deaff9b9fcdcb5ac2ff.jpg', 0, 188),
(688, '1425824241_422973c90512f056acb19adbb07c000a.jpg', 0, 188),
(689, '1425824241_5ed29d9b4516e1fbf75e79f9881f1fd6.jpg', 0, 188),
(690, '1425824461_44ff3301a6d734fc9ff7e485ffb3d5d7.jpg', 0, 189),
(691, '1425824461_28f65ef0214d4340f0d072effc4e1072.jpg', 0, 189),
(692, '1425824461_6d51a14b01c2dddcb993d855baefb38e.jpg', 0, 189),
(693, '1425824461_737cb9c0cb935ac26f53b83a90ceec30.jpg', 0, 189),
(694, '1425824652_a03f8597961a65f564f8b6f722136afe.jpg', 0, 190),
(695, '1425824653_e5cd6e7aba8ca392fd67ff71020cee13.jpg', 0, 190),
(696, '1425824653_4e37bf4bc3ef14c7a11678a557e1f339.jpg', 0, 190),
(697, '1425824654_c878bb63ba4d1ea459ba9777b1f3b76f.jpg', 0, 190),
(698, '1425827852_39354ff27a25ca53cb5bdfcaa1d2f3c6.jpg', 0, 192),
(699, '1425827852_240c8356adaab0123f2d8917bd981e11.jpg', 0, 192),
(700, '1425827852_7d5297608997f4f64ab12a1560f77013.jpg', 0, 192),
(701, '1425827852_44a8723b770d87f86feb9248e2e1a6e2.jpg', 0, 192),
(702, '1425827852_d356568de78ad0c0d61ec01cacf7ea01.jpg', 0, 192),
(703, '1425827852_9f1787fbd94ecbbf7d73fdcf8bb0956c.jpg', 0, 192),
(704, '1425827852_21ed5ab4932d6106e033d606fc5f049a.jpg', 0, 192),
(705, '1425827852_600043b713dd2c56af67deccebfeb6d0.jpg', 0, 192),
(706, '1425828046_b5dbcc079fcd47e3cad73d9447064861.jpg', 0, 193),
(707, '1425828046_a39f1deac4b20197f20c507b065c3373.jpg', 0, 193),
(708, '1425828603_be95736ca801084f155b2ff8298373b9.jpg', 0, 195),
(709, '1425828603_fc9bbfaa6a1a2da874d6cedd2a14b2b7.jpg', 0, 195),
(710, '1425828603_7a701b63f537f7542e1a76f78ba2788f.jpg', 0, 195),
(711, '1425828603_c258e0019bd2dc14e02914b3265ee98f.jpg', 0, 195),
(712, '1425828604_fba0b6a1647f9fb2560a3cf47605238b.jpg', 0, 195),
(713, '1425828604_e947a19bb6c2d7d2df44cb020b0e4a6b.jpg', 0, 195),
(714, '1425828604_132340afd1776a9d817614b882a27f02.jpg', 0, 195),
(715, '1425828604_86c1f7a95ccc305ac471a0d10852de7b.jpg', 0, 195),
(716, '1425828604_6368914fbb70af1fe19935ca0d6d3198.jpg', 0, 195),
(717, '1425828604_7a29ca74a0f4491557628626ade55298.jpg', 0, 195),
(718, '1425828604_9387114095150c72a60873004321ccf1.jpg', 0, 195),
(719, '1425828604_444cd3127c5cff1c50a70978831fc909.jpg', 0, 195),
(720, '1425828604_561b434e784e91ca0e2e46977172f9b8.jpg', 0, 195),
(721, '1425828604_f9a26d98986a9775a089a56ccf7e5450.jpg', 0, 195),
(722, '1425828937_0dc0089b087ff0db953a39bfbcc206d1.jpg', 0, 196),
(723, '1425828937_962e9a18d2424d3f3adf329a117da6bb.jpg', 0, 196),
(724, '1425828937_1f691386458c40852eb83ec9f96dae34.jpg', 0, 196),
(725, '1425828937_6cf9c2da544e245aff852413a7f07c79.jpg', 0, 196),
(726, '1425828937_ca4811947d72f1d9ac58368098483d0d.jpg', 0, 196),
(727, '1425828937_11adc0de88f9975be596684e4471044e.jpg', 0, 196),
(728, '1425829611_9ec489ea13dfe9a6531620519d2698c5.jpg', 0, 199),
(729, '1425829611_4cea8063f636d156b83a85eb7d807297.jpg', 0, 199),
(730, '1425829611_22343528d2c377260ed8a8c997e3b761.jpg', 0, 199),
(731, '1425829611_ab992194932a79cf7b5cc9e9bfa0bc0b.jpg', 0, 199);

-- --------------------------------------------------------

--
-- Table structure for table `points_treners`
--

DROP TABLE IF EXISTS `points_treners`;
CREATE TABLE IF NOT EXISTS `points_treners` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `pph` varchar(255) NOT NULL,
  `ppm` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `text` text NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=100 ;

--
-- Dumping data for table `points_treners`
--

INSERT INTO `points_treners` VALUES
(9, 'Климов Валерий Валерьевич', '', '1418304113_ddee861268f872bc9037c16d91483e21.jpg', '', '', 0, '', 44),
(10, 'Титов Анатолий Алексеевич', '', '1418304113_60d50830f948249597f5657cb5d19855.jpg', '', '', 0, '', 44),
(11, 'Ванчиков Алексей Боросович', '', '1418304114_6f23baacb5034db8ad4400e7566cef0e.jpg', '', '', 0, '', 44),
(12, 'Гвоздев Максим', '', '1418304114_34d84045e4fe7d7a11602605fef919f0.jpg', '', '', 0, '', 44),
(13, 'Алеся Дмитриева', '', '1418304114_61e6571834e0375cb043e53d7acea71b.jpg', '', '', 0, '', 44),
(14, 'Евдокимов Александр', '', '1418307637_e92d0693b3c5638a778ba78d41587cda.jpg', '', '', 0, '', 48),
(30, '', '', '1423734919_41fdc8c3e0fb4d39e6156a1031eaee80.gif', '', '', 0, '', 39),
(33, 'Андрей', 'Шалашов', '1425750888_7ade4833d51ffad3063a954ecac60b81.jpg', '', '', 0, 'Москва, Парк Победы<br />\n Багратионовская (18 мин) <br />\n Парк Победы (18 мин) <br />\n <br />\nПол: М<br />\nОпыт преподавания: 7 лет<br />\nЗанятия: групповые, индивидуальные<br />\n <br />\nо тренере<br />\nСтарший инструктор по роликовым конькам. Стаж катания - с 2004 года. Инструктор - с 2006 года.<br />\n <br />\nВ далеком 2004 году, решив научиться кататься на роликах, я даже не представлял насколько это изменит всю мою жизнь. Ролики вошли в мою жизнь постепенно, плавно, но неумолимо.<br />\nДрузья, новые увлечения, работа, катание в свое удовольствие, поездки, много интересных людей, новые знакомства, кататься на одном ролике, постоянный поток впечатлений и общения - я даже не представляю что еще, кроме роликов, способно мне это дать.<br />\nИ сейчас я твердо уверен, основываясь на своем 8 летнем опыте работы инструктором, что научиться кататься на роликах может практически каждый. Нужно только упорство и достаточно свободного времени для этого интересного и очень увлекательного вида спорта и активного отдыха. Сделайте первый шаг - остальной путь мы пройдем вместе!<br />\n <br />\nВремя проведения индивидуальных занятий: в будни и выходные в любое время.', 122),
(34, 'Анна', 'Громыко', '1425750938_92d8f2d8d6542eaa1dec3aa5745fe176.jpg', '', '', 0, 'Москва, ЮЗАО<br />\n Ясенево (5 мин) <br />\n <br />\nПол: Ж<br />\nОбразование: Среднее<br />\nЗанятия: индивидуальные<br />\n <br />\nо тренере<br />\nЗанятия проводятся в КСК "Награда", Новая Москва, дер. Мостовское, добраться можно как по Калужскому, так и по Варшавскому шоссе. Удобная раздевалка, комната отдыха, душ, туалет.', 122),
(35, ' Андрей Владимирович ', 'Крапивной', '1425751007_582d99280a8e62e0c0d7b52bd6c712b6.jpg', '', '', 0, 'Москва, м. Алтуфьево<br />\n Бибирево (27 мин) <br />\n <br />\nВыезд : да<br />\nПол: М<br />\nОбразование: Техническое<br />\nОпыт преподавания: 8 лет<br />\nЗанятия: индивидуальные<br />\n <br />\nо тренере<br />\nМастер-тренер по подводным видам спорта: дайвинг, технический дайвинг, фридайвинг, подводная охота.<br />\n <br />\nТак же обучаю по направлениям: подводная фотография и видео-оператор. Еще являюсь специалистом в области оборудования. Пять с половиной лет прожил в Египте, после чего жил во Вьетнаме, на Бали. Дайвинг с 2002 года стал неотъемлемой частью моей жизни.<br />\n <br />\nC 2003 года инструктор PADI (любительский дайвинг).<br />\nC 2010 года инструктор NDL (подводная охота, фридайвинг, дайвинг).<br />\nС 2011 года инструктор INTD (технический дайвинг, дайвинг).', 122),
(36, 'Сергей Андреевич', 'Березенко', '1425751828_baec9f97e4c7f0d6fb910d282c0c2f0b.jpg', '', '', 0, 'Должность: Начальник клуба, командир воздушного судна, летчик-инструктор<br />\nФакт: 2630 прыжков с парашютом<br />\nЛюбимая книга: «Богатство» Валентина Пикуля', 128),
(37, 'Али Ибрагимович', 'Ибрагимов', '1425751860_babda496c98943a4142478c661cf652a.jpg', '', '', 0, 'Должность: Командир воздушного судна, тандем-инструктор, инструктор (классическая программа)<br />\nФакт: Вернулся из Индии', 128),
(38, 'Петр Анатольевич', 'Псурцев', '1425751892_4a29ed0a65abcaa99baee1e9c10cbfd3.jpg', '', '', 0, 'Псурцев', 128),
(40, 'Климов Валерий Валерьевич', '', '1425755660_4f5851f23fd31bd478c9b5027174545f.jpg', '', '', 0, 'Выезд : да<br />\nПол: М<br />\nОбразование: МГПУ, специальность<br />\nЗанятия: индивидуальные<br />\nо тренере<br />\nТренер-преподаватель по хоккею . Образование: МГПУ, специальность "Адаптивная Физическая Культура". Мастер спорта. Драфт NHL - 2004 "New Jersey Devils". Опыт тренировочных лагерей NHL и других Североамериканских хоккейных лиг.', 145),
(41, 'Титов Анатолий Алексеевич', '', '1425755741_5b5798617252d25633720b07f8fa565e.jpg', '', '', 0, 'Москва, ул Стромынка д 4<br />\nvk.com/club1512553<br />\n Сокольники (10 мин) <br />\n Электрозаводская (27 мин) <br />\n <br />\nВыезд : да<br />\nПол: М<br />\nОбразование: высшее техническое, высшая школа тренеров<br />\nОпыт преподавания: 25 года<br />\nЗанятия: групповые, индивидуальные<br />\n <br />\nо тренере', 145),
(42, 'Ванчиков Алексей Боросович', '', '1425755781_2399a69f8256e8bef8209c0f8f4c784a.jpg', '', '', 0, 'Пол: М<br />\nЗанятия: индивидуальные<br />\n <br />\nо тренере<br />\nПлавание - КМС (Чемпион России 1989 г.), стаж тренировок с 1989 года<br />\nБаскетбол - КМС (Играющий тренер)<br />\nШахматы - КМС (Вице-президент НОШФ 2009-2010 годы)<br />\nРукопашный бой (Координатор военно-спортивного клуба "Лидер")', 145),
(43, 'Алеся Дмитриева', '', '1425755973_7de36d52974f3b0379893a7f59de4f8b.jpg', '', '', 0, 'Москва<br />\nwww.alesya.ru<br />\n Площадь Революции (5 мин) <br />\n Охотный Ряд (7 мин) <br />\n <br />\nВыезд : да<br />\nПол: Ж<br />\nОбразование: КМС по фигурному катанию<br />\nОпыт преподавания: 7 лет<br />\nЗанятия: индивидуальные<br />\n <br />\nо тренере<br />\nЯвляюсь кандидатом в мастера спорта по фигурному катанию (2000 г.). Победительница чемпионата Московской области (2003 г.); победительница кубков Московской и Тверской области (1999, 2001, 2002, 2003 гг.). Занимаюсь фигурным катанием с 1992 года, хореографией с 1994 года. Опыт тренерской работы – с 2004 года (тренер по фигурному катанию и хореографии ФК «Локомотив»). Прошла курсы повышения тренерской квалификации у двукратной олимпийской чемпионки Екатерины Гордеевой, олимпийского чемпиона Ильи Кулика и чемпиона европы Вячеслава Загороднюка в 2012 и 2013г.г.', 145),
(44, 'Шапошникова Марина', '', '1425799155_44e996868a323e4109949a387a3191bf.jpg', '', '', 0, 'контактная информация<br />\nМосква, м. Войковская<br />\n <br />\n <br />\nВыезд : да<br />\nПол: Ж<br />\nОбразование: РГУФКСМиТ<br />\nОпыт преподавания: 6 лет<br />\nЗанятия: индивидуальные, групповые<br />\nо тренере<br />\nКандидат в мастера спорта по волейболу (2008 г.). Неоднократный призер и победитель российских и областных соревнований по волейболу (2000 - 2010 гг.). Занимается волейболом с 1996 года. Опыт тренерской работы – с 2007 года (помощник тренера в СДЮШОР).', 146),
(45, 'Титов Анатолий Алексеевич', '', '1425799211_98659d0a0ec176ad64443bb9d6fd696d.jpg', '', '', 0, 'контактная информация<br />\nМосква, ул Стромынка д 4<br />\nvk.com/club1512553<br />\n Сокольники (10 мин) <br />\n Электрозаводская (27 мин) <br />\n <br />\nВыезд : да<br />\nПол: М<br />\nОбразование: высшее техническое, высшая школа тренеров<br />\nОпыт преподавания: 25 года<br />\nЗанятия: групповые, индивидуальные<br />\n <br />\nо тренере<br />\nОбразование высшее техническое, высшая школа тренеров<br />\nстаж работы  25 лет<br />\nОпыт работы: За годы работы подготовлены  чемпионы и призеры СССР, СНГ и России.<br />\nЗвания:  Заслуженный тренер России, мастер спорта международного класса . Отличник физической культуры.', 146),
(46, ' Климов Валерий Валерьевич', '', '1425799245_23b364e80c68b78ee5883f86f9d9eaef.jpg', '', '', 0, 'контактная информация<br />\nм. Киевская<br />\n <br />\n <br />\nВыезд : да<br />\nПол: М<br />\nОбразование: МГПУ, специальность<br />\nЗанятия: индивидуальные<br />\nо тренере<br />\nТренер-преподаватель по хоккею . Образование: МГПУ, специальность "Адаптивная Физическая Культура". Мастер спорта. Драфт NHL - 2004 "New Jersey Devils". Опыт тренировочных лагерей NHL и других Североамериканских хоккейных лиг.', 146),
(47, 'Иванов Михаил Михайлович', '', '1425800802_0d180d7edb16315a79407c90f7cf76d2.jpg', '', '', 0, 'контактная информация<br />\nМосква<br />\n Театральная (3 мин) <br />\n Охотный Ряд (3 мин) <br />\n <br />\nВыезд : да<br />\nПол: М<br />\nОбразование: МГАФК<br />\nОпыт преподавания: 12 лет<br />\nЗанятия: групповые, индивидуальные<br />\n <br />\nо тренере<br />\nМастер Спорта Международного Класса по Водному Поло. Мастер спорта по плаванию. Обладатель Кубка Кубков Европейских Стран 2000 г. Бронзовый призёр Лиги Чемпионов 1999 г. 2-х Кратный Чемпион России 1998г., 2000 г. Бронзовый призёр Чемпионата России 1999 г. 2-х Кратный Обладатель Кубка России 1997 г.,1999 г. Призёр международных соревнований по водному поло в составе Национальной сборной России.', 148),
(48, 'Титов Анатолий Алексеевич', '', '1425800837_e3f28b366c9bd6bd7aed1361d52844d9.jpg', '', '', 0, 'Москва, ул Стромынка д 4<br />\nvk.com/club1512553<br />\n Сокольники (10 мин) <br />\n Электрозаводская (27 мин) <br />\n <br />\nВыезд : да<br />\nПол: М<br />\nОбразование: высшее техническое, высшая школа тренеров<br />\nОпыт преподавания: 25 года<br />\nЗанятия: групповые, индивидуальные<br />\n <br />\nо тренере<br />\nОбразование высшее техническое, высшая школа тренеров<br />\nстаж работы  25 лет<br />\nОпыт работы: За годы работы подготовлены  чемпионы и призеры СССР, СНГ и России.<br />\nЗвания:  Заслуженный тренер России, мастер спорта международного класса . Отличник физической культуры', 148),
(49, 'Молчанов Сергей Николаевич', '', '1425801973_83ad3790f617eba7382bda5b45d75ad2.png', '', '', 0, 'Среди воспитанниц Сергея Молчанова молодые волейболистки Даша Ярзуткина и<br />\nАлександра Чигринова. В 2009 году Сергей Николаевич тренировал пару<br />\nНаталья Урядова-Светлана Попова, которая уже в первый год своего существования<br />\nпоказала отличные результаты как в Чемпионате России так и на международном уровне.<br />\nВ 2010 году в мировой серии успешно выступает воспитанница Сергея Молчанова -<br />\nЕкатерина Хомякова.<br />\nСергей Молчанов первый тренер известного волейболиста-пляжника Михаила Кушнерева,<br />\nмастера спорта международного класса, выступавшего за Россию на Олимпийских играх 2000<br />\nгода в Сиднее.<br />\nВ 2010 году С.Н. Молчанов возглавил сборную России по пляжному волейболу.<br />\nВ качестве главного тренера сборной команды Сергей Николаевич будет работать с<br />\nведущими командами и готовить их к выступлениям на главных соревнованиях 2011 года и<br />\nОлимпийских Играх 2012 года.', 152),
(50, 'Виноходова Людмила Сергеевна', '', '1425802491_11c6ccf02796a90937a92d6513f0150e.png', '', '', 0, 'Старший тренер по бадминтону; образование высшее, окончила Московский институт физической культуры и спорта. Стаж работы 4 года, тренер второй категории. Мастер спорта России, Победитель и призер чемпионата г.Москвы и России.', 153),
(51, 'Сергеева Екатерина Александровна', '', '1425802522_1fa6086909a17978f6a1239c6e877970.png', '', '', 0, 'Тренер по бадминтону, образование высшее, окончила Российскую государственную академию физической культуры. Стаж работы 3 года, тренер второй категории.', 153),
(52, 'Гончар Наталья Владимировна', '', '1425802620_cbf270ce52ce1ce9b22fedbe65cdf624.png', '', '', 0, 'Тренер по бадминтону; образование высшее, окончила Омский государственный институт физической культуры. Стаж работы 20 лет, тренер первой категории.', 153),
(53, ' Краснова Надежда Евгеньевна', '', '1425802645_f1b6d424a3b9b1dac9c6f9eb1cedfcba.png', '', '', 0, 'Старший тренер по гандболу; образование высшее, окончила Московский областной педагогический институт им.Н.К.Крупской. Стаж работы 32 года, тренер первой категории. С 2005 года она подготовила трех членов сборной команды России и трех членов сборной команды Москвы. Под её руководством команда девушек 1994 года рождения на протяжении трёх лет с 2006г. по 2009 г. выигрывала первенство г. Москвы. В 2009 году под руководством Красновой Н.Е. сборная команда девушек г. Москвы заняла 4-е место на IV Спартакиаде школьников. На этой же Спартакиаде воспитанник Красновой Н.Е. Сохацкий Дмитрий 1994г.р. в составе сборной команды юношей г. Москвы занял 3- е место. С 2011 г. воспитанница Красновой Н.Е. Никитина Виктория 1994 г.р. является членом юниорской сборной России. В 2008 году была удостоена звания "Лучший тренер города Москвы по работе с детьми и подростками"; награждена Почетной Грамотой Федерального агентства по физической культуре и спорту и Нагрудным знаком "Отличник физической культуры и спорта".', 153),
(54, 'Балаченкова Анна Борисовна', '', '1425802677_ae6e8396c4c718284ce69e0201548598.png', '', '', 0, 'Тренер по гандболу, образование средне-профессиональное, окончила педагогическое училище. Стаж работы 13 лет.', 153),
(55, 'Балаченков Дмитрий Михайлович', '', '1425802696_afde33d5eb055f684aa8ed9ee9ccf39d.png', '', '', 0, 'Старший тренер по гандболу, образование высшее, окончил Государственный центральный ордена Ленина институт физической культуры. Стаж работы более 25 лет. С 1999 года работал со сборными командами России (юниорская и молодежная) в качестве тренера, которые при его непосредственным участии с 2001 по 2007 года шесть раз завоёвывали первые места и один раз второе место на Первенствах Европы и Мира.', 153),
(56, 'Чаусов Михаил Сергеевич', '', '1425802739_0edf7d0f31437ead7cba7d0cfa092e0a.png', '', '', 0, 'Тренер по гандболу, образование высшее, окончил Государственный центральный ордена Ленина институт физической культуры. Стаж работы 11 лет.', 153),
(57, 'Краснова Анастасия Павловна', '', '1425802767_c76159e08001ab039c901f1b874002c0.png', '', '', 0, 'Тренер по гандболу; образование высшее. Стаж работы 4 года, тренер второй категории', 153),
(58, '0', '0', '1425802801_fe4ed77dece7eed1aa45d62ecc23cb5f.png', '0', '0', 0, '', 153),
(59, 'Логинов Игорь Викторович', '', '1425805931_b42ecf38b948727b20d6f897b2444dd7.jpg', '', '', 0, 'Тренер фо футболу.<br />\nТел (моб): +7{909) 994 51 21<br />\n <br />\nОбразование: Высшее, Московский городской педагогический университет, педагог по физической культуре<br />\nПрофессиональный опыт:', 154),
(60, 'Козловских Александр Георгиевич', '', '1425805931_de30447a46979a4e2bbe45c3291f3c08.jpg', '', '', 0, 'Тренер по футболу.<br />\nТел: 8 (916)625-28-46  (с 10:00 до 18:00)<br />\nОбразование:<br />\n-   Пермский Государственный педагогический институт (ПГПИ), 1972 г.<br />\n-   Высшая школа тренеров при ГЦОЛИФК. Отделение - футбол, 1985 г.<br />\nЛичные достижения', 154),
(61, 'Ларин Андрей Анатольевич', '', '1425805931_8b85ec962f88e2931e71f5dfc20f2ec7.jpg', '', '', 0, 'Тренер по футболу<br />\nТел: 8-916-561-23-19  (с 9:00 до 18:00)<br />\nОкончил Московский Государственный Технологический Университет в 1998 году, и (ЦПС) в сфере футбола при ГЦОЛИФК в 2008 году, тренер - преподаватель по футболу.<br />\nРаботает в ДЮСШ №80 с 2009 года.<br />\nВ 2012 году поступил в Российский Государственный Университет Физической Культуры,Спорта, Молодёжи и Туризма (ГЦОЛИФК) на заочное обучение Института спорта и физического воспитания.', 154),
(62, 'Шкуров Павел Михайлович', '', '1425805931_574f1903d8d847679a8103b52a83278f.jpg', '', '', 0, 'Тренер по футболу<br />\nМоб.8-(916)-786-19-81 (10.00-18.00)<br />\nОбразование:<br />\n2001-2006 г.г. Высшее, профессиональное – Мордовский Государственный педагогический Институт им. М.Е. Евсевьева, педагог (учитель) по физической культуре и Безопасности Жизнедеятельности (С ОТЛИЧИЕМ).<br />\n2006-2009- аспирантура, каф. Педагогики - специальность 13.00.01 (Общая педагогика, История педагогики и образования).<br />\nПрофессиональный опыт:<br />\n2006-2007 – учитель физической культуры начальных классов<br />\n2007-2010 – преподаватель кафедр спортивных дисциплин (футбол) и кафедры теоретических основ Физического воспитания (легкая атлетика, Теория и История в избранном виде спорта (футбол)) в Мордовском Государственном педагогическом Институте им. М.Е. Евсевьева.<br />\n2012-тренер-инструктор, персональный тренер Фитнес-центра.<br />\nДостижения:<br />\n2005,2007,2008 г.г. - серебрянный призер Чемпионата Мордовии; <br />\n2009г.-бронзовый призер Чемпионата Мордовии;<br />\nОбладатель Кубка Республики Мордовия 2006, 2009г.г.;<br />\nОбладатели СуперКубка Мордовии – 2006, 2009 г.г.;<br />\nЧемпионы Поволжья по мини-футболу Всероссийского проекта «Мини-футбол в ВУЗы»-2009г. (тренер).<br />\nРаботает в ДЮСШ №80 с 2012 года.', 154),
(63, 'Артамонов Николай Владимирович', '', '1425805931_88233b94ebafe2f74620679eb6a55862.jpg', '', '', 0, 'Тренер по футболу.<br />\nТел: 8-916-421-27-72  (с 9:00 до 18:00)<br />\nОкончил Московский областной государственный институт физической культуры в 1990 г.;<br />\nВысшую школу тренеров при Российской Академии физической культуры в 1997 г. <br />\nРаботает в ДЮСШ № 80 с 2007 г.', 154),
(64, ' Авдеев Сергей Сергеевич', '', '1425805931_80284ebb1ffb45d79fa4c8f64912c1bf.jpg', '', '', 0, 'Тренер по футболу.<br />\nТел: 8-926-577-30-92  (с 9:00 до 18:00)<br />\nТренер-преподаватель высшей квалификации. <br />\nЗаслуженный тренер России.<br />\nОтличник физической культуры и спорта.<br />\nОкончил Московский Областной Государственный Институт Физической культуры в 1989 г.; также Межотраслевой Региональный Центр повышения квалификации и проф. подготовки тренеров – в 2002 г. Работает в ДЮСШ №80 2005 г.', 154),
(65, 'Бакастов Сергей Борисович', '', '1425805931_4587956eb3260ae3b85780532326ba89.jpg', '', '', 0, 'тел: 8-926-254-24-01 (с 9:00 до 18:00)<br />\nТренер по футболу.<br />\nОкончил МГГУ в 1997 году и РГУФК. <br />\nРаботает в ДЮСШ №80 с 2009 года.', 154),
(66, '0', '0', '1425805931_0bdb1f22e1ffe1b4c43849da728515ea.jpg', '0', '0', 0, '', 154),
(67, ' Дьяконов Виктор Александрович', '', '1425805931_6a1ea04f12318b99acf2afdba278eaa6.jpg', '', '', 0, 'Тренер по плаванию<br />\nСудья «Всероссийской категории»<br />\n', 154),
(68, 'Халилулин Ирфан Романович', '', '1425805931_44401cd21c75d48725df4951fbf53175.jpg', '', '', 0, 'Тел: 8-915-159-88-04  (с 9:00 до 18:00)<br />\nТренер по футболу.<br />\nВысшая квалификационная категория.<br />\nОкончил МОГИФК московской обл. гос. институт физической культуры 1984 г. <br />\nРаботает в ДЮСШ № 80 с 2008 г.', 154),
(69, 'Ильин Анатолий Николаевич', '', '1425805931_b9d026274fb883eb205b669e92ddb006.jpg', '', '', 0, 'Тренер по футболу.<br />\nОкончил в 1974 году Государственный центральный ордена В.И. Ленина институт физической культуры.<br />\nВоспитанники тренера-преподавателя отделения футбола ДЮСШ №80 Ильина Анатолия Николаевича.<br />\nМихаил Русляев – игрок команды «Спартак», «Локомотив», входил в состав сборной клубов, молодежной и юношеской сборных.<br />\nЧемпион России 1992 г. Трижды серебряный медалист чемпионатов СССР 1983, 1984, 1985 гг. Начинал играть в футбол в ДЮСШ «Спартак»-2 у тренера Ильина А.Н. Затем переведен в СДЮШОР «Спартак», тренер Бойков.<br />\nОлег Табунов – чемпион Европы 1988 г. среди юношей. Игрок команд мастеров «Локомотив», ЦСКА.<br />\nЧемпион мира по мини-футболу среди студентов. Генеральный директор клуба ЦСКА (мини-футбол).<br />\nВоспитанник СДЮШОР «Локомотив» до 1983 г., тренер Холодов В.В., затем до команды мастеров «Локомотив» - Ильин А.Н.<br />\nАндрей Панков – игрок команд мастеров по мини-футболу «Спартак» Москва, «Спартак - Щелково». Чемпион России, обладатель кубка и суперкубка России. Лучший вратарь 2001 г., игрок сборной России.<br />\nВ 1991 г. участвовал в составе юношеской команды «Локомотив» в последнем Первенстве СССР по футболу в финальных соревнованиях. В этой же команде играли: Евсеев Вадим и Шаронов Роман – старший тренер Ильин А.Н.<br />\nВадим Евсеев – игрок команд мастеров «Спартак», «Локомотив».<br />\nЧемпион России – 6 раз (1996, 1997, 1998, 1999, 2002, 2004).<br />\nОбладатель кубка России – 4 раза (1997/1998, 1999/2000, 2000/2001, 2006/2007).<br />\nИгрок сборной России, участник Чемпионата Европы 2004 г. в Португалии.<br />\nРоман Шаронов – игрок команд мастеров «Локомотив» - дубль, «Рубин» - Казань, «Терек» - Грозный.<br />\nЧемпион России 2008 -2009 гг.<br />\nБронзовый призер Чемпионата России: 2003, 2010 гг.<br />\nВ списках 33 лучших футболистов Чемпионата России (1): №1 (2009 г.).<br />\nУчастник Чемпионата Европы 2004 г. в Португалии.<br />\nИгрок сборной России.<br />\nВоспитанник СДЮШОР «Локомотив», тренер Ильин А.Н.<br />\nСытник Александр, Прохоров Алексей, Мусин Леонид, Пучков Сергей – все 1985 г.р., воспитанники СДЮШОР «Спартак», тренер Ильин А.Н., после его ухода, уехали на Украину, где в составе ее молодежной команды стали Вице-чемпионами Европы.<br />\nРуслан Имаев – воспитанник ДЮСШ «Тимирязевец», ФК «Зенит» Москва. Тренер Ильин А.Н.  В 2009 – 2010 гг. игрок юношеской сборной России по футболу (1994 г.р.). 6 раз вызывался в сборную для участия в международных турнирах, контрольных играх.<br />\nКомбаровы Кирилл и Дмитрий – воспитанники СДЮШОР «Спартак» и «Динамо», игроки команды мастеров «Спартак».<br />\nШаронов Роман и Комбаров Дмитрий – капитаны команд «Рубин» - Казань и «Спартак» Москва.<br />\nКомбаров Дмитрий и Шаронов Роман входили  в сборную России на последнем Чемпионате Европы 2012г.<br />\nИгроки, воспитанники Ильина А.Н., играющие в I и II лигах Первенства СССР и России в этот список не вошли.<br />\nЗакрыть<br />\n', 154),
(70, 'Киселёв Владимир Сергеевич', '', '1425805931_5937016f30e4fe3948ccd0fce88013e7.jpg', '', '', 0, 'Тренер по плаванию<br />\nЗаслуженный Мастрер Спорта, действующий спортсмен, Член Национальной Паралимпийской Сборной России. Двукратный Чемпион IX зимних Паралимпийских игр в Турине в 2006 г. (биатлон). Двукратный призёр Паралимпийских игр 2010 года, чемпион России по биатлону в спринтерской гонке на 7,5 км среди «сидячих» спортсменов. Обладатель Этапа Кубка Мира по биатлону. Старший тренер-преподаватель, старший инструктор-методист отделения плавания (инваспорт). <br />\nВ ДЮСШ № 80 работает с открытия школы.', 154),
(71, 'Куренной Юрий Александрович', '', '1425805931_8ed6e1b71b11dd08ff89c528dbbc4e95.jpg', '', '', 0, 'Тренер по плаванию<br />\nОкончил Российский государственный университет Физической культуры, спорта и туризма в 2005 в году. <br />\nРаботает с детьми инвалидами с ПОДА и детьми инвалидами по зрению.', 154),
(72, 'Шахин Олег Васильевич', '', '1425805931_2cd06e8ba69341aac021ddb87a0ed69f.jpg', '', '', 0, 'Тренер по футболу.<br />\nЗаслуженный тренер России.<br />\nОтличник физической культуры и спорта.<br />\nОкончил Московский Областной Педагогический Институт имени Н.К. Крупской в 1979 году. Имеет высшую квалификационную категорию.', 154),
(73, 'Щелочков Александр Анатольевич', '', '1425805931_a8a309e235f72e29cb2ec8568a2c0aa0.jpg', '', '', 0, 'Тренер по плаванию<br />\n8(915)337-04-84 с 10 до 21.00<br />\nЗаслуженный тренер России<br />\nВысшая квалификационная категория.<br />\nМастер спорта международного класса.<br />\nОкончил Московскую Государственную Академию физической культуры в 2005 г. Мастер Спорта международного класса;  Чемпион Европы; рекордсмен России; специалист по адаптивной физической культуре; тренер II категории. Действующий спортсмен, Член Национальной Паралимпийской Сборной России, участник Паралимпийской Олимпиады в Сиднее в 2002 г., финалист Паралимпийских Игр в Афинах в 2004 г. Работает в ДЮСШ № 80 с 2007 г. со спортсменами с ПОДА.', 154),
(74, 'Щелочкова Елена Владимировна', '', '1425805931_b7a93d580b121af566485f48eacd563b.jpg', '', '', 0, 'Тренер по плаванию<br />\n8(916)585-11-95 с 10.00 до 21.00<br />\nВысшая квалификационная категория.<br />\nМастер спорта России по плаванию.<br />\nОкончила Российский Государственный Университет физической культуры, спорта и туризма в 2005 г. Мастер спорта, специалист по адаптивной физической культуре; тренер I категории. Многократная Чемпионка России. <br />\nРаботает в ДЮСШ № 80 с 2007 г. со спортсменами с ПОДА.<br />\nСтарший тренер отделения плавания (инваспорт).', 154),
(75, 'Симаев Дмитрий Николаевич', '', '1425805931_d34a66b805b50690d73cb218d28344dd.jpg', '', '', 0, 'Тренер по плаванию<br />\nВторая квалификационная категория.<br />\nОкончил Российский государственный университет Физической культуры, спорта и туризма в 2010 в году. Работает с детьми инвалидами по зрению. <br />\nНа Всероссийском спортивном фестивале детей инвалидов по зрению, который прошел с 19 по 24 октября 2010 года в г.Алексин Тульской области трое спортсменов заняли призовые места на дистанции 50 метров вольным стилем – Бондаренко Владислав – 1 место, Лисиченко Даниил – 1 место, Микиртычева Елизавета – 2 место.', 154),
(76, 'Воронков Сергей Борисович', '', '1425805931_96bd6b7411aceece5a6e6e581b69fc7d.jpg', '', '', 0, 'Тренер по гандболу<br />\nТел: 8-926-236-88-66  (с 9:00 до 18:00)<br />\nКандидат в мастера спорта по гандболу, тренер высшей категории, ранее работал в УОР (училище Олимпийского резерва) г.Москвы и с дублирующим составом команды мастеров СК «Луч», г.Москва. <br />\nВоспитанницы Воронкова С.Б. входили в составы юношеских и молодежных сборных команд России. <br />\nНа I Спартакиаде учащихся России сборная команда <br />\nг. Москвы под руководством Воронкова С.Б. <br />\nзаняла III место. <br />\nРаботает в ДЮСШ №80 с 2008 года.', 154),
(77, 'Зюзина Оксана Сергеевна', '', '1425805931_3c9de3a3b889ac6dc0943713b646a2cd.jpg', '', '', 0, 'Тренер по гандболу<br />\nТел: 8-909-623-55-55  (с 10:00 до 22:00)<br />\nВторая квалификационная категория.<br />\nОкончила Московское средне-специальное училище Олимпийского резерва в 2001 году, педагог по физкультуре. Московский государственный открытый педагогический университет в 2004 году. Мастер спорта России по гандболу с 1997 года. <br />\nРаботает в ДЮСШ №80 с 2003 года.', 154),
(78, 'Шапошникова Марина', '', '1425807468_20a44c3a87bda8be1ed7738c48ec3bae.jpg', '', '', 0, 'контактная информация<br />\nМосква, м. Войковская<br />\n <br />\n <br />\nВыезд : да<br />\nПол: Ж<br />\nОбразование: РГУФКСМиТ<br />\nОпыт преподавания: 6 лет<br />\nЗанятия: индивидуальные, групповые<br />\nо тренере<br />\nКандидат в мастера спорта по волейболу (2008 г.). Неоднократный призер и победитель российских и областных соревнований по волейболу (2000 - 2010 гг.). Занимается волейболом с 1996 года. Опыт тренерской работы – с 2007 года (помощник тренера в СДЮШОР).', 157),
(79, 'Аникеева Ольга Михайловна', '', '1425808877_169c65333c4b0750a013770992347b6a.jpg', '', '', 0, 'Тренер высшей категории.<br />\nЗаслуженный тренер РСФСР.<br />\nМастер спорта по настольному теннису.', 162),
(80, 'Аникеев Александр Борисович', '', '1425808877_9ba8d71a46d6e174983cea61ffc2156f.jpg', '', '', 0, 'Тренер.<br />\nМастер спорта по настольному теннису.', 162),
(81, 'Бочкарева Вера Ивановна', '', '1425808877_6f2d9365a51e2c5fa2975a43c286ecbc.jpg', '', '', 0, 'Тренер второй категории.<br />\nМастер спорта по настольному теннису.<br />\n', 162),
(82, 'Савинов Юрий Николаевич', '', '1425808877_99d53b8604e6f951f41d923d0a19b63f.jpg', '', '', 0, 'Тренер второй категории.', 162),
(83, 'Биткина Виктория Викторовна', '', '1425808877_b0cc13aa5cba8dc2f584b5347d49865c.jpg', '', '', 0, 'Тренер первой категории.', 162),
(84, 'Зрелов Сергей Яковлевич', '', '1425808877_5d106c00849c954b38a685063881e187.jpg', '', '', 0, 'Тренер.', 162),
(85, 'Андронова Галина', '', '1425809234_e8dedb1ba20f0ed2cf0449da6d61c27d.jpg', '', '', 0, 'контактная информация<br />\nМосква<br />\n Площадь Революции (5 мин) <br />\n Охотный Ряд (7 мин) <br />\n <br />\nВыезд : да<br />\nПол: Ж<br />\nОбразование: Высшее<br />\nЗанятия: индивидуальные, групповые<br />\n <br />\nо тренере<br />\nИнструктор по танцам, танцевальной аэробике, растяжке, боди-балету. Индивидуальный подход к каждому.<br />\nПервое занятие: бесплатно (при выезде), при аренде зала оплата аренды, далее по договоренности.<br />\nЗакрыть<br />\n', 163),
(86, 'Алёна Воробьёва', '', '1425809234_e2eca6852e46eaf3a8ce3feb56ef5abd.jpg', '', '', 0, 'контактная информация<br />\nМосква, м. Молодежная<br />\nfacebook.com/alyonayoga<br />\n Крылатское (21 мин) <br />\n <br />\nВыезд : да<br />\nПол: Ж<br />\nОбразование: Сертификат Международного Открытого Йога Университета<br />\nОпыт преподавания: 3 года<br />\nЗанятия: индивидуальные, групповые<br />\nо тренере<br />\nПередачу знаний йоги считаю своим призванием. Для меня уже нет разницы между практикой йоги и повседневной жизнью. Постоянно посещаю семинары и ретриты по различным видам йоги, углубляю свои знания.<br />\n <br />\nНа данный момент стаж практики йоги составляет более 7 лет. Преподаванию йоги обучалась под руководством Вадима Запорожцева в Международном Открытом Йога Университете.<br />\nПомимо йоги имею высшее образование по специальности медик-биофизик (ДНГУ).<br />\nЗакрыть<br />\n', 163),
(87, 'Алеся Дмитриева', '', '1425809234_31629d5a5ccde7bd9e516bacb0129f9f.jpg', '', '', 0, 'контактная информация<br />\nМосква<br />\nwww.alesya.ru<br />\n Площадь Революции (5 мин) <br />\n Охотный Ряд (7 мин) <br />\n <br />\nВыезд : да<br />\nПол: Ж<br />\nОбразование: КМС по фигурному катанию<br />\nОпыт преподавания: 7 лет<br />\nЗанятия: индивидуальные<br />\n <br />\nо тренере<br />\nЯвляюсь кандидатом в мастера спорта по фигурному катанию (2000 г.). Победительница чемпионата Московской области (2003 г.); победительница кубков Московской и Тверской области (1999, 2001, 2002, 2003 гг.). Занимаюсь фигурным катанием с 1992 года, хореографией с 1994 года. Опыт тренерской работы – с 2004 года (тренер по фигурному катанию и хореографии ФК «Локомотив»). Прошла курсы повышения тренерской квалификации у двукратной олимпийской чемпионки Екатерины Гордеевой, олимпийского чемпиона Ильи Кулика и чемпиона европы Вячеслава Загороднюка в 2012 и 2013г.г.', 163),
(91, 'Борисов Сергей Николаевич Тренер', '', '1425810800_55437983258a7dd5cce59142ae90a223.jpg', '', '', 0, 'тренер', 166),
(93, 'АНДРЕЙ АЛЕКСАНДРОВИЧ', 'КУКСИН', '1425819192_c04405c5fc225935f1e2b7dea0d7fc25.jpg', '', '', 0, 'Инструктор ПДП.<br />\nНезаменимый помощник и бессменный дежурный на линии стартового осмотра.<br />\nПрыжков 1600+<br />\nКандидат в мастера спорта', 185),
(94, 'МИХАИЛ КОНСТАНТИНОВИЧ', 'ЖЕРЕБЦОВ', '1425819231_040c013366d024e5e9dde8a96b8dde0a.jpg', '', '', 0, 'Начальник парашютно-десантной службы. Мастер спорта СССР.<br />\nСовершал прыжки на северный полюс<br />\nПрыжков 2700+.', 185),
(95, 'АНАТОЛИЙ ЕВГЕНЬЕВИЧ', 'БАКЛАНОВ', '1425819264_8153537adb1686d52465312abc0fa0ac.jpg', '', '', 0, 'Инструктор ПДП.<br />\nПрыжков 6 000+<br />\nМастер спорта СССР,чемпион войск ПВО, Член сборной СССР и ПВО<br />\nВ парашютном спорте с 1968 года<br />\nИспытатель парашютных систем.', 185),
(96, 'СЕРГЕЙ ВИКТОРОВИЧ', 'КАЛАШНИКОВ', '1425819295_2869a8134f19f1eb1d3c5f942cdafa3a.jpg', '', '', 0, 'Инструктор ПДС<br />\nПрыжков 1 800+<br />\nМастер спорта<br />\nВ парашютном спорте с 1973 года<br />\nБывший солдат ВДВ<br />\n ', 185),
(97, 'АЛЕКСЕЙ ДМИТРИЕВИЧ', 'ПОЗНЯК', '1425819335_11e694d9c27d91b52c312daa6a15a459.jpg', '', '', 0, 'Инструктор ПДС<br />\nПрыжков 1 300+<br />\nКандидат в мастера спорта', 185),
(98, 'ПАВЕЛ АЛЕКСЕЕВИЧ', 'КУТИЛИН', '1425819363_6abd540614ff81133f7d2ca083694379.jpg', '', '', 0, 'Инструктор ПДС<br />\nПрыжков 500+', 185),
(99, 'АЛЕКСАНДР ВАСИЛЬЕВИЧ', 'КОННОВ', '1425819395_8ff27faaeedc24d2d0259d6a78bf8e7c.jpg', '', '', 0, 'Летчик и опытный парашютист. Начальник парашютной службы и инструктор второй программы парашютной подготовки.<br />\nПрыжков 6300+<br />\nМастер парашютного спорта.', 185);

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

DROP TABLE IF EXISTS `requests`;
CREATE TABLE IF NOT EXISTS `requests` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `age` varchar(255) NOT NULL,
  `sex` varchar(255) NOT NULL,
  `weight` varchar(255) NOT NULL,
  `sports` text NOT NULL,
  `subway` varchar(255) NOT NULL,
  `contrains` text NOT NULL,
  `canpay` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone` varchar(255) NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` VALUES
(1, 'Андрей', 'DSADAS', 'DASDASD', 'ASDASD', 'ASDAS', 'DASDASD', 'ASDASDA', 'вфывфы', 'protected.for@gmail.com', '+996554709700', '26.11.2014 16:35:17', '127.0.0.1', 'on'),
(2, 'dasd', 'dsad', 'dsa', 'sadas', 'das', 'dsa', 'dsa', 'dsa', 'dsada@adsa.ru', 'das', '27.11.2014 14:57:02', '127.0.0.1', 'on'),
(3, 'dsa', 'ds', 'sadas', 'dsad', 'sdas', 'dsada', 'das', 'dsadas', 'dfdas@dsa.ru', 'dasd', '06.02.2015 13:21:45', '127.0.0.1', 'on'),
(4, 'dasd', 'dsa', 'd', 'dsa', 'dsa', 'd', 'das', 'd', 'asdas@dasdas.ru', 'dasdas', '06.02.2015 13:23:00', '127.0.0.1', 'on'),
(5, 'dsad', 'dsa', 'dsa', 'dsa', 'dads', 'das', 'das', 'dsa', 'das@dsa.ru', 'dsad', '06.02.2015 13:26:29', '127.0.0.1', 'on');

-- --------------------------------------------------------

--
-- Table structure for table `sports`
--

DROP TABLE IF EXISTS `sports`;
CREATE TABLE IF NOT EXISTS `sports` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `url` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `active` varchar(2) NOT NULL,
  `category_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `desc` text NOT NULL,
  `keyw` text NOT NULL,
  `text` text NOT NULL,
  `order` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `url` (`url`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=84 ;

--
-- Dumping data for table `sports`
--

INSERT INTO `sports` VALUES
(23, 'Айкидо', 'ajkidott', '62079528b8af030e61cc39d25b195801.jpg', 'on', 56, 'Айкидо', 'Айкидо', 'Айкидо', '<p>dfsdsfsdвфы фыв фыв фыв фы</p>\r\n', 0),
(24, 'Бокс', 'boks', '01237d5dc9fa378f1834b3c5cbd134af.jpg', 'on', 56, 'Бокс', 'Бокс', 'Бокс', '', 0),
(25, 'Борьба вольная', 'borba_volnaja', '2dd946469d67d4650b0f44456a469d4a.jpg', 'on', 56, 'Борьба вольная', 'Борьба вольная', 'Борьба вольная', '', 0),
(26, 'Джиу-джитсу', 'dzhiu-dzhitsu', '8efcb1210f346c6d14d5e70ec960c096.jpg', 'on', 56, 'Джиу-джитсу', 'Джиу-джитсу', 'Джиу-джитсу', '', 0),
(27, 'Дзюдо', 'dzjudo', '618ced4b9a8e0e495e670ddbf7280a56.jpg', 'on', 56, 'Дзюдо', 'Дзюдо', 'Дзюдо', '', 0),
(28, 'Каратэ', 'karate', '3005ed2b63ea2b4fd6d868fcba9802fc.jpg', 'on', 56, 'Каратэ', 'Каратэ', 'Каратэ', '', 0),
(29, 'Кикбоксинг', 'kikboksing', 'a4cae2dcc5803561b3bf0a368f03c905.jpg', 'on', 56, 'Кикбоксинг', 'Кикбоксинг', 'Кикбоксинг', '', 0),
(30, 'Микс файт', 'miks_fajt', '944cc99dd1e8d169b35b75dba50262b9.jpg', 'on', 56, 'Микс файт', 'Микс файт', 'Микс файт', '', 0),
(31, 'Рукопашный бой', 'rukopashnyj_boj', 'b48029a3e2bec5a4dd696b73dcb9255e.jpg', 'on', 56, 'Рукопашный бой', 'Рукопашный бой', 'Рукопашный бой', '', 0),
(32, 'Самбо', 'sambo', '9f6be5b11bc741383d8057da92f5e704.png', 'on', 56, 'Самбо', 'Самбо', 'Самбо', '', 0),
(33, 'Самооборона', 'samooborona', '83234cd8c39a459251886e35ad743a36.jpg', 'on', 56, 'Самооборона', 'Самооборона', 'Самооборона', '', 0),
(34, 'Сумо', 'sumo', '14eb27185a6b488f5b5d5f384e963d84.jpg', 'on', 56, 'Сумо', 'Сумо', 'Сумо', '', 0),
(35, 'Ушу', 'ushu', '93c86fe69e6f536a61565fd1441dd314.jpg', 'on', 56, 'Ушу', 'Ушу', 'Ушу', '', 0),
(36, 'Велотрассы', 'velotrassy', '421aa5bd907987f1a021b4095d8f9333.jpg', 'on', 57, 'Велотрассы', 'Велотрассы', 'Велотрассы', '', 0),
(37, 'Парашют', 'parashjut', '36cafde5d74c2755ef01a222cdb8bf87.jpg', 'on', 57, 'Парашют', 'Парашют', 'Парашют', '', 0),
(38, 'Паркур', 'parkur', '12d154aced80d090ebe7e4cf183e54eb.jpg', 'on', 57, 'Паркур', 'Паркур', 'Паркур', '', 0),
(39, 'Полет на шаре', 'polet_na_share', '507e99efd4ac6145266a71db64ac8cc8.jpg', 'on', 57, 'Полет на шаре', 'Полет на шаре', 'Полет на шаре', '', 0),
(40, 'Роллердром', 'rollerdrom', 'fa4cbde33862297b1323f8e21cb17f21.jpg', 'on', 57, 'Роллердром', 'Роллердром', 'Роллердром', '', 0),
(41, 'Скаладром', 'skaladrom', 'fe5e8d0658b67880cbd28a2d5a5f8b54.jpg', 'on', 57, 'Скаладром', 'Скаладром', 'Скаладром', '', 0),
(42, 'Скейтпарк', 'skejtpark', '1adc67afc777246b77317e4c91eb7ee6.jpg', 'on', 57, 'Скейтпарк', 'Скейтпарк', 'Скейтпарк', '', 0),
(43, 'Аквааэробика', 'akvaaerobika', '4acfa219f87d9fd7a8954a4c01249adb.jpg', 'on', 55, 'Аквааэробика', 'Аквааэробика', 'Аквааэробика', '', 0),
(44, 'Аэробика', 'aerobika', 'fb881a13346656639f21b72af9f32f34.jpg', 'on', 55, 'Аэробика', 'Аэробика', 'Аэробика', '', 0),
(45, 'Пилатес', 'pilates', '6c466a9aa2958da41c8844f998977a3a.jpeg', 'on', 55, 'Пилатес', 'Пилатес', 'Пилатес', '', 0),
(46, 'Тренажерные залы', 'trenazhernye_zaly', '88c8fd30a680489315b0556b1908ded9.jpg', 'on', 55, 'Тренажерные залы', 'Тренажерные залы', 'Тренажерные залы', '', 0),
(47, 'Фитнес', 'fitnes', 'ffe292068453de7ba2f973bcd8f7e354.jpg', 'on', 55, 'Фитнес', 'Фитнес', 'Фитнес', '', 0),
(48, 'Фитнес для беременных и молодых мам', 'fitnes_dlja_beremennyh_i_molodyh_mam', '3e283063588ac2bf70fb19baddfc6430.jpg', '0', 55, 'Фитнес для беременных и молодых мам', 'Фитнес для беременных и молодых мам', 'Фитнес для беременных и молодых мам', '', 0),
(49, 'Крытые', 'krytye', '0aaa07782a369a7610015bad51a6b019.jpg', 'on', 58, 'Крытые', 'Крытые', 'Крытые', '', 0),
(50, 'Открытые', 'otkrytye', '5a5ea521f63725f6018d2188ae96329d.jpeg', 'on', 58, 'Открытые', 'Открытые', 'Открытые', '', 0),
(51, 'Армрестлинг', 'armrestling_', '872550f8c1f6ee74a6624450ca9cd981.jpg', 'on', 59, 'Армрестлинг', 'Армрестлинг', 'Армрестлинг', '', 0),
(52, 'Бадминтон', 'badminton', '0a2eab4712ebf57803f6c6cf00c905cd.jpg', 'on', 59, 'Бадминтон', 'Бадминтон', 'Бадминтон', '', 0),
(53, 'Баскетбол', 'basketbol', 'fedc8be92b82bd6bd544b60359c4a156.jpg', 'on', 59, 'Баскетбол', 'Баскетбол', 'Баскетбол', '', 0),
(54, 'Бейсбол', 'bejsbol', 'be97d5553eae3c19074a7f8f6a162367.jpg', 'on', 59, 'Бейсбол', 'Бейсбол', 'Бейсбол', '', 0),
(55, 'Волейбол', 'volejbol', '70d5c4d0489c93bf208fb2fc0aeedbc9.jpg', 'on', 59, 'Волейбол', 'Волейбол', 'Волейбол', '', 0),
(56, 'Волейбол пляжный', 'volejbol_pljazhnyj', '65713d1bd79db7c9f73c9275de532df5.jpg', 'on', 59, 'Волейбол пляжный', 'Волейбол пляжный', 'Волейбол пляжный', '', 0),
(57, 'Гандбол', 'gandbol', 'f63ef423e86e16f5144d75252f0c28ad.jpg', 'on', 59, 'Гандбол', 'Гандбол', 'Гандбол', '', 0),
(58, 'Гольф', 'golf', '5ebae021d70144ffa9c2e2627f0a7674.jpg', 'on', 59, 'Гольф', 'Гольф', 'Гольф', '', 0),
(59, 'Керлинг', 'kerling', 'c28e26ab4ac2c635a037977758a50469.jpg', 'on', 59, 'Керлинг', 'Керлинг', 'Керлинг', '', 0),
(60, 'Мини-футбол', 'mini-futbol', '28d97de6208917b528e7b5879f6b1529.jpg', 'on', 59, 'Мини-футбол', 'Мини-футбол', 'Мини-футбол', '', 0),
(61, 'Настольный теннис', 'nastolnyj_tennis', '11f0a4cddc82347c92422b3ea5af76e2.jpg', 'on', 59, 'Настольный теннис', 'Настольный теннис', 'Настольный теннис', '', 0),
(62, 'Теннис', 'tennis', 'bf3caeadf11b0d4e55bd057a72f3f3d0.jpg', 'on', 59, 'Теннис', 'Теннис', 'Теннис', '', 0),
(63, 'Футбол', 'futbol', '066eaa6ec9953e1f503cf5eeaf4d1a9f.jpg', 'on', 59, 'Футбол', 'Футбол', 'Футбол', '', 0),
(64, 'Хоккей', 'hokkej', 'e20869c789a9135bd5aae12f16c142bf.jpg', 'on', 59, 'Хоккей', 'Хоккей', 'Хоккей', '', 0),
(65, 'Go-go', 'go-go', '63ecfc5b4c54d9c3a348f4f05a648fa6.jpg', 'on', 60, 'Go-go', 'Go-go', 'Go-go', '', 0),
(66, 'Hip Hop', 'hip_hop', 'b8fa506ff2cff5bfb0bb79ce5f0a9d56.jpg', 'on', 60, 'Hip Hop', 'Hip Hop', 'Hip Hop', '', 0),
(67, 'R&B', 'rb', '30a6529d2a723c05d8bd2a017196eda0.jpg', 'on', 60, 'R&B', 'R&B', 'R&B', '', 0),
(68, 'Акробатический рок-н-рол', 'akrobaticheskij_rok-n-rol', '9aee44b77d4df8680f61880a1ea38e62.jpg', 'on', 60, 'Акробатический рок-н-рол', 'Акробатический рок-н-рол', 'Акробатический рок-н-рол', '', 0),
(69, 'Балет', 'balte', 'a10703a7048dfc63bc891cafdf46e98c.jpg', 'on', 60, 'Балет', 'Балет', 'Балет', '', 0),
(70, 'Бальные', 'balnye', '594c4f9baaa1d86e9ac6aecde7d2bece.jpg', 'on', 60, 'Бальные', 'Бальные', 'Бальные', '', 0),
(71, 'Брэйк-дэнс', 'brejk-dens', '330e6fa3cda007e1174ad4183da531f5.jpg', 'on', 60, 'Брэйк-дэнс', 'Брэйк-дэнс', 'Брэйк-дэнс', '', 0),
(72, 'Восточные', 'vostochnye', 'd647c49651be22402161f6b5492e842d.jpg', 'on', 60, 'Восточные', 'Восточные', 'Восточные', '', 0),
(73, 'Капоэйра', 'kapoejra', 'cccec6367348d296fedbd812cc850338.jpg', 'on', 60, 'Капоэйра', 'Капоэйра', 'Капоэйра', '', 0),
(74, 'Клубные', 'klubnye', '52d2f6ca2f5732d90a999f207e57bcd0.jpg', 'on', 60, 'Клубные', 'Клубные', 'Клубные', '', 0),
(75, 'Латина', 'latina', 'f379b3054e12a19466df8f1746a11a32.jpg', 'on', 60, 'Латина', 'Латина', 'Латина', '', 0),
(76, 'Модерн', 'modern', '8034636cdf515ca5695a95bca97fca09.jpg', 'on', 60, 'Модерн', 'Модерн', 'Модерн', '', 0),
(77, 'Народные', 'narodnye', '99a9a233ff7270bd6a7a96d023696647.jpg', 'on', 60, 'Народные', 'Народные', 'Народные', '', 0),
(78, 'Сальса', 'salsa', '8b77d232c109f8edfd3b56c780caf148.png', 'on', 60, 'Сальса', 'Сальса', 'Сальса', '', 0),
(79, 'Современные', 'sovremennye', '95eb617ab5e54cf5789eaab397898975.jpg', 'on', 60, 'Современные', 'Современные', 'Современные', '', 0),
(80, 'Стрип-дэнс', 'strip-dens', '705715494153599dcaf794e5bc3d6471.jpg', 'on', 60, 'Стрип-дэнс', 'Стрип-дэнс', 'Стрип-дэнс', '', 0),
(81, 'Танго', 'tango', '780c7a25e2bf5c9450137d514643c338.jpg', 'on', 60, 'Танго', 'Танго', 'Танго', '', 0),
(82, 'Фламенко', 'flamenko', '11b3c86d5db7d2387c869f764980af8a.jpg', 'on', 60, 'Фламенко', 'Фламенко', 'Фламенко', '', 0),
(83, 'Хореография', 'horeografija', '8b200af82c944fb602e38e222bfc08ec.jpg', 'on', 60, 'Хореография', 'Хореография', 'Хореография', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `studentcards`
--

DROP TABLE IF EXISTS `studentcards`;
CREATE TABLE IF NOT EXISTS `studentcards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sname` varchar(255) NOT NULL,
  `mname` varchar(255) NOT NULL,
  `univer` varchar(255) NOT NULL,
  `contacts` varchar(255) NOT NULL,
  `delivery` enum('self','courier','','') NOT NULL,
  `date` varchar(255) NOT NULL,
  `ip` varchar(255) NOT NULL,
  `read` enum('on','0','','') NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=8 ;

--
-- Dumping data for table `studentcards`
--

INSERT INTO `studentcards` VALUES
(3, 'вфывфв', 'выфв', 'выфв', 'фы', 'вфыв', 'courier', '10.02.2015 16:20:33', '127.0.0.1', 'on'),
(4, 'das', 'dsad', 'dsad', 'dsad', 'asdas', 'courier', '10.02.2015 16:25:08', '127.0.0.1', 'on'),
(5, 'Андрей', 'Федотов', 'Игоревич', 'Политех', '0554709700', 'self', '10.02.2015 22:15:43', '127.0.0.1', 'on'),
(6, 'dasda', 'das', 'ds', 'dasd', 'asdsa', 'courier', '10.02.2015 22:18:37', '127.0.0.1', 'on'),
(7, 'asd', 'dasdsadas', 'asdas', 'das', 'dasdasd', 'courier', '14.02.2015 03:33:53', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Table structure for table `subways`
--

DROP TABLE IF EXISTS `subways`;
CREATE TABLE IF NOT EXISTS `subways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=109 ;

--
-- Dumping data for table `subways`
--

INSERT INTO `subways` VALUES
(1, 'Дубровка', '26a520b7130c777eeb9747083ec6ce84.png', 0, 'on'),
(2, 'Сокольники', '49d7b76dd28c58596e53c5ed3c3d3dc9.png', 0, 'on'),
(3, 'Шаболовская', 'a792bfbdfea44a159d8e0067d63c444f.png', 0, 'on'),
(4, 'Октябрьская', 'b63d3d3b301c6dbbd0d49b4ced104660.png', 0, 'on'),
(5, 'Калужская', 'f23bb37f71f2e87cdae4b293ca759b33.png', 0, 'on'),
(6, 'Смоленская', '93e5feafed3aa09f12038987a722b052.png', 0, 'on'),
(7, 'Смоленская', '1c3df6287aebd9780daf853bc29946b8.png', 0, 'on'),
(8, 'Сокол', 'f5415c09a273cebfbbdf9a770ca9e000.png', 0, 'on'),
(9, 'Воробьевы Горы', '5e6eb0abc09d5cfcbfb30adb88271c06.png', 0, 'on'),
(10, 'Петровско-Разумовская', 'a73fce77f3f60f6838851059fd84f707.png', 0, 'on'),
(11, 'Волгоградский Проспект', '2e57984b33cf8d6fb73f9971ebf5da79.png', 0, 'on'),
(12, 'Савеловская', '6fa75613f558af5b099fae335b28d25e.png', 0, 'on'),
(13, 'Курская', 'f02eba551f59fc915d6ec75c75d54166.png', 0, 'on'),
(14, 'Курская', '4f6e596054d0fc9eca44c7446f808d52.png', 0, 'on'),
(15, 'Коньково', 'ed02c4165d7729fc5b41f60e3d8493d2.png', 0, 'on'),
(16, 'Южная', 'cdb082af14da3f23722a638ff3f5ea07.png', 0, 'on'),
(17, 'Динамо', '58ddadcc9b24cd0436bb230ba4192ba4.png', 0, 'on'),
(18, 'Беговая', '6f581d30a9af0d7e2cadc6b4f9511556.png', 0, 'on'),
(19, 'Молодежная', '08c0973e14f0ab6f5220c3867d255596.png', 0, 'on'),
(20, 'Молодежная', '118231084cc2fec9f2078d22debde5f4.png', 0, 'on'),
(21, 'Университет', 'b499c502139f37e925b9556f91e25e40.png', 0, 'on'),
(22, 'Новые Черемушки', '43873dfe643deb817520db3d204b0c39.png', 0, 'on'),
(23, 'Фрунзенская', 'bc1bb008d7509069e8f1cb69a900953a.png', 0, 'on'),
(24, 'Нагорная', 'b3b98b23d25c6611039897721384ad8a.png', 0, 'on'),
(25, 'Академическая', '554007d8c2f6bc86c75397cd0c5b3619.png', 0, 'on'),
(26, 'Планерная', '6a4d691948ae243a3be60ce61e74acff.png', 0, 'on'),
(27, 'Тульская', 'eb25b83747c2b892a395b459b1cd1d9a.png', 0, 'on'),
(28, 'Шаболовская', 'cfed1173c083ab3e994ae7588670825a.png', 0, 'on'),
(29, 'Перево', '682424f51ce0b2f06dd287b48f4b8c7f.png', 0, 'on'),
(30, 'Крылатское', '1274c273b121d6064fc19e0c5c12935f.png', 0, 'on'),
(31, 'Полянка', 'bf84a2a6ede046190850dfb80ffad66b.png', 0, 'on'),
(32, 'Третьяковская', '2eaf7e0f085ba828c2724ef63539a5b5.png', 0, 'on'),
(33, 'Улица Сергея Эйзенштейна', '11370eefe6dee7b206ea13f036f13184.png', 0, 'on'),
(34, 'Ботанический Сад', 'a839dfb8d583a31ba1365e9191a2f0b1.png', 0, 'on'),
(35, 'Бабушкинская', '0d560770ff40dce7b5fd3613d91d1405.png', 0, 'on'),
(36, 'Октябрьское Поле', '0758a89b2726c9f74e66f7ff72caad33.png', 0, 'on'),
(37, 'Полежаевская', '7b9c04638f3c28983c24838943eb73ad.png', 0, 'on'),
(38, 'Сокол', '4283757551df1ae9b7ecdbd734b59fca.png', 0, 'on'),
(39, 'Тимирязевская', '5702f3d9501e1a48491ef4d728e11e61.png', 0, 'on'),
(40, 'Дмитровская', '3a30417ca784da7a8b734cd85883cc3f.png', 0, 'on'),
(41, 'Улица Академика Янгеля', '78835786dd6fc35747f3b67c28ad684b.png', 0, 'on'),
(42, 'Проспект Вернадского', '1ac02feda551a38be25a657a4019f78e.png', 0, 'on'),
(43, 'Аэрапорт', 'e2c54295df640efb02dad3ea3a517bd6.png', 0, 'on'),
(44, 'Бауманская', '632699e6c319c7b13f2e3149a54fff9b.png', 0, 'on'),
(45, 'Трубная', '12959f96a136e6c4696d5fbaa6ecd727.png', 0, 'on'),
(46, 'Цветной Бульвар', '8b8ad068fe88e55043af654c7b1bf176.png', 0, 'on'),
(47, 'Юго-Западная', 'ace6921e7024683d6e90aba2453e0ed3.png', 0, 'on'),
(48, 'Киевская', '8c274adbf257869b9c8047a57b340018.png', 0, 'on'),
(49, 'Киевская', '64a575b558c4cc23129ce07f9a0ce3ef.png', 0, 'on'),
(50, 'Свиблово', 'cc8c770b88d60b3874154b9ff54a2825.png', 0, 'on'),
(51, 'Дубровка', 'a04d5870a430f28120f92dae479d72f6.png', 0, 'on'),
(52, 'Проспект Мира', 'd753f7c2fac72cf3c37d6678cf0ec962.png', 0, 'on'),
(53, 'Проспект Мира', '19328aa3be9739c0ded74c8a61ea119a.png', 0, 'on'),
(54, 'Домодедовская', 'f501f8dc79d61ff033eee7082152c973.png', 0, 'on'),
(55, 'Ботанический Сад', '55bfd85f5e4fbe237831312e43e8c5e6.png', 0, 'on'),
(56, 'Выставочный Центр', '449a8efaf0f176d350ca6b6143b02159.png', 0, 'on'),
(57, 'Марьино', '2122737fa348c5e769056f74e6587f3c.png', 0, 'on'),
(58, 'Университет', '83f2205a180ea0477739a0cd7571eb0a.png', 0, 'on'),
(59, 'Бабушкинская', 'e451903cae774adefd12d0f72bfede44.png', 0, 'on'),
(60, 'Тушинская', '8fab2535f282c96c79012269a2cf6516.png', 0, 'on'),
(61, 'Багратионовская', '6c4fa31019b461ab74d9064444bee4b2.png', 0, 'on'),
(62, 'Кутузовская', 'd031cd3e68ca4211e310886fb84ad091.png', 0, 'on'),
(63, 'Университет', '6c04a1c13de87f65052cbafb2358b6d7.png', 0, 'on'),
(64, 'Чистые Пруды', 'bc83c3c4b44baed2c55ff6f53785c0c9.png', 0, 'on'),
(65, 'Тургеневская', '93b3150dab73cc1912c04ea4e55489b6.png', 0, 'on'),
(66, 'Фили', '5cd2106a36881606b82d602f160ad616.png', 0, 'on'),
(67, 'Марьина Роща', '06107b1402710189def51802cbf0d765.png', 0, 'on'),
(68, 'Рижская', '875ab3f0515fa3ebfe1161298e63a3e3.png', 0, 'on'),
(69, 'Семеновская', '3f8e5e2ee0efdcc09d32a923f10ccb9d.png', 0, 'on'),
(70, 'Преображенская Площадь', 'e920ff30b321450b57e25c77956b3951.png', 0, 'on'),
(71, 'Алтуфьево', '94dcb65fd3c43cf588a874f522e2fa3a.png', 0, 'on'),
(72, 'Улица Сергея Эйзенштейна', '4ae0f8697802d16d81a03ad7b31f419d.png', 0, 'on'),
(73, 'ВДНХ', 'ce276ff8d556864cf8ae298fb6110982.png', 0, 'on'),
(74, 'Воробьевы Горы', '950b5510644f1ff7d38abf15f856602b.png', 0, 'on'),
(75, 'университет', '373f906ce6dc38202ccb707f4335cfe1.png', 0, 'on'),
(76, 'Улица Академика Янгеля', 'f31fa4f9689232503a129cc8801e9b9b.png', 0, 'on'),
(77, 'Электрозаводская', '7c46a3d46f37d2b45ec327309c48d5d0.png', 0, 'on'),
(78, 'Сокольники', 'b81dc53c741fb1e8f2cfa93215283257.png', 0, 'on'),
(79, 'строгино', '4315a71d6d4df3bcf78942c6ff8c0cd7.png', 0, 'on'),
(80, 'Орехово', 'eeb993db242a10101deab9a7c45ce19b.png', 0, 'on'),
(81, 'Бульвар Дмитрия Донского', '1d274a9e12ee365c3a16527920af3080.png', 0, 'on'),
(82, 'Улица Старокачаловская', '5e4103c1cb72989a76e006895622c811.png', 0, 'on'),
(83, 'Первомайская', '3c41ba39af0cf3d6a79fcb7c218888a3.png', 0, 'on'),
(84, 'Планерная', '6b07c053afba8d38bcb5c9fe5fcbac82.png', 0, 'on'),
(85, 'Электрозаводская', '34e92dce6200081f4cffe96aa0a6a26d.png', 0, 'on'),
(86, 'Преображенская Площадь', 'a9c38ec7718bba56281a5d474e814d80.png', 0, 'on'),
(87, 'Волжская', '66ffab28fed135cc31b9616efea24c10.png', 0, 'on'),
(88, 'Кузьминки', 'b09e69c00121d6f78e037078b86754f6.png', 0, 'on'),
(89, 'Бибирево', '6136d8baca1ca8a2c1bf427ba28073d8.png', 0, 'on'),
(90, 'Парк Победы', '3e6aac9574fa435f07942c53de1f40de.png', 0, 'on'),
(91, 'Фили', '0bb00e13b7a16b44165a2191ab1c5fcd.png', 0, 'on'),
(92, 'Кунцевская', '1cb2e94109fe0849d6c3efb347c7799e.png', 0, 'on'),
(93, 'Савеловская', '1ac93dbf6e9acf409556214c879f9632.png', 0, 'on'),
(94, 'Белорусская', 'a2d7a3db590fb9ef6758f6c594b9307d.png', 0, 'on'),
(95, 'Бауманская', '1a0ec33ecbe8cf483cfbc6026830e14e.png', 0, 'on'),
(96, 'Курская', 'd8e3e878ead6ab7b555c9b1a0ed749f4.png', 0, 'on'),
(97, 'Автозаводская', 'f614a1ce75a6bb3ed8472b462410bf57.png', 0, 'on'),
(98, 'Царицыно', '10223ce3d87d5d67b1a6063ac5136bd8.png', 0, 'on'),
(99, 'Петровско-Разумовская', '7d8bf450adf110c5ed7c19b9acb859be.png', 0, 'on'),
(100, 'Речной Вокзал', '537027bf52c395ec07a2e7b29a1a4649.png', 0, 'on'),
(101, 'Зябликово', '511a0ece0b1dd27068d28ddc2201dda7.png', 0, 'on'),
(102, 'Красногвардейская', '9eafc8fb41d462d357f0bf135dba6885.png', 0, 'on'),
(103, 'Текстильщики', '4147ab078250c7c82575b906715349a3.png', 0, 'on'),
(104, 'Печатники', 'bf1418a9ee27bd5609885d41148ddb59.png', 0, 'on'),
(105, 'Новогиреево', 'ccdf2181b1809a9fa84e768c2f125550.png', 0, 'on'),
(106, 'Выхино', '9b42e1a84193e6e2fba5c42a3bf3317c.png', 0, 'on'),
(107, 'Юго-Западная', 'f1266ee4151be861593ee3e3a3b8a0b2.png', 0, 'on'),
(108, 'Сокольники', '10150ae363a37a55361292a6238fa86c.png', 0, 'on');

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `object` enum('blog','news') NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=47 ;

--
-- Dumping data for table `tags`
--

INSERT INTO `tags` VALUES
(35, 'футбол', 'blog', 1),
(36, 'баскетбол', 'blog', 1),
(37, 'минибол', 'blog', 2),
(38, 'майна', 'news', 1),
(39, 'гайна', 'news', 1),
(40, 'тупья', 'news', 1),
(41, 'вфывф', 'news', 2),
(42, 'йцуйуц', 'news', 2),
(43, 'сячсяч', 'news', 2),
(44, 'бодифлекс отзывы', 'news', 4),
(45, 'диеты дюкана отзывы', 'news', 7),
(46, 'ванночки для укрепления ногтей в домашних условиях', 'news', 13);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
