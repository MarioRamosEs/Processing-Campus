-- phpMyAdmin SQL Dump
-- version 3.3.7deb5build0.10.10.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 15-09-2011 a las 19:13:53
-- Versión del servidor: 5.1.49
-- Versión de PHP: 5.3.3-1ubuntu9.5

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `alumnos`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `asteroids`
--

CREATE TABLE IF NOT EXISTS `asteroids` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(15) NOT NULL,
  `disparos` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

--
-- Volcar la base de datos para la tabla `asteroids`
--

INSERT INTO `asteroids` (`id`, `nombre`, `disparos`) VALUES
(3, 'Marcos', 66),
(1, 'Fuckencio', 30),
(2, 'Mario', 69),
(6, 'marirena\n', 2);
