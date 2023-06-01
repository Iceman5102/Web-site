-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Хост: 127.0.0.1:3306
-- Время создания: Июн 01 2023 г., 01:15
-- Версия сервера: 8.0.30
-- Версия PHP: 7.2.34

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- База данных: `Stamps`
--

-- --------------------------------------------------------

--
-- Структура таблицы `Stamp1`
--

CREATE TABLE `Stamp1` (
  `id` int NOT NULL,
  `name` text,
  `descr` text,
  `image` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Stamp1`
--

INSERT INTO `Stamp1` (`id`, `name`, `descr`, `image`) VALUES
(1, 'День космонавтики', 'АО «Марка» совместно с Московским отделением Союза художников России провели Открытый всероссийский тематический конкурс рисунка для почтовой марки и художественного маркированного конверта по теме «С Днём космонавтики!».\r\n\r\nЦелями и задачами конкурса являются привлечение внимания ко Дню космонавтики; продвижение идеи «мирного космоса»; популяризация жанра авторской художественной миниатюры, выполненной как в традиционных «ручных» техниках, так и с помощью цифровых технологий; привлечение новых авторов к жанру почтовой миниатюры.\r\n\r\nНа почтовой марке изображена работа победителя конкурса И. Мирошниченко — образ космонавта на фоне космического пространства.', 'images\\1.jpg'),
(2, 'Серия «Флора России. Первоцветные»', 'Первоцветные — преимущественно многолетние травянистые растения разнообразного облика. Появляются ранней весной, иногда ещё до того, как полностью сойдёт снег, в разных климатических зонах этот период может растягиваться на несколько месяцев. Значительная часть первоцветных на территории России представлена в горных и арктических районах.\r\n\r\nЦветки пятичленные, правильной формы, разнообразных расцветок и оттенков, в основном собраны в головчатые или зонтиковидные соцветия. Листья у первоцветных цельные, морщинистые, покрытые волосками, часто образуют прикорневую розетку.\r\n\r\nВ России произрастают первоцветы Юлии, весенний и дудчатый, разные виды проломников, очный цвет полевой, вербейник обыкновенный, кортуза сибирская, млечник приморский.\r\n\r\nНа почтовых марках изображены первоцвет Юлии, вербейник обыкновенный, очный цвет полевой и кортуза сибирская.\r\n\r\nДополнительно к выпуску почтовых марок изданы конверты первого дня и изготовлены штемпеля специального гашения для Москвы, Санкт-Петербурга, Барнаула, Белгорода, Владивостока, Калининграда, Красноярска, Нижнего Новгорода, Новосибирска, Пензы, Севастополя и Тамбова, а также картмаксимумы, художественная обложка, внутри — почтовые марки и виньетка, конверт первого дня с гашением для Москвы.\r\n\r\nХудожник-дизайнер: М. Бодрова.', 'images\\2.jpg'),
(3, '200 лет со дня рождения К.Д. Ушинского (1823–1871), писателя, основоположника научной педагогики в России', 'Ушинский Константин Дмитриевич (1823–1871) — писатель, основоположник научной педагогики в России.\r\n\r\nВ своих педагогических трудах К.Д. Ушинский обосновывал необходимость формирования цельной личности, считая главной задачей воспитания подготовку человека к самостоятельной жизни. Он много работал над составлением для детей книг для чтения «Детский мир», «Родное слово» — учебник русского языка, выдержавший 157 изданий, и др. Они стали первыми массовыми и общедоступными российскими учебниками для начального обучения детей. Последний главный научный труд — «Человек как предмет воспитания, опыт педагогической антропологии» (в 2 т., 1868-1869).\r\n\r\nНа марке изображён портрет К.Д. Ушинского на фоне учебного класса.', 'images\\3.jpg'),
(4, 'Марка №4', 'Это описание Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet odio arcu. Etiam ipsum massa, volutpat at lorem at, iaculis vulputate ante. Nam euismod dolor sed diam aliquam, sed ullamcorper velit eleifend. In consectetur quis magna et faucibus. Quisque tempor dui sit amet eros porttitor dignissim. Quisque interdum euismod sapien vel volutpat. Proin tincidunt sem tellus, euismod tincidunt turpis viverra pharetra. Donec vitae urna rutrum enim varius elementum vitae ut dui. Maecenas dapibus augue diam, eu consectetur lorem fermentum nec. Morbi turpis leo, fringilla non consectetur id, congue ut magna. Pellentesque ultrices tortor ac dolor rhoncus euismod.\r\n\r\nCurabitur sapien diam, blandit eu justo non, convallis fringilla eros. Donec sit amet finibus nulla, bibendum tempus lorem. Vestibulum volutpat, augue in fringilla tincidunt, augue nibh maximus eros, ut placerat mauris nibh vitae urna. Phasellus sed quam eget nibh bibendum pretium. Nam porta gravida varius. Vestibulum tempor egestas nunc a aliquet. Aliquam nec libero elit. Nunc vel feugiat nulla. Nunc et purus eget purus tristique fermentum. Etiam condimentum, erat in interdum dictum, dui tortor sollicitudin augue, quis tempor nulla odio id mi. Pellentesque ullamcorper ex eget faucibus mattis. Nunc sed tempus ex. Sed nec quam et ipsum mattis laoreet. Donec justo nibh, consectetur et vestibulum ac, consequat ac purus. Praesent gravida magna nisl, quis lobortis neque suscipit fermentum.марки', 'images\\4.jpg'),
(5, 'Марка №5', 'Это описание Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet odio arcu. Etiam ipsum massa, volutpat at lorem at, iaculis vulputate ante. Nam euismod dolor sed diam aliquam, sed ullamcorper velit eleifend. In consectetur quis magna et faucibus. Quisque tempor dui sit amet eros porttitor dignissim. Quisque interdum euismod sapien vel volutpat. Proin tincidunt sem tellus, euismod tincidunt turpis viverra pharetra. Donec vitae urna rutrum enim varius elementum vitae ut dui. Maecenas dapibus augue diam, eu consectetur lorem fermentum nec. Morbi turpis leo, fringilla non consectetur id, congue ut magna. Pellentesque ultrices tortor ac dolor rhoncus euismod.\r\n\r\nCurabitur sapien diam, blandit eu justo non, convallis fringilla eros. Donec sit amet finibus nulla, bibendum tempus lorem. Vestibulum volutpat, augue in fringilla tincidunt, augue nibh maximus eros, ut placerat mauris nibh vitae urna. Phasellus sed quam eget nibh bibendum pretium. Nam porta gravida varius. Vestibulum tempor egestas nunc a aliquet. Aliquam nec libero elit. Nunc vel feugiat nulla. Nunc et purus eget purus tristique fermentum. Etiam condimentum, erat in interdum dictum, dui tortor sollicitudin augue, quis tempor nulla odio id mi. Pellentesque ullamcorper ex eget faucibus mattis. Nunc sed tempus ex. Sed nec quam et ipsum mattis laoreet. Donec justo nibh, consectetur et vestibulum ac, consequat ac purus. Praesent gravida magna nisl, quis lobortis neque suscipit fermentum.марки', 'images\\4.jpg'),
(6, 'Марка №6', 'Это описание Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet odio arcu. Etiam ipsum massa, volutpat at lorem at, iaculis vulputate ante. Nam euismod dolor sed diam aliquam, sed ullamcorper velit eleifend. In consectetur quis magna et faucibus. Quisque tempor dui sit amet eros porttitor dignissim. Quisque interdum euismod sapien vel volutpat. Proin tincidunt sem tellus, euismod tincidunt turpis viverra pharetra. Donec vitae urna rutrum enim varius elementum vitae ut dui. Maecenas dapibus augue diam, eu consectetur lorem fermentum nec. Morbi turpis leo, fringilla non consectetur id, congue ut magna. Pellentesque ultrices tortor ac dolor rhoncus euismod.\r\n\r\nCurabitur sapien diam, blandit eu justo non, convallis fringilla eros. Donec sit amet finibus nulla, bibendum tempus lorem. Vestibulum volutpat, augue in fringilla tincidunt, augue nibh maximus eros, ut placerat mauris nibh vitae urna. Phasellus sed quam eget nibh bibendum pretium. Nam porta gravida varius. Vestibulum tempor egestas nunc a aliquet. Aliquam nec libero elit. Nunc vel feugiat nulla. Nunc et purus eget purus tristique fermentum. Etiam condimentum, erat in interdum dictum, dui tortor sollicitudin augue, quis tempor nulla odio id mi. Pellentesque ullamcorper ex eget faucibus mattis. Nunc sed tempus ex. Sed nec quam et ipsum mattis laoreet. Donec justo nibh, consectetur et vestibulum ac, consequat ac purus. Praesent gravida magna nisl, quis lobortis neque suscipit fermentum.марки', 'images\\4.jpg'),
(7, 'Марка №7', 'Это описание Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet odio arcu. Etiam ipsum massa, volutpat at lorem at, iaculis vulputate ante. Nam euismod dolor sed diam aliquam, sed ullamcorper velit eleifend. In consectetur quis magna et faucibus. Quisque tempor dui sit amet eros porttitor dignissim. Quisque interdum euismod sapien vel volutpat. Proin tincidunt sem tellus, euismod tincidunt turpis viverra pharetra. Donec vitae urna rutrum enim varius elementum vitae ut dui. Maecenas dapibus augue diam, eu consectetur lorem fermentum nec. Morbi turpis leo, fringilla non consectetur id, congue ut magna. Pellentesque ultrices tortor ac dolor rhoncus euismod.\n\nCurabitur sapien diam, blandit eu justo non, convallis fringilla eros. Donec sit amet finibus nulla, bibendum tempus lorem. Vestibulum volutpat, augue in fringilla tincidunt, augue nibh maximus eros, ut placerat mauris nibh vitae urna. Phasellus sed quam eget nibh bibendum pretium. Nam porta gravida varius. Vestibulum tempor egestas nunc a aliquet. Aliquam nec libero elit. Nunc vel feugiat nulla. Nunc et purus eget purus tristique fermentum. Etiam condimentum, erat in interdum dictum, dui tortor sollicitudin augue, quis tempor nulla odio id mi. Pellentesque ullamcorper ex eget faucibus mattis. Nunc sed tempus ex. Sed nec quam et ipsum mattis laoreet. Donec justo nibh, consectetur et vestibulum ac, consequat ac purus. Praesent gravida magna nisl, quis lobortis neque suscipit fermentum.марки', 'images\\4.jpg'),
(8, 'Марка №8', 'Это описание Lorem ipsum dolor sit amet, consectetur adipiscing elit. Phasellus sit amet odio arcu. Etiam ipsum massa, volutpat at lorem at, iaculis vulputate ante. Nam euismod dolor sed diam aliquam, sed ullamcorper velit eleifend. In consectetur quis magna et faucibus. Quisque tempor dui sit amet eros porttitor dignissim. Quisque interdum euismod sapien vel volutpat. Proin tincidunt sem tellus, euismod tincidunt turpis viverra pharetra. Donec vitae urna rutrum enim varius elementum vitae ut dui. Maecenas dapibus augue diam, eu consectetur lorem fermentum nec. Morbi turpis leo, fringilla non consectetur id, congue ut magna. Pellentesque ultrices tortor ac dolor rhoncus euismod.\n\nCurabitur sapien diam, blandit eu justo non, convallis fringilla eros. Donec sit amet finibus nulla, bibendum tempus lorem. Vestibulum volutpat, augue in fringilla tincidunt, augue nibh maximus eros, ut placerat mauris nibh vitae urna. Phasellus sed quam eget nibh bibendum pretium. Nam porta gravida varius. Vestibulum tempor egestas nunc a aliquet. Aliquam nec libero elit. Nunc vel feugiat nulla. Nunc et purus eget purus tristique fermentum. Etiam condimentum, erat in interdum dictum, dui tortor sollicitudin augue, quis tempor nulla odio id mi. Pellentesque ullamcorper ex eget faucibus mattis. Nunc sed tempus ex. Sed nec quam et ipsum mattis laoreet. Donec justo nibh, consectetur et vestibulum ac, consequat ac purus. Praesent gravida magna nisl, quis lobortis neque suscipit fermentum.марки', 'images\\4.jpg');

-- --------------------------------------------------------

--
-- Структура таблицы `Users`
--

CREATE TABLE `Users` (
  `id` int NOT NULL,
  `login` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Дамп данных таблицы `Users`
--

INSERT INTO `Users` (`id`, `login`, `password`) VALUES
(1, 'admin', '123');

--
-- Индексы сохранённых таблиц
--

--
-- Индексы таблицы `Stamp1`
--
ALTER TABLE `Stamp1`
  ADD PRIMARY KEY (`id`);

--
-- Индексы таблицы `Users`
--
ALTER TABLE `Users`
  ADD PRIMARY KEY (`login`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
