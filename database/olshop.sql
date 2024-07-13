-- Ubah nama database menjadi 'olshop'
CREATE DATABASE IF NOT EXISTS olshop;
USE olshop;

-- Tabel cart
CREATE TABLE IF NOT EXISTS `cart` (
  `cart_id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL,
  PRIMARY KEY (`cart_id`)
) ;

-- Data untuk tabel cart
INSERT INTO `cart` (`cart_id`, `user_id`, `item_id`) VALUES
(33, 1, 2),
(34, 1, 11);

-- Tabel product
CREATE TABLE IF NOT EXISTS `product` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_brand` varchar(200) NOT NULL,
  `item_name` varchar(255) NOT NULL,
  `item_price` double(10,2) NOT NULL,
  `item_image` varchar(255) NOT NULL,
  `item_register` datetime DEFAULT NULL,
  PRIMARY KEY (`item_id`)
) ;

-- Data untuk tabel product
INSERT INTO `product` (`item_id`, `item_brand`, `item_name`, `item_price`, `item_image`, `item_register`) VALUES
(1, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Lavandería La Rapidita', 152.00, './assets/imagenes/Producto.png', '2021-11-29 11:08:57'),
(2, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Lavandería 24/7', 122.00, './assets/imagenes/Producto1.png', '2021-11-29 11:08:57'),
(3, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Lavarropa', 122.00, './assets/imagenes/Producto2.png', '2021-11-29 11:08:57'),
(4, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Lavandería Dos Pasos', 122.00, './assets/imagenes/Producto3.png', '2021-11-29 11:08:57'),
(5, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Limpio y Suave', 122.00, './assets/imagenes/Producto3.png', '2021-11-29 11:08:57'),
(6, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Blanco y limpio; Lavalisto.', 122.00, './assets/imagenes/Producto4.png', '2021-11-29 11:08:57'),
(7, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Ready Laundry', 122.00, './assets/imagenes/Producto5.png', '2021-11-29 11:08:57'),
(8, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Lava Speed', 122.00, './assets/imagenes/Producto6.png', '2021-11-29 11:08:57'),
(9, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Wash and Go', 152.00, './assets/imagenes/Producto7.png', '2021-11-29 11:08:57'),
(10, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Clear and Clean', 152.00, './assets/imagenes/Producto8.png', '2021-11-29 11:08:57'),
(11, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'La Laverie', 152.00, './assets/imagenes/Producto9.png', '2021-11-29 11:08:57'),
(12, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Lava a diario', 152.00, './assets/imagenes/Producto2.png', '2021-11-29 11:08:57'),
(13, 'Una lavandería es un negocio donde se limpia la ropa, comúnmente se emplea agua y detergentes, los tipos de lavanderías más comunes se clasifican en: ▪ pequeñas lavanderías ▪ lavanderías industriales ', 'Washing Machine Plus', 152.00, './assets/imagenes/Producto3.png', '2021-11-29 11:08:57');

-- Tabel user_admin (mengganti tabel user)
CREATE TABLE IF NOT EXISTS `user_admin` (
  `user_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `register_date` datetime DEFAULT NULL,
  PRIMARY KEY (`user_id`)
) ;

-- Data untuk tabel user_admin
INSERT INTO `user_admin` (`user_id`, `first_name`, `last_name`, `register_date`) VALUES
(1, 'Terri', 'gualberto ku chay', '0000-00-00 00:00:00');

-- Tabel wishlist
CREATE TABLE IF NOT EXISTS `wishlist` (
  `cart_id` int NOT NULL,
  `user_id` int NOT NULL,
  `item_id` int NOT NULL
) ;
