-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Хост: localhost:3306
-- Время создания: Сен 20 2024 г., 10:10
-- Версия сервера: 10.11.7-MariaDB-1:10.11.7+maria~ubu2204
-- Версия PHP: 8.2.15

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `1is-a05_1is-a05`
--

-- --------------------------------------------------------

--
-- Структура таблицы `kategories`
--

CREATE TABLE `kategories` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `tag` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `kategories`
--

INSERT INTO `kategories` (`id`, `name`, `tag`) VALUES
(2, 'Масла и лаки', 'masla'),
(3, 'Аксессуары', 'acc'),
(4, 'Автозапчасти', 'avto');

-- --------------------------------------------------------

--
-- Структура таблицы `korz`
--

CREATE TABLE `korz` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `tovars` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `korz`
--

INSERT INTO `korz` (`id`, `user_id`, `tovars`) VALUES
(26, 21, '{\"8\":3}'),
(29, 2, '{\"16\":1}');

-- --------------------------------------------------------

--
-- Структура таблицы `orders`
--

CREATE TABLE `orders` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `id_user` int(11) NOT NULL,
  `number_of_tovars` int(11) NOT NULL,
  `summa` int(11) NOT NULL,
  `status` text NOT NULL,
  `is_approved` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `orders`
--

INSERT INTO `orders` (`id`, `date`, `id_user`, `number_of_tovars`, `summa`, `status`, `is_approved`) VALUES
(6, '2024-07-03', 2, 1, 936, 'В ПУТИ', 0),
(7, '2024-07-03', 2, 1, 200, 'В ПУТИ', 0),
(8, '2024-09-19', 22, 10, 3220, 'В ПУТИ', 0);

-- --------------------------------------------------------

--
-- Структура таблицы `tovar`
--

CREATE TABLE `tovar` (
  `id` int(11) NOT NULL,
  `tag` text NOT NULL,
  `name` text NOT NULL,
  `price` int(11) NOT NULL,
  `opisanie` text NOT NULL,
  `maker` text NOT NULL,
  `year` int(11) NOT NULL,
  `model` int(11) NOT NULL,
  `src` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `tovar`
--

INSERT INTO `tovar` (`id`, `tag`, `name`, `price`, `opisanie`, `maker`, `year`, `model`, `src`) VALUES
(8, 'avto', 'Animal Auto Фильтр масляный', 381, 'Хороший и недорогой маслянный фильтр для вашей машины', 'RENAULT', 2021, 123456, 'tovari-assets\\1.webp'),
(9, 'avto', 'Фильтр масляный LUXE LX-05-M ВАЗ 08-09', 263, 'Бюджетный маслянный фильтр от отечественного поставщика', 'ВАЗ', 2022, 880055, 'tovari-assets\\2.webp'),
(10, 'acc', 'фонарь плафон подсветки номера Lifan X50, X60, Myway, Breez-седан, Cellia / Лифан Х50, Х60, Майвей, Целия LBU4108100', 200, 'Портативный фонарь и в машину и на машину, как хотите в целом', 'Лёха-Лёпеха', 2023, 312321, 'tovari-assets\\3.webp'),
(11, 'masla\r\n', 'ЛУКОЙЛ GENESIS ARMORTECH GC 5W-30, 4л ', 3000, 'Большой бак масла для машины, всё просто', 'Кукиш-Какиш', 2018, 3782913, 'tovari-assets\\4.webp'),
(12, 'avto', 'Колодки тормозные ', 1400, 'Обычные, хорошие, доступные, ультимативные, много-функциональные, КОЛОДКИ ТОРМОЗНЫЕ!', 'колодочникРУ', 2000, 321312, 'tovari-assets\\5.webp'),
(13, 'masla', 'KUDO Лак автомобильный, цвет: прозрачный, 520 мл ', 369, 'Автомобильный лак, который зарекомендовал себя как хороший и стойкий.', 'Kudo', 2024, 321321, ' 	tovari-assets\\6.webp'),
(14, 'masla', 'ЛУКОЙЛ GENESIS ARMORTECH GC 5W-35, 4л ', 2000, 'Масло, которое зарекомендовало себя как лучшее на рынке и может посоревноваться с многими другими марками.', 'Киришминский завод', 2022, 432432, 'tovari-assets\\7.webp'),
(16, 'avto', 'Опора двигателя задняя на LIFAN X50, Celliya / Лифан Х50 ', 936, 'Хорошая опора двигателя, надежная и долго не сломается.', 'Починка-экспресс', 2021, 213132, 'tovari-assets\\9.webp'),
(17, 'acc', 'Универсальная черная автомобильная сетчатая сумка, держатель для телефона, карман для хранения, автомобильный сетчатый карман для кошелька, ключей, ручек ', 69, 'Удобная сетка для всяких мелких вещей, что бы не складировать все по всей машине.', 'Сеточки', 2022, 312313, 'tovari-assets\\10.webp'),
(18, 'acc', 'sdads', 323, 'fsdfsf', 'hgfh', 3123, 3123123, 'tovari-assets\\10.webp');

-- --------------------------------------------------------

--
-- Структура таблицы `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `fam` text NOT NULL,
  `fam2` text NOT NULL,
  `login` text NOT NULL,
  `mail` text NOT NULL,
  `password` char(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `users`
--

INSERT INTO `users` (`id`, `name`, `fam`, `fam2`, `login`, `mail`, `password`) VALUES
(2, 'Хлеб', 'Хлепчинский', 'Хлепченко', 'xleb', 'xdasds@dasd.com', '123456789'),
(20, 'Хлебушко', 'Хлебсау', 'Хлебшенко', 'xlebp', 'xlebpXlebp@email.ru', '2323234343'),
(21, 'koik', 'koik', 'koik', 'koik', 'koik@gmai.com', 'koikkoik'),
(22, 'Жепа', 'Слива', 'Конь', 'Ammama', 'amozonka87@vk.com', '12345678');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `kategories`
--
ALTER TABLE `kategories`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `korz`
--
ALTER TABLE `korz`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `tovar`
--
ALTER TABLE `tovar`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `kategories`
--
ALTER TABLE `kategories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT для таблицы `korz`
--
ALTER TABLE `korz`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- AUTO_INCREMENT для таблицы `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT для таблицы `tovar`
--
ALTER TABLE `tovar`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT для таблицы `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
