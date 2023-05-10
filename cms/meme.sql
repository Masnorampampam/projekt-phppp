-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Czas generowania: 10 Maj 2023, 14:38
-- Wersja serwera: 10.4.24-MariaDB
-- Wersja PHP: 8.0.19

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Baza danych: `meme`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `post`
--

CREATE TABLE `post` (
  `id` int(11) NOT NULL,
  `timestamp` datetime NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `filename` varchar(96) NOT NULL,
  `title` text NOT NULL,
  `authorId` int(11) NOT NULL,
  `removed` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `post`
--

INSERT INTO `post` (`id`, `timestamp`, `filename`, `title`, `authorId`, `removed`) VALUES
(1, '2023-05-10 14:24:21', 'img/701b2aa028caf14be171955f60fb74d9a9687e6e2830e573ede30fd566aa26ee.webp', '1234', 0, 1),
(2, '2023-05-10 14:25:33', 'img/d462672040e1d408f54d41ab206d6f54647ccb92ed193b084d4500cc72c07742.webp', '1234', 0, 1),
(3, '2023-05-10 14:26:47', 'img/654444d3a844829f675eba9e171bebf097628a6eea28f6e00f450ca3ceacccc0.webp', '12345', 0, 1),
(4, '2023-05-10 14:31:21', 'img/e193570f6127be1fa10dbb91749b09aacc49b42a861b24a1edfbee50f597215f.webp', 'chu', 1, 1),
(5, '2023-05-10 14:32:14', 'img/98b32374164efec5a6cadc2e7cac408d17fe4e51d272a75b6ea791aed0b2d8e5.webp', 'chujhk1234', 1, 0),
(6, '2023-05-10 14:37:24', 'img/dd3e15555f3405b73ecd0132f0a313ba55ae34b7d97a26d35b5be1ea1c998e5b.webp', 'cyganuch', 1, 0);

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `user`
--

CREATE TABLE `user` (
  `id` int(11) NOT NULL,
  `email` varchar(128) NOT NULL,
  `password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Zrzut danych tabeli `user`
--

INSERT INTO `user` (`id`, `email`, `password`) VALUES
(1, 'chuj@wp.pl', '$argon2i$v=19$m=65536,t=4,p=1$S0JxeUlGTkY5VmFqeDlqcA$9zW9NbBcnps6xWrD16SbDPfGO7QTqusNUGNsbEcrFQo');

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `vote`
--

CREATE TABLE `vote` (
  `id` int(11) NOT NULL,
  `post_id` int(11) NOT NULL,
  `score` int(11) NOT NULL,
  `user_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `post`
--
ALTER TABLE `post`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- Indeksy dla tabeli `vote`
--
ALTER TABLE `vote`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT dla zrzuconych tabel
--

--
-- AUTO_INCREMENT dla tabeli `post`
--
ALTER TABLE `post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT dla tabeli `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT dla tabeli `vote`
--
ALTER TABLE `vote`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
