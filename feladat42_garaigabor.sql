-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2023. Sze 21. 20:21
-- Kiszolgáló verziója: 10.4.28-MariaDB
-- PHP verzió: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `feladat42_garaigabor`
--

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `beosztas0918`
--

CREATE TABLE `beosztas0918` (
  `DolgozoNeve` varchar(50) NOT NULL,
  `Nap` date NOT NULL,
  `Muszak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `beosztas0918`
--

INSERT INTO `beosztas0918` (`DolgozoNeve`, `Nap`, `Muszak`) VALUES
('Boros Anikó', '2023-09-18', 'délelõtt'),
('Braun Etelka', '2023-09-18', 'délelõtt'),
('Faragó László', '2023-09-18', 'délelõtt'),
('Halmos Lehel', '2023-09-18', 'délelõtt'),
('Horkai Attila', '2023-09-18', 'délelõtt'),
('Horkai Géza', '2023-09-18', 'délután'),
('Kádár Attila', '2023-09-18', 'délután'),
('Kalas Péter', '2023-09-18', 'délelõtt'),
('Kelemen Lehel', '2023-09-18', 'délelõtt'),
('Latorczai Attila', '2023-09-18', 'délelõtt'),
('Máté Tibor', '2023-09-18', 'délután'),
('Salamon Bálint', '2023-09-18', 'délután'),
('Szabó Bálint', '2023-09-18', 'délelõtt'),
('Verpeléti Géza', '2023-09-18', 'délután'),
('Zoltai Mariann', '2023-09-18', 'délután');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `beosztas0919`
--

CREATE TABLE `beosztas0919` (
  `DolgozoNeve` varchar(50) NOT NULL,
  `Nap` date NOT NULL,
  `Muszak` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `beosztas0919`
--

INSERT INTO `beosztas0919` (`DolgozoNeve`, `Nap`, `Muszak`) VALUES
('Szabó Bálint', '2023-09-18', 'délelõtt'),
('Kádár Attila', '2023-09-18', 'délután'),
('Horkai Attila', '2023-09-18', 'délelõtt'),
('Zoltai Mariann', '2023-09-18', 'délután'),
('Faragó László', '2023-09-18', 'délelõtt'),
('Salamon Bálint', '2023-09-18', 'délután'),
('Latorczai Attila', '2023-09-18', 'délelõtt'),
('Horkai Géza', '2023-09-18', 'délután'),
('Kelemen Lehel', '2023-09-18', 'délelõtt'),
('Verpeléti Géza', '2023-09-18', 'délután'),
('Kalas Péter', '2023-09-18', 'délelõtt'),
('Boros Anikó', '2023-09-18', 'délelõtt'),
('Máté Tibor', '2023-09-18', 'délután'),
('Halmos Lehel', '2023-09-18', 'délelõtt'),
('Braun Etelka', '2023-09-18', 'délelõtt');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `csoportokadatai`
--

CREATE TABLE `csoportokadatai` (
  `Csoport` varchar(30) NOT NULL,
  `Engedely(zona)` varchar(20) DEFAULT NULL,
  `Engedely(ido)` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `csoportokadatai`
--

INSERT INTO `csoportokadatai` (`Csoport`, `Engedely(zona)`, `Engedely(ido)`) VALUES
('Alkalmazott', 'négyes', 'hétfõ,szerda'),
('HR', '', ''),
('IT', 'minden', 'hétvége'),
('Osztáyvezetõk', 'minden', 'hétvége'),
('Takarítók', 'minden', 'hétvége');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `dolgozokadatai`
--

CREATE TABLE `dolgozokadatai` (
  `DolgozoNeve` varchar(50) NOT NULL,
  `Engedely(ido)` varchar(20) NOT NULL,
  `Csoport` varchar(30) NOT NULL,
  `BelepesiMod` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `dolgozokadatai`
--

INSERT INTO `dolgozokadatai` (`DolgozoNeve`, `Engedely(ido)`, `Csoport`, `BelepesiMod`) VALUES
('Boros Anikó', 'munkaidő', 'IT', 'kártya vagy pin'),
('Braun Etelka', 'mindig', 'IT', 'kártya vagy pin'),
('Faragó László', 'munkaidő', 'Alkalmazott', 'kártya'),
('Halmos Lehel', 'mindig', 'Osztáyvezetõk', 'kártya és pin'),
('Horkai Attila', 'mindig', 'Osztáyvezetõk', 'kártya és pin'),
('Horkai Géza', 'munkaidő', 'Takarítók', 'kártya'),
('Kádár Attila', 'munkaidő', 'Takarítók', 'kártya '),
('Kalas Péter', 'mindig', 'Osztáyvezetõk', 'kártya és pin'),
('Kelemen Lehel', 'munkaidő', 'HR', 'kártya'),
('Latorczai Attila', 'munkaidő', 'Alkalmazott', 'kártya'),
('Máté Tibor', 'munkaidő', 'IT', 'kártya vagy pin'),
('Salamon Bálint', 'munkaidő', 'Alkalmazott', 'kártya'),
('Szabó Bálint', 'munkaidő', 'Takarítók', 'kártya'),
('Verpeléti Géza', 'munkaidő', 'HR', 'kártya'),
('Zoltai Mariann', 'mindig', 'Osztályvezetõk', 'kártya és pin');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osszesbelepes0918`
--

CREATE TABLE `osszesbelepes0918` (
  `DolgozoNeve` varchar(50) NOT NULL,
  `Nap` date NOT NULL,
  `Belepes(db)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osszesbelepes0918`
--

INSERT INTO `osszesbelepes0918` (`DolgozoNeve`, `Nap`, `Belepes(db)`) VALUES
('Szabó Bálint', '2023-09-18', 3),
('Kádár Attila', '2023-09-18', 2),
('Horkai Attila', '2023-09-18', 6),
('Zoltai Mariann', '2023-09-18', 3),
('Faragó László', '2023-09-18', 1),
('Salamon Bálint', '2023-09-18', 1),
('Latorczai Attila', '2023-09-18', 1),
('Horkai Géza', '2023-09-18', 3),
('Kelemen Lehel', '2023-09-18', 2),
('Verpeléti Géza', '2023-09-18', 1),
('Kalas Péter', '2023-09-18', 3),
('Boros Anikó', '2023-09-18', 3),
('Máté Tibor', '2023-09-18', 2),
('Halmos Lehel', '2023-09-18', 2),
('Braun Etelka', '2023-09-18', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `osszesbelepes0919`
--

CREATE TABLE `osszesbelepes0919` (
  `DolgozoNeve` varchar(50) NOT NULL,
  `Nap` date NOT NULL,
  `Belepes(db)` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `osszesbelepes0919`
--

INSERT INTO `osszesbelepes0919` (`DolgozoNeve`, `Nap`, `Belepes(db)`) VALUES
('Szabó Bálint', '2023-09-19', 3),
('Kádár Attila', '2023-09-19', 2),
('Horkai Attila', '2023-09-19', 6),
('Zoltai Mariann', '2023-09-19', 3),
('Faragó László', '2023-09-19', 1),
('Salamon Bálint', '2023-09-19', 1),
('Latorczai Attila', '2023-09-19', 1),
('Horkai Géza', '2023-09-19', 3),
('Kelemen Lehel', '2023-09-19', 2),
('Verpeléti Géza', '2023-09-19', 1),
('Kalas Péter', '2023-09-19', 3),
('Boros Anikó', '2023-09-19', 3),
('Máté Tibor', '2023-09-19', 2),
('Halmos Lehel', '2023-09-19', 2),
('Braun Etelka', '2023-09-19', 1);

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `zonabelepesek`
--

CREATE TABLE `zonabelepesek` (
  `BelepesAzonosito` int(11) NOT NULL,
  `Nap` date DEFAULT NULL,
  `Zona` varchar(10) NOT NULL,
  `DolgozoNeve` varchar(50) NOT NULL,
  `BelepesIdeje` time NOT NULL,
  `TavozasIdeje` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `zonabelepesek`
--

INSERT INTO `zonabelepesek` (`BelepesAzonosito`, `Nap`, `Zona`, `DolgozoNeve`, `BelepesIdeje`, `TavozasIdeje`) VALUES
(1, '2023-09-18', 'egyes', 'Szabó Bálint', '07:00:00', '09:50:00'),
(2, '2023-09-18', 'egyes', 'Szabó Bálint', '10:00:00', '12:50:00'),
(3, '2023-09-18', 'egyes', 'Szabó Bálint', '13:00:00', '15:00:00'),
(4, '2023-09-18', 'egyes', ' Kádár Attila', '14:00:00', '17:50:00'),
(5, '2023-09-18', 'egyes', 'Horkai Attila', '07:00:00', '07:50:00'),
(6, '2023-09-18', 'egyes', 'Horkai Attila', '07:00:00', '07:50:00'),
(7, '2023-09-18', 'kettes', 'Szabó Bálint', '10:00:00', '12:50:00'),
(8, '2023-09-18', 'kettes', 'Zoltai Mariann', '14:00:00', '16:50:00'),
(9, '2023-09-18', 'kettes', 'Zoltai Mariann', '14:00:00', '16:50:00'),
(10, '2023-09-18', 'kettes', 'Faragó László', '07:00:00', '15:00:00'),
(11, '2023-09-18', 'kettes', 'Horkai Attila', '08:00:00', '08:50:00'),
(12, '2023-09-18', 'kettes', 'Horkai Attila', '08:00:00', '08:50:00'),
(13, '2023-09-18', 'hármas', 'Szabó Bálint', '13:00:00', '15:00:00'),
(14, '2023-09-18', 'hármas', 'Zoltai Mariann', '17:00:00', '21:50:00'),
(15, '2023-09-18', 'hármas', 'Zoltai Mariann', '17:00:00', '21:50:00'),
(16, '2023-09-18', 'hármas', 'Salamon Bálint', '15:00:00', '22:00:00'),
(17, '2023-09-18', 'hármas', 'Horkai Attila', '09:00:00', '09:50:00'),
(18, '2023-09-18', 'hármas', 'Horkai Attila', '09:00:00', '09:50:00'),
(19, '2023-09-18', 'hármas', ' Latorczai Attila', '07:00:00', '15:00:00'),
(20, '2023-09-18', 'négyes', ' Horkai Géza', '14:00:00', '16:50:00'),
(21, '2023-09-18', 'négyes', ' Kelemen Lehel', '07:00:00', '11:50:00'),
(22, '2023-09-18', 'négyes', ' Kelemen Lehel', '13:00:00', '15:00:00'),
(23, '2023-09-18', 'négyes', ' Verpeléti Géza', '15:00:00', '22:00:00'),
(24, '2023-09-18', 'négyes', 'Kalas Péter', '07:00:00', '09:50:00'),
(25, '2023-09-18', 'négyes', 'Kalas Péter', '07:00:00', '09:50:00'),
(26, '2023-09-18', 'négyes', 'Horkai Attila', '10:00:00', '10:50:00'),
(27, '2023-09-18', 'négyes', 'Horkai Attila', '10:00:00', '10:50:00'),
(28, '2023-09-18', 'ötös', ' Horkai Géza', '17:00:00', '21:50:00'),
(29, '2023-09-18', 'ötös', 'Boros Anikó', '07:00:00', '09:50:00'),
(30, '2023-09-18', 'ötös', 'Boros Anikó', '10:00:00', '12:50:00'),
(31, '2023-09-18', 'ötös', 'Boros Anikó', '13:00:00', '15:00:00'),
(32, '2023-09-18', 'ötös', ' Máté Tibor', '15:00:00', '18:50:00'),
(33, '2023-09-18', 'ötös', ' Máté Tibor', '19:00:00', '22:00:00'),
(34, '2023-09-18', 'ötös', 'Halmos Lehel', '07:00:00', '11:50:00'),
(35, '2023-09-18', 'ötös', 'Halmos Lehel', '07:00:00', '11:50:00'),
(36, '2023-09-18', 'ötös', 'Kalas Péter', '10:00:00', '12:50:00'),
(37, '2023-09-18', 'ötös', 'Kalas Péter', '10:00:00', '12:50:00'),
(38, '2023-09-18', 'ötös', ' Braun Etelka', '07:00:00', '15:00:00'),
(39, '2023-09-18', 'ötös', 'Horkai Attila', '11:00:00', '11:50:00'),
(40, '2023-09-18', 'ötös', 'Horkai Attila', '11:00:00', '11:50:00'),
(41, '2023-09-18', 'hatos', 'Zoltai Mariann', '20:00:00', '22:00:00'),
(42, '2023-09-18', 'hatos', 'Zoltai Mariann', '20:00:00', '22:00:00'),
(43, '2023-09-18', 'hatos', ' Horkai Géza', '20:00:00', '22:00:00'),
(44, '2023-09-18', 'hatos', ' Kádár Attila', '18:00:00', '22:00:00'),
(45, '2023-09-18', 'hatos', 'Kalas Péter', '13:00:00', '15:00:00'),
(46, '2023-09-18', 'hatos', 'Kalas Péter', '13:00:00', '15:00:00'),
(47, '2023-09-18', 'hatos', 'Halmos Lehel', '13:00:00', '15:00:00'),
(48, '2023-09-18', 'hatos', 'Halmos Lehel', '13:00:00', '15:00:00'),
(49, '2023-09-18', 'hatos', 'Horkai Attila', '14:00:00', '15:00:00'),
(50, '2023-09-18', 'hatos', 'Horkai Attila', '14:00:00', '15:00:00'),
(51, '2023-09-19', 'egyes', 'Szabó Bálint', '07:00:00', '09:50:00'),
(52, '2023-09-19', 'egyes', 'Szabó Bálint', '10:00:00', '12:50:00'),
(53, '2023-09-19', 'egyes', 'Szabó Bálint', '13:00:00', '15:00:00'),
(54, '2023-09-19', 'egyes', ' Kádár Attila', '14:00:00', '17:50:00'),
(55, '2023-09-19', 'egyes', 'Horkai Attila', '07:00:00', '07:50:00'),
(56, '2023-09-19', 'egyes', 'Horkai Attila', '07:00:00', '07:50:00'),
(57, '2023-09-19', 'kettes', 'Szabó Bálint', '10:00:00', '12:50:00'),
(58, '2023-09-19', 'kettes', 'Zoltai Mariann', '14:00:00', '16:50:00'),
(59, '2023-09-19', 'kettes', 'Zoltai Mariann', '14:00:00', '16:50:00'),
(60, '2023-09-19', 'kettes', ' Faragó László', '07:00:00', '15:00:00'),
(61, '2023-09-19', 'kettes', 'Horkai Attila', '08:00:00', '08:50:00'),
(62, '2023-09-19', 'kettes', 'Horkai Attila', '08:00:00', '08:50:00'),
(63, '2023-09-19', 'hármas', 'Szabó Bálint', '13:00:00', '15:00:00'),
(64, '2023-09-19', 'hármas', 'Zoltai Mariann', '17:00:00', '21:50:00'),
(65, '2023-09-19', 'hármas', 'Zoltai Mariann', '17:00:00', '21:50:00'),
(66, '2023-09-19', 'hármas', 'Salamon Bálint', '15:00:00', '22:00:00'),
(67, '2023-09-19', 'hármas', 'Horkai Attila', '09:00:00', '09:50:00'),
(68, '2023-09-19', 'hármas', 'Horkai Attila', '09:00:00', '09:50:00'),
(69, '2023-09-19', 'hármas', ' Latorczai Attila', '07:00:00', '15:00:00'),
(70, '2023-09-19', 'négyes', ' Horkai Géza', '14:00:00', '16:50:00'),
(71, '2023-09-19', 'négyes', ' Kelemen Lehel', '07:00:00', '11:50:00'),
(72, '2023-09-19', 'négyes', ' Kelemen Lehel', '13:00:00', '15:00:00'),
(73, '2023-09-19', 'négyes', ' Verpeléti Géza', '15:00:00', '22:00:00'),
(74, '2023-09-19', 'négyes', 'Kalas Péter', '07:00:00', '09:50:00'),
(75, '2023-09-19', 'négyes', 'Kalas Péter', '07:00:00', '09:50:00'),
(76, '2023-09-19', 'négyes', 'Horkai Attila', '10:00:00', '10:50:00'),
(77, '2023-09-19', 'négyes', 'Horkai Attila', '10:00:00', '10:50:00'),
(78, '2023-09-19', 'ötös', ' Horkai Géza', '17:00:00', '21:50:00'),
(79, '2023-09-19', 'ötös', 'Boros Anikó', '07:00:00', '09:50:00'),
(80, '2023-09-19', 'ötös', 'Boros Anikó', '10:00:00', '12:50:00'),
(81, '2023-09-19', 'ötös', 'Boros Anikó', '13:00:00', '15:00:00'),
(82, '2023-09-19', 'ötös', ' Máté Tibor', '15:00:00', '18:50:00'),
(83, '2023-09-19', 'ötös', ' Máté Tibor', '19:00:00', '22:00:00'),
(84, '2023-09-19', 'ötös', 'Halmos Lehel', '07:00:00', '11:50:00'),
(85, '2023-09-19', 'ötös', 'Halmos Lehel', '07:00:00', '11:50:00'),
(86, '2023-09-19', 'ötös', 'Kalas Péter', '10:00:00', '12:50:00'),
(87, '2023-09-19', 'ötös', 'Kalas Péter', '10:00:00', '12:50:00'),
(88, '2023-09-19', 'ötös', ' Braun Etelka', '07:00:00', '15:00:00'),
(89, '2023-09-19', 'ötös', 'Horkai Attila', '11:00:00', '11:50:00'),
(90, '2023-09-19', 'ötös', 'Horkai Attila', '11:00:00', '11:50:00'),
(91, '2023-09-19', 'hatos', 'Zoltai Mariann', '20:00:00', '22:00:00'),
(92, '2023-09-19', 'hatos', 'Zoltai Mariann', '20:00:00', '22:00:00'),
(93, '2023-09-19', 'hatos', ' Horkai Géza', '20:00:00', '22:00:00'),
(94, '2023-09-19', 'hatos', ' Kádár Attila', '18:00:00', '22:00:00'),
(95, '2023-09-19', 'hatos', 'Kalas Péter', '13:00:00', '15:00:00'),
(96, '2023-09-19', 'hatos', 'Kalas Péter', '13:00:00', '15:00:00'),
(97, '2023-09-19', 'hatos', 'Halmos Lehel', '13:00:00', '15:00:00'),
(98, '2023-09-19', 'hatos', 'Halmos Lehel', '13:00:00', '15:00:00'),
(99, '2023-09-19', 'hatos', 'Horkai Attila', '14:00:00', '15:00:00'),
(100, '2023-09-19', 'hatos', 'Horkai Attila', '14:00:00', '15:00:00');

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `zonakadatai`
--

CREATE TABLE `zonakadatai` (
  `Zona` varchar(10) NOT NULL,
  `Csoport` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_hungarian_ci;

--
-- A tábla adatainak kiíratása `zonakadatai`
--

INSERT INTO `zonakadatai` (`Zona`, `Csoport`) VALUES
('hámas', 'Alkalmazott'),
('kettes', 'Alkalmazott'),
('négyes', 'HR'),
('ötös', 'IT'),
('hatos', 'Osztályvezetők'),
('egyes', 'Takarítók'),
('minden', 'Takarítók');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `beosztas0918`
--
ALTER TABLE `beosztas0918`
  ADD PRIMARY KEY (`DolgozoNeve`);

--
-- A tábla indexei `beosztas0919`
--
ALTER TABLE `beosztas0919`
  ADD KEY `fk_dolgozokadatai_beosztas0919` (`DolgozoNeve`);

--
-- A tábla indexei `csoportokadatai`
--
ALTER TABLE `csoportokadatai`
  ADD PRIMARY KEY (`Csoport`);

--
-- A tábla indexei `dolgozokadatai`
--
ALTER TABLE `dolgozokadatai`
  ADD PRIMARY KEY (`DolgozoNeve`),
  ADD KEY `fk_dolgozokadatai_csoportokadatai` (`Csoport`);

--
-- A tábla indexei `osszesbelepes0918`
--
ALTER TABLE `osszesbelepes0918`
  ADD KEY `fk_dolgozokadatai_osszesbelepes0918` (`DolgozoNeve`);

--
-- A tábla indexei `osszesbelepes0919`
--
ALTER TABLE `osszesbelepes0919`
  ADD KEY `fk_dolgozokadatai_osszesbelepes0919` (`DolgozoNeve`);

--
-- A tábla indexei `zonabelepesek`
--
ALTER TABLE `zonabelepesek`
  ADD PRIMARY KEY (`BelepesAzonosito`),
  ADD KEY `fk-zonabelepesek_dolgozoadatai` (`DolgozoNeve`),
  ADD KEY `fk_zonabelepesek_zonakadatai` (`Zona`);

--
-- A tábla indexei `zonakadatai`
--
ALTER TABLE `zonakadatai`
  ADD PRIMARY KEY (`Zona`),
  ADD KEY `fk_zonakadatai_csoportokadatai` (`Csoport`);

--
-- A kiírt táblák AUTO_INCREMENT értéke
--

--
-- AUTO_INCREMENT a táblához `zonabelepesek`
--
ALTER TABLE `zonabelepesek`
  MODIFY `BelepesAzonosito` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- Megkötések a kiírt táblákhoz
--

--
-- Megkötések a táblához `beosztas0918`
--
ALTER TABLE `beosztas0918`
  ADD CONSTRAINT `fk_dolgozokadatai_beosztas0918` FOREIGN KEY (`DolgozoNeve`) REFERENCES `dolgozokadatai` (`DolgozoNeve`);

--
-- Megkötések a táblához `beosztas0919`
--
ALTER TABLE `beosztas0919`
  ADD CONSTRAINT `fk_dolgozokadatai_beosztas0919` FOREIGN KEY (`DolgozoNeve`) REFERENCES `dolgozokadatai` (`DolgozoNeve`);

--
-- Megkötések a táblához `dolgozokadatai`
--
ALTER TABLE `dolgozokadatai`
  ADD CONSTRAINT `fk_dolgozokadatai_csoportokadatai` FOREIGN KEY (`Csoport`) REFERENCES `csoportokadatai` (`Csoport`);

--
-- Megkötések a táblához `osszesbelepes0918`
--
ALTER TABLE `osszesbelepes0918`
  ADD CONSTRAINT `fk_dolgozokadatai_osszesbelepes0918` FOREIGN KEY (`DolgozoNeve`) REFERENCES `dolgozokadatai` (`DolgozoNeve`);

--
-- Megkötések a táblához `osszesbelepes0919`
--
ALTER TABLE `osszesbelepes0919`
  ADD CONSTRAINT `fk_dolgozokadatai_osszesbelepes0919` FOREIGN KEY (`DolgozoNeve`) REFERENCES `dolgozokadatai` (`DolgozoNeve`);

--
-- Megkötések a táblához `zonabelepesek`
--
ALTER TABLE `zonabelepesek`
  ADD CONSTRAINT `fk-zonabelepesek_dolgozoadatai` FOREIGN KEY (`DolgozoNeve`) REFERENCES `dolgozokadatai` (`DolgozoNeve`),
  ADD CONSTRAINT `fk_zonabelepesek_zonakadatai` FOREIGN KEY (`Zona`) REFERENCES `zonakadatai` (`Zona`);

--
-- Megkötések a táblához `zonakadatai`
--
ALTER TABLE `zonakadatai`
  ADD CONSTRAINT `fk_zonakadatai_csoportokadatai` FOREIGN KEY (`Csoport`) REFERENCES `csoportokadatai` (`Csoport`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
