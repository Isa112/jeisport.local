-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Хост: 127.0.0.1
-- Время создания: Мар 17 2015 г., 05:40
-- Версия сервера: 5.5.25
-- Версия PHP: 5.3.13

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- База данных: `jeisport`
--

-- --------------------------------------------------------

--
-- Структура таблицы `about`
--

DROP TABLE IF EXISTS `about`;
CREATE TABLE IF NOT EXISTS `about` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `about`
--

INSERT INTO `about` (`text`) VALUES
('<p><img alt="" src="/ckeditor/kcfinder/upload/images/back.jpg" style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px; height:375px; line-height:22.3999996185303px; width:500px" /><span style="font-family:helvetica neue,helvetica,arial,sans-serif; font-size:14px">Таким образом постоянный количественный рост и сфера нашей активности способствует подготовки и реализации позиций, занимаемых участниками в отношении поставленных задач. Товарищи! сложившаяся структура организации требуют от нас анализа направлений прогрессивного развития. Идейные соображения высшего порядка, а также консультация с широким активом влечет за собой процесс внедрения и модернизации форм развития.</span></p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `admins`
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
-- Дамп данных таблицы `admins`
--

INSERT INTO `admins` (`id`, `login`, `e-mail`, `pass`, `name`, `sname`, `lname`) VALUES
(2, 'murat', '', 'murat123', '', '', ''),
(3, 'viktor', '', 'viktor123', '', '', ''),
(4, 'andrey', '', '123', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `admin_email`
--

DROP TABLE IF EXISTS `admin_email`;
CREATE TABLE IF NOT EXISTS `admin_email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `admin_email`
--

INSERT INTO `admin_email` (`email`) VALUES
('admin@example.com');

-- --------------------------------------------------------

--
-- Структура таблицы `backcalls`
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
-- Дамп данных таблицы `backcalls`
--

INSERT INTO `backcalls` (`id`, `name`, `phone`, `point_url`, `date`, `ip`, `read`) VALUES
(14, 'выфв', 'выфвф', '/edinoborstvaa/ajkidott/dasda/', '11.02.2015 03:45:58', '127.0.0.1', 'on'),
(15, 'вфыв', 'выфв', '/edinoborstvaa/ajkidott/dasda/', '11.02.2015 03:54:29', '127.0.0.1', ''),
(16, 'фыв', 'фыв', '/edinoborstvaa/ajkidott/dasda/', '14.02.2015 04:16:21', '127.0.0.1', ''),
(17, 'Андрей', 'выф выф вфыв', '/edinoborstvaa/ajkidott/dasda/', '14.02.2015 10:05:54', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `banners`
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
-- Дамп данных таблицы `banners`
--

INSERT INTO `banners` (`id`, `url`, `pos`, `clicks`, `views`, `image`, `order`, `active`) VALUES
(1, 'http://filezilla.ru/', 'main', 1, 98, 'cfdeaab665d10378ee62812c62bdce8f.jpg', 0, 'on'),
(2, 'http://vk.com/bestad', 'news', 2, 64, '80cd8478295674887819f8cc4a12df48.jpg', 0, 'on'),
(6, 'http://mail.ru/', 'blog', 0, 18, '59d2b7d7a7ac77eda9816c5ff5fef1f4.jpg', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `blog`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=10 ;

--
-- Дамп данных таблицы `blog`
--

INSERT INTO `blog` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `order`, `views`, `active`) VALUES
(1, 'Пост!', 'post', '<p>Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;Рыбта тексвфыж фыв фыдвфыовфды овлд&nbsp;</p>\r\n', '0000-00-00 00:00:00', '', '', '', '1371e81502a177207b027773273e9ff1.jpg', 0, 27, 'on'),
(2, 'Новая статья в блоге', 'novaja_statja_v_bloge', '<p><span style="color:rgba(0, 0, 0, 0.498039); font-family:arial,sans-serif; font-size:18px">New coub editor is perfect for quickly looping and remixing videos. Now you can create video mashups with up to 10 video sources!</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', '7505771fd12b8978f7c389461a26ab39.jpg', 0, 3, 'on'),
(3, 'Тестовый блог', 'testovyj_blog', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Однажды, много лет назад, я разговорилась со знакомым программистом и среди прочих реплик помню его фразу о том, что изобретена некая гениальная штука, благодаря которой все знания человечества станут доступны любому субъекту, &ndash; Всемирная информационная сеть.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'eebd2ae770ab15ef03c165066f6e957c.jpg', 0, 0, 'on'),
(4, 'Опасности райских кущей', 'opasnosti_rajskih_kuschej', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Интернет для меня третий перелом в истории человеческой культуры &ndash; после появления языка и изобретения книги</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote1" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">1</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. В Древней Греции оратора, выступавшего на площади в Афинах, слышали не более двадцати тысяч человек. Это был звуковой предел общения: география языка &ndash; это племя. Потом пришла книга, которая расширила круг общения до географии страны.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'cd89c797df227cc97e84275e28534807.jpg', 0, 0, 'on'),
(5, 'Дмитрий Быков (2011)', 'dmitrij_bykov_(2011)', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Со временем возникнет новая иерархия человечества, новая гуманная цивилизация</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote4" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">4</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. А пока&hellip; пока в Интернете доминирует &laquo;оборотная сторона&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote5" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">5</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;этого грандиозного открытия-прорыва &ndash; его разрушительная сила</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote6" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">6</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Неслучайно</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote7" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">7</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;Всемирная сеть становится орудием в руках террористов, хакеров и фанатиков всех мастей.</span></p>\r\n', '2015-01-01 12:00:00', '', '', '', '88711998a9e0c151d082fdfb9c75a8e0.jpg', 0, 0, 'on'),
(6, 'Новый пост в блоге! Урааа!!!!', 'novyj_post_v_bloge_uraaa', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Самый наглядный факт современности: Интернет, который немыслимо расширил возможности простого человека для высказывания и действия, лежит в основе нынешнего &laquo;восстания масс&raquo;. Это явление, возникшее еще в первой половине двадцатого века, вызванное вульгаризацией культуры &ndash; материальной и духовной, породило и коммунизм, и нацизм</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote8" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">8</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Сегодня он обращен к &laquo;массовому&raquo; в любом человеке, питается от него и удовлетворяет его во всех отношениях &ndash; от языкового до политического и потребительского</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote9" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">9</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">, ибо невероятно приблизил к народу желанные &laquo;хлеб и зрелища&raquo;, включая самые низкие</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote10" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">10</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Этот наперсник, проповедник и исповедник толп превращает в &laquo;шум&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote11" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">11</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;все, к чему прикасается, чему дает жизнь,</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote12" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">12</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;плодит пошлость, невежество и агрессию, давая им неслыханный, завораживающий выход не просто наружу, а на весь мир. Опаснее всего, что это игривое и очень смышленое &laquo;дитя&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote13" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">13</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;новой цивилизации уничтожает критерии &ndash; духовные, нравственные и поведенческие коды существования человеческого общества</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote14" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">14</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Что поделать, в интернет-пространстве все равны в самом площадном смысле этого слова</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote15" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">15</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. И я думаю: не слишком ли высокую цену мы платим за прекрасную возможность поговорить с далеким другом, прочесть редкую книгу, увидеть гениальную картину и услышать великую оперу? Не чересчур ли рано сделано это грандиозное открытие? Иными словами, доросло ли человечество до самого себя?</span></p>\r\n', '2015-02-14 08:43:00', '', '', '', 'dba04eba85e4c714d19f7e8d17ad7199.jpg', 0, 10, 'on'),
(7, 'Новый пост в блоге! Урааа!!!!', 'novyj_post_v_bloge_uraaa', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Самый наглядный факт современности: Интернет, который немыслимо расширил возможности простого человека для высказывания и действия, лежит в основе нынешнего &laquo;восстания масс&raquo;. Это явление, возникшее еще в первой половине двадцатого века, вызванное вульгаризацией культуры &ndash; материальной и духовной, породило и коммунизм, и нацизм</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote8" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">8</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Сегодня он обращен к &laquo;массовому&raquo; в любом человеке, питается от него и удовлетворяет его во всех отношениях &ndash; от языкового до политического и потребительского</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote9" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">9</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">, ибо невероятно приблизил к народу желанные &laquo;хлеб и зрелища&raquo;, включая самые низкие</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote10" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">10</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Этот наперсник, проповедник и исповедник толп превращает в &laquo;шум&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote11" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">11</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;все, к чему прикасается, чему дает жизнь,</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote12" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">12</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;плодит пошлость, невежество и агрессию, давая им неслыханный, завораживающий выход не просто наружу, а на весь мир. Опаснее всего, что это игривое и очень смышленое &laquo;дитя&raquo;</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote13" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">13</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">&nbsp;новой цивилизации уничтожает критерии &ndash; духовные, нравственные и поведенческие коды существования человеческого общества</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote14" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">14</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. Что поделать, в интернет-пространстве все равны в самом площадном смысле этого слова</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote15" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">15</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. И я думаю: не слишком ли высокую цену мы платим за прекрасную возможность поговорить с далеким другом, прочесть редкую книгу, увидеть гениальную картину и услышать великую оперу? Не чересчур ли рано сделано это грандиозное открытие? Иными словами, доросло ли человечество до самого себя?</span></p>\r\n', '2015-02-14 08:43:00', '', '', '', 'dba04eba85e4c714d19f7e8d17ad7199.jpg', 0, 6, 'on'),
(8, 'Новая статья в блоге', 'novaja_statja_v_bloge', '<p><span style="color:rgba(0, 0, 0, 0.498039); font-family:arial,sans-serif; font-size:18px">New coub editor is perfect for quickly looping and remixing videos. Now you can create video mashups with up to 10 video sources!</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', '7505771fd12b8978f7c389461a26ab39.jpg', 0, 3, 'on'),
(9, 'Опасности райских кущей', 'opasnosti_rajskih_kuschej', '<p><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">Интернет для меня третий перелом в истории человеческой культуры &ndash; после появления языка и изобретения книги</span><a class="footnote" href="http://totaldict.ru/texts/2013-2/#footnote1" style="border: 0px none; font-size: 14px; margin: 0px; outline: none 0px; padding: 0px; vertical-align: baseline; color: rgb(29, 29, 29); text-decoration: none; font-family: Arial, sans-serif; line-height: 18.2000007629395px; text-align: justify; text-indent: 21px; background: none 0px 0px repeat scroll transparent;">1</a><span style="color:rgb(63, 62, 62); font-family:arial,sans-serif; font-size:14px">. В Древней Греции оратора, выступавшего на площади в Афинах, слышали не более двадцати тысяч человек. Это был звуковой предел общения: география языка &ndash; это племя. Потом пришла книга, которая расширила круг общения до географии страны.</span></p>\r\n', '0000-00-00 00:00:00', '', '', '', 'cd89c797df227cc97e84275e28534807.jpg', 0, 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `categories`
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
-- Дамп данных таблицы `categories`
--

INSERT INTO `categories` (`id`, `name`, `h1`, `h2`, `url`, `image`, `image2`, `image3`, `title`, `desc`, `keyw`, `text`, `order`, `active`) VALUES
(55, 'Фитнес клубы', 'СЕКЦИИ И КЛУБЫ ЕДИНОБОРСТВ', 'вфывфы', 'fitnes-club', '87785e3e0c820addcc924a926e262770.png', 'a2e2962e050f5e56bfb2c2ed266a2c9c.jpg', '581e1115d8756264290bd5f80fff39da.png', '', '', '', '<p><span style="font-family:rbcgrotesk-light; font-size:medium">Устали однообразно курсировать между домом и работой? Решили разбавить этот тандем яркой ноткой, занявшись своим телом и здоровьем, ведь &laquo;в здоровом теле &ndash; здоровый дух&raquo;? А может, вы ищете спортивные секции для детей, поскольку осенью снижается физическая активность, столь необходимая для полноценного развития ребенка? Тогда самое время сесть поудобнее и изучить самую актуальную и подробную информацию про спортивные клубы Москвы! Здесь вы найдете самые разные спортивные клубы, которые могут быть расположены около вашего места работы или дома, а также спортивные секции, где будут заниматься ваши дети. На сайте Jeisport.ru представлено огромное разнообразие спортивных клубов Москвы, среди которых вы найдете: Спортклубы и спортивные школы, в которых проводятся занятия по единоборствам: кикбоксинг, бокс, боевое самбо, муай-тай (тайский бокс) и многие другие, Фитнесклубы &ndash; замечательная возможность для прекрасных дам подтянуть фигуру и всегда выглядеть потрясающе: в нашем каталоге представлено большое разнообразие спортивных секций по аква-аэробике, пилатесу, фитнесу, в том числе для молодых мам и беременных, а также тренажерные залы, Спортклубы с бассейнами &ndash; то, что нужно для полного избавления от стрессов: в каталоге вы найдете бассейны по своему вкусу &ndash; крытые или открытые, Спортивные игры &ndash; раздел нашего сайта, который наверняка заинтересует любителей оздоровиться и насладиться игрой в баскетбол, бадминтон, пляжный или классический волейбол, хоккей, пинг-понг, керлинг, гольф и, конечно, футбол. К вашим услугам огромный выбор спортклубов, предлагающих посетителям поиграть в эти и другие спортивные игры, Танцы &ndash; для вашего удобства все спортивные танцевальные секции сгруппированы по танцевальным направлениям: латина, go-go, R&amp;B, бальные, клубные, хореография и многие другие; здесь же вы найдете спортивные танцевальные секции для детей, Активный отдых &ndash; то, что нужно для полного расслабления и восстановления сил! В этой категории любители острых ощущений и не только найдут информацию о парашютном спорте, велотрассах, роллердромах, скалодромах, скейтпарках, паркуре и полетах на шаре в Москве. С нами выбор спортивного клуба или секции в Москве &ndash; сплошное удовольствие!</span></p>\n', 0, 'on'),
(56, 'Единоборства', 'Единоборства', 'Единоборства1', 'edinoborstvaa', '584e049bf5f0610f0918139c9a7270ea.png', 'ca7ef2004ffb357de189dc48734bfd81.jpg', '5df20f2e456705a916602dadf3d6870e.png', '', '', '', '<p>dasdas</p>\r\n', 1, 'on'),
(57, 'Активный отдых', 'вфывыфв', '', 'aktivnyj_otdyh', '9b1f2de2704ed0e2312d0a5053affa05.png', '2517551ff51f3f1bd94b801fd1f0ac6a.jpg', '67692f50c3395cd1414392bdc663f0fb.png', '', '', '', '', 0, 'on'),
(58, 'Бассейны', 'выфвфы', 'выфвфы', 'bassejny', '2e2c2b3fd12a0dd0156ee040168c9c02.png', 'a5c9bf021581dbc7e667339dfed21aca.jpg', 'c7254a6077c4d45a5f6bafdf6e3b4ff1.png', '', '', '', '', 0, 'on'),
(59, 'Спортивные игры', 'dasd', '', 'sportivnye_igry', 'a44517d81303ae02dd889140d770797b.png', 'fa00f9ccc0cd7eb60b229720832eaf2c.jpg', '5f2a042d48368242d740d3d875ae15b5.png', '', '', '', '', 0, 'on'),
(60, 'Танцы', 'dasdas', 'вфывыф', 'tancy', '30ca7e2f783bb84fd95222651a34499c.png', 'f5f06ef8e0173cfb10d7e5b4b99c8808.jpg', 'e110f86c48cc589a95c9c0f7dee80a90.png', '', '', '', '', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `email`
--

DROP TABLE IF EXISTS `email`;
CREATE TABLE IF NOT EXISTS `email` (
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `email`
--

INSERT INTO `email` (`email`) VALUES
('protected.for@gmail.com');

-- --------------------------------------------------------

--
-- Структура таблицы `feedback`
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
-- Дамп данных таблицы `feedback`
--

INSERT INTO `feedback` (`id`, `name`, `email`, `phone`, `theme`, `msg`, `date`, `ip`, `read`) VALUES
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
-- Структура таблицы `maintext`
--

DROP TABLE IF EXISTS `maintext`;
CREATE TABLE IF NOT EXISTS `maintext` (
  `text` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `maintext`
--

INSERT INTO `maintext` (`text`) VALUES
('<p><span style="color:rgb(0, 0, 0); font-family:rbcgrotesk-regular; font-size:14px">Современные секции единоборств - это огромный выбор различных видов борьбы. Если вы мечтаете о крепких кулаках, тогда можно записаться в секцию бокса, если ваша цель крепкие ноги &ndash; тхэквондо и т.д. Не зависимо от выбранногонаправления всегда необходимо ориентироваться на опыт, профессионализм тренера. Именно от его навыков и умения донести ученикам основы и азы боевого искусства зависит эффективность занятий.Польза или вред при посещении школы единоборств?</span></p>\r\n');

-- --------------------------------------------------------

--
-- Структура таблицы `news`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=40 ;

--
-- Дамп данных таблицы `news`
--

INSERT INTO `news` (`id`, `name`, `url`, `text`, `date`, `title`, `desc`, `keyw`, `image`, `category_id`, `order`, `views`, `active`) VALUES
(32, '12312312312312312312312', '12312312312312312312312', '', '2015-02-24 23:12:00', '', '', '', '8ebf239d559ceeb1e1fc87dfb69a6f42.jpg', 0, 0, 0, 'on'),
(33, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 13, 'on'),
(34, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on'),
(35, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on'),
(36, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on'),
(37, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on'),
(38, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on'),
(39, '132мсчавырвоы к ыпыпы', '132mschavyrvoy_k_ypypy', '', '2015-03-26 23:15:00', '', '', '', '74ac4363f7ce62adf164aff8b18ead53.jpg', 0, 0, 3, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `news_categories`
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
-- Дамп данных таблицы `news_categories`
--

INSERT INTO `news_categories` (`id`, `name`, `order`, `active`) VALUES
(1, 'Футбол', 0, 'on'),
(2, 'Воллейбол', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_acl_groups`
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
-- Дамп данных таблицы `phpbb_acl_groups`
--

INSERT INTO `phpbb_acl_groups` (`group_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
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
-- Структура таблицы `phpbb_acl_options`
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
-- Дамп данных таблицы `phpbb_acl_options`
--

INSERT INTO `phpbb_acl_options` (`auth_option_id`, `auth_option`, `is_global`, `is_local`, `founder_only`) VALUES
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
-- Структура таблицы `phpbb_acl_roles`
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
-- Дамп данных таблицы `phpbb_acl_roles`
--

INSERT INTO `phpbb_acl_roles` (`role_id`, `role_name`, `role_description`, `role_type`, `role_order`) VALUES
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
-- Структура таблицы `phpbb_acl_roles_data`
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
-- Дамп данных таблицы `phpbb_acl_roles_data`
--

INSERT INTO `phpbb_acl_roles_data` (`role_id`, `auth_option_id`, `auth_setting`) VALUES
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
-- Структура таблицы `phpbb_acl_users`
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
-- Дамп данных таблицы `phpbb_acl_users`
--

INSERT INTO `phpbb_acl_users` (`user_id`, `forum_id`, `auth_option_id`, `auth_role_id`, `auth_setting`) VALUES
(2, 0, 0, 5, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_attachments`
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
-- Структура таблицы `phpbb_banlist`
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
-- Структура таблицы `phpbb_bbcodes`
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
-- Структура таблицы `phpbb_bookmarks`
--

DROP TABLE IF EXISTS `phpbb_bookmarks`;
CREATE TABLE IF NOT EXISTS `phpbb_bookmarks` (
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`topic_id`,`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_bots`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=46 ;

--
-- Дамп данных таблицы `phpbb_bots`
--

INSERT INTO `phpbb_bots` (`bot_id`, `bot_active`, `bot_name`, `user_id`, `bot_agent`, `bot_ip`) VALUES
(1, 1, 'AdsBot [Google]', 3, 'AdsBot-Google', ''),
(2, 1, 'Alexa [Bot]', 4, 'ia_archiver', ''),
(3, 1, 'Alta Vista [Bot]', 5, 'Scooter/', ''),
(4, 1, 'Ask Jeeves [Bot]', 6, 'Ask Jeeves', ''),
(5, 1, 'Baidu [Spider]', 7, 'Baiduspider', ''),
(6, 1, 'Bing [Bot]', 8, 'bingbot/', ''),
(7, 1, 'Exabot [Bot]', 9, 'Exabot', ''),
(8, 1, 'FAST Enterprise [Crawler]', 10, 'FAST Enterprise Crawler', ''),
(9, 1, 'FAST WebCrawler [Crawler]', 11, 'FAST-WebCrawler/', ''),
(10, 1, 'Francis [Bot]', 12, 'http://www.neomo.de/', ''),
(11, 1, 'Gigabot [Bot]', 13, 'Gigabot/', ''),
(12, 1, 'Google Adsense [Bot]', 14, 'Mediapartners-Google', ''),
(13, 1, 'Google Desktop', 15, 'Google Desktop', ''),
(14, 1, 'Google Feedfetcher', 16, 'Feedfetcher-Google', ''),
(15, 1, 'Google [Bot]', 17, 'Googlebot', ''),
(16, 1, 'Heise IT-Markt [Crawler]', 18, 'heise-IT-Markt-Crawler', ''),
(17, 1, 'Heritrix [Crawler]', 19, 'heritrix/1.', ''),
(18, 1, 'IBM Research [Bot]', 20, 'ibm.com/cs/crawler', ''),
(19, 1, 'ICCrawler - ICjobs', 21, 'ICCrawler - ICjobs', ''),
(20, 1, 'ichiro [Crawler]', 22, 'ichiro/', ''),
(21, 1, 'Majestic-12 [Bot]', 23, 'MJ12bot/', ''),
(22, 1, 'Metager [Bot]', 24, 'MetagerBot/', ''),
(23, 1, 'MSN NewsBlogs', 25, 'msnbot-NewsBlogs/', ''),
(24, 1, 'MSN [Bot]', 26, 'msnbot/', ''),
(25, 1, 'MSNbot Media', 27, 'msnbot-media/', ''),
(26, 1, 'Nutch [Bot]', 28, 'http://lucene.apache.org/nutch/', ''),
(27, 1, 'Online link [Validator]', 29, 'online link validator', ''),
(28, 1, 'psbot [Picsearch]', 30, 'psbot/0', ''),
(29, 1, 'Sensis [Crawler]', 31, 'Sensis Web Crawler', ''),
(30, 1, 'SEO Crawler', 32, 'SEO search Crawler/', ''),
(31, 1, 'Seoma [Crawler]', 33, 'Seoma [SEO Crawler]', ''),
(32, 1, 'SEOSearch [Crawler]', 34, 'SEOsearch/', ''),
(33, 1, 'Snappy [Bot]', 35, 'Snappy/1.1 ( http://www.urltrends.com/ )', ''),
(34, 1, 'Steeler [Crawler]', 36, 'http://www.tkl.iis.u-tokyo.ac.jp/~crawler/', ''),
(35, 1, 'Telekom [Bot]', 37, 'crawleradmin.t-info@telekom.de', ''),
(36, 1, 'TurnitinBot [Bot]', 38, 'TurnitinBot/', ''),
(37, 1, 'Voyager [Bot]', 39, 'voyager/', ''),
(38, 1, 'W3 [Sitesearch]', 40, 'W3 SiteSearch Crawler', ''),
(39, 1, 'W3C [Linkcheck]', 41, 'W3C-checklink/', ''),
(40, 1, 'W3C [Validator]', 42, 'W3C_Validator', ''),
(41, 1, 'YaCy [Bot]', 43, 'yacybot', ''),
(42, 1, 'Yahoo MMCrawler [Bot]', 44, 'Yahoo-MMCrawler/', ''),
(43, 1, 'Yahoo Slurp [Bot]', 45, 'Yahoo! DE Slurp', ''),
(44, 1, 'Yahoo [Bot]', 46, 'Yahoo! Slurp', ''),
(45, 1, 'YahooSeeker [Bot]', 47, 'YahooSeeker/', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_config`
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
-- Дамп данных таблицы `phpbb_config`
--

INSERT INTO `phpbb_config` (`config_name`, `config_value`, `is_dynamic`) VALUES
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
('cache_last_gc', '1424982949', 1),
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
('database_last_gc', '1423885834', 1),
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
('fulltext_sphinx_id', 'f8eb0c0ad3c74f7d', 0),
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
('newest_user_id', '57', 1),
('newest_username', 'murat', 1),
('num_files', '0', 1),
('num_posts', '1', 1),
('num_topics', '1', 1),
('num_users', '10', 1),
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
('rand_seed', '6599e66e14e05df4168c612a093e5baf', 1),
('rand_seed_last_update', '1424982945', 1),
('ranks_path', 'images/ranks', 0),
('read_notification_expire_days', '30', 0),
('read_notification_gc', '86400', 0),
('read_notification_last_gc', '1423885846', 1),
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
('search_last_gc', '1424975331', 1),
('search_store_results', '1800', 0),
('search_type', '\\phpbb\\search\\fulltext_native', 0),
('secure_allow_deny', '1', 0),
('secure_allow_empty_referer', '1', 0),
('secure_downloads', '0', 0),
('server_name', 'jeisport', 0),
('server_port', '80', 0),
('server_protocol', 'http://', 0),
('session_gc', '3600', 0),
('session_last_gc', '1424976342', 1),
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
('warnings_last_gc', '1424975334', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_config_text`
--

DROP TABLE IF EXISTS `phpbb_config_text`;
CREATE TABLE IF NOT EXISTS `phpbb_config_text` (
  `config_name` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `config_value` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`config_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_config_text`
--

INSERT INTO `phpbb_config_text` (`config_name`, `config_value`) VALUES
('contact_admin_info', ''),
('contact_admin_info_bitfield', ''),
('contact_admin_info_flags', '7'),
('contact_admin_info_uid', '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_confirm`
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
-- Дамп данных таблицы `phpbb_confirm`
--

INSERT INTO `phpbb_confirm` (`confirm_id`, `session_id`, `confirm_type`, `code`, `seed`, `attempts`) VALUES
('18c21da62b874dae2dd5b94921d3d23e', '4f2dcf7b1b491989ff3f292f39a36fd0', 1, '75YS', 554738469, 0),
('ddb86c37fad5489b95901c3cabcb4b20', 'bc0c027a7e408077b1a50dacf4bf29fb', 1, '1WHF', 1175694164, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_disallow`
--

DROP TABLE IF EXISTS `phpbb_disallow`;
CREATE TABLE IF NOT EXISTS `phpbb_disallow` (
  `disallow_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `disallow_username` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`disallow_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_drafts`
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
-- Структура таблицы `phpbb_ext`
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
-- Структура таблицы `phpbb_extensions`
--

DROP TABLE IF EXISTS `phpbb_extensions`;
CREATE TABLE IF NOT EXISTS `phpbb_extensions` (
  `extension_id` mediumint(8) unsigned NOT NULL AUTO_INCREMENT,
  `group_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `extension` varchar(100) COLLATE utf8_bin NOT NULL DEFAULT '',
  PRIMARY KEY (`extension_id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=67 ;

--
-- Дамп данных таблицы `phpbb_extensions`
--

INSERT INTO `phpbb_extensions` (`extension_id`, `group_id`, `extension`) VALUES
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
-- Структура таблицы `phpbb_extension_groups`
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
-- Дамп данных таблицы `phpbb_extension_groups`
--

INSERT INTO `phpbb_extension_groups` (`group_id`, `group_name`, `cat_id`, `allow_group`, `download_mode`, `upload_icon`, `max_filesize`, `allowed_forums`, `allow_in_pm`) VALUES
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
-- Структура таблицы `phpbb_forums`
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
-- Дамп данных таблицы `phpbb_forums`
--

INSERT INTO `phpbb_forums` (`forum_id`, `parent_id`, `left_id`, `right_id`, `forum_parents`, `forum_name`, `forum_desc`, `forum_desc_bitfield`, `forum_desc_options`, `forum_desc_uid`, `forum_link`, `forum_password`, `forum_style`, `forum_image`, `forum_rules`, `forum_rules_link`, `forum_rules_bitfield`, `forum_rules_options`, `forum_rules_uid`, `forum_topics_per_page`, `forum_type`, `forum_status`, `forum_last_post_id`, `forum_last_poster_id`, `forum_last_post_subject`, `forum_last_post_time`, `forum_last_poster_name`, `forum_last_poster_colour`, `forum_flags`, `display_on_index`, `enable_indexing`, `enable_icons`, `enable_prune`, `prune_next`, `prune_days`, `prune_viewed`, `prune_freq`, `display_subforum_list`, `forum_options`, `forum_posts_approved`, `forum_posts_unapproved`, `forum_posts_softdeleted`, `forum_topics_approved`, `forum_topics_unapproved`, `forum_topics_softdeleted`, `enable_shadow_prune`, `prune_shadow_days`, `prune_shadow_freq`, `prune_shadow_next`) VALUES
(1, 0, 1, 4, '', 'Категория', '', '', 7, '', '', '', 1, '', '', '', '', 7, '', 0, 0, 0, 1, 2, '', 1418454675, 'admin', 'AA0000', 32, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0, 0, 7, 1, 0),
(2, 1, 2, 3, 'a:1:{i:1;a:2:{i:0;s:18:"Категория";i:1;i:0;}}', 'Ваш первый форум', 'описание первого форума', '', 7, '', '', '', 0, '', '', '', '', 7, '', 0, 1, 0, 1, 2, 'Welcome to phpBB3', 1418454675, 'admin', 'AA0000', 48, 1, 1, 1, 0, 0, 0, 0, 0, 1, 0, 1, 0, 0, 1, 0, 0, 0, 7, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_forums_access`
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
-- Структура таблицы `phpbb_forums_track`
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
-- Структура таблицы `phpbb_forums_watch`
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
-- Структура таблицы `phpbb_groups`
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
-- Дамп данных таблицы `phpbb_groups`
--

INSERT INTO `phpbb_groups` (`group_id`, `group_type`, `group_founder_manage`, `group_skip_auth`, `group_name`, `group_desc`, `group_desc_bitfield`, `group_desc_options`, `group_desc_uid`, `group_display`, `group_avatar`, `group_avatar_type`, `group_avatar_width`, `group_avatar_height`, `group_rank`, `group_colour`, `group_sig_chars`, `group_receive_pm`, `group_message_limit`, `group_legend`, `group_max_recipients`) VALUES
(1, 3, 0, 0, 'GUESTS', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(2, 3, 0, 0, 'REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(3, 3, 0, 0, 'REGISTERED_COPPA', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5),
(4, 3, 0, 0, 'GLOBAL_MODERATORS', '', '', 7, '', 0, '', '', 0, 0, 0, '00AA00', 0, 0, 0, 2, 0),
(5, 3, 1, 0, 'ADMINISTRATORS', '', '', 7, '', 0, '', '', 0, 0, 0, 'AA0000', 0, 0, 0, 1, 0),
(6, 3, 0, 0, 'BOTS', '', '', 7, '', 0, '', '', 0, 0, 0, '9E8DA7', 0, 0, 0, 0, 5),
(7, 3, 0, 0, 'NEWLY_REGISTERED', '', '', 7, '', 0, '', '', 0, 0, 0, '', 0, 0, 0, 0, 5);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_icons`
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
-- Дамп данных таблицы `phpbb_icons`
--

INSERT INTO `phpbb_icons` (`icons_id`, `icons_url`, `icons_width`, `icons_height`, `icons_order`, `display_on_posting`) VALUES
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
-- Структура таблицы `phpbb_lang`
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
-- Дамп данных таблицы `phpbb_lang`
--

INSERT INTO `phpbb_lang` (`lang_id`, `lang_iso`, `lang_dir`, `lang_english_name`, `lang_local_name`, `lang_author`) VALUES
(1, 'en', 'en', 'British English', 'British English', 'phpBB Limited'),
(2, 'ru', 'ru', 'Russian', 'Русский', 'rxu');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_log`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=25 ;

--
-- Дамп данных таблицы `phpbb_log`
--

INSERT INTO `phpbb_log` (`log_id`, `log_type`, `user_id`, `forum_id`, `topic_id`, `reportee_id`, `log_ip`, `log_time`, `log_operation`, `log_data`) VALUES
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
(23, 0, 2, 0, 0, 0, '127.0.0.1', 1423885867, 'LOG_ADMIN_AUTH_SUCCESS', ''),
(24, 0, 2, 0, 0, 0, '127.0.0.1', 1423886024, 'LOG_FORUM_EDIT', 'a:1:{i:0;s:18:"Категория";}');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_login_attempts`
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
-- Структура таблицы `phpbb_migrations`
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
-- Дамп данных таблицы `phpbb_migrations`
--

INSERT INTO `phpbb_migrations` (`migration_name`, `migration_depends_on`, `migration_schema_done`, `migration_data_done`, `migration_data_state`, `migration_start_time`, `migration_end_time`) VALUES
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
-- Структура таблицы `phpbb_moderator_cache`
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
-- Структура таблицы `phpbb_modules`
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
-- Дамп данных таблицы `phpbb_modules`
--

INSERT INTO `phpbb_modules` (`module_id`, `module_enabled`, `module_display`, `module_basename`, `module_class`, `parent_id`, `left_id`, `right_id`, `module_langname`, `module_mode`, `module_auth`) VALUES
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
-- Структура таблицы `phpbb_notifications`
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
-- Структура таблицы `phpbb_notification_types`
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
-- Структура таблицы `phpbb_oauth_accounts`
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
-- Структура таблицы `phpbb_oauth_tokens`
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
-- Структура таблицы `phpbb_poll_options`
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
-- Структура таблицы `phpbb_poll_votes`
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
-- Структура таблицы `phpbb_posts`
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
-- Дамп данных таблицы `phpbb_posts`
--

INSERT INTO `phpbb_posts` (`post_id`, `topic_id`, `forum_id`, `poster_id`, `icon_id`, `poster_ip`, `post_time`, `post_reported`, `enable_bbcode`, `enable_smilies`, `enable_magic_url`, `enable_sig`, `post_username`, `post_subject`, `post_text`, `post_checksum`, `post_attachment`, `bbcode_bitfield`, `bbcode_uid`, `post_postcount`, `post_edit_time`, `post_edit_reason`, `post_edit_user`, `post_edit_count`, `post_edit_locked`, `post_visibility`, `post_delete_time`, `post_delete_reason`, `post_delete_user`) VALUES
(1, 1, 2, 2, 0, '127.0.0.1', 1418454675, 0, 1, 1, 1, 1, '', 'Welcome to phpBB3', 'This is an example post in your phpBB3 installation. Everything seems to be working. You may delete this post if you like and continue to set up your board. During the installation process your first category and your first forum are assigned an appropriate set of permissions for the predefined usergroups administrators, bots, global moderators, guests, registered users and registered COPPA users. If you also choose to delete your first category and your first forum, do not forget to assign permissions for all these usergroups for all new categories and forums you create. It is recommended to rename your first category and your first forum and copy permissions from these while creating new categories and forums. Have fun!', '5dd683b17f641daf84c040bfefc58ce9', 0, '', '', 1, 0, '', 0, 0, 0, 1, 0, '', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_privmsgs`
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
-- Структура таблицы `phpbb_privmsgs_folder`
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
-- Структура таблицы `phpbb_privmsgs_rules`
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
-- Структура таблицы `phpbb_privmsgs_to`
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
-- Структура таблицы `phpbb_profile_fields`
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
-- Дамп данных таблицы `phpbb_profile_fields`
--

INSERT INTO `phpbb_profile_fields` (`field_id`, `field_name`, `field_type`, `field_ident`, `field_length`, `field_minlen`, `field_maxlen`, `field_novalue`, `field_default_value`, `field_validation`, `field_required`, `field_show_on_reg`, `field_hide`, `field_no_view`, `field_active`, `field_order`, `field_show_profile`, `field_show_on_vt`, `field_show_novalue`, `field_show_on_pm`, `field_show_on_ml`, `field_is_contact`, `field_contact_desc`, `field_contact_url`) VALUES
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
-- Структура таблицы `phpbb_profile_fields_data`
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
-- Структура таблицы `phpbb_profile_fields_lang`
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
-- Структура таблицы `phpbb_profile_lang`
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
-- Дамп данных таблицы `phpbb_profile_lang`
--

INSERT INTO `phpbb_profile_lang` (`field_id`, `lang_id`, `lang_name`, `lang_explain`, `lang_default_value`) VALUES
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
-- Структура таблицы `phpbb_ranks`
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
-- Дамп данных таблицы `phpbb_ranks`
--

INSERT INTO `phpbb_ranks` (`rank_id`, `rank_title`, `rank_min`, `rank_special`, `rank_image`) VALUES
(1, 'Site Admin', 0, 1, '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_reports`
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
-- Структура таблицы `phpbb_reports_reasons`
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
-- Дамп данных таблицы `phpbb_reports_reasons`
--

INSERT INTO `phpbb_reports_reasons` (`reason_id`, `reason_title`, `reason_description`, `reason_order`) VALUES
(1, 'warez', 'The post contains links to illegal or pirated software.', 1),
(2, 'spam', 'The reported post has the only purpose to advertise for a website or another product.', 2),
(3, 'off_topic', 'The reported post is off topic.', 3),
(4, 'other', 'The reported post does not fit into any other category, please use the further information field.', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_results`
--

DROP TABLE IF EXISTS `phpbb_search_results`;
CREATE TABLE IF NOT EXISTS `phpbb_search_results` (
  `search_key` varchar(32) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_time` int(11) unsigned NOT NULL DEFAULT '0',
  `search_keywords` mediumtext COLLATE utf8_bin NOT NULL,
  `search_authors` mediumtext COLLATE utf8_bin NOT NULL,
  PRIMARY KEY (`search_key`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_search_wordlist`
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
-- Дамп данных таблицы `phpbb_search_wordlist`
--

INSERT INTO `phpbb_search_wordlist` (`word_id`, `word_text`, `word_common`, `word_count`) VALUES
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
-- Структура таблицы `phpbb_search_wordmatch`
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
-- Дамп данных таблицы `phpbb_search_wordmatch`
--

INSERT INTO `phpbb_search_wordmatch` (`post_id`, `word_id`, `title_match`) VALUES
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
-- Структура таблицы `phpbb_sessions`
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
-- Дамп данных таблицы `phpbb_sessions`
--

INSERT INTO `phpbb_sessions` (`session_id`, `session_user_id`, `session_last_visit`, `session_start`, `session_time`, `session_ip`, `session_browser`, `session_forwarded_for`, `session_page`, `session_viewonline`, `session_autologin`, `session_admin`, `session_forum_id`) VALUES
('4f2dcf7b1b491989ff3f292f39a36fd0', 1, 1424975330, 1424975330, 1424975335, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'ucp.php?confirm_id=18c21da62b874dae2dd5b94921d3d23e&mode=confirm&type=1', 1, 0, 0, 0),
('73561524ba4f1bf583cfc9342ab161a5', 1, 1424982944, 1424982944, 1424982944, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'index.php', 1, 0, 0, 0),
('bc0c027a7e408077b1a50dacf4bf29fb', 1, 1424976341, 1424976341, 1424976341, '127.0.0.1', 'Mozilla/5.0 (Windows NT 6.1; WOW64) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/40.0.2214.115 Safari/537.36', '', 'ucp.php?confirm_id=ddb86c37fad5489b95901c3cabcb4b20&mode=confirm&type=1', 1, 0, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_sessions_keys`
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
-- Дамп данных таблицы `phpbb_sessions_keys`
--

INSERT INTO `phpbb_sessions_keys` (`key_id`, `user_id`, `last_ip`, `last_login`) VALUES
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
-- Структура таблицы `phpbb_sitelist`
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
-- Структура таблицы `phpbb_smilies`
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
-- Дамп данных таблицы `phpbb_smilies`
--

INSERT INTO `phpbb_smilies` (`smiley_id`, `code`, `emotion`, `smiley_url`, `smiley_width`, `smiley_height`, `smiley_order`, `display_on_posting`) VALUES
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
-- Структура таблицы `phpbb_styles`
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
-- Дамп данных таблицы `phpbb_styles`
--

INSERT INTO `phpbb_styles` (`style_id`, `style_name`, `style_copyright`, `style_active`, `style_path`, `bbcode_bitfield`, `style_parent_id`, `style_parent_tree`) VALUES
(1, 'prosilver', '&copy; phpBB Limited', 1, 'prosilver', 'kNg=', 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_teampage`
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
-- Дамп данных таблицы `phpbb_teampage`
--

INSERT INTO `phpbb_teampage` (`teampage_id`, `group_id`, `teampage_name`, `teampage_position`, `teampage_parent`) VALUES
(1, 5, '', 1, 0),
(2, 4, '', 2, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics`
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
-- Дамп данных таблицы `phpbb_topics`
--

INSERT INTO `phpbb_topics` (`topic_id`, `forum_id`, `icon_id`, `topic_attachment`, `topic_reported`, `topic_title`, `topic_poster`, `topic_time`, `topic_time_limit`, `topic_views`, `topic_status`, `topic_type`, `topic_first_post_id`, `topic_first_poster_name`, `topic_first_poster_colour`, `topic_last_post_id`, `topic_last_poster_id`, `topic_last_poster_name`, `topic_last_poster_colour`, `topic_last_post_subject`, `topic_last_post_time`, `topic_last_view_time`, `topic_moved_id`, `topic_bumped`, `topic_bumper`, `poll_title`, `poll_start`, `poll_length`, `poll_max_options`, `poll_last_vote`, `poll_vote_change`, `topic_visibility`, `topic_delete_time`, `topic_delete_reason`, `topic_delete_user`, `topic_posts_approved`, `topic_posts_unapproved`, `topic_posts_softdeleted`) VALUES
(1, 2, 0, 0, 0, 'Welcome to phpBB3', 2, 1418454675, 0, 2, 0, 0, 1, 'admin', 'AA0000', 1, 2, 'admin', 'AA0000', 'Welcome to phpBB3', 1418454675, 1423241977, 0, 0, 0, '', 0, 0, 1, 0, 0, 1, 0, '', 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics_posted`
--

DROP TABLE IF EXISTS `phpbb_topics_posted`;
CREATE TABLE IF NOT EXISTS `phpbb_topics_posted` (
  `user_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_id` mediumint(8) unsigned NOT NULL DEFAULT '0',
  `topic_posted` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`user_id`,`topic_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

--
-- Дамп данных таблицы `phpbb_topics_posted`
--

INSERT INTO `phpbb_topics_posted` (`user_id`, `topic_id`, `topic_posted`) VALUES
(2, 1, 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_topics_track`
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
-- Структура таблицы `phpbb_topics_watch`
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
-- Структура таблицы `phpbb_users`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 COLLATE=utf8_bin AUTO_INCREMENT=58 ;

--
-- Дамп данных таблицы `phpbb_users`
--

INSERT INTO `phpbb_users` (`user_id`, `user_type`, `group_id`, `user_permissions`, `user_perm_from`, `user_ip`, `user_regdate`, `username`, `username_clean`, `user_password`, `user_passchg`, `user_email`, `user_email_hash`, `user_birthday`, `user_lastvisit`, `user_lastmark`, `user_lastpost_time`, `user_lastpage`, `user_last_confirm_key`, `user_last_search`, `user_warnings`, `user_last_warning`, `user_login_attempts`, `user_inactive_reason`, `user_inactive_time`, `user_posts`, `user_lang`, `user_timezone`, `user_dateformat`, `user_style`, `user_rank`, `user_colour`, `user_new_privmsg`, `user_unread_privmsg`, `user_last_privmsg`, `user_message_rules`, `user_full_folder`, `user_emailtime`, `user_topic_show_days`, `user_topic_sortby_type`, `user_topic_sortby_dir`, `user_post_show_days`, `user_post_sortby_type`, `user_post_sortby_dir`, `user_notify`, `user_notify_pm`, `user_notify_type`, `user_allow_pm`, `user_allow_viewonline`, `user_allow_viewemail`, `user_allow_massemail`, `user_options`, `user_avatar`, `user_avatar_type`, `user_avatar_width`, `user_avatar_height`, `user_sig`, `user_sig_bbcode_uid`, `user_sig_bbcode_bitfield`, `user_jabber`, `user_actkey`, `user_newpasswd`, `user_form_salt`, `user_new`, `user_reminded`, `user_reminded_time`) VALUES
(1, 2, 1, '00000000000w27wrgg\ni1cjyo000000\ni1cjyo000000', 0, '', 1418454675, 'Anonymous', 'anonymous', '', 0, '', 0, '', 0, 0, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'en', '', 'd M Y H:i', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 0, 230271, '', '', 0, 0, '', '', '', '', '', '', '97843500a72ad004', 1, 0, 0),
(2, 3, 5, 'zik0zjzik0zjzik0zc\ni1cjyo000000\nzik0zjzi8sg0', 0, '127.0.0.1', 1418454675, 'admin', 'admin', '$2y$10$obXAkj6EoWu7ggCb4ssZZeCxBYjMDU2lDJ2ZlmLRvRVuOWJMV.YXS', 0, 'jt4twggad34erzdsf@hotmail.com', 13310010827, '', 1424192718, 0, 0, 'ucp.php?login=external&mode=login&password=qaz2wsx&redirect=%2F&username=admin', '', 0, 0, 0, 0, 0, 0, 1, 'en', '', 'D M d, Y g:i a', 1, 1, 'AA0000', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '03f5814c9da749c0', 1, 0, 0),
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
(49, 0, 2, '', 0, '127.0.0.1', 1418551724, 'jhsdgasdg', 'jhsdgasdg', '$2y$10$po7mB6dbPMGRpo4GkXmZQ.domMBKkOppCjaD2k2d1KfzGs.LyuQBK', 1418551724, 'jhsdgasdg@mail.ru', 398765278017, '', 1418551839, 1418551724, 0, 'viewforum.php?f=2', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '3d713f9d2162ddd0', 1, 0, 0),
(50, 0, 2, '', 0, '127.0.0.1', 1418552035, 'resagr', 'resagr', '$2y$10$Xh/s3e41vRpc.hheUgR8oO3Yo8eMBiB4XqiKCN9iIR2QBUadPaSjW', 1418552035, '54uhtsrsrht@namba.kg', 406198964720, '', 0, 1418552035, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '4d2b4f366772d2a8', 1, 0, 0),
(51, 0, 2, '', 0, '127.0.0.1', 1418552189, 'dizufghjka', 'dizufghjka', '$2y$10$ojHMZdFTNkwxQJ5V6P8m4O8mz5cFNAPmdcetFaO3wvnIgDGbfyzum', 1418552189, 'dizufghjka@gmail.com', 14981037020, '', 0, 1418552189, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e75b8bf81861d0cd', 1, 0, 0),
(52, 0, 2, '', 0, '127.0.0.1', 1418561617, 'protected', 'protected', '$2y$10$7Xa55trKvXpzEvXnOR.FiOPOIrqqmX8TzABQpfOK5UGYW5qlXCFo.', 1418561617, 'protected.for@gmail.com', 389024239523, '', 1418561745, 1418561617, 0, 'index.php', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Antarctica/Vostok', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '6a29e124ff5c8768', 1, 0, 0),
(53, 0, 2, '', 0, '127.0.0.1', 1418561867, 'andry', 'andry', '$2y$10$E/5hpnEgltf/Iwr.QDkGcun0YSSh6itIedKqaeBQZRel9c.YNz6ey', 1418561867, 'protected_by@mail.ru', 256812957320, '', 1418581697, 1418561867, 0, 'index.php', '', 0, 0, 0, 3, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'e73d571faa18321a', 1, 0, 0),
(54, 0, 2, '', 0, '127.0.0.1', 1418582399, 'login123', 'login123', '$2y$10$j87fWJPG7r7c8dZlNPTdNucOTfOtTEvd3sVKrLYqD6kuhE9l7iJla', 1418582399, 'email@mail.ru', 118448467813, '', 1418637404, 1418582399, 0, 'ucp.php?login=external&mode=login&password=pass123&redirect=%2F&username=login123', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '5b644e08b2af59f8', 1, 0, 0),
(55, 0, 2, '', 0, '127.0.0.1', 1423236566, '123', '123', '$2y$10$fqE5tcXiKnqpLFlplxPwwenxAahuwBrV2Z.1oYV0DYOihG6Mxh9Da', 1423236566, '123@123.ru', 353749127910, '', 1423465914, 1423236566, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=123', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'd455b94923f7633f', 1, 0, 0),
(56, 0, 2, '', 0, '127.0.0.1', 1423236849, 'asd', 'asd', '$2y$10$QQeYtnGyKuY/pFC6MBYou.580WhvpfJurKOGvXFeIReiYxzYt77wG', 1423236849, 'asd@asd.ru', 325484148110, '', 0, 1423236849, 0, '', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', 'cb1ffdbcd04e04bb', 1, 0, 0),
(57, 0, 2, '', 0, '127.0.0.1', 1423466070, 'murat', 'murat', '$2y$10$eA5qQvfH0Oq5guuc5lxwgufwIY0O2FmXs/ic1cY8bsy40ZVwqFS42', 1423466070, 'asmuratbek@gmail.com', 240825792220, '', 1423863024, 1423466070, 0, 'ucp.php?login=external&mode=login&password=123123&redirect=%2F&username=murat', '', 0, 0, 0, 0, 0, 0, 0, 'ru', 'Asia/Bishkek', 'D M d, Y g:i a', 1, 0, '', 0, 0, 0, 0, -3, 0, 0, 't', 'd', 0, 't', 'a', 0, 1, 0, 1, 1, 1, 1, 230271, '', '', 0, 0, '', '', '', '', '', '', '0fee948f6caedbac', 1, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_user_group`
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
-- Дамп данных таблицы `phpbb_user_group`
--

INSERT INTO `phpbb_user_group` (`group_id`, `user_id`, `group_leader`, `user_pending`) VALUES
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
(7, 57, 0, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_user_notifications`
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
-- Дамп данных таблицы `phpbb_user_notifications`
--

INSERT INTO `phpbb_user_notifications` (`item_type`, `item_id`, `user_id`, `method`, `notify`) VALUES
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
('notification.type.topic', 0, 57, 'notification.method.email', 1);

-- --------------------------------------------------------

--
-- Структура таблицы `phpbb_warnings`
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
-- Структура таблицы `phpbb_words`
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
-- Структура таблицы `phpbb_zebra`
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
-- Дамп данных таблицы `phpbb_zebra`
--

INSERT INTO `phpbb_zebra` (`user_id`, `zebra_id`, `friend`, `foe`) VALUES
(54, 2, 1, 0);

-- --------------------------------------------------------

--
-- Структура таблицы `points`
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
  `price_list` varchar(255) NOT NULL,
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=68 ;

--
-- Дамп данных таблицы `points`
--

INSERT INTO `points` (`id`, `name`, `order`, `active`, `payed`, `url`, `header`, `title`, `desc`, `keyw`, `image`, `price_list`, `sport_id`, `subway1_id`, `time1`, `subway2_id`, `time2`, `contacts`, `phone`, `email`, `admemail`, `site`, `graphite`, `text`, `payedf`, `payedt`, `coords`, `youtube`, `price_year`, `price_6months`, `price_month`) VALUES
(39, 'Международный центр исторического фехтования', 0, 'on', '0', 'dasda', '0', 'Международный центр исторического фехтования', 'Международный центр исторического фехтования "Эскалибур"', 'Международный центр исторического фехтования "Эскалибур"', '2e0f6fab16323115a7be7a0ffebc1d9b.jpg', '', 23, '0', 6, '1', 4, 'Москва, ул. Шарикопошниковская, д. 17', '+798512313', 'protected.for@gmail.com', 'asd@das.rudsa', 'excalibur-center.ru', 'Каждый день с 6 утра до 12 ночи', '<p>Фитнес-клуб &laquo;Мультиспорт&raquo; &ndash; это действительно мультикоктейль, состоящий из всех возможных радостей фитнес-жизни и сопутствующих развлечений. Очень удачное расположение, недалеко от комплекса &laquo;Лужники&raquo;, позволяет задействовать для занятий не только помещения фитнес-клуба, но и все прилегающее пространство.</p>\r\n\r\n<h6>К услугам гостей клуба:</h6>\r\n\r\n<ul>\r\n	<li>&mdash; тренажерные залы;</li>\r\n	<li>&mdash; залы групповых программ;</li>\r\n	<li>&mdash; единоборства;</li>\r\n	<li>&mdash; бассейн;</li>\r\n	<li>&mdash; фехтование;</li>\r\n	<li>&mdash; корты;</li>\r\n	<li>&mdash; школа сквош и многое другое!</li>\r\n</ul>\r\n\r\n<p>Кроме набора привычных услуг &laquo;Мультиспорт&raquo; предлагает и инновационные направления. А именно: занятия в студии FreeMotion, занятия на открытом воздухе Open air, целевые персонифицированные фитнес-программы, спортивная диагностика и фитнес-экспертиза. Здесь созданы все условия для того, чтобы спорт стал любимой частью вашей жизни &ndash; программы создаются с учетом только ваших особенностей, а выбор клубных карт порадует даже искушенного спортгурмана.</p>\r\n\r\n<p>В качестве разогрева до занятий или просто активного отдыха вы можете сыграть партию настольного тенниса или выбить страйк в боулинге. Ну а после тренировки добро пожаловать в спа, клубное кафе или фитобар.</p>\r\n\r\n<h6>Бассейн</h6>\r\n\r\n<p>есть бассейн, водные программы</p>\r\n\r\n<h6>Групповые программы</h6>\r\n\r\n<p>пилатес, interval, занятия для беременных, лечебная гимнастика, аквааэробика, аэробика, стретчинг, фитнес программы, йога, боевые искусства, танцы</p>\r\n\r\n<h6>Банный комплекс</h6>\r\n\r\n<p>финская сауна, турецкая баня (хамам), гидромассаж Прочие услуги фитнес магазин, СПА, детский фитнес, персональные тренировки, бар / ресторан</p>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '100.898438,59.879284', 'aahPguhmotk', '12000', '6000', '1000'),
(40, 'Московская школа Айкидо', 0, 'on', '0', 'asdsad', '0', 'Московская школа Айкидо', 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 'Московская школа Айкидо "Каннагара Додзё" (центральный зал)', 'aacdab92e1adb398423ce3ccb2daad68.jpg', '', 23, '2', 10, '1', 15, 'Москва, ул. Академика Петровского, д. 10', '+7 789 456 123', '', '', 'kannagara-aikido.ru', '6-23', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:15.5555562973022px">Додзё основано в 1989 г. С тех пор занятия идут, не прекращаясь. Участники клуба видят айкидо не только как острое оружие, но и как возможность развития личности.</span></p>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(41, 'Спортивный клуб "Ермак"', 0, 'on', '0', 'sportivnyj_klub_ermak', '0', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', 'Спортивный клуб "Ермак"', '7ad3f0f6c2e27b8308643d167b73d1fa.jpg', '', 23, '1', 8, '0', 0, 'Москва, ул. Обручева, д. 23, корп. 3', '', '', '', 'www.ermakclub.ru', '6-23', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Cпортивный клуб &quot;Ермак&quot; приглашает всех желающих на тренировки по различным видам единоборств: Бокс, Кикбоксинг, Тайский бокс (Муай-Тай), Боевое самбо, Карате, Айкидо, Дзюдо, Джиу-джитсу, Микс файт (ММА).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Также мы рады предложить для ваших детей (от 5 лет) тренировки по следующим направлениям: Самбо, Бокс, Дзюдо, Карате, Айкидо, Джиу-джитсу и ОФП.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Для женщин у нас предусмотрены групповые программы по аэробике, стретчингу, тайбо, современным танцам и балету.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">В тренерский состав спортивного клуба &quot;Ермак&quot; входят: заслуженные мастера спорта, чемпионы России, Европы и Мира, а также Олимпийские призеры.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Ждем Вас в нашем клубе!</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(42, 'Клуб контактных единоборств', 0, 'on', '0', 'klub_kontaktnyh_edinoborstv_kombat', '0', 'Клуб контактных единоборств', 'Клуб контактных единоборств "Комбат"', 'Клуб контактных единоборств "Комбат"', 'a5bfccb8b0d607a6b7eeeac95da2f32d.jpg', '', 23, '1', 8, '0', 0, 'Москва, ул. Новинский бульвар, д.18а', '', '', '', 'combat.narod.ru', 'с 6 до 23:00 Пн-Ср-Пт', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Автономная некоммерческая организация Клуб Единоборств &quot;Комбат&quot; основной своей целью ставит развитие спортивных и традиционных видов единоборств и систем самозащиты.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Спортсмены клуба &quot;Комбат&quot; - многократные победители и призеры чемпионатов Москвы по тайскому боксу, призеры всероссийских соревнований и неоднократные победители профессиональных турниров по тайскому боксу, а также победители и призеры соревнований по кикбоксингу, боксу, армейскому рукопашному бою, контактному каратэ.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Клуб Комбат является соучредителем Ассоциации Клубов Боевых Искусств (АКБИ) ЦАО города Москвы, &nbsp;совместно с которой было проведено 15 Открытых турниров ЦАО по каратэ, кикбоксингу и рукопашному бою.&nbsp;</div>\r\n\r\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Клуб Единоборств &quot;Комбат&quot; существует с 1997 года. Клуб возник на части коллектива спорт клуба &quot;Арбат 51&quot;, в котором в конце 80-х тренировали известные специалисты единоборств: Глеб Горячев, Николай Гречко, Александр Королев (каратэ Сэн&quot;э), Юрий Семенов (кикбоксинг ЕПАКК), Игорь Федорович Пестун, Александр Столяров (кикбоксинг КИТЭК), Константин Давыдов (каратэ, кикбоксинг клуб &quot;Будо&quot;), Алексей Иванов (каратэ Дзесимон).</div>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(43, 'Фитнес клуб "Палестра Sport"', 0, 'on', '0', 'fitnes_klub_palestra_sport', '0', 'Фитнес клуб "Палестра Sport"', 'Фитнес клуб "Палестра Sport"', 'Фитнес клуб "Палестра Sport"', 'c724e61f27f7cf4bbab241b59e6fcb14.jpg', '', 23, '2', 12, '0', 0, 'Москва, ул. 2-я Песчаная, д. 4а.', '', '', '', 'palestrasport.ru', '6-23', '<p>На территории &laquo;ПАЛЕСТРА Sport&raquo; находятся:</p>\n\n<ul>\n	<li>SPA-салон.</li>\n	<li>Три бассейна (детский, бассейн с морской водой и большой бассейн (25 м) с тремя плавательными дорожками и отдельной зоной для занятий по аква-аэробике).</li>\n	<li>Два тренажерных зала с новейшим оборудованием.</li>\n	<li>Зал единоборств.</li>\n	<li>Крытый теннисный корт со специальным покрытием.</li>\n	<li>Два зала для персональных тренировок.</li>\n	<li>Три зала для групповых тренировок.</li>\n	<li>Марокканский хаммам, сауна и русская баня.</li>\n	<li>SPA-кафе, ресторан, летняя терраса.</li>\n	<li>Детский Пиратский Клуб.</li>\n</ul>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(44, 'Олимпийский комплекс', 0, 'on', '0', 'olimpijskij_kompleks_luzhniki', '0', 'Олимпийский комплекс', 'Олимпийский комплекс "Лужники"', 'Олимпийский комплекс "Лужники"', '29019c3fb3280f9dc7a0dc5d3a080035.jpg', '', 23, '1', 7, '0', 0, 'Москва, ул. Лужники, д. 24', '', '', '', 'luzhniki.ru', '6-23', '<p>Олимпийский комплекс &quot;Лужники&quot; - крупнейший спортивно-развлекательный комплекс в России и Европе. Территория Лужников занимает площадь свыше 180 га, на которой расположены разнообразные объекты, предназначенные для проведения спортивных соревнований, концертов, других мероприятий и занятия спортом. Важнейшими сооружениями являются Большая спортивная арена , Малая спортивная арена, Дворец спорта, Плавательный бассейн, УСЗ &laquo;Дружба&raquo;, Спортивный городок, Топ-гольф комплекс (driving range).&nbsp;</p>\n\n<p>&quot;Лужники&quot; - грандиозный стадион, который не только обладает богатой историей, но и живет активной жизнью. На территории спорткомплекса регулярно проходят матчи и соревнования всероссийского и международного уровня, а также фестивали и концерты мировых знаменитостей.</p>\n\n<p>Среди занимающихся и посетителей стадиона систематически проводятся многочисленные спортивно-массовые соревнования по различным видам спорта, как среди детей, так и среди взрослых. Большое количество спортивных мероприятий проводятся совместно с городским спорткомитетом и Управлением спорта Центрального административного округа, спортивными Федерациями России.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(45, 'Клуб самбо им. И.И. Латышева', 0, 'on', '0', 'klub_sambo_im._i.i._latysheva', '0', 'Клуб самбо им. И.И. Латышева', 'Клуб самбо им. И.И. Латышева', 'Клуб самбо им. И.И. Латышева', '5343640fb759d18a60b93c5e39807dd5.jpg', '', 23, '0', 0, '0', 0, 'Москва, Линейный проспект, д. 9', '', '', '', 'www.latishev-club.narod.ru', '6:00-23:00', '<p><span style="color:rgb(38, 38, 38); font-family:segoe ui; font-size:15.5555562973022px">Клуб им. И.И. Латышева один из известнейших в России и популярнейший среди ребят и родителей в г. Москва. Для сотен мальчишек и девчонок стены клуба стали вторым домом. Клуб назван в честь авиаконструктора, прославленного спортсмена, многократного Чемпиона СССР, заслуженного тренера России, судьи Всесоюзной категории Ильи Ивановича Латышева. 6 ноября 2002 г. клуб отпраздновал свое 20-летие. В клубе занимаются дети от 5 лет и старше и взрослые. Кроме секции самбо существует группа ОФП для малышей 5-6 лет, где ребят учат самостраховке, акробатике, развивают физические качества, много времени уделяется подвижным играм. Для взрослых есть секция боевого самбо и айкидо, для девушек и женщин - шейпинг и аэробика, для детей и взрослых - танцы.</span></p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(46, 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 0, 'on', '0', 'sportivno-ozdorovitelnyj_kompleks_atlant_korall', '0', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', 'Спортивно-оздоровительный комплекс Атлант (Коралл)', '9fdcd99ccc9a7e6035b6104383087de3.jpg', '', 23, '1', 10, '0', 0, 'Москва, ул. Талалихина, д. 28', '', '', '', 'www.mybasseyn.ru', '6:00-23:00', '<p>Крытый каток: да</p>\n\n<p>Кафе: да</p>\n\n<p>Залы: кардиозал, тренажерный зал, зал бокса, зал групповых программ, зал восточных единоборств</p>\n\n<p>Спортивная медицина: фитнес-тестирование</p>\n\n<p>Занятия для детей: восточные единоборства</p>\n\n<p>Вода в бассейне: морская</p>\n\n<p>Прокат коньков: да</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Одним из лучших в столице является физкультурно-оздоровительный комплекс &laquo;Атлант&raquo;. Перечень предоставляемых услуг и обслуживание клиентов находится здесь на уровне мировых стандартов. Центром всех оздоровительных мероприятий, и, поистине, жемчужиной физкультурно-оздоровительного комплекса является его бассейн. Он славится на всю Москву.</p>\n\n<p>Настоящей гордостью, предметом особой заботы сотрудников бассейна и его изюминкой является вода. Она обладает уникальными оздоравливающими свойствами и настолько чиста, что не вызывает никаких аллергических реакций не только у обычных людей, но даже у людей с высокочувствительными свойствами кожи. Такой эффект достигается за счет того, что бассейн заполняется не хлорированной водой, а природной минеральной из артезианской скважины и по своим лечебным свойствам мало, чем отличается от воды Средиземного моря.</p>\n\n<p>Кроме того, вода, которая находится в чаше бассейна &laquo;Атлант&raquo;, постоянно пропускается через уникальную очистную систему. Сначала мощные насосы, которые работают круглые сутки, прогоняют воду через систему фильтров, а затем вода попадает в дезинфицирующий агрегат, где происходит дезинфекция на основе электролиза. В этом процессе применяются самые современные технологии, которые позволяют сохранять все полезные для здоровья человека свойства воды, а вредные компоненты выделить и удалить.</p>\n\n<p>Каток &quot;Центральный&quot;<br />\nРасписание:<br />\nВремя работы катка необходимо уточнять по телефону.</p>\n\n<p>Цены:<br />\nСуббота:<br />\nс 12:40 до 14:00 &ndash; 240 руб.;<br />\nс 16:00 до 17:00 &ndash; 180 руб.;<br />\nс 20:00 до 21:00 &ndash; 180 руб.<br />\nВоскресение:<br />\nс 14:00 до 15:00 &ndash; 180 руб.<br />\nПрокат коньков &ndash; 150 руб./час (залог 1500 руб.).</p>\n\n<p>Бассейн с морской водой &quot;Атлант&quot;</p>\n\n<p>Плавательный бассейн длиной 25 м., глубиной от 1 до 5 м. Температура воды - 28 градусов по Цельсию.<br />\nКаток &quot;Центральный&quot;</p>\n\n<p>Крытый каток с музыкальным сопровождением и кафе.<br />\nТренажерный зал &quot;Banana Gym&quot;</p>\n\n<p>В комплексе функционирует тренажерный зал.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(47, 'Фитнес клуб', 0, 'on', '0', 'fitnes_klub_zupre', '0', 'Фитнес клуб', 'Фитнес клуб "Zupre"', 'Фитнес клуб "Zupre"', '599e16bf7b346a0de793aba81cbe8629.jpg', '', 23, '1', 9, '0', 0, 'Москва, ул. Вятская, д. 27, корп. 12', '', '', '', 'www.zupre.ru', '6:00-23:00', '<p>Общая площадь клуба более 4000 квадратных метров.<br />\nВ распоряжении членов клуба:<br />\nтолько современное и надёжное оборудование от мировых лидеров фитнес индустрии (Precor, Icarian, Flex Fitness, Cybex);<br />\nинструкторы сертифицированы Международной Федерацией Спорта, Аэробики и Фитнеса (FISAF) и обладают почётными званиями Кандидатов или Мастеров Спорта;<br />\nширокий выбор групповых и персональных занятий, приятный ассортимент дополнительных услуг;<br />\nудобное расположение - шаговая доступность от метро Савёловская, рядом с крупными дорожными артериями города (ТТК, Бутырская улица, Дмитровское шоссе);<br />\nавтостоянка и велопарковка.</p>\n\n<p>Тренажерный зал &quot;Zupre&quot;</p>\n\n<p>Тренажерный зал с соверменным оборудованием от Precor, Icarian, Flex Fitness, Cybex.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(48, 'Студия практик "СурьяРам"', 0, 'on', '0', 'studija_praktik_surjaram', '0', 'Студия практик "СурьяРам"', 'Студия практик "СурьяРам"', 'Студия практик "СурьяРам"', 'ead382aaca0e5453ea14ec51901adf38.jpg', '', 23, '1', 0, '0', 0, 'Москва, Нижний Сусальный переулок, дом 5, строение 10', '', '', '', 'www.suryaram.ru', '6:00-23:00', '<p>СТУДИЯ ПРАКТИК &laquo;СУРЬЯРАМ&raquo;&nbsp;</p>\n\n<p>ЗАРЯДИСЬ ЭНЕРГИЕЙ СОЛНЦА!</p>\n\n<p>СурьяРам &ndash; в названии нашей студии соединились два древних имени Солнца. Для нашей планеты Солнце всегда было источником света и тепла, жизненной силы и энергии, символом радости и процветания. Этим лучезарным образом проникнута сердечная атмосфера солнечной студии практик СурьяРам.</p>\n\n<p>В интерьере студии символика бесконечного Космоса органично сочетается с тёплыми и радующими глаз красками благодатной Земли. Продуманная до мельчайших деталей обстановка помогает расслабиться, отрешиться от привычной суеты и настроиться на осознанный диалог Человека и Вселенной, почувствовать себя значимой частью великого целого.</p>\n\n<p>В студии СурьяРам всё призвано служить тем, кто стремится обрести здоровье, молодость, гармонию, хорошее настроение, развитие и успех.</p>\n\n<p>В расписании регулярных классов и календаре событий представлен широкий спектр направлений и видов занятий. Мы предлагаем наших гостям разнообразные практики для тела и души (йога, боевые искусства, славянская гимнастика, особые классы для женщин и детей), семинары и лекции, концерты и спектакли, массаж и другие гармонизирующие и оздоровительные техники.</p>\n\n<p>Мы по праву гордимся тем, что у нас работают профессиональные инструкторы, квалифицированные специалисты и опытные мастера &ndash; безусловно, одни из лучших в Москве. Занятия проходят в двух просторных и светлых залах; в студии оборудован массажный кабинет, удобные раздевалки и душевая.</p>\n\n<p>В магазине студии вы сможете подобрать одежду, аксессуары и принадлежности для практики, тематическую литературу, экологически чистую косметику, товары для здоровья и многое другое &ndash; и всё это станет также отличным подарком для ваших близких.</p>\n\n<p>В уютной чайной можно побаловать себя чашечкой ароматного целебного напитка, настраиваясь на занятие и отдыхая после практики. У нас часто назначают встречи, чтобы спокойно пообщаться с друзьями или коллегами: широкий ассортимент высококачественного чая, полезных и вкусных вегетарианских снэков и сладостей, негромкая мелодичная музыка &ndash; всё здесь располагает к приятному и продуктивному времяпрепровождению.</p>\n\n<p>Все, кого объединяет желание развития и намерение сделать свою жизнь лучше, чувствуют себя как дома в СурьяРам &ndash; ведь он, как и Солнце, щедро и радостно дарит своё тепло и любовь каждому.</p>\n\n<p>Команда СурьяРам &ndash; преподаватели и инструкторы, администраторы и персонал &ndash; с заботой и вниманием создаёт для вас пространство, в котором вы можете с успехом и удовольствием совершенствоваться и расти, познавать и творить, учиться и отдыхать. Наши гости часто говорят, что в любую погоду им достаточно просто прийти в СурьяРам, чтобы почувствовать себя солнечнее и счастливее, &ndash; и это всегда очень радует нас и вдохновляет делать жизнь студии ещё ярче и интересней для вас!</p>\n\n<p>Добро пожаловать в студию практик СурьяРам!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(49, 'Спортивный клуб "Союз-Спорт"', 0, 'on', '0', 'sportivnyj_klub_sojuz-sport', '0', 'Спортивный клуб "Союз-Спорт"', 'Спортивный клуб "Союз-Спорт"', 'Спортивный клуб "Союз-Спорт"', 'bdf17fc8f9c8957768e3a9b4fc18d8c2.jpg', '', 23, '1', 12, '0', 0, 'Москва, ул. Академика Волгина, д. 33А', '', '', '', 'ssport.ru', '7:00-23:00', '<p>Залы: зал групповых программ, зал восточных единоборств, зал бокса</p>\n\n<p>Занятия для детей: восточные единоборства, хореография, тренировки, теннис</p>\n\n<p><strong>Описание</strong></p>\n\n<p>Наш спортивный клуб может предложить Вам два теннисных корта, две универсальные игровые площадки, зал групповых программ и зал боевых искусств.</p>\n\n<p>Общая площадь спортивных площадок составляет более 3000 кв. метров.</p>\n\n<p>Площадки с профессиональным покрытием, освещены и размечены четкими линиями, согласно международным требованиям.</p>\n\n<p>На территории &quot;Союз-спорт&quot; расположено два теннисных корта, размеры и разметка которых соответствуют международным стандартам. А профессиональное покрытие Taraflex обеспечивает правильную амортизацию, высокий уровень безопасности, комфорта и качества игры.</p>\n\n<p>Кроме того, в спортклубе &quot;Союз-спорт&quot; есть две универсальные площадки с профессиональным универсальным покрытием и разными разметками под разные виды спорта. Вариант игры на такой площадке будет более бюджетным. Такая площадка подойдёт для новичков и игроков среднего уровня и может заменить корт крытый теннисный.</p>\n\n<p>Футбольный зал может стать местом встречи не только друзей, но и коллег. Редкий мужчина откажется от удовольствия поиграть в футбол в хорошей компании. Поэтому &laquo;аренда футбольной площадки&raquo; на территории спортклуба &laquo;Союз-спорт&raquo; - одна из самых востребованных услуг. Аренда футбольного зала возможна в любое время года. Цена на услугу &laquo;аренда зала для футбола&raquo; доступная.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(50, 'Клуб боевых искусств "Бусидо"', 0, 'on', '0', 'klub_boevyh_iskusstv_busido', '0', 'Клуб боевых искусств "Бусидо"', 'Клуб боевых искусств "Бусидо"', 'Клуб боевых искусств "Бусидо"', '95e1391051292be5a8334c8051a4ef39.jpg', '', 23, '1', 9, '0', 0, 'г. Москва ул. Красноармейская, д.11 к2', '', '', '', 'bussido.ru', '7:00-23:00', '<p>Клуб &laquo;БУСИДО&raquo; проводит набор желающих для изучения боевых искусств.</p>\n\n<p>Вас ждут упорные тренировки, аттестации на цветные пояса, выступления на соревнованиях.</p>\n\n<p>В результате занятий боевыми искусствами крепнет не только тело, но и дух. Человек становится способным не только защитить себя. Но и учится ставить перед собой цели и достигать результатов.</p>\n\n<p>В клубе тренируются разносторонние люди. Многие из них учатся в высших учебных заведениях, кто-то работает в бизнесе, государственных структурах, правоохранительных органах.</p>\n\n<p>Помимо этого, комплекс предлагает услуги банного комплекса:</p>\n\n<p>Сухо-воздушная сауна до 120 градусов по цельсию, парная турецкий хамам(40-50град ) и оздоровительная инфракрасная сауна.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(51, 'Фитнес-центр "Миллениум"', 0, 'on', '0', 'fitnes-centr_millenium', '0', 'Фитнес-центр "Миллениум"', 'Фитнес-центр "Миллениум"', 'Фитнес-центр "Миллениум"', '396c030cdb1fa4a3a1eb5d9c7b764f37.jpg', '', 23, '1', 8, '0', 0, 'Москва, Каширское шоссе, д. 55А', '', '', '', 'milfit.ru', '7:00-23:00', '<p>&laquo;Миллениум&raquo; &mdash; новый фитнес-центр с бассейном на юге Москвы!<br />\nФитнес-центр представляет самый большой по площади тренажерный зал в ЮАО г. Москвы с самым современным оборудованием таких ведущих компаний как: TechnoGym, Star Trac, Precor, Hoist.</p>\n\n<p>Аква-зона фитнес-центра представлена бассейном 25 метров, отдельной зоной для проведения занятий по аква-аэробике и банным комплексом, включающим финскую сауну и турецкий хаммам. Комфортная зона отдыха, оборудованная шезлонгами, позволит снять напряжение и расслабиться.</p>\n\n<p>Для любителей боевых искусств, мы приготовили популярные и интересные занятия с профессиональными тренерами. Вы можете выбрать именно то, что Вам нравится: Самбо, Бокс, М-1, Кудо, Айкидо и многие другие, известно, &nbsp;что восточные единоборства позволяют снять стресс и подготовить не только тело, но и дух, к ритму жизни в нашем мегаполисе.</p>\n\n<p>Самые популярные и эффективные групповые программы, такие как Kinesis, TRX, Zumba, Club Joy, Pilates, Yoga и многие другие &mdash; ждут вас.</p>\n\n<p>Вы можете выбрать удобное для вас время для персональных тренировок или записаться на занятия в группе. Под руководством высококвалифицированной команды инструкторов, вы достигнете не только желаемых результатов, но и получите безграничный заряд энергии и ярких эмоций. Ваши будни, больше никогда не будут серыми и рутинными.</p>\n\n<p>&laquo;Миллениум&raquo; &mdash; это ваш ежедневный источник жизненного позитива и бодрости.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(52, 'Спортивный центр "Синяя Птица"', 0, 'on', '0', 'sportivnyj_centr_sinjaja_ptica', '0', 'Спортивный центр "Синяя Птица"', 'Спортивный центр "Синяя Птица"', 'Спортивный центр "Синяя Птица"', '8621706ad87d5d7fe600a388717a08db.jpg', '', 23, '1', 0, '0', 0, 'Москва, ул. Старокачаловская, влад. 22', '', '', '', 'tennismoskva.ru', '8:00-22:00', '<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&quot;Синяя Птица&quot; - это современный спортивный теннисный центр, площадью 5000 кв. м., с прилегающей территорией 4500 кв.м, расположенный в зеленой зоне района Северное Бутово (ЮЗАО г. Москвы).</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">Центр функционирует с 2004 года и сегодня располагает cледующей инфраструктурой:</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-size: 15.5555562973022px; font-family: Segoe, sans-serif; vertical-align: baseline; color: rgb(0, 0, 0); line-height: 17.7777786254883px;">\n<ul>\n	<li>уникальное спортивное сооружение на базе воздухоопорной конструкции;</li>\n	<li>7 крытых теннисных кортов с покрытием тарафлекс и &laquo;искусственная трава&raquo;, которые предоставляются в аренду, а также используются для проведения групповых, индивидуальных занятий по теннису для детей и взрослых и турниров, в том числе турниров РТТ;</li>\n	<li>5 открытых теннисных кортов кортов с покрытием &laquo;искусственная трава&raquo; для игры в теннис в период с мая по сентябрь. Зимой на этой территории заливается каток.;</li>\n	<li>специально оборудованные залы для занятий айкидо, таэквондо, кикбоксингом боксом и другими видами единоборств;</li>\n	<li>раздевалки с душевыми кабинами и спортивный магазин, предлагающий профессионалам и любителям тенниса одежду, обувь ракетки, мячи, аксессуары для большого тенниса от ведущих мировых производителей.</li>\n</ul>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">Кроме того, к вашим услугам уютное кафе на балконе, с которого можно наблюдать за проведением тренировок и соревнований.</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">&nbsp;</div>\n\n<div style="margin: 0px; padding: 0px; border: 0px; outline: 0px; font-weight: inherit; font-style: inherit; font-size: 15.5555562973022px; vertical-align: baseline;">Центр работает с 08:00 до 22:00.</div>\n</div>\n</div>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(53, 'Центр раннего развития ребенка "Чудо-школа умница"', 0, 'on', '0', 'centr_rannego_razvitija_rebenka_chudo-shkola_umnica', '0', 'Центр раннего развития ребенка "Чудо-школа умница"', 'Центр раннего развития ребенка "Чудо-школа умница"', 'Центр раннего развития ребенка "Чудо-школа умница"', '7c481d5839f915f371e74aa97998c18b.jpg', '', 23, '0', 0, '0', 0, 'Москва, ул. Верхняя Первомайская, д. 59/35, корп. 2', '', '', '', 'www.chudo-shkola.ru', '8:00-22:00', '<p>Центр детского развития ЧУДО-ШКОЛА УМНИЦА&nbsp;<br />\nдля детей и родителей</p>\n\n<p>Вы хотите быть заботливым и любящим родителем?<br />\nВы боитесь упустить драгоценное время в вопросах развития вашего малыша?<br />\nВы желаете видеть своего ребенка гармонично развитой личностью?<br />\nВы мечтаете, чтобы ваши дети были счастливы, успешны и нашли свое место в жизни?<br />\nНаш детский центр развития ребенка поможет вам в реализации всех этих задач.&nbsp;<br />\nЧто вы найдете, придя в ЧУДО-ШКОЛУ УМНИЦА?<br />\nпрофессиональных педагогов, которых обожают дети,&nbsp;<br />\nдружескую атмосферу радости, взаимопонимания и поддержки,&nbsp;<br />\nбольшой выбор (более 50!) программ для детей от 0 до 14 лет,&nbsp;<br />\nпсихологические и творческие программы для родителей,&nbsp;<br />\nпрофессиональную поддержку родителей в вопросах воспитания и развития,&nbsp;<br />\nиндивидуальный подход к каждому ребенку и к каждой семье,&nbsp;<br />\nприятные и нужные для развития семейных отношений традиции,&nbsp;<br />\nпродуманность и отлаженность всех организационных и образовательных процессов.&nbsp;<br />\nНаш центр детского развития найдет общий язык со всеми, кто верит в то, что каждый ребенок уникален и неповторим!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(54, 'Школа айкидо "Аметсучи"', 0, 'on', '0', 'shkola_ajkido_ametsuchi', '0', 'Школа айкидо "Аметсучи"', 'Школа айкидо "Аметсучи"', 'Школа айкидо "Аметсучи"', '2b6e57ab9aae6f86e2385a236fc0bca4.jpg', '', 23, '1', 0, '0', 0, 'Москва, ул. Поляны, д. 35', '', '', '', 'www.ametsuchi.ru', '8:00-22:00', '<p>Айкидо - очень молодое боевое искусство, воплотившее однако в себе принципы и методы, которые насчитывают не одну сотню лет.</p>\n\n<p>Неправильно будет считать айкидо исключительно системой различных приемов и методов. Нужно правильно понимать, что реальная схватка имеет огромное отличие от поединка в спортивном зале. Когда отсутствуют какие-либо рамки, ограничивающие действия бойцов и вполне вероятным исходом поединка является смерть, на первый план выходят морально-психологические качества. Тогда физически слабый человек вполне может справится с более сильным. Физическая сила не является определяющей для победы.</p>\n\n<p>Аттестация по Айкидо проводится 2 - 3 раза в год: На весенних, летних или осенних учебно-аттестационных семинарах, которые проводят, как правило, шиханы Айкикай Хомбу Додзё.</p>\n\n<p>Сдать экзамен можно также и аттестационной комиссии уполномоченной Айкикай Хомбу Додзё на принятие экзаменов у студентов как на степени кю, так и степени дан.</p>\n\n<p>Результат таких экзаменов вполне легитимный и Хомбу Додзё его признаёт в полной мере.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', '');
INSERT INTO `points` (`id`, `name`, `order`, `active`, `payed`, `url`, `header`, `title`, `desc`, `keyw`, `image`, `price_list`, `sport_id`, `subway1_id`, `time1`, `subway2_id`, `time2`, `contacts`, `phone`, `email`, `admemail`, `site`, `graphite`, `text`, `payedf`, `payedt`, `coords`, `youtube`, `price_year`, `price_6months`, `price_month`) VALUES
(55, 'Клуб айкидо в Сокольниках', 0, 'on', '0', 'klub_ajkido_v_sokolnikah', '0', 'Клуб айкидо в Сокольниках', 'Клуб айкидо в Сокольниках', 'Клуб айкидо в Сокольниках', '90ecfe50d5ceb356c922f9e3da403d5a.jpg', '', 23, '2', 2, '0', 0, 'Москва, ул. Стромынка, д. 20, корп. 1', '', '', '', 'http://aikido-v-sokolnikah.ru', '8:00-22:00', '<p>Айкидо в Сокольниках</p>\n\n<p>Если Вы ищите место для занятий Айкидо в районе станции метро Сокольники, то Вам определенно не найти места более подходящего, чем наш Клуб Айкидо в Сокольниках. В нашем Клубе занимаются как взрослые, так и дети, как новички, так и люди с многолетним опытом. Подберите наиболее подходящую для Вас программу, ознакомившись с нашим расписанием.</p>\n\n<p>Айкидо &mdash; японское боевое искусство, созданное О-сэнсэем Морихэем Уэсибой как синтез его исследований боевых искусств, философии и религиозных убеждений. Целью Уэсибы было создать и разработать боевое искусство, впитавшее в себя все достижения великих мастеров. Айкидо акцентируется на слиянии с атакой противника и перенаправлении энергии атакующего (в противовес встречи силы силой). В дополнение к физическим техникам и тренировкам, айкидо придаёт особое значение тренировкам сознания, управляемого расслабления, и развития &laquo;духа&raquo; и силы &laquo;ки&raquo;.</p>\n\n<p>Для учеников появились новые разделы с дополнительной методической информацией и видео. Доступ к новым разделам просите у Вашего инструктора.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(56, 'Айкидо клуб', 0, 'on', '0', 'ajkido_klub', '0', 'Айкидо клуб', 'Айкидо клуб', 'Айкидо клуб', '94774f3c362afcea93f097a0fd1912bb.jpg', '', 23, '1', 0, '0', 0, 'Москва, Ул. 7-я Текстильщиков, дом 5', '', '', '', 'Aikido1.ru', '8:00-22:00', '<p>Здравствуйте! Мы рады приветствовать вас на сайте федерации Айкидо Айкикай.</p>\n\n<p>Айкидо &ndash; это боевое искусство, которое позволит оказать сопротивление гораздо более сильному противнику. Его сила и ярость будут направлены против него самого.</p>\n\n<p>Тренировки по Айкидо абсолютно травмобезопасны. На тренировках могут тренироваться люди совершенно разных возрастов и уровней физической подготовки. Большое внимание на тренировках уделяется навыкам владения своим телом и дыхательным техникам.</p>\n\n<p>Тренировки проводятся для детей, взрослых, а также индивидуально. Всю информацию о расписании занятий, залах и ведущих тренерах вы можете найти в соответсвующих разделах сайта. На тренировках вы приобретете не только базовые знания техник Айкидо, но и научитесь ударной техники, технике работы с оружием и повысите уровень физической подготовки. Ждем Вас в наших залах!</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(57, 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 0, 'on', '0', 'klub_ajkido_dzikisinkaj_na_volgogradskom_prospekte', '0', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', 'Клуб Айкидо "Дзикисинкай" на Волгоградском Проспекте', '0b12c056f3cb0b483a394d2c53088f76.jpg', '', 23, '1', 0, '0', 0, 'Москва, Волгоградский проспект, д. 28', '', '', '', 'www.jikishinkai.ru', '8:00-22:00', '<p>В 1992 году Номура сенсей постановил, что Огнян Найдов-Железов, имевший в то время 1 Дан и Андрей Лычев (тоже 1 Дан) должны организовать свою отдельную секцию. Такая секция начала работать в сентябре 1992 года при Колледже Сбербанка РФ и просуществовала целый год. Один из занимавшихся в секции новичков &ndash; Сергей Волошко предложил организовать секцию в МГТУ.</p>\n\n<p>Благодаря поддержке кафедры физвоспитания и лично декана Киселева такая секция начала работать 4 октября 1993 года. Эта дата и считается Днем Рождения Айкидо в МГТУ.</p>\n\n<p>Практически с самого начала секция работала под пристальным вниманием Хомбу Додзе. Сиханы Хомбу Додзе Итихаси и Миямото первый раз посетили занятия в секции Айкидо МГТУ в декабре 1993 года, к этому периоду относится и первое официальное показательное выступление членов Клуба перед широкой аудиторией. С 1995 года Миямото сихан, решением Досю, был назначен техническим куратором клуба. С тех пор, ежегодно Миямото сихан проводит в Москве семинар по Айкидо, организатором которого является Федерация Айкидо Айкикай России и лично Огнян Кременович Найдов-Железов.</p>\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(58, 'Дом культуры', 0, 'on', '0', 'dom_kultury_berendej', '0', 'Дом культуры', 'Дом культуры "Берендей"', 'Дом культуры "Берендей"', '1011a7b8137f2619ab1ed4c839fbb638.jpg', '', 23, '0', 0, '0', 0, 'Москва, проспект маршала Жукова, д. 76, корп. 1', '', '', '', '', '12:00-18:00 ф', '<p>В 1991 году был открыт ДК &laquo;Берендей&raquo;, который с начала своего возникновения и по сегодняшний день пользуется большой популярностью среди населения.</p>\r\n\r\n<p>Здесь каждый может найти по душе любимое занятие.</p>\r\n\r\n<p>Много талантов вырастил &laquo;Берендей&raquo;, многим помог определиться в жизни, а кому-то подарил момент общения.</p>\r\n\r\n<p>Одна из самых любимых и посещаемых секций - секция айкидо для детей.</p>\r\n\r\n<p>График занятий:<br />\r\n- вторник - с 17:00 до 18:00;<br />\r\n- суббота - с 12:00 до 13:00.</p>\r\n\r\n<p>Инструктор: Щеглова (Коваленко) Наталья, 2 дан айкидо айкикай</p>\r\n', '01.01.1970 06:00', '01.01.1970 06:00', '', '', '', '', ''),
(63, 'qasd', 0, '0', '0', 'qasd', '0', '', '', '', '5b8b54f8de33240e0334cead7baa0375.jpg', '0263050459ded6df00c46dd5f9a3a6da.docx', 23, '0', 0, '0', 0, '', '', '', '', '', 'asd', '', '', '', '', '', '', '', ''),
(64, 'asd', 0, '0', '0', 'asd', '0', '', '', '', 'ef15589a49bd34dd2c237dec3b019c63.jpg', '', 23, '0', 0, '0', 0, '', '', '', '', '', 'asd', '', '', '', '', '', '', '', ''),
(67, 'dasdasd123', 0, '0', '0', 'dasdasd123', '0', '', '', '', '8bc04943883b469a7760adbb09d55466.jpg', '', 23, '0', 0, '0', 0, '', '', '', '', '', 'asd', '', '', '', '', '', '', '', '');

-- --------------------------------------------------------

--
-- Структура таблицы `points_halls`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=143 ;

--
-- Дамп данных таблицы `points_halls`
--

INSERT INTO `points_halls` (`id`, `name`, `image`, `description`, `order`, `point_id`) VALUES
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
(142, '', '1423691596_da2fefe1e47d6b02f36b1ec68cae12a1.jpg', '', 0, 40);

-- --------------------------------------------------------

--
-- Структура таблицы `points_images`
--

DROP TABLE IF EXISTS `points_images`;
CREATE TABLE IF NOT EXISTS `points_images` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `point_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=155 ;

--
-- Дамп данных таблицы `points_images`
--

INSERT INTO `points_images` (`id`, `image`, `order`, `point_id`) VALUES
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
(154, '1418315976_4edd95f03931ca63cce611904dc9431a.jpg', 0, 58);

-- --------------------------------------------------------

--
-- Структура таблицы `points_treners`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=36 ;

--
-- Дамп данных таблицы `points_treners`
--

INSERT INTO `points_treners` (`id`, `name`, `sname`, `image`, `pph`, `ppm`, `order`, `text`, `point_id`) VALUES
(9, 'Климов Валерий Валерьевич', '', '1418304113_ddee861268f872bc9037c16d91483e21.jpg', '', '', 0, '', 44),
(10, 'Титов Анатолий Алексеевич', '', '1418304113_60d50830f948249597f5657cb5d19855.jpg', '', '', 0, '', 44),
(11, 'Ванчиков Алексей Боросович', '', '1418304114_6f23baacb5034db8ad4400e7566cef0e.jpg', '', '', 0, '', 44),
(12, 'Гвоздев Максим', '', '1418304114_34d84045e4fe7d7a11602605fef919f0.jpg', '', '', 0, '', 44),
(13, 'Алеся Дмитриева', '', '1418304114_61e6571834e0375cb043e53d7acea71b.jpg', '', '', 0, '', 44),
(14, 'Евдокимов Александр', '', '1418307637_e92d0693b3c5638a778ba78d41587cda.jpg', '', '', 0, '', 48),
(30, 'Сергей', 'Пупкин', '1423734919_41fdc8c3e0fb4d39e6156a1031eaee80.gif', '200', '700', 0, 'Сервис онлайн проверки текста на уникальность TEXT.RU покажет процент уникальности текста.', 39),
(31, '', '', '1423884620_3c92c636bee5e6900f1131b4d5526b84.jpg', '', '', 0, '', 39),
(32, '', '', '1423884620_1633a84bfa8eb535028239dfe1941a9b.jpg', '', '', 0, '', 39),
(33, '', '', '1423884620_611a2d917bd5fcbbbd171c3221bf1c66.jpg', '', '', 0, '', 39),
(34, 'Кролик', 'Иванов', '1423884671_b19bf2ca57dc98572f3890ffc9660e8e.jpg', '800 руб.', '2000 руб.', 0, 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry''s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 39),
(35, '', '', '1423884671_23c7b46346f7caaf463e5a5199af76db.jpg', '', '', 0, '', 39);

-- --------------------------------------------------------

--
-- Структура таблицы `requests`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=9 ;

--
-- Дамп данных таблицы `requests`
--

INSERT INTO `requests` (`id`, `name`, `age`, `sex`, `weight`, `sports`, `subway`, `contrains`, `canpay`, `email`, `phone`, `date`, `ip`, `read`) VALUES
(1, 'Андрей', 'DSADAS', 'DASDASD', 'ASDASD', 'ASDAS', 'DASDASD', 'ASDASDA', 'вфывфы', 'protected.for@gmail.com', '+996554709700', '26.11.2014 16:35:17', '127.0.0.1', 'on'),
(2, 'dasd', 'dsad', 'dsa', 'sadas', 'das', 'dsa', 'dsa', 'dsa', 'dsada@adsa.ru', 'das', '27.11.2014 14:57:02', '127.0.0.1', 'on'),
(3, 'dsa', 'ds', 'sadas', 'dsad', 'sdas', 'dsada', 'das', 'dsadas', 'dfdas@dsa.ru', 'dasd', '06.02.2015 13:21:45', '127.0.0.1', 'on'),
(4, 'dasd', 'dsa', 'd', 'dsa', 'dsa', 'd', 'das', 'd', 'asdas@dasdas.ru', 'dasdas', '06.02.2015 13:23:00', '127.0.0.1', 'on'),
(5, 'dsad', 'dsa', 'dsa', 'dsa', 'dads', 'das', 'das', 'dsa', 'das@dsa.ru', 'dsad', '06.02.2015 13:26:29', '127.0.0.1', 'on'),
(6, 'Андрей', '19', 'Мужской', '55555', 'Лял лвыфл выф', 'Бабушкинское', 'выфрвлфырв', '6000000$', 'protected.for@gmail.com', '+996554709700', '14.02.2015 03:55:37', '127.0.0.1', 'on'),
(7, 'Андрей Федотов', '19', 'МУжской', '62', 'футбол, волейбол, баскетбол, хоккей', 'Бабушкинское', 'Нет', '5000000$', 'protected.for@gmail.com', '+996554709700', '14.02.2015 07:58:40', '127.0.0.1', 'on'),
(8, 'asd', 'ddsajdk', 'jdl', 'kj', 'k', 'j', 'kl', 'j', 'kl@asd.ru', 'asd', '14.02.2015 23:13:58', '127.0.0.1', 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `sports`
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
-- Дамп данных таблицы `sports`
--

INSERT INTO `sports` (`id`, `name`, `url`, `image`, `active`, `category_id`, `title`, `desc`, `keyw`, `text`, `order`) VALUES
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
(53, 'Баскетбол', 'basketbol', 'fedc8be92b82bd6bd544b60359c4a156.jpg', '0', 59, 'Баскетбол', 'Баскетбол', 'Баскетбол', '', 0),
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
-- Структура таблицы `studentcards`
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
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=34 ;

--
-- Дамп данных таблицы `studentcards`
--

INSERT INTO `studentcards` (`id`, `name`, `sname`, `mname`, `univer`, `contacts`, `delivery`, `date`, `ip`, `read`) VALUES
(3, 'вфывфв', 'выфв', 'выфв', 'фы', 'вфыв', 'courier', '10.02.2015 16:20:33', '127.0.0.1', 'on'),
(4, 'das', 'dsad', 'dsad', 'dsad', 'asdas', 'courier', '10.02.2015 16:25:08', '127.0.0.1', 'on'),
(5, 'Андрей', 'Федотов', 'Игоревич', 'Политех', '0554709700', 'self', '10.02.2015 22:15:43', '127.0.0.1', 'on'),
(6, 'dasda', 'das', 'ds', 'dasd', 'asdsa', 'courier', '10.02.2015 22:18:37', '127.0.0.1', 'on'),
(7, 'asd', 'dasdsadas', 'asdas', 'das', 'dasdasd', 'courier', '14.02.2015 03:33:53', '127.0.0.1', ''),
(8, 'asd', 'das', 'das', 'das', 'das', 'courier', '14.02.2015 07:32:14', '127.0.0.1', ''),
(9, 'asd', 'asd', 'asd', 'asd', 'asd', 'self', '14.02.2015 07:56:05', '127.0.0.1', ''),
(10, 'фвы', 'вфы', 'вфы', 'вфы', 'вфы', 'self', '14.02.2015 10:07:39', '127.0.0.1', ''),
(11, 'Андрей', 'вфывфы', 'фыв', 'фыв', 'фыв', 'courier', '16.02.2015 12:19:44', '127.0.0.1', ''),
(12, 'dasd', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 12:26:23', '127.0.0.1', ''),
(13, 'asd', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 12:28:35', '127.0.0.1', ''),
(14, 'Андрей', 'Федотов', 'Игоревич', 'ПОЛИТЕХ', '554709700', 'courier', '16.02.2015 13:26:04', '127.0.0.1', ''),
(15, 'фыв', '123', 'ячс', 'апр', 'ннг', 'courier', '16.02.2015 13:28:54', '127.0.0.1', ''),
(16, 'фыв', 'фыв', 'фыв', 'фыв', 'фыв', 'courier', '16.02.2015 13:34:34', '127.0.0.1', ''),
(17, 'sad', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 13:35:53', '127.0.0.1', ''),
(18, 'das', 'das', 'dsa', 'das', 'dsa', 'courier', '16.02.2015 13:36:19', '127.0.0.1', ''),
(19, 'dasdas', 'dasdas', 'dasda', '123', '512', 'courier', '16.02.2015 13:39:56', '127.0.0.1', ''),
(20, '123', '321', 'das', 'das', 'das', 'courier', '16.02.2015 13:41:06', '127.0.0.1', ''),
(21, 'dsad', 'dsa', 'dsa', 'dsa', 'das', 'courier', '16.02.2015 13:47:21', '127.0.0.1', ''),
(22, 'asd', 'asd', 'asd', 'asd', 'asd', 'courier', '16.02.2015 23:39:56', '127.0.0.1', ''),
(23, '123', '123', '123', '123', '123', 'courier', '16.02.2015 23:40:17', '127.0.0.1', ''),
(24, '123', '123', '123', '123', '123', 'courier', '16.02.2015 23:43:18', '127.0.0.1', ''),
(25, 'dasd', 'das', 'das', 'das', 'asd', 'courier', '16.02.2015 23:43:27', '127.0.0.1', ''),
(26, 'Андрей', 'Федотов', 'вфы', 'вфы', 'выф', 'courier', '18.02.2015 15:30:04', '127.0.0.1', ''),
(27, 'вфыв', 'вфы', 'вфы', 'вфы', 'вфы', 'courier', '18.02.2015 15:30:43', '127.0.0.1', ''),
(28, 'выф', 'выф', 'выф', 'вфы', 'вфы', 'courier', '18.02.2015 15:31:15', '127.0.0.1', ''),
(29, 'вфывф', 'выф', 'вфы', 'фыв', 'фыв', 'courier', '19.02.2015 00:10:59', '127.0.0.1', ''),
(30, 'фыв', 'фыв', 'фыв', 'фыв', 'фыв', 'courier', '19.02.2015 00:11:14', '127.0.0.1', ''),
(31, 'фыв', 'вфы', 'фыв', 'фыв', 'фыв', 'courier', '19.02.2015 00:11:37', '127.0.0.1', ''),
(32, 'фыв', 'фыв', 'фыв', 'фыв', 'фыв', 'courier', '19.02.2015 00:12:20', '127.0.0.1', ''),
(33, 'dasd', 'das', 'das', 'das', 'das', 'courier', '03.03.2015 02:44:25', '127.0.0.1', '');

-- --------------------------------------------------------

--
-- Структура таблицы `subways`
--

DROP TABLE IF EXISTS `subways`;
CREATE TABLE IF NOT EXISTS `subways` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `image` varchar(255) NOT NULL,
  `order` int(11) NOT NULL,
  `active` varchar(2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- Дамп данных таблицы `subways`
--

INSERT INTO `subways` (`id`, `name`, `image`, `order`, `active`) VALUES
(1, 'Дубровка', '26a520b7130c777eeb9747083ec6ce84.png', 0, 'on'),
(2, 'Сокольники', '49d7b76dd28c58596e53c5ed3c3d3dc9.png', 0, 'on'),
(3, 'Варшавская', '41132f89e29001f07a4bb444e70ca559.png', 0, 'on'),
(4, 'Бибирево', '657bf10eef5ab28d83ffc05189b66022.png', 0, 'on'),
(5, 'Станция "Новослободская"', 'ed470d7cd8cfd056a055adfdcf61ba5e.png', 0, 'on');

-- --------------------------------------------------------

--
-- Структура таблицы `tags`
--

DROP TABLE IF EXISTS `tags`;
CREATE TABLE IF NOT EXISTS `tags` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `object` enum('blog','news') NOT NULL,
  `page_id` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
