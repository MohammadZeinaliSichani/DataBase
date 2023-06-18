-- create database
CREATE DATABASE IF NOT EXISTS `Sheypoor` DEFAULT CHARACTER SET utf8mb4_persian_ci ;

-- create tables
CREATE TABLE IF NOT EXISTS `Sheypoor`.`agahi` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(100) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `gheymat` varchar(15) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `description` text COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `group` varchar(10) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `code` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`agahi_pic` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `src` varchar(100) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `code` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`favorite` (
  `id` int(20) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(20) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `agahi_code` varchar(20) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`ostan` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(50) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `agahi_code` bigint COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `user_code` bigint COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `fname` varchar(20) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `lname` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `phone` varchar(11) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `ostan` varchar(20) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `city` varchar(30) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `email` varchar(20) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `password` varchar(20) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `state` varchar(2) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`)
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`support` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_code` varchar(10) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `titr` varchar(300) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `tozihat` txt COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `state` int(10) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`answer-support` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `support-id` varchar(10) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `answer` text COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
);

CREATE TABLE IF NOT EXISTS `Sheypoor`.`see` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  `number` varchar(100) COLLATE utf8mb4_persian_ci DEFAULT NULL,
  PRIMARY KEY (`id`),
);
