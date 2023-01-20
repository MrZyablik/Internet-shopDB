SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";

--
-- Структура таблицы `Authors`
--

CREATE TABLE IF NOT EXISTS `Authors` (
  `UID` tinyint(4) NOT NULL,
  `LastName` varchar(11) DEFAULT NULL,
  `FirstName` varchar(9) DEFAULT NULL,
  `MiddleName` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Authors`
--

INSERT INTO `Authors` (`UID`, `LastName`, `FirstName`, `MiddleName`) VALUES
(1, 'Чехов', 'Антон', 'Павлович'),
(2, 'Достоевский', 'Федор', 'Михайлович'),
(3, 'Пушкин', 'Александр', 'Сергеевич'),
(4, 'Булгаков', 'Михаил', 'Афанасьевич'),
(5, 'Толстой', 'Лев', 'Николаевич');

-- --------------------------------------------------------

--
-- Структура таблицы `Books`
--

CREATE TABLE IF NOT EXISTS `Books` (
  `UID` tinyint(4) NOT NULL,
  `ProductCode` smallint(6) DEFAULT NULL,
  `Title` varchar(24) DEFAULT NULL,
  `Cover` tinyint(4) DEFAULT NULL,
  `Author` tinyint(4) DEFAULT NULL,
  `Genre` tinyint(4) DEFAULT NULL,
  `StandardCost` smallint(6) DEFAULT NULL,
  `QuantityInPosition` tinyint(4) DEFAULT NULL,
  `Description` varchar(97) DEFAULT NULL,
  `LastPrice` smallint(6) DEFAULT NULL,
  `Attachments` varchar(0) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `Cover` (`Cover`),
  KEY `Author` (`Author`),
  KEY `Genre` (`Genre`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Books`
--

INSERT INTO `Books` (`UID`, `ProductCode`, `Title`, `Cover`, `Author`, `Genre`, `StandardCost`, `QuantityInPosition`, `Description`, `LastPrice`, `Attachments`) VALUES
(1, 348, 'Преступление и наказание', 5, 2, 5, 1500, 15, 'социально-психологический и социально-философский роман', 1000, ''),
(2, 567, 'Война и мир', 3, 5, 5, 800, 40, 'оман-эпопея Льва Николаевича Толстого, описывающий русское общество в эпоху войн против Наполеона', 500, ''),
(3, 893, 'Я вас любил…', 4, 3, 4, 200, 50, 'стихотворение Александра Сергеевича Пушкина, написанное в 1829 году', 190, ''),
(4, 556, 'Собачье сердце', 2, 4, 3, 800, 44, 'Острая сатира на большевизм', 450, ''),
(5, 333, 'Чехов. Пьесы', 1, 1, 2, 400, 38, 'Пьесы', 300, '');

-- --------------------------------------------------------

--
-- Структура таблицы `Checks`
--

CREATE TABLE IF NOT EXISTS `Checks` (
  `UID` tinyint(4) NOT NULL,
  `Order` tinyint(4) DEFAULT NULL,
  `Date` varchar(19) DEFAULT NULL,
  `Term` varchar(19) DEFAULT NULL,
  `Tax` tinyint(4) DEFAULT NULL,
  `Remainder` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `Order` (`Order`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Checks`
--

INSERT INTO `Checks` (`UID`, `Order`, `Date`, `Term`, `Tax`, `Remainder`) VALUES
(1, 1, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 20, 2),
(2, 2, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 20, 2),
(3, 3, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 30, 3),
(4, 4, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 20, 4),
(5, 5, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 30, 10),
(6, 6, '2022-12-02 00:00:00', '2022-12-02 00:00:00', 40, 2),
(7, 7, '2022-12-03 00:00:00', '2022-12-03 00:00:00', 30, 5),
(8, 8, '2022-12-04 00:00:00', '2022-12-04 00:00:00', 20, 6),
(9, 9, '2022-12-06 00:00:00', '2022-12-06 00:00:00', 30, 1),
(10, 10, '2022-12-07 00:00:00', '2022-12-07 00:00:00', 50, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `Clients`
--

CREATE TABLE IF NOT EXISTS `Clients` (
  `UID` tinyint(4) NOT NULL,
  `LastName` varchar(9) DEFAULT NULL,
  `FirstName` varchar(7) DEFAULT NULL,
  `MiddleName` varchar(11) DEFAULT NULL,
  `Email` varchar(16) DEFAULT NULL,
  `Phone` varchar(12) DEFAULT NULL,
  `Notes` varchar(17) DEFAULT NULL,
  `OrdersHistory` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `OrdersHistory` (`OrdersHistory`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Clients`
--

INSERT INTO `Clients` (`UID`, `LastName`, `FirstName`, `MiddleName`, `Email`, `Phone`, `Notes`, `OrdersHistory`) VALUES
(1, 'Носов', 'Олег', 'Алексеевич', 'Nosik@rambler.ru', '+78272373232', 'Новый клиент', 1),
(2, 'Поелова', 'Мария', 'Олеговна', 'Ggvna@gmail.com', '+70001123456', 'Новый клиент', 2),
(3, 'Читалова', 'Анна', 'Левовна', '4itat@mail.ru', '+72232332000', 'Постоянный клиент', 2),
(4, 'Улыбаков', 'Игнат', 'Олегович', 'Smilik@mail.ru', '+79996661221', 'Редко заходит', 4),
(5, 'Ибрагимов', 'Ибрагим', 'Ибрагимович', 'llnvmc@gmail.com', '+70099121346', 'Постоянный клиент', 3);

-- --------------------------------------------------------

--
-- Структура таблицы `Covers`
--

CREATE TABLE IF NOT EXISTS `Covers` (
  `UID` tinyint(4) NOT NULL,
  `Covername` varchar(16) DEFAULT NULL,
  `Notes` varchar(77) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Covers`
--

INSERT INTO `Covers` (`UID`, `Covername`, `Notes`) VALUES
(1, 'Твердый переплет', 'Справочники, художественная литература, учебники, подарочные издания, словари'),
(2, 'Мягкий переплет', 'Художественная литература, учебники'),
(3, 'Твердая обложка', 'Дипломные работы, альбомы, журналы, учетные книги.'),
(4, 'Мягкая обложка', ' Учебники, рабочие тетради, рекламные материалы, художественная литература'),
(5, 'Суперобложка', 'Подарочные и коллекционные издания');

-- --------------------------------------------------------

--
-- Структура таблицы `Genres`
--

CREATE TABLE IF NOT EXISTS `Genres` (
  `UID` tinyint(4) NOT NULL,
  `Genrename` varchar(7) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Genres`
--

INSERT INTO `Genres` (`UID`, `Genrename`) VALUES
(1, 'Реализм'),
(2, 'Драма'),
(3, 'Сатира'),
(4, 'Поэзия'),
(5, 'Роман');

-- --------------------------------------------------------

--
-- Структура таблицы `OrderDetails`
--

CREATE TABLE IF NOT EXISTS `OrderDetails` (
  `UID` tinyint(4) NOT NULL,
  `Books` tinyint(4) DEFAULT NULL,
  `Orders` tinyint(4) DEFAULT NULL,
  `UnitPrice` smallint(6) DEFAULT NULL,
  `Amount` tinyint(4) DEFAULT NULL,
  `InventoryNum` tinyint(4) DEFAULT NULL,
  `Discount` tinyint(4) DEFAULT NULL,
  `ConvergenceState` tinyint(4) DEFAULT NULL,
  `PlacementDate` varchar(19) DEFAULT NULL,
  `PurchaseOrder` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `Books` (`Books`),
  KEY `PurchaseOrder` (`PurchaseOrder`),
  KEY `ConvergenceState` (`ConvergenceState`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `OrderDetails`
--

INSERT INTO `OrderDetails` (`UID`, `Books`, `Orders`, `UnitPrice`, `Amount`, `InventoryNum`, `Discount`, `ConvergenceState`, `PlacementDate`, `PurchaseOrder`) VALUES
(1, 1, 1, 333, 1, 1, 10, 1, '2022-12-01 00:00:00', 1),
(2, 2, 2, 2220, 2, 2, 10, 2, '2022-12-02 00:00:00', 2),
(3, 3, 3, 2230, 1, 3, 10, 3, '2022-12-03 00:00:00', 3),
(4, 4, 4, 440, 1, 4, 0, 4, '2022-12-04 00:00:00', 4),
(5, 5, 5, 6000, 4, 5, 15, 5, '2022-12-05 00:00:00', 5),
(6, 1, 1, 1120, 1, 6, 15, 1, '2022-12-07 00:00:00', 6),
(7, 2, 2, 220, 1, 7, 20, 2, '2022-12-06 00:00:00', 7),
(8, 3, 3, 330, 1, 8, 10, 3, '2022-12-08 00:00:00', 8),
(9, 4, 4, 440, 1, 9, 10, 4, '2022-12-09 00:00:00', 9),
(10, 5, 5, 1111, 3, 10, 0, 5, '2022-12-10 00:00:00', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `Orders`
--

CREATE TABLE IF NOT EXISTS `Orders` (
  `UID` tinyint(4) NOT NULL,
  `Client` tinyint(4) DEFAULT NULL,
  `PlacementDate` varchar(19) DEFAULT NULL,
  `ShippingDate` varchar(19) DEFAULT NULL,
  `Recipient` varchar(7) DEFAULT NULL,
  `RecipientContact` varchar(12) DEFAULT NULL,
  `Taxes` tinyint(4) DEFAULT NULL,
  `PaymentMethod` varchar(12) DEFAULT NULL,
  `PaymentDate` varchar(19) DEFAULT NULL,
  `Notes` varchar(27) DEFAULT NULL,
  `TaxRate` tinyint(4) DEFAULT NULL,
  `TaxStatus` tinyint(4) DEFAULT NULL,
  `State` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `Client` (`Client`,`TaxStatus`,`State`),
  KEY `TaxStatus` (`TaxStatus`),
  KEY `State` (`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `Orders`
--

INSERT INTO `Orders` (`UID`, `Client`, `PlacementDate`, `ShippingDate`, `Recipient`, `RecipientContact`, `Taxes`, `PaymentMethod`, `PaymentDate`, `Notes`, `TaxRate`, `TaxStatus`, `State`) VALUES
(1, 1, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 'Олег', '+78272373232', 20, 'Наличными', '2022-12-01 00:00:00', 'Нет', 3, 3, 5),
(2, 4, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 'Игнат', '+76676543211', 20, 'Наличными', '2022-12-01 00:00:00', 'В подарочной упакове', 1, 2, 1),
(3, 2, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 'Маша', '+70000000000', 30, 'Безналичными', '2022-12-01 00:00:00', 'Нет', 2, 1, 1),
(4, 3, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 'Анна', '72232332000', 30, 'Наличными', '2022-12-01 00:00:00', 'Нет', 3, 4, 1),
(5, 4, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 'Игнат', '+76676543211', 20, 'Безналичными', '2022-12-01 00:00:00', 'Нет', 1, 2, 1),
(6, 5, '2022-12-02 00:00:00', '2022-12-02 00:00:00', 'Ибрагим', '+70099121346', 30, 'Безналичными', '2022-12-02 00:00:00', 'Нет', 3, 3, 5),
(7, 5, '2022-12-03 00:00:00', '2022-12-03 00:00:00', 'Ибрагим', '+70099121346', 20, 'Безналичными', '2022-12-03 00:00:00', 'Нет', 4, 4, 5),
(8, 3, '2022-12-04 00:00:00', '2022-12-04 00:00:00', 'Анна', '72232332000', 30, 'Безналичными', '2022-12-04 00:00:00', 'Нет', 5, 2, 1),
(9, 2, '2022-12-06 00:00:00', '2022-12-06 00:00:00', 'Маша', '+70000000000', 10, 'Безналичными', '2022-12-06 00:00:00', 'нет', 2, 3, 5),
(10, 1, '2022-12-07 00:00:00', '2022-12-07 00:00:00', 'Олег', '+78272373232', 50, 'Наличными', '2022-12-07 00:00:00', 'Оплата проезведена монетами', 1, 3, 2);

-- --------------------------------------------------------

--
-- Структура таблицы `OrdersHistory`
--

CREATE TABLE IF NOT EXISTS `OrdersHistory` (
  `UID` tinyint(4) NOT NULL,
  `State` tinyint(4) DEFAULT NULL,
  `Order` tinyint(4) DEFAULT NULL,
  `DateOfChange` varchar(19) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `State` (`State`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `OrdersHistory`
--

INSERT INTO `OrdersHistory` (`UID`, `State`, `Order`, `DateOfChange`) VALUES
(1, 2, 1, '2022-12-01 00:00:00'),
(2, 3, 2, '2022-12-01 00:00:00'),
(3, 5, 3, '2022-12-01 00:00:00'),
(4, 1, 4, '2022-12-01 00:00:00'),
(5, 3, 5, '2022-12-01 00:00:00'),
(6, 3, 6, '2022-12-02 00:00:00'),
(7, 5, 7, '2022-12-03 00:00:00'),
(8, 4, 8, '2022-12-04 00:00:00'),
(9, 1, 9, '2022-12-06 00:00:00'),
(10, 3, 10, '2022-12-07 00:00:00'),
(11, 5, 0, '');

-- --------------------------------------------------------

--
-- Структура таблицы `OrderStatus`
--

CREATE TABLE IF NOT EXISTS `OrderStatus` (
  `UID` tinyint(4) NOT NULL,
  `Name` varchar(12) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `OrderStatus`
--

INSERT INTO `OrderStatus` (`UID`, `Name`) VALUES
(1, 'Завершен'),
(2, 'В работе'),
(3, 'Отменен'),
(4, 'Изменен'),
(5, 'Редактирован');

-- --------------------------------------------------------

--
-- Структура таблицы `OrederDetailsStatus`
--

CREATE TABLE IF NOT EXISTS `OrederDetailsStatus` (
  `UID` tinyint(4) NOT NULL,
  `Name` varchar(11) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `OrederDetailsStatus`
--

INSERT INTO `OrederDetailsStatus` (`UID`, `Name`) VALUES
(1, 'Выполнен'),
(2, 'Выполняется'),
(3, 'Заморожен'),
(4, 'Отменен'),
(5, 'Возабновлен');

-- --------------------------------------------------------

--
-- Структура таблицы `PurchaseOrderDetails`
--

CREATE TABLE IF NOT EXISTS `PurchaseOrderDetails` (
  `UID` tinyint(4) NOT NULL,
  `PurchaseOrder` tinyint(4) DEFAULT NULL,
  `Books` tinyint(4) DEFAULT NULL,
  `Amount` tinyint(4) DEFAULT NULL,
  `UnitCost` smallint(6) DEFAULT NULL,
  `ShippingDate` varchar(19) DEFAULT NULL,
  `InventoryNum` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`UID`),
  KEY `PurchaseOrder` (`PurchaseOrder`,`Books`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `PurchaseOrderDetails`
--

INSERT INTO `PurchaseOrderDetails` (`UID`, `PurchaseOrder`, `Books`, `Amount`, `UnitCost`, `ShippingDate`, `InventoryNum`) VALUES
(1, 1, 1, 2, 200, '2022-12-01 00:00:00', 1),
(2, 2, 2, 2, 200, '2022-12-01 00:00:00', 2),
(3, 3, 3, 2, 200, '2022-12-01 00:00:00', 3),
(4, 4, 4, 2, 200, '2022-12-01 00:00:00', 4),
(5, 5, 5, 2, 300, '2022-12-01 00:00:00', 5),
(6, 6, 1, 2, 200, '2022-12-02 00:00:00', 6),
(7, 7, 2, 4, 300, '2022-12-03 00:00:00', 7),
(8, 8, 3, 5, 200, '2022-12-04 00:00:00', 8),
(9, 9, 4, 6, 300, '2022-12-06 00:00:00', 9),
(10, 10, 5, 7, 400, '2022-12-07 00:00:00', 10);

-- --------------------------------------------------------

--
-- Структура таблицы `PurchaseOrders`
--

CREATE TABLE IF NOT EXISTS `PurchaseOrders` (
  `UID` tinyint(4) NOT NULL,
  `Created` tinyint(4) DEFAULT NULL,
  `CreatedDate` varchar(19) DEFAULT NULL,
  `ShippingDate` varchar(19) DEFAULT NULL,
  `State` tinyint(4) DEFAULT NULL,
  `Tax` decimal(3,1) DEFAULT NULL,
  `PaymentDate` varchar(19) DEFAULT NULL,
  `Sum` smallint(6) DEFAULT NULL,
  `PaymentForm` varchar(12) DEFAULT NULL,
  `Notes` varchar(3) DEFAULT NULL,
  `Approved` tinyint(4) DEFAULT NULL,
  `ApprovelDate` varchar(19) DEFAULT NULL,
  `Sent` tinyint(4) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `PurchaseOrders`
--

INSERT INTO `PurchaseOrders` (`UID`, `Created`, `CreatedDate`, `ShippingDate`, `State`, `Tax`, `PaymentDate`, `Sum`, `PaymentForm`, `Notes`, `Approved`, `ApprovelDate`, `Sent`) VALUES
(1, 1, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 1, '30.0', '2022-12-01 00:00:00', 500, 'Безналичными', 'Нет', 2, '2022-12-01 00:00:00', 2),
(2, 2, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 2, '33.3', '2022-12-01 00:00:00', 500, 'Безналичными', 'Нет', 2, '2022-12-01 00:00:00', 2),
(3, 3, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 3, '44.0', '2022-12-01 00:00:00', 500, 'Безналичными', 'Нет', 2, '2022-12-01 00:00:00', 2),
(4, 4, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 4, '50.0', '2022-12-01 00:00:00', 500, 'Безналичными', 'Нет', 2, '2022-12-01 00:00:00', 2),
(5, 5, '2022-12-01 00:00:00', '2022-12-01 00:00:00', 5, '50.0', '2022-12-01 00:00:00', 500, 'Безналичными', 'Нет', 2, '2022-12-01 00:00:00', 2),
(6, 6, '2022-12-02 00:00:00', '2022-12-02 00:00:00', 1, '55.0', '2022-12-02 00:00:00', 600, 'Безналичными', 'Нет', 3, '2022-12-02 00:00:00', 2),
(7, 7, '2022-12-03 00:00:00', '2022-12-03 00:00:00', 2, '50.0', '2022-12-03 00:00:00', 700, 'Безналичными', 'Нет', 4, '2022-12-03 00:00:00', 4),
(8, 8, '2022-12-04 00:00:00', '2022-12-04 00:00:00', 3, '50.0', '2022-12-04 00:00:00', 400, 'Безналичными', 'Нет', 5, '2022-12-04 00:00:00', 5),
(9, 9, '2022-12-06 00:00:00', '2022-12-06 00:00:00', 4, '60.0', '2022-12-06 00:00:00', 780, 'Безналичными', 'Нет', 6, '2022-12-06 00:00:00', 6),
(10, 10, '2022-12-07 00:00:00', '2022-12-07 00:00:00', 5, '70.0', '2022-12-07 00:00:00', 2000, 'Наличными', 'Нет', 7, '2022-12-07 00:00:00', 7);

-- --------------------------------------------------------

--
-- Структура таблицы `TaxStatus`
--

CREATE TABLE IF NOT EXISTS `TaxStatus` (
  `UID` tinyint(4) NOT NULL,
  `Name` varchar(10) DEFAULT NULL,
  PRIMARY KEY (`UID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Дамп данных таблицы `TaxStatus`
--

INSERT INTO `TaxStatus` (`UID`, `Name`) VALUES
(1, 'Оплачен'),
(2, 'Не оплачен'),
(3, 'Добавлен'),
(4, 'Превышен'),
(5, 'Временный');

--
-- Ограничения внешнего ключа сохраненных таблиц
--

--
-- Ограничения внешнего ключа таблицы `Books`
--
ALTER TABLE `Books`
  ADD CONSTRAINT `Books_ibfk_1` FOREIGN KEY (`Cover`) REFERENCES `Covers` (`UID`),
  ADD CONSTRAINT `Books_ibfk_2` FOREIGN KEY (`Author`) REFERENCES `Authors` (`UID`),
  ADD CONSTRAINT `Books_ibfk_3` FOREIGN KEY (`Genre`) REFERENCES `Genres` (`UID`),
  ADD CONSTRAINT `Books_ibfk_4` FOREIGN KEY (`UID`) REFERENCES `OrderDetails` (`UID`);

--
-- Ограничения внешнего ключа таблицы `Clients`
--
ALTER TABLE `Clients`
  ADD CONSTRAINT `Clients_ibfk_1` FOREIGN KEY (`OrdersHistory`) REFERENCES `OrdersHistory` (`UID`);

--
-- Ограничения внешнего ключа таблицы `Orders`
--
ALTER TABLE `Orders`
  ADD CONSTRAINT `Orders_ibfk_1` FOREIGN KEY (`TaxStatus`) REFERENCES `TaxStatus` (`UID`),
  ADD CONSTRAINT `Orders_ibfk_2` FOREIGN KEY (`UID`) REFERENCES `Checks` (`Order`),
  ADD CONSTRAINT `Orders_ibfk_3` FOREIGN KEY (`State`) REFERENCES `OrderStatus` (`UID`),
  ADD CONSTRAINT `Orders_ibfk_4` FOREIGN KEY (`Client`) REFERENCES `Clients` (`UID`);

--
-- Ограничения внешнего ключа таблицы `OrdersHistory`
--
ALTER TABLE `OrdersHistory`
  ADD CONSTRAINT `OrdersHistory_ibfk_1` FOREIGN KEY (`State`) REFERENCES `OrderStatus` (`UID`);

--
-- Ограничения внешнего ключа таблицы `OrederDetailsStatus`
--
ALTER TABLE `OrederDetailsStatus`
  ADD CONSTRAINT `OrederDetailsStatus_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `OrderDetails` (`ConvergenceState`);

--
-- Ограничения внешнего ключа таблицы `PurchaseOrderDetails`
--
ALTER TABLE `PurchaseOrderDetails`
  ADD CONSTRAINT `PurchaseOrderDetails_ibfk_1` FOREIGN KEY (`PurchaseOrder`) REFERENCES `PurchaseOrders` (`UID`);

--
-- Ограничения внешнего ключа таблицы `PurchaseOrders`
--
ALTER TABLE `PurchaseOrders`
  ADD CONSTRAINT `PurchaseOrders_ibfk_1` FOREIGN KEY (`UID`) REFERENCES `OrderDetails` (`PurchaseOrder`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
