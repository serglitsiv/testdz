-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Окт 14 2021 г., 13:44
-- Версия сервера: 5.7.29
-- Версия PHP: 7.4.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `testdz`
--

-- --------------------------------------------------------

--
-- Структура таблицы `products`
--

CREATE TABLE `products` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `code` int(11) NOT NULL,
  `price` double NOT NULL DEFAULT '0',
  `description` text COLLATE utf8mb4_unicode_ci,
  `height` double NOT NULL,
  `width` double NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Дамп данных таблицы `products`
--

INSERT INTO `products` (`id`, `name`, `code`, `price`, `description`, `height`, `width`, `created_at`, `updated_at`) VALUES
(1, 'Mas Os', 1000, 5000, 'Alice said to the other, and growing sometimes taller and.', 73, 112, '2021-10-12 15:39:42', '2021-10-13 18:04:43'),
(2, 'Ignatius Ryan', 1000, 10418, 'Arithmetic--Ambition, Distraction, Uglification, and.', 92, 87, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(3, 'Theo Klein', 664, 22358, 'Alice \'without pictures or conversations?\' So she tucked her arm.', 75, 125, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(4, 'Angel Marks', 673, 46035, 'I\'ll tell you how it was quite pleased to find any. And yet you incessantly stand on your head-- Do you think I.', 77, 62, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(5, 'Delpha O\'Kon', 106, 27464, 'Alice. \'Then you keep moving round, I suppose?\' \'Yes,\' said Alice, very loudly and decidedly, and there.', 19, 138, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(6, 'Ms. Emmalee Rempel IV', 67, 14033, 'I\'ve offended it again!\' For the Mouse was swimming away from her as she fell.', 34, 144, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(7, 'Abdiel Romaguera', 776, 23193, 'In another minute the whole court was in a fight with another hedgehog, which seemed to be listening, so she helped herself to some tea and.', 29, 85, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(8, 'Nicola Kuphal', 850, 31830, 'Mock Turtle: \'crumbs would all wash off in the middle of the conversation. Alice felt so desperate that she had not gone much farther before she got.', 88, 125, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(9, 'Ms. Josie Tromp', 482, 44652, 'I am in the house down!\' said the Cat, and vanished. Alice was only a mouse that had made out that one of them with large eyes full.', 25, 144, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(10, 'Avis Oberbrunner', 747, 38525, 'LESS,\' said the Gryphon. \'We can do without lobsters, you know. Which shall sing?\' \'Oh, YOU sing,\'.', 28, 44, '2021-10-12 15:39:43', '2021-10-12 15:39:43'),
(11, 'Jaden Bernier DVM', 211, 19577, 'For anything tougher than suet; Yet you finished the guinea-pigs!\' thought Alice. \'I\'m glad I\'ve seen that done,\'.', 97, 12, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(12, 'Ms. Elissa Volkman Sr.', 411, 2596, 'After a minute or two. \'They couldn\'t have wanted it much,\' said.', 50, 75, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(13, 'Miss Leilani Mitchell III', 940, 13743, 'Alice to herself, and nibbled a little bird as soon as there.', 76, 96, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(14, 'Freddie Johns', 485, 3659, 'Father William,\' the young man said, \'And your.', 100, 134, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(15, 'Janice Raynor', 943, 10237, 'I THINK,\' said Alice. \'Then it doesn\'t matter a bit,\' said the Dormouse indignantly.', 18, 54, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(16, 'Desiree Weimann V', 612, 9683, 'For this must be a grin, and she could see, as they used to.', 84, 7, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(17, 'Santiago Friesen', 619, 22121, 'Queen, \'and take this young lady to see it quite plainly through the glass, and she felt.', 63, 50, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(18, 'Mr. Rasheed Farrell', 502, 44584, 'Alice went on, very much pleased at having found out a.', 18, 27, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(19, 'Brandon Mann', 702, 7134, 'Forty-two. ALL PERSONS MORE THAN A MILE HIGH TO LEAVE THE COURT.\' Everybody looked at her, and she was in managing her.', 28, 126, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(20, 'Edison Nader', 729, 2279, 'Suppress him! Pinch him! Off with his head!\"\' \'How dreadfully savage!\' exclaimed Alice.', 55, 146, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(21, 'Alf Mohr', 231, 16920, 'Footman, and began to feel very uneasy: to be rude, so she went on \'And how do you.', 24, 110, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(22, 'Ms. Janis Renner V', 691, 40768, 'It means much the most curious thing I ever heard!\' \'Yes, I think I.', 70, 47, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(23, 'Madonna Zulauf', 957, 5829, 'Lory hastily. \'I don\'t much care where--\' said Alice. \'What IS the use of repeating all that green stuff be?\' said.', 89, 56, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(24, 'Trevion Ziemann', 780, 34632, 'Bill\'s place for a little girl she\'ll think me at all.\' \'In that.', 28, 16, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(25, 'Kaylie Borer DVM', 704, 32479, 'Alice, so please your Majesty?\' he asked. \'Begin at the bottom of a dance is it?\' \'Why,\' said the Hatter, \'I cut some more tea,\' the Hatter.', 61, 124, '2021-10-12 15:39:44', '2021-10-12 15:39:44'),
(26, 'test', 58, 17999, 'good computer', 58, 20, '2021-10-13 15:31:06', '2021-10-13 15:31:06'),
(27, 'Rosario Powlowski', 8542, 5224, 'Alice said to the other, and growing sometimes taller and.', 73, 112, '2021-10-13 17:18:30', '2021-10-13 17:18:30'),
(28, 'Romario Powlowski', 854, 5224, 'Alice said to the other, and growing sometimes taller and.', 73, 112, '2021-10-13 17:18:54', '2021-10-13 17:18:54'),
(29, 'Romario', 854, 5224, 'Alice said to the other, and growing sometimes taller and.', 73, 112, '2021-10-13 17:20:50', '2021-10-13 17:20:50'),
(30, 'Rosario Powlowski', 854007, 5224, 'Alice said to the other, and growing sometimes taller and.', 73, 112, '2021-10-13 17:23:25', '2021-10-13 17:23:25');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT для сохранённых таблиц
--

--
-- AUTO_INCREMENT для таблицы `products`
--
ALTER TABLE `products`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
