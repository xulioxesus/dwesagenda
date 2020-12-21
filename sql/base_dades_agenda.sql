-- phpMyAdmin SQL Dump
-- version 3.2.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Temps de generació: 14-01-2013 a les 20:23:13
-- Versió del servidor: 5.1.37
-- PHP versió: 5.3.0

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";

--
-- Base de dades: `agenda`
--

-- --------------------------------------------------------

--
-- Estructura de la taula `contactes`
--

DROP TABLE IF EXISTS `contactes`;
CREATE TABLE IF NOT EXISTS `contactes` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nom` varchar(20) CHARACTER SET utf8 NOT NULL,
  `cognoms` varchar(35) CHARACTER SET utf8 DEFAULT NULL,
  `direccio` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  `localitat` varchar(25) CHARACTER SET utf8 DEFAULT NULL,
  `provincia` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `cp` varchar(5) CHARACTER SET utf8 DEFAULT NULL,
  `telefon1` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `telefon2` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `fax` varchar(15) CHARACTER SET utf8 DEFAULT NULL,
  `mail` varchar(50) CHARACTER SET utf8 DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=16;

--
-- Bolcant dades de la taula `contactes`
--

INSERT INTO `contactes` (`id`, `nom`, `cognoms`, `direccio`, `localitat`, `provincia`, `cp`, `telefon1`, `telefon2`, `fax`, `mail`) VALUES
(1, 'Andreu', 'Boltanya Pitarch', 'C/ Mealla, 19', 'Castelló de la Plana', 'Castelló', '12003', '964041235', NULL, NULL, 'mailo@gmail.com'),
(2, 'Pedro', 'Amor Beltran', 'C/- Amadeo López, 23', 'Castelló de la Plana', 'Castelló', '12001', '964244312', '619989898', '964244313', 'mailo@gmail.com'),
(3, 'Ana', 'Ansuategui Roig', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(4, 'Arcadi', 'Montes Gasulla', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(5, 'Pep', 'Gimeno Bernat', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(6, 'Pedro', 'Garrido Delas', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(7, 'Juan', 'Bartoll Mon', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(8, 'Paco', 'Llopis', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(9, 'Dani', 'Polo Segarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(10, 'Daniela', 'Polo Segarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(11, 'Aranxa', 'Pulido Benafeli', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(12, 'Jorge', 'Roig Mendoza', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(13, 'Sara', 'Tirado Polo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(14, 'Bartolo', 'Bartali Polo', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL),
(15, 'Diego', 'Polo Segarra', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);