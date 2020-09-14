-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 14-09-2020 a las 04:44:42
-- Versión del servidor: 10.1.34-MariaDB
-- Versión de PHP: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cms-proadmin`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `brands`
--

CREATE TABLE `brands` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `brands`
--

INSERT INTO `brands` (`id`, `name`, `description`, `status`, `created`, `modified`) VALUES
(1, 'NIKE', 'ropa,calzados, accesorios', 1, '2020-09-11 01:20:34', '2020-09-11 01:20:34'),
(2, 'Adidas', 'ropa,calzados, accesorios', 1, '2020-09-11 01:22:08', '2020-09-11 01:22:08'),
(4, 'Microsoft', 'Tecnologia, software', 0, '2020-09-11 01:23:29', '2020-09-11 01:27:33'),
(5, 'Apple', 'Tecnologia', 1, '2020-09-12 02:27:42', '2020-09-12 02:27:42'),
(6, 'Samsung', 'Tecnologia', 1, '2020-09-12 02:28:01', '2020-09-12 02:28:01'),
(7, 'Tommy Hilfiger', 'Ropa, moda', 1, '2020-09-12 02:29:06', '2020-09-12 02:29:06'),
(8, 'Reebok', 'Ropa, zapatos, deportes', 1, '2020-09-12 02:30:25', '2020-09-12 02:30:25'),
(9, 'Nutilife', 'nutricion, accesorios', 1, '2020-09-12 02:32:35', '2020-09-12 02:32:35'),
(10, 'Nutrimarket', 'nutricion, accesorios', 1, '2020-09-12 02:32:42', '2020-09-12 02:32:42');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `carts`
--

CREATE TABLE `carts` (
  `id` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_stock` int(11) NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `carts`
--

INSERT INTO `carts` (`id`, `id_user`, `id_stock`, `quantity`, `status`, `created`, `modified`) VALUES
(3, 1, 3, 2, 0, '2020-09-13 04:32:39', '2020-09-13 04:32:39'),
(5, 1, 7, 1, 0, '2020-09-13 04:33:50', '2020-09-13 04:33:50'),
(6, 2, 5, 3, 0, '2020-09-13 04:34:09', '2020-09-13 04:34:09'),
(7, 2, 2, 1, 0, '2020-09-13 04:34:37', '2020-09-13 04:34:37'),
(8, 3, 2, 1, 0, '2020-09-13 04:35:32', '2020-09-13 04:35:32');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `categories`
--

CREATE TABLE `categories` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` text COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`, `status`, `created`, `modified`) VALUES
(1, 'calzado', 'todo tipo de calzado', 0, '2020-09-10 00:57:54', '2020-09-10 00:57:54'),
(2, 'smartphone', 'celulares de alta gama', 1, '2020-09-12 02:25:44', '2020-09-12 02:25:44'),
(3, 'franela', 'Ropa de vestir', 1, '2020-09-12 02:37:53', '2020-09-12 02:37:53'),
(4, 'jeans', 'Ropa de vestir', 1, '2020-09-12 02:38:00', '2020-09-12 02:38:00'),
(5, 'chemise', 'Ropa de vestir', 1, '2020-09-12 02:38:33', '2020-09-12 02:38:33'),
(6, 'vitaminas', 'Ropa de vestir', 1, '2020-09-12 02:38:46', '2020-09-12 02:38:46'),
(7, 'suplementos', 'Ropa de vestir', 1, '2020-09-12 02:38:54', '2020-09-12 02:38:54');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `coins`
--

CREATE TABLE `coins` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `symbol` varchar(10) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `coins`
--

INSERT INTO `coins` (`id`, `name`, `symbol`, `description`, `status`, `created`, `modified`) VALUES
(1, 'USD', '$', 'Dollar United stated', 1, '2020-09-12 03:34:32', '2020-09-12 03:34:32'),
(2, 'Bolivar', 'Bs', 'Bolivar Venezolano', 1, '2020-09-12 03:35:24', '2020-09-12 03:35:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `colors`
--

CREATE TABLE `colors` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `colors`
--

INSERT INTO `colors` (`id`, `name`, `description`, `status`, `created`, `modified`) VALUES
(1, 'Amarillo', 'color de zapatos', 1, '2020-09-11 02:23:52', '2020-09-11 02:26:52'),
(3, 'Blanco', 'color de celulares', 1, '2020-09-11 02:24:28', '2020-09-11 02:28:18'),
(4, 'plata', 'color de celulares', 1, '2020-09-11 02:24:43', '2020-09-11 02:27:55');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `gender`
--

CREATE TABLE `gender` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `gender`
--

INSERT INTO `gender` (`id`, `name`, `description`, `status`, `created`, `modified`) VALUES
(1, 'Female', 'girls', 1, '2020-09-12 03:14:09', '2020-09-12 03:14:09'),
(2, 'Male', 'Mens', 1, '2020-09-12 03:14:10', '2020-09-12 03:14:10'),
(3, 'child', 'boys', 1, '2020-09-12 03:15:36', '2020-09-12 03:15:36'),
(4, 'N/A', 'N/A', 1, '2020-09-12 03:15:36', '2020-09-12 03:15:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `presentations`
--

CREATE TABLE `presentations` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `presentations`
--

INSERT INTO `presentations` (`id`, `name`, `description`, `status`, `created`, `modified`) VALUES
(1, 'Capsulas', 'pastillas', 1, '2020-09-11 02:31:25', '2020-09-11 02:31:25'),
(3, 'Granulado', 'pastillas rx', 1, '2020-09-11 02:33:18', '2020-09-11 02:36:45'),
(4, 'zapatos', '', 1, '2020-09-12 04:39:07', '2020-09-12 04:39:07'),
(5, 'botas', '', 1, '2020-09-12 04:39:13', '2020-09-12 04:39:13'),
(6, 'botines', '', 1, '2020-09-12 04:39:18', '2020-09-12 04:39:18'),
(7, 'plus', 'ss', 1, '2020-09-12 04:55:01', '2020-09-12 04:55:01'),
(8, 'mini', 'ss', 1, '2020-09-12 04:55:17', '2020-09-12 04:55:17'),
(9, 'Generic', 'ss', 1, '2020-09-12 04:55:24', '2020-09-12 04:55:24');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `id_category` int(11) NOT NULL,
  `id_brand` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `specify_1` text COLLATE utf8_spanish_ci NOT NULL,
  `specify_2` text COLLATE utf8_spanish_ci NOT NULL,
  `status` int(4) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `id_category`, `id_brand`, `name`, `description`, `specify_1`, `specify_2`, `status`, `created`, `modified`) VALUES
(6, 1, 1, 'Nike Shox pro-5', ' SHOESss', 'especial para corrersss', 'tiene un peso de 3lb, hecho con tecnologia rx-222', 0, '2020-09-11 18:21:55', '2020-09-12 02:20:43'),
(8, 1, 2, 'Adidas ultraboost 20', ' SHOES', 'tenis Shoes', 'tecnologia md-1', 1, '2020-09-12 02:24:31', '2020-09-12 02:24:31'),
(9, 2, 5, 'Iphone 11 Pro Max 128GB', 'smartphone', '200px ', 'tecnologia ', 1, '2020-09-12 02:51:31', '2020-09-12 02:51:31'),
(10, 2, 5, 'Iphone 11 128GB', 'smartphone', '200px ', 'tecnologia ', 1, '2020-09-12 02:51:45', '2020-09-12 02:51:45'),
(11, 2, 5, 'Iphone 11 64GB', 'smartphone', '200px ', 'tecnologia ', 1, '2020-09-12 02:51:51', '2020-09-12 02:51:51'),
(12, 2, 5, 'Iphone 11 32GB', 'smartphone', '200px ', 'tecnologia ', 1, '2020-09-12 02:51:58', '2020-09-12 02:51:58'),
(13, 2, 6, 'Samsung S-10 64Gb', 'smartphone', '200px ', 'tecnologia ', 1, '2020-09-12 02:52:39', '2020-09-12 02:52:39'),
(14, 3, 7, 'franela tommy manga corta', 'cuello V', 'tela de algodon', '', 1, '2020-09-12 02:54:16', '2020-09-12 02:54:16'),
(15, 7, 10, 'Proteina xrt', 'suplemento pre-entrenamiento', '400 gr', '', 1, '2020-09-12 02:57:36', '2020-09-12 02:57:36');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `sizes`
--

CREATE TABLE `sizes` (
  `id` int(11) NOT NULL,
  `name` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `description` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `sizes`
--

INSERT INTO `sizes` (`id`, `name`, `description`, `status`, `created`, `modified`) VALUES
(1, 'S', 'talla pequena', 1, '2020-09-11 01:38:31', '2020-09-11 01:38:31'),
(2, 'M', 'talla Mediana', 1, '2020-09-11 01:38:44', '2020-09-11 01:38:44'),
(3, 'L', 'talla Grande', 1, '2020-09-11 01:38:51', '2020-09-11 01:38:51'),
(4, 'XL', 'talla Grande', 1, '2020-09-11 01:39:08', '2020-09-11 01:39:08'),
(5, '6', 'talla de zapato', 1, '2020-09-11 01:39:19', '2020-09-11 01:39:19'),
(6, '7', 'talla de zapato', 1, '2020-09-11 01:39:23', '2020-09-11 01:39:23'),
(7, '8', 'talla de zapato', 1, '2020-09-11 01:39:28', '2020-09-11 01:39:28'),
(8, '9', 'talla de zapato', 1, '2020-09-11 01:39:33', '2020-09-11 01:39:33'),
(9, '10', 'talla de zapato', 1, '2020-09-11 01:39:37', '2020-09-11 01:39:37'),
(11, '12', 'talla de zapato', 1, '2020-09-11 01:39:46', '2020-09-11 01:39:46'),
(12, '10.5', 'talla de zapatos', 1, '2020-09-11 01:39:57', '2020-09-11 01:46:43'),
(13, '32 Gb', 'Capacidad de smatphone', 1, '2020-09-12 04:56:42', '2020-09-12 04:56:42'),
(14, '64 Gb', 'Capacidad de smatphone', 1, '2020-09-12 04:56:47', '2020-09-12 04:56:47'),
(15, '128 Gb', 'Capacidad de smatphone', 1, '2020-09-12 04:56:53', '2020-09-12 04:56:53'),
(16, '256 Gb', 'Capacidad de smatphone', 1, '2020-09-12 04:56:58', '2020-09-12 04:56:58');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `stock`
--

CREATE TABLE `stock` (
  `id` int(11) NOT NULL,
  `id_product` int(11) NOT NULL,
  `id_color` int(11) NOT NULL,
  `id_presentation` int(11) NOT NULL,
  `id_size` int(11) NOT NULL,
  `id_coin` int(11) NOT NULL,
  `id_gender` int(11) NOT NULL,
  `price` double NOT NULL,
  `quantity` int(11) NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `stock`
--

INSERT INTO `stock` (`id`, `id_product`, `id_color`, `id_presentation`, `id_size`, `id_coin`, `id_gender`, `price`, `quantity`, `status`, `created`, `modified`) VALUES
(2, 6, 3, 4, 9, 1, 1, 75, 10, 1, '2020-09-12 04:46:57', '2020-09-12 04:46:57'),
(3, 6, 3, 4, 8, 1, 1, 75, 8, 1, '2020-09-12 04:48:23', '2020-09-12 04:48:23'),
(5, 8, 1, 4, 11, 1, 2, 63, 7, 1, '2020-09-12 04:50:27', '2020-09-12 04:50:27'),
(6, 10, 4, 7, 15, 1, 4, 1200, 3, 1, '2020-09-12 04:58:13', '2020-09-12 04:58:13'),
(7, 10, 4, 7, 13, 1, 4, 1000, 5, 1, '2020-09-12 04:58:37', '2020-09-12 05:02:40');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `email` varchar(50) COLLATE utf8_spanish_ci NOT NULL,
  `password` varchar(100) COLLATE utf8_spanish_ci NOT NULL,
  `status` int(11) NOT NULL,
  `created` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `modified` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_spanish_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `status`, `created`, `modified`) VALUES
(1, 'Marcos Damas', '', '', 0, '2020-09-12 20:49:28', '2020-09-12 20:49:28'),
(2, 'Luis Tundisi', '', '', 0, '2020-09-12 20:49:28', '2020-09-12 20:49:28'),
(3, 'Marbi Damas', '', '', 0, '2020-09-12 20:49:28', '2020-09-12 20:49:28'),
(4, 'Pedro Perez', '', '', 0, '2020-09-12 20:49:29', '2020-09-12 20:49:29');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `carts`
--
ALTER TABLE `carts`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_stock` (`id_stock`);

--
-- Indices de la tabla `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `id` (`id`);

--
-- Indices de la tabla `coins`
--
ALTER TABLE `coins`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `colors`
--
ALTER TABLE `colors`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `gender`
--
ALTER TABLE `gender`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `presentations`
--
ALTER TABLE `presentations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_category` (`id_category`),
  ADD KEY `id_brand` (`id_brand`);

--
-- Indices de la tabla `sizes`
--
ALTER TABLE `sizes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `stock`
--
ALTER TABLE `stock`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_color` (`id_color`),
  ADD KEY `id_presentation` (`id_presentation`),
  ADD KEY `id_producto` (`id_product`),
  ADD KEY `id_size` (`id_size`),
  ADD KEY `id_gender` (`id_gender`),
  ADD KEY `id_coin` (`id_coin`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `brands`
--
ALTER TABLE `brands`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT de la tabla `carts`
--
ALTER TABLE `carts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `coins`
--
ALTER TABLE `coins`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `colors`
--
ALTER TABLE `colors`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `gender`
--
ALTER TABLE `gender`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `presentations`
--
ALTER TABLE `presentations`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `sizes`
--
ALTER TABLE `sizes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de la tabla `stock`
--
ALTER TABLE `stock`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `carts`
--
ALTER TABLE `carts`
  ADD CONSTRAINT `carts_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `users` (`id`),
  ADD CONSTRAINT `carts_ibfk_2` FOREIGN KEY (`id_stock`) REFERENCES `stock` (`id`);

--
-- Filtros para la tabla `products`
--
ALTER TABLE `products`
  ADD CONSTRAINT `products_ibfk_1` FOREIGN KEY (`id_category`) REFERENCES `categories` (`id`),
  ADD CONSTRAINT `products_ibfk_2` FOREIGN KEY (`id_brand`) REFERENCES `brands` (`id`);

--
-- Filtros para la tabla `stock`
--
ALTER TABLE `stock`
  ADD CONSTRAINT `stock_ibfk_1` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `stock_ibfk_10` FOREIGN KEY (`id_coin`) REFERENCES `coins` (`id`),
  ADD CONSTRAINT `stock_ibfk_2` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `stock_ibfk_3` FOREIGN KEY (`id_presentation`) REFERENCES `presentations` (`id`),
  ADD CONSTRAINT `stock_ibfk_4` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `stock_ibfk_5` FOREIGN KEY (`id_color`) REFERENCES `colors` (`id`),
  ADD CONSTRAINT `stock_ibfk_6` FOREIGN KEY (`id_presentation`) REFERENCES `presentations` (`id`),
  ADD CONSTRAINT `stock_ibfk_7` FOREIGN KEY (`id_product`) REFERENCES `products` (`id`),
  ADD CONSTRAINT `stock_ibfk_8` FOREIGN KEY (`id_size`) REFERENCES `sizes` (`id`),
  ADD CONSTRAINT `stock_ibfk_9` FOREIGN KEY (`id_gender`) REFERENCES `gender` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
