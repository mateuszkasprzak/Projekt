-- phpMyAdmin SQL Dump
-- version 4.2.12deb2+deb8u2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Czas generowania: 25 Maj 2017, 17:14
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
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1;

--
-- Zrzut danych tabeli `prowadzacy`
--

INSERT INTO `prowadzacy` (`id`, `tytul`, `nazwisko`, `imie`, `mail`, `strona`, `Siedziba`) VALUES
(1, 'dr hab.', 'Woch', 'Wiesław Marek', 'wmwoch@agh.edu.pl', 'http://home.agh.edu.pl/~wmwoch', '	C-2, II p., 202'),
(2, 'dr inż.', 'Ćmiel', 'Adam', 'cmiel@agh.edu.pl', 'http://home.agh.edu.pl/~cmiel', '	P-A3-A4, III p., 311a'),
(3, 'dr hab.', 'Horzyk', 'Adrian', 'horzyk@agh.edu.pl', 'http://home.agh.edu.pl/~horzyk', 'C-3, II p., 205'),
(4, 'dr', 'Góra', 'Michał', 'gora@agh.edu.pl', 'http://home.agh.edu.pl/~gora', 'P-A3-A4, III p., 308'),
(5, 'dr', 'Wach-Michalik', 'Anna', 'wach@agh.edu.pl', NULL, 'P-A3-A4, III p., 312a'),
(6, 'dr inż.', 'Kraszewska', 'Marta', 'martak@agh.edu.pl', 'http://home.agh.edu.pl/~martak', 'C-3, II p., 216'),
(7, 'prof. dr hab. inż.', 'Byrski', 'Witold', 'wby@agh.edu.pl', NULL, 'B-1, III p., 302'),
(8, 'dr inż.', 'Pawlik', 'Piotr', 'piotrus@agh.edu.pl', 'http://home.agh.edu.pl/~piotrus/', 'C-3, I p., 106'),
(9, 'dr', 'Orchel', 'Beata', 'orchel@agh.edu.pl', NULL, 'B-7, I p., 28'),
(10, 'prof. dr hab.', 'Kotulski', 'Leszek', 'kotulski@agh.edu.pl', NULL, 'C-2, IV p., 425'),
(11, 'mgr inż. ', 'Pańszczyk', 'Artur', 'panart@agh.edu.pl', NULL, 'C-3, II p., 214'),
(12, 'dr inż.', 'Felis', 'Józef', 'felis@agh.edu.pl', 'http://home.agh.edu.pl/~kmtmipa/', 'D-1, III p., 309'),
(13, 'dr inż.', 'Szymczyk', 'Magdalena', 'Magdalena.Szymczyk@agh.edu.pl', 'http://home.agh.edu.pl/~mszymcz', 'C-3, II p., 211'),
(14, 'dr hab. inż.', 'Szymczyk', 'Piotr', 'Piotr.Szymczyk@agh.edu.pl', 'http://home.agh.edu.pl/~piotrs', 'C-3, II p., 211'),
(15, 'dr inż', 'Niewolski', 'Janusz', 'janiewol@agh.edu.pl', NULL, 'C-1, niski parter, 08'),
(16, 'dr', 'Marczuk', 'Radosław', 'marczuk@agh.edu.pl', NULL, 'D-1, III p., 304'),
(17, 'dr hab. inż.', 'Oprzędkiewicz', 'Krzysztof', 'kop@agh.edu.pl', NULL, 'C-3, parter, 6'),
(18, 'dr inż.', 'Zalewski', 'Janusz', 'zaljan@agh.edu.pl', NULL, 'D-1, III p., 308'),
(19, 'mgr', 'Orlicki', 'Tomasz', 'torlicki@agh.edu.pl', 'http://www.swfis.agh.edu.pl/kadra.php?id=37', 'U-12, II p., 210'),
(20, 'mgr', 'Ruchlewicz', 'Milan', 'rmilan@agh.edu.pl', 'http://www.swfis.agh.edu.pl/kadra.php?id=10', 'U-12, II p., 211'),
(21, 'dr inż.', 'Samek', 'Lucyna', 'lucyna.samek@fis.agh.edu.pl', NULL, 'D-11, parter, 27'),
(22, 'dr', 'Ostachowicz', 'Beata', 'ostachowicz@novell.ftj.agh.edu.pl', NULL, 'D-11, parter, 26'),
(23, 'mgr inż.', 'Sikora', 'Rafał', 'rafal.sikora@fis.agh.edu.pl', 'http://home.agh.edu.pl/~rsikora', 'D-11, I p., 120'),
(24, 'dr inż.', 'Świebocka-Więk', 'Joanna', 'jsw@agh.edu.pl', 'http://home.agh.edu.pl/~jsw', 'D-10, II p., 216'),
(25, 'mgr', 'Opioła', 'Zawisza', 'zopiola@agh.edu.pl', NULL, 'U-12, I p., 105'),
(26, 'mgr', 'Biel', 'Piotr', 'pbiel@agh.edu.pl', NULL, 'U-12, II p., 204'),
(31, 'dr inż.', 'Skruch', 'Paweł', 'pawel.skruch@agh.edu.pl', NULL, 'B-1, III p., pok. 303'),
(32, 'dr inż.', 'Długosz', 'Marek', 'mdlugosz@agh.edu.pl', NULL, 'B-1, III p., pok. 315b');

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
MODIFY `id` int(11) unsigned NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=33;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
