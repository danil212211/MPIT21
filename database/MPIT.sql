-- phpMyAdmin SQL Dump
-- version 4.4.15.10
-- https://www.phpmyadmin.net
--
-- Хост: localhost
-- Время создания: Апр 01 2021 г., 02:16
-- Версия сервера: 10.5.9-MariaDB
-- Версия PHP: 5.4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `MPIT`
--

-- --------------------------------------------------------

--
-- Структура таблицы `COURSE`
--

CREATE TABLE IF NOT EXISTS `COURSE` (
  `ID` int(11) NOT NULL,
  `TITLE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `COURSE`
--

INSERT INTO `COURSE` (`ID`, `TITLE`) VALUES
(1, 'Курс еойц'),
(2, 'Курс еойц'),
(3, 'Курс еойц');

-- --------------------------------------------------------

--
-- Структура таблицы `LESSONS`
--

CREATE TABLE IF NOT EXISTS `LESSONS` (
  `ID` int(11) NOT NULL,
  `COURSEID` int(11) NOT NULL,
  `VALUE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `LESSONS`
--

INSERT INTO `LESSONS` (`ID`, `COURSEID`, `VALUE`) VALUES
(1, 0, '222'),
(2, 0, '222'),
(3, 1, 'цуасцуасацу'),
(4, 2, 'цуасцуасацу'),
(5, 2, 'уасцуа '),
(6, 2, '43сннн'),
(7, 3, 'цуасцуасацу'),
(8, 3, 'уасцуа '),
(9, 3, '43сннн');

-- --------------------------------------------------------

--
-- Структура таблицы `QUESTIONS`
--

CREATE TABLE IF NOT EXISTS `QUESTIONS` (
  `ID` int(11) NOT NULL,
  `COURSEID` int(11) NOT NULL,
  `VALUE` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `ANSWER` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `QUESTIONS`
--

INSERT INTO `QUESTIONS` (`ID`, `COURSEID`, `VALUE`, `ANSWER`) VALUES
(1, 0, '1', ''),
(2, 0, '3', ''),
(3, 0, '1', ''),
(4, 0, '3', ''),
(5, 1, 'уйксуцс', ''),
(6, 2, 'уйксуцс', ''),
(7, 2, 'пцу пцуп', ''),
(8, 3, 'уйксуцс', 'йцкс'),
(9, 3, 'пцу пцуп', ' цусец4се2');

-- --------------------------------------------------------

--
-- Структура таблицы `USER`
--

CREATE TABLE IF NOT EXISTS `USER` (
  `ID` int(11) NOT NULL,
  `LOGIN` tinytext NOT NULL,
  `HASH` tinytext NOT NULL,
  `SALT` text NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Дамп данных таблицы `USER`
--

INSERT INTO `USER` (`ID`, `LOGIN`, `HASH`, `SALT`) VALUES
(2, 'danil.zelenskiy.2005@mail.ru', '14e65aad85fbaa734e3c77d4468dac27006f8c1fa255ea483aa91fac38b40a288d54aa3ecac6d05bba6b280413f2adb2c13f944aee6d992c6904bcef13b406b6', 'i3BAneMmGQ');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `COURSE`
--
ALTER TABLE `COURSE`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `LESSONS`
--
ALTER TABLE `LESSONS`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `QUESTIONS`
--
ALTER TABLE `QUESTIONS`
  ADD PRIMARY KEY (`ID`);

--
-- Индексы таблицы `USER`
--
ALTER TABLE `USER`
  ADD PRIMARY KEY (`ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `COURSE`
--
ALTER TABLE `COURSE`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT для таблицы `LESSONS`
--
ALTER TABLE `LESSONS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `QUESTIONS`
--
ALTER TABLE `QUESTIONS`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT для таблицы `USER`
--
ALTER TABLE `USER`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
