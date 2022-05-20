-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 20-05-2022 a las 18:57:17
-- Versión del servidor: 5.7.33
-- Versión de PHP: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `ecommerce_python`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `products`
--

CREATE TABLE `products` (
  `id` int(11) NOT NULL,
  `name` varchar(50) DEFAULT NULL,
  `slug` varchar(30) DEFAULT NULL,
  `price` float DEFAULT NULL,
  `description` varchar(500) DEFAULT NULL,
  `image_url` varchar(500) DEFAULT NULL,
  `brand` varchar(500) DEFAULT NULL,
  `category` varchar(500) DEFAULT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `products`
--

INSERT INTO `products` (`id`, `name`, `slug`, `price`, `description`, `image_url`, `brand`, `category`, `created_at`, `updated_at`) VALUES
(1, 'Acer Predator Helios 300', 'acer-predator-helios-300', 1326, 'Acer Predator Helios 300 - Computadora portátil para juegos de video , Intel i7-10750H, NVIDIA GeForce RTX 2060 6GB, pantalla HD de 15.6\" con monitor de 144Hz 3ms IPS, canal dual de 16GB DDR4', 'acer-predator-helios-300.jpg', 'Acer', 'Laptop gaming', '2022-05-20 17:57:24', '2022-05-20 17:57:24'),
(3, 'Razer Blade Stealth 13', 'razer-blade-stealth-13', 2500, 'Razer Blade Stealth 13 Ultrabook Gaming Laptop: Intel Quad Core i7-1065G7, NVIDIA GeForce GTX 1650 Ti Max-Q, 13.3\" 4K Touch, 16GB RAM, 512GB SSD, CNC Aluminio, Chroma RGB, Thunderbolt 3, Creator Ready', 'razer-blade-stealth-13.jpg', 'Razer', 'Laptop gaming', '2022-05-20 18:00:33', '2022-05-20 18:00:33'),
(4, 'Skytech Gaming Archangel', 'skytech-gaming-archangel', 1999, 'Skytech Gaming Archangel Gaming Computer PC Desktop - Ryzen 5 5600X 3.7GHz, RTX 3060 TI 8G, 1TB NVMe SSD, 16GB DDR4 3200MHz, ventiladores RGB, Windows 10 Home 64-bit, 802.11AC Wi-Fi, blanco', 'skytech-gaming-archangel.jpg', 'Skytech', 'Pc gaming', '2022-05-20 18:05:44', '2022-05-20 18:05:44'),
(5, 'HP Pavilion Gaming', 'hp-pavilion-gaming', 859, 'HP Pavilion Gaming Desktop, NVIDIA GeForce GTX 1650 SUPER, Intel Core i3-10100, 8 GB DDR4 RAM, 256 GB SSD PCIe NVMe, Windows 11, ratón y teclado USB, diseño de torre compacta (TG01-1022, 2020)', 'hp-pavilion-gaming.jpg', 'HP', 'Pc Gaming', '2022-05-20 18:08:29', '2022-05-20 18:08:29'),
(6, 'MSI Trident X', 'msi-trident-x', 4929, 'MSI Trident X (SFF), Intel Core i9-11900K, GeForce RTX 3090, 64 GB de memoria, 2 TB SSD + 2 TB HDD, WiFi 6E, USB Type-C, Thunderbolt 4, VR Ready, Windows 10 PRO (11TJ-1869US)', 'msi-trident-x.jpg', 'MSI', 'Pc Gaming', '2022-05-20 18:10:20', '2022-05-20 18:10:20'),
(7, 'Acer Predator Orion', 'acer-predator-orion', 2161, 'Acer Predator Orion 3000 PO3-630-UA15 Gaming Desktop | 11ª generación Intel Core i7-11700F 8-Core | GeForce RTX 3070 | 16GB DDR4 | 512GB NVMe SSD | 1TB HDD | Wi-Fi 6 | Windows 11 Home | Teclado y ratón RGB', 'acer-predator-orion.jpg', 'Acer', 'Pc Gaming', '2022-05-20 18:50:05', '2022-05-20 18:50:05'),
(8, 'ROG Strix GL10', 'rog-strix-gl10', 1499, 'ROG Strix GL10 Gaming Desktop PC, AMD Ryzen™ 7 3700X, GeForce GTX 1650 Super, 16 GB DDR4 RAM, 512 GB PCIe SSD + 1 TB HDD, Wi-Fi 5, Windows 10 Home', 'rog-strix-gl10.jpg', 'ROG', 'Pc Gaming', '2022-05-20 18:54:55', '2022-05-20 18:54:55');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `products`
--
ALTER TABLE `products`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
