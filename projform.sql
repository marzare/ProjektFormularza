-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Dec 06, 2023 at 10:13 PM
-- Wersja serwera: 10.4.28-MariaDB
-- Wersja PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projform`
--

-- --------------------------------------------------------

--
-- Struktura tabeli dla tabeli `dane`
--

CREATE TABLE `dane` (
  `id` int(11) NOT NULL,
  `firstName` varchar(30) NOT NULL,
  `lastName` varchar(30) NOT NULL,
  `dob` date NOT NULL,
  `email` varchar(30) NOT NULL,
  `phone` varchar(10) NOT NULL,
  `state` varchar(30) NOT NULL,
  `gender` enum('male','female') NOT NULL,
  `newsletter` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `dane`
--

INSERT INTO `dane` (`id`, `firstName`, `lastName`, `dob`, `email`, `phone`, `state`, `gender`, `newsletter`) VALUES
(1, 'Marcel', 'Zarębski', '2006-01-23', 'marzare06@gmail.com', '531541310', 'mazowieckie', 'male', 1),
(2, 'Marcel', 'Zarębski', '2006-01-23', 'marzare06@gmail.com', '531541310', 'mazowieckie', 'male', 1);

--
-- Indeksy dla zrzutów tabel
--

--
-- Indeksy dla tabeli `dane`
--
ALTER TABLE `dane`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `dane`
--
ALTER TABLE `dane`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
