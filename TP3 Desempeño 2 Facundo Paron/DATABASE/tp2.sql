-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 18-11-2023 a las 03:47:49
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `tp2`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol`
--

CREATE TABLE `rol` (
  `id` int(11) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `rol`
--

INSERT INTO `rol` (`id`, `nombre_rol`) VALUES
(1, 'Administrador'),
(2, 'Usuario Normal'),
(3, 'Soporte Tecnico'),
(4, 'Analista');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud`
--

CREATE TABLE `solicitud` (
  `id` int(11) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `descripcion` varchar(1000) NOT NULL,
  `id_usuario` int(11) NOT NULL,
  `fecha_de_carga` datetime NOT NULL,
  `id_tipo` int(11) NOT NULL,
  `fecha_est` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `solicitud`
--

INSERT INTO `solicitud` (`id`, `titulo`, `descripcion`, `id_usuario`, `fecha_de_carga`, `id_tipo`, `fecha_est`) VALUES
(1, 'titulo', 'descripcion', 1, '2023-11-14 02:47:49', 1, '2023-11-21 22:47:49'),
(17, 'faasdasdasdasdasd', 'asdasdasdasdasd', 1, '2023-11-14 03:33:51', 2, '2023-11-17 03:33:51'),
(18, 'faasdasdasdasdasd', 'asdasdasdasdasd', 1, '2023-11-14 03:42:07', 2, '2023-11-17 03:42:07'),
(19, 'faasdasdasdasdasd', 'asdasdasdasdasd', 1, '2023-11-14 03:42:23', 2, '2023-11-17 03:42:23'),
(20, 'faasdasdasdasdasd', 'asdasdasdasdasd', 1, '2023-11-14 03:43:49', 2, '2023-11-17 03:43:49'),
(21, 'faasdasdasdasdasd', 'asdasdasdasdasd', 1, '2023-11-14 03:44:05', 2, '2023-11-17 03:44:05'),
(22, 'asdasdasdasdasdasd', 'asdasdasdasdasd', 1, '2023-11-14 03:44:12', 3, '2023-11-15 03:44:12'),
(23, 'asdasdasd', 'asdadsasd', 1, '2023-11-14 03:45:06', 2, '2023-11-17 03:45:06'),
(24, 'asdasdasd', 'asdasdasd', 1, '2023-11-14 03:46:08', 2, '2023-11-17 03:46:08'),
(25, 'asdasd', 'asdasda', 1, '2023-11-18 03:01:56', 2, '2023-11-21 03:01:56'),
(26, 'asdasdsada', 'asdasd', 1, '2023-11-18 03:34:01', 3, '2023-11-19 03:34:01'),
(27, 'asdsadasd', 'asd', 1, '2023-11-18 03:35:56', 1, '2023-11-25 03:35:56'),
(28, 'dasdasd', 'asdasd', 1, '2023-11-18 03:38:12', 0, '0000-00-00 00:00:00');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitud_tipo`
--

CREATE TABLE `solicitud_tipo` (
  `id` int(11) NOT NULL,
  `tipo_soli` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `solicitud_tipo`
--

INSERT INTO `solicitud_tipo` (`id`, `tipo_soli`) VALUES
(1, 'Desarrollo de nuevas funcionalidades'),
(2, 'Reporte de errores'),
(3, 'Soporte técnico');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) NOT NULL,
  `email` varchar(100) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `apellido` varchar(100) NOT NULL,
  `imagen` varchar(100) NOT NULL,
  `clave` varchar(100) NOT NULL,
  `id_rol` int(11) NOT NULL,
  `ultimo_acceso` datetime NOT NULL,
  `activo` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `email`, `nombre`, `apellido`, `imagen`, `clave`, `id_rol`, `ultimo_acceso`, `activo`) VALUES
(1, 'facuparon@gmail.com', 'facundo', 'paron', 'f1.png', '81dc9bdb52d04dc20036dbd8313ed055', 1, '2023-11-17 11:42:09', 1),
(2, 'facuparon99@gmail.com', 'Facundo', 'Paron', 'f1.png', '81dc9bdb52d04dc20036dbd8313ed055', 3, '2023-11-16 10:51:09', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `rol`
--
ALTER TABLE `rol`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `solicitud_tipo`
--
ALTER TABLE `solicitud_tipo`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `rol`
--
ALTER TABLE `rol`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `solicitud`
--
ALTER TABLE `solicitud`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT de la tabla `solicitud_tipo`
--
ALTER TABLE `solicitud_tipo`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
