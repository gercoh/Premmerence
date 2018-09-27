-- phpMyAdmin SQL Dump
-- version 4.7.7
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Сен 27 2018 г., 15:40
-- Версия сервера: 5.7.20
-- Версия PHP: 7.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `users`
--

-- --------------------------------------------------------

--
-- Структура таблицы `usercountry`
--

CREATE TABLE `usercountry` (
  `id` int(255) NOT NULL,
  `country` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `usercountry`
--

INSERT INTO `usercountry` (`id`, `country`) VALUES
(16, 'Novovolynsk'),
(17, 'Ukraine'),
(19, 'LVIV');

-- --------------------------------------------------------

--
-- Структура таблицы `Userdata`
--

CREATE TABLE `Userdata` (
  `id` int(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `country_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Дамп данных таблицы `Userdata`
--

INSERT INTO `Userdata` (`id`, `name`, `email`, `country_id`) VALUES
(16, 'Andrew', 'Zotov@mail.ru', 16),
(17, 'PremmerceTHEbest', 'Zdetctvazapremmerce', 17),
(19, 'callME ', 'BackInLviv', 19);

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `usercountry`
--
ALTER TABLE `usercountry`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Userdata`
--
ALTER TABLE `Userdata`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `usercountry`
--
ALTER TABLE `usercountry`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT для таблицы `Userdata`
--
ALTER TABLE `Userdata`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
