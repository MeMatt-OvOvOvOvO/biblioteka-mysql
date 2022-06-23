-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 13 Mar 2022, 16:18
-- Wersja serwera: 10.4.22-MariaDB
-- Wersja PHP: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `library`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `library`
--

CREATE TABLE `library` (
  `ID` int(11) NOT NULL,
  `AUTHORS` varchar(255) NOT NULL,
  `Title` varchar(255) NOT NULL,
  `Release_date` char(10) NOT NULL,
  `ISBN` char(20) NOT NULL,
  `Format` char(3) NOT NULL,
  `Pages` smallint(6) NOT NULL,
  `Description` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `library`
--

INSERT INTO `library` (`ID`, `AUTHORS`, `Title`, `Release_date`, `ISBN`, `Format`, `Pages`, `Description`) VALUES
(9, 'Author3', 'Title3', '8923', '6734572890234', 'pdf', 872, 'Desc3'),
(10, 'Author4', 'Title4', '5234', '3789234567213', 'pdf', 981, 'Desc4'),
(11, 'zcxv', 'zxcv', 'zxcv', 'zxcvz', 'xcv', 140, 'cvzxcv'),
(12, 'asdfasdf', 'sdafsdfa', 'fasdf', 'asdfa', 'sdf', 40, 'fasdfasd'),
(13, 'asdf', 'sdf', '22', '12', '12', 12, '12'),
(14, 'Author', 'zxcv', 'zxcv', 'zxcvz', 'xcv', 120, 'Desc3');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `users`
--

CREATE TABLE `users` (
  `mail` varchar(150) NOT NULL,
  `login` varchar(150) NOT NULL,
  `haslo` varchar(150) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `users`
--

INSERT INTO `users` (`mail`, `login`, `haslo`) VALUES
('mj4nicki@gmail.com', '11', '22'),
('mm@asdf.com', '33', '*AEA73029F4DC11A88BA257A99DC751663BD0A4CB'),
('mmmrod@wp.pl', '11', '22'),
('rsg@adf.co', '33', '*AEA73029F4DC11A88BA257A99DC751663BD0A4CB');

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `library`
--
ALTER TABLE `library`
  ADD PRIMARY KEY (`ID`);

--
-- Indeksy dla tabeli `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`mail`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `library`
--
ALTER TABLE `library`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
