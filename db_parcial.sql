-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 08-09-2024 a las 05:48:40
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db_parcial`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `artistas`
--

CREATE TABLE `artistas` (
  `artista_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `apellido` varchar(100) DEFAULT NULL,
  `fecha_nacimiento` date DEFAULT NULL,
  `fecha_muerte` date DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `artistas`
--

INSERT INTO `artistas` (`artista_id`, `nombre`, `apellido`, `fecha_nacimiento`, `fecha_muerte`, `pais_id`) VALUES
(1, 'Juan', 'Pérez', '1965-07-20', NULL, 1),
(2, 'John', 'Doe', '1980-05-15', NULL, 2),
(3, 'Carlos', 'Ruiz', '1940-10-01', '2010-01-01', 3),
(4, 'María', 'García', '1990-09-12', NULL, 4),
(5, 'José', 'Silva', '1975-12-05', NULL, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `ciudades`
--

CREATE TABLE `ciudades` (
  `ciudad_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `pais_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `ciudades`
--

INSERT INTO `ciudades` (`ciudad_id`, `nombre`, `pais_id`) VALUES
(1, 'Ciudad de México', 1),
(2, 'Nueva York', 2),
(3, 'Madrid', 3),
(4, 'Buenos Aires', 4),
(5, 'Río de Janeiro', 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `datos_eventos`
--

CREATE TABLE `datos_eventos` (
  `evento_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `cantante_id` int(11) DEFAULT NULL,
  `fecha_evento` date DEFAULT NULL,
  `lugar_id` int(11) DEFAULT NULL,
  `ciudad_id` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `datos_eventos`
--

INSERT INTO `datos_eventos` (`evento_id`, `nombre`, `cantante_id`, `fecha_evento`, `lugar_id`, `ciudad_id`) VALUES
(1, 'Concierto de Juan Pérez', 1, '2024-09-10', 1, 1),
(2, 'Festival de John Doe', 2, '2024-10-20', 2, 2),
(3, 'Recital de Carlos Ruiz', 3, '2024-11-15', 3, 3),
(4, 'Show de María García', 4, '2024-12-01', 4, 4),
(5, 'Concierto de José Silva', 5, '2024-12-20', 5, 5);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `lugares`
--

CREATE TABLE `lugares` (
  `lugar_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL,
  `precio` decimal(10,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `lugares`
--

INSERT INTO `lugares` (`lugar_id`, `nombre`, `precio`) VALUES
(1, 'Auditorio Nacional', 1500.00),
(2, 'Madison Square Garden', 2000.00),
(3, 'Wanda Metropolitano', 1800.00),
(4, 'Luna Park', 1300.00),
(5, 'Maracaná', 2500.00);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `paises`
--

CREATE TABLE `paises` (
  `pais_id` int(11) NOT NULL,
  `nombre` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `paises`
--

INSERT INTO `paises` (`pais_id`, `nombre`) VALUES
(1, 'México'),
(2, 'Estados Unidos'),
(3, 'España'),
(4, 'Argentina'),
(5, 'Brasil');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD PRIMARY KEY (`artista_id`),
  ADD KEY `pais_id` (`pais_id`);

--
-- Indices de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD PRIMARY KEY (`ciudad_id`),
  ADD KEY `pais_id` (`pais_id`);

--
-- Indices de la tabla `datos_eventos`
--
ALTER TABLE `datos_eventos`
  ADD PRIMARY KEY (`evento_id`),
  ADD KEY `cantante_id` (`cantante_id`),
  ADD KEY `lugar_id` (`lugar_id`),
  ADD KEY `ciudad_id` (`ciudad_id`);

--
-- Indices de la tabla `lugares`
--
ALTER TABLE `lugares`
  ADD PRIMARY KEY (`lugar_id`);

--
-- Indices de la tabla `paises`
--
ALTER TABLE `paises`
  ADD PRIMARY KEY (`pais_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `artistas`
--
ALTER TABLE `artistas`
  MODIFY `artista_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `ciudades`
--
ALTER TABLE `ciudades`
  MODIFY `ciudad_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `datos_eventos`
--
ALTER TABLE `datos_eventos`
  MODIFY `evento_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `lugares`
--
ALTER TABLE `lugares`
  MODIFY `lugar_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `paises`
--
ALTER TABLE `paises`
  MODIFY `pais_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `artistas`
--
ALTER TABLE `artistas`
  ADD CONSTRAINT `artistas_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`pais_id`);

--
-- Filtros para la tabla `ciudades`
--
ALTER TABLE `ciudades`
  ADD CONSTRAINT `ciudades_ibfk_1` FOREIGN KEY (`pais_id`) REFERENCES `paises` (`pais_id`);

--
-- Filtros para la tabla `datos_eventos`
--
ALTER TABLE `datos_eventos`
  ADD CONSTRAINT `datos_eventos_ibfk_1` FOREIGN KEY (`cantante_id`) REFERENCES `artistas` (`artista_id`),
  ADD CONSTRAINT `datos_eventos_ibfk_2` FOREIGN KEY (`lugar_id`) REFERENCES `lugares` (`lugar_id`),
  ADD CONSTRAINT `datos_eventos_ibfk_3` FOREIGN KEY (`ciudad_id`) REFERENCES `ciudades` (`ciudad_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
