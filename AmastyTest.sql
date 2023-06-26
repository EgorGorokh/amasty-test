-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:8889
-- Время создания: Июн 21 2023 г., 09:10
-- Версия сервера: 5.7.34
-- Версия PHP: 8.0.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `AmastyTest`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Pizza`
--

CREATE TABLE `Pizza` (
  `Pizza_Name` varchar(20) NOT NULL,
  `Pizza_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Pizza`
--

INSERT INTO `Pizza` (`Pizza_Name`, `Pizza_ID`) VALUES
('Pepperoni', 1),
('Country', 2),
('Hawaiian', 3),
('Mushroom', 4);

-- --------------------------------------------------------

--
-- Структура таблицы `Pizza_Price`
--

CREATE TABLE `Pizza_Price` (
  `Price_ID` int(11) NOT NULL,
  `Pizza_ID` int(11) NOT NULL,
  `Size_ID` int(11) NOT NULL,
  `Pizza_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Pizza_Price`
--

INSERT INTO `Pizza_Price` (`Price_ID`, `Pizza_ID`, `Size_ID`, `Pizza_Price`) VALUES
(1, 1, 1, 11),
(2, 1, 2, 12),
(3, 1, 3, 13),
(4, 1, 4, 14),
(5, 2, 1, 12),
(6, 2, 2, 13),
(7, 2, 3, 14),
(8, 2, 4, 15),
(9, 3, 1, 14),
(10, 3, 2, 15),
(11, 3, 3, 16),
(12, 3, 4, 17),
(13, 4, 1, 16),
(14, 4, 2, 17),
(15, 4, 3, 18),
(16, 4, 4, 19);

-- --------------------------------------------------------

--
-- Структура таблицы `Pizza_Size`
--

CREATE TABLE `Pizza_Size` (
  `Size_ID` int(11) NOT NULL,
  `Size_Name` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Pizza_Size`
--

INSERT INTO `Pizza_Size` (`Size_ID`, `Size_Name`) VALUES
(1, 21),
(2, 26),
(3, 31),
(4, 45);

-- --------------------------------------------------------

--
-- Структура таблицы `Sauces`
--

CREATE TABLE `Sauces` (
  `Sauce_Name` varchar(20) NOT NULL,
  `Sauce_ID` int(11) NOT NULL,
  `Sauce_Price` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Sauces`
--

INSERT INTO `Sauces` (`Sauce_Name`, `Sauce_ID`, `Sauce_Price`) VALUES
('Cheese', 1, 1),
('Barbecue', 2, 2),
('Sweet', 3, 3),
('Garlic', 4, 4);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Pizza`
--
ALTER TABLE `Pizza`
  ADD PRIMARY KEY (`Pizza_ID`);

--
-- Индексы таблицы `Pizza_Price`
--
ALTER TABLE `Pizza_Price`
  ADD PRIMARY KEY (`Price_ID`);

--
-- Индексы таблицы `Pizza_Size`
--
ALTER TABLE `Pizza_Size`
  ADD PRIMARY KEY (`Size_ID`);

--
-- Индексы таблицы `Sauces`
--
ALTER TABLE `Sauces`
  ADD PRIMARY KEY (`Sauce_ID`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `Pizza`
--
ALTER TABLE `Pizza`
  MODIFY `Pizza_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT для таблицы `Pizza_Price`
--
ALTER TABLE `Pizza_Price`
  MODIFY `Price_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT для таблицы `Pizza_Size`
--
ALTER TABLE `Pizza_Size`
  MODIFY `Size_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT для таблицы `Sauces`
--
ALTER TABLE `Sauces`
  MODIFY `Sauce_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
