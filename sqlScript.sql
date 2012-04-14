-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Računalo: localhost
-- Vrijeme generiranja: Tra 14, 2012 u 02:50 PM
-- Verzija poslužitelja: 5.1.61
-- PHP verzija: 5.3.3-1ubuntu9.10

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Baza podataka: `auth`
--

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `albums`
--

CREATE TABLE IF NOT EXISTS `albums` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `artist` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

--
-- Izbacivanje podataka za tablicu `albums`
--

INSERT INTO `albums` (`id`, `artist`, `title`) VALUES
(1, 'Paolo Nutine', 'ispravljeni'),
(2, 'Florence', 'Titanic'),
(3, 'SomeDirector', 'Hangover'),
(4, 'Andre Rieu', 'Forever Vienna'),
(5, 'Sade', 'Soldier of Love'),
(7, 'novi album', 'novi izvo?a?');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `movies`
--

CREATE TABLE IF NOT EXISTS `movies` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `director` varchar(100) NOT NULL,
  `title` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Izbacivanje podataka za tablicu `movies`
--

INSERT INTO `movies` (`id`, `director`, `title`) VALUES
(1, 'Paolo Nutine', 'Movie1'),
(2, 'Florence', 'Titanic'),
(3, 'SomeDirector', 'Hangover'),
(4, 'Andre Rieu', 'Forever Vienna'),
(5, 'Sade', 'Soldier of Love');

-- --------------------------------------------------------

--
-- Tablična struktura za tablicu `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `salt` varchar(50) NOT NULL,
  `role` varchar(50) NOT NULL,
  `date_created` datetime NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Izbacivanje podataka za tablicu `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `salt`, `role`, `date_created`) VALUES
(1, 'admin', 'password', '40bd001563085fc35165329ea1ff5c5ecbdbbeef', 'administrator', '2012-03-10 17:30:34');
