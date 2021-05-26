-- MYSQL
DROP DATABASE IF EXISTS portfolio_tracker_db;
CREATE DATABASE portfolio_tracker_db;
USE portfolio_tracker_db;

CREATE TABLE `recent_buy_operations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `coin_symbol` varchar(20) NOT NULL,
  `coin_amount` double NOT NULL,
  `buy_cost` double NOT NULL,
  PRIMARY KEY (id)
) CHARSET=utf8mb4;

CREATE TABLE `archived_operations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `coin_symbol` varchar(20) NOT NULL,
  `coin_amount` double NOT NULL,
  `buy_cost` double NOT NULL,
  `sell_cost` double NOT NULL,
    PRIMARY KEY (id)
) CHARSET=utf8mb4;

CREATE TABLE `users` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `email` varchar(40) NOT NULL UNIQUE,
  `password_hash` varchar(300) NOT NULL,
    PRIMARY KEY (id)
)  CHARSET=utf8mb4;

CREATE TABLE `wallets` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `user_id` int(10) NOT NULL,
  `name` varchar(15) NOT NULL,
  PRIMARY KEY (id)
) CHARSET=utf8mb4;

CREATE TABLE `wallet_operations` (
  `id` int(10) NOT NULL AUTO_INCREMENT,
  `wallet_id` int(10) NOT NULL,
  `operation_id` int(10) NOT NULL,
  PRIMARY KEY (id)
) CHARSET=utf8mb4;

INSERT INTO users (name, email, password_hash)
VALUES ('Ahmet','ahmet123@gmail.com', 'et35895eo8,tjs!)ksadklm@3i__akflj');

INSERT INTO recent_buy_operations (user_id, coin_symbol, coin_amount, buy_cost)
VALUES (2,'BTCUSD', 4, 30000.23);

INSERT INTO archived_operations (user_id, coin_symbol, coin_amount, buy_cost, sell_cost)
VALUES (2,'BTCUSD', 4, 30000.23, 50000.21);

INSERT INTO wallets (user_id, name)
VALUES (2,'Kısa vade');

INSERT INTO wallet_operations (wallet_id, operation_id)
VALUES (2, 4);