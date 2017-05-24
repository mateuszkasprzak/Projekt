-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 24 Maj 2017, 21:12
-- Wersja serwera: 5.5.55-0+deb8u1
-- Wersja PHP: 5.6.30-0+deb8u1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza danych: `wliszka`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `prowadzacy`
--

CREATE TABLE IF NOT EXISTS `prowadzacy` (
`id` int(11) unsigned NOT NULL,
  `tytul` varchar(20) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `nazwisko` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `imie` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL,
  `mail` varchar(50) DEFAULT NULL,
  `strona` varchar(50) DEFAULT NULL,
  `Siedziba` varchar(50) CHARACTER SET utf8 COLLATE utf8_polish_ci NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `prowadzacy`
--

INSERT INTO `prowadzacy` (`id`, `tytul`, `nazwisko`, `imie`, `mail`, `strona`, `Siedziba`) VALUES
(1, 'dr hab.', 'Woch', 'Wiesław Marek', 'wmwoch@agh.edu.pl', 'http://home.agh.edu.pl/~wmwoch', '	C-2, II p., pok. 202'),
(2, 'dr inż.', 'Ćmiel', 'Adam', 'cmiel@agh.edu.pl', 'http://home.agh.edu.pl/~cmiel', '	P-A3-A4, III, 311a'),
(3, 'dr hab.', 'Horzyk', 'Adrian', 'horzyk@agh.edu.pl', 'http://home.agh.edu.pl/~horzyk', 'C-3, II p., pok. 205'),
(4, 'dr', 'Góra', 'Michał', 'gora@agh.edu.pl', 'http://home.agh.edu.pl/~gora', ''),
(5, 'dr', 'Wach-Michalik', 'Anna', 'wach@agh.edu.pl', NULL, ''),
(6, 'dr inż.', 'Kraszewska', 'Marta', 'martak@agh.edu.pl', 'http://home.agh.edu.pl/~martak', ''),
(7, 'prof. dr hab. inż.', 'Byrski', 'Witold', 'wby@agh.edu.pl', NULL, ''),
(8, 'dr inż.', 'Pawlik', 'Piotr', 'piotrus@agh.edu.pl', 'http://home.agh.edu.pl/~piotrus/', ''),
(9, 'dr', 'Orchel', 'Beata', 'orchel@agh.edu.pl', NULL, ''),
(10, 'prof. dr hab.', 'Kotulski', 'Leszek', 'kotulski@agh.edu.pl', NULL, ''),
(11, 'mgr inż. ', 'Pańszczyk', 'Artur', 'panart@agh.edu.pl', NULL, 'C-3, II p., pok. 214'),
(12, 'dr inż.', 'Felis', 'Józef', 'felis@agh.edu.pl', NULL, 'D-1, ul. Reymonta 9, III p., pok. 309'),
(13, 'dr inż.', 'Szymczyk', 'Magdalena', 'Magdalena.Szymczyk@agh.edu.pl', 'http://home.agh.edu.pl/~mszymcz', '211, pawilon C-3, II piętro'),
(14, 'dr hab. inż.', 'Szymczyk', 'Piotr', 'Piotr.Szymczyk@agh.edu.pl', 'http://home.agh.edu.pl/~piotrs', '211, pawilon C-3, II piętro'),
(15, 'dr inż', 'Niewolski', 'Janusz', 'janiewol@agh.edu.pl', NULL, ''),
(16, 'dr', 'Marczuk', 'Radosław', 'marczuk@agh.edu.pl', NULL, ''),
(17, 'dr hab. inż.', 'Oprzędkiewicz', 'Krzysztof', 'kop@agh.edu.pl', NULL, 'C-3, parter, pok. 6'),
(18, 'dr inż.', 'Zalewski', 'Janusz', NULL, NULL, 'D-1, ul. Reymonta 9, III p., pok. 308'),
(19, 'mgr', 'Orlicki', 'Tomasz', 'torlicki@agh.edu.pl', NULL, 'pokój: 210'),
(20, 'mgr', 'Ruchlewicz', 'Milan', 'rmilan@agh.edu.pl', NULL, 'pokój: 211');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indexes for table `prowadzacy`
--
ALTER TABLE `prowadzacy`
 ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT dla tabeli `prowadzacy`
--
ALTER TABLE `prowadzacy`
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=21;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
