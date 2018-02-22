-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-12-20 12:56:29
-- 伺服器版本: 10.1.19-MariaDB
-- PHP 版本： 5.6.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- 資料庫： `smartshelf`
--

-- --------------------------------------------------------

--
-- 資料表結構 `grid`
--

CREATE TABLE `grid` (
  `grid_id` varchar(100) CHARACTER SET latin1 NOT NULL,
  `row_id` varchar(100) CHARACTER SET latin1 NOT NULL,
  `shop_id` varchar(100) NOT NULL,
  `name` varchar(100) NOT NULL,
  `look` int(11) NOT NULL,
  `think` int(11) NOT NULL,
  `sold` int(11) NOT NULL,
  `key_value` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `grid`
--

INSERT INTO `grid` (`grid_id`, `row_id`, `shop_id`, `name`, `look`, `think`, `sold`, `key_value`) VALUES
('0', 'row daj7qIDp2jpS1Am', 'shop 2017-08-16 19:17:06', 'Chosen One', 0, 0, 0, 1),
('grid 2017-08-27 19:24:22', 'row daj7qIDp2jpS1Am', 'shop 2017-08-16 19:17:06', 'iPhone 7', 28, 64, 4, 0),
('grid 2017-08-27 19:24:28', 'row jFoOwmpDpEdWBeb', 'shop 2017-08-16 19:17:06', 'iPad 3', 30, 31, 4, 0),
('grid 2017-08-27 19:31:01', 'row ImtFMC2nQWLU6cC', 'shop 2017-08-16 19:17:06', 'Samsung S8', 48, 32, 10, 0),
('grid 2017-08-27 19:31:05', 'row QRCHcvZ8fqOTRAF', 'shop 2017-08-16 19:17:06', 'Samsung Tab', 16, 9, 2, 0),
('grid 2017-08-27 20:26:40', 'row 8IKEhgj98fvzpZN', 'shop 2017-08-27 20:24:37', 'Jordan 9', 40, 22, 3, 0),
('grid 2017-08-27 20:29:57', 'row Zkm80AG0IrNnIz4', 'shop 2017-08-27 20:24:37', 'Air Max3', 38, 39, 9, 0),
('grid 2017-08-27 20:31:02', 'row qPocHBby26wtLQt', 'shop 2017-08-27 20:24:37', 'Zoom KDX', 34, 41, 6, 0),
('grid 2017-08-27 20:32:21', 'row InnjYgknlZKsTOs', 'shop 2017-08-27 20:24:37', 'Boost', 43, 14, 5, 0),
('grid 2017-08-27 20:33:53', 'row JLQF7Sxxni40Qvx', 'shop 2017-08-27 20:24:37', 'Rose', 67, 33, 4, 0),
('grid 2017-08-27 20:35:41', 'row yepP6s2G69onZqH', 'shop 2017-08-27 20:24:37', 'Trainer', 50, 49, 8, 0),
('grid 2017-08-27 21:06:43', 'row QIrIDcrRptfFED3', 'shop 2017-08-16 19:17:06', 'HTC M10', 46, 22, 7, 0),
('grid 2017-09-21 10:46:21', 'row EaI7WSRBuB3ZKtu', 'shop 2017-08-29 00:41:06', 'T-SHIRT -red', 10, 12, 2, 0),
('grid 2017-09-21 10:47:21', 'row EaI7WSRBuB3ZKtu', 'shop 2017-08-29 00:41:06', 'T-SHIRT -blue', 5, 9, 4, 0),
('grid 2017-09-21 10:47:22', 'row EaI7WSRBuB3ZKtu', 'shop 2017-08-29 00:41:06', 'T-SHIRT -green', 4, 11, 1, 0),
('grid 2017-09-21 10:47:59', 'row EaI7WSRBuB3ZKtu', 'shop 2017-08-29 00:41:06', 'T-SHIRT -black', 7, 6, 3, 0),
('grid 2017-09-21 10:48:19', 'row Xh9tCXQxzNuY1C4', 'shop 2017-08-29 00:41:06', 'JACKET -red', 7, 6, 2, 0),
('grid 2017-09-21 10:48:20', 'row Xh9tCXQxzNuY1C4', 'shop 2017-08-29 00:41:06', 'JACKET -black', 10, 5, 1, 0),
('grid 2017-09-21 10:48:25', 'row Xh9tCXQxzNuY1C4', 'shop 2017-08-29 00:41:06', 'JACKET -blue', 4, 3, 1, 0),
('grid 2017-09-21 10:50:48', 'row Xh9tCXQxzNuY1C4', 'shop 2017-08-29 00:41:06', 'JACKET -white', 11, 9, 3, 0),
('grid 2017-09-21 10:51:25', 'row oJM4SS7q1cYDVUb', 'shop 2017-08-29 00:41:06', 'FLEECE -white', 12, 5, 2, 0),
('grid 2017-09-21 10:51:27', 'row oJM4SS7q1cYDVUb', 'shop 2017-08-29 00:41:06', 'FLEECE -blue', 6, 4, 1, 0),
('grid 2017-09-21 10:51:28', 'row oJM4SS7q1cYDVUb', 'shop 2017-08-29 00:41:06', 'FLEECE -green', 8, 4, 1, 0),
('grid 2017-09-21 10:51:29', 'row oJM4SS7q1cYDVUb', 'shop 2017-08-29 00:41:06', 'FLEECE -yellow', 2, 8, 1, 0),
('grid 2017-09-21 10:53:10', 'row 6G3VjNszr0h7QPB', 'shop 2017-08-29 00:41:06', 'T-SHIRT -red', 15, 2, 4, 0),
('grid 2017-09-21 10:53:12', 'row 6G3VjNszr0h7QPB', 'shop 2017-08-29 00:41:06', 'T-SHIRT -black', 16, 10, 5, 0),
('grid 2017-09-21 10:53:17', 'row 6G3VjNszr0h7QPB', 'shop 2017-08-29 00:41:06', 'T-SHIRT -white', 8, 9, 3, 0),
('grid 2017-09-21 10:54:38', 'row Omc1mlBEZC03pyS', 'shop 2017-08-29 00:41:06', 'DRESSES-red', 11, 10, 2, 0),
('grid 2017-09-21 10:54:40', 'row Omc1mlBEZC03pyS', 'shop 2017-08-29 00:41:06', 'DRESSES -black', 13, 15, 9, 0),
('grid 2017-09-21 10:54:41', 'row Omc1mlBEZC03pyS', 'shop 2017-08-29 00:41:06', 'DRESSES -white', 16, 14, 5, 0),
('grid 2017-09-21 10:54:44', 'row lQYb60doq79tUU6', 'shop 2017-08-29 00:41:06', 'SKIRTS -black', 14, 13, 6, 0),
('grid 2017-09-21 10:54:45', 'row lQYb60doq79tUU6', 'shop 2017-08-29 00:41:06', 'SKIRTS -white', 16, 11, 2, 0),
('grid 2017-09-21 10:54:46', 'row lQYb60doq79tUU6', 'shop 2017-08-29 00:41:06', 'SKIRTS-red', 12, 19, 7, 0),
('grid 2017-09-21 15:55:06', 'row QNAVxU4AqNt4nqq', 'shop 2017-09-21 15:52:50', 'A1', 17, 12, 6, 0),
('grid 2017-09-21 15:56:24', 'row QNAVxU4AqNt4nqq', 'shop 2017-09-21 15:52:50', 'A2', 11, 24, 11, 0),
('grid 2017-09-21 15:56:43', 'row hLG5XpddxBI1ZYS', 'shop 2017-09-21 15:52:50', 'B1', 27, 34, 7, 0),
('grid 2017-09-21 15:56:45', 'row hLG5XpddxBI1ZYS', 'shop 2017-09-21 15:52:50', 'B2', 47, 19, 6, 0),
('grid 2017-09-21 15:57:30', 'row x9ZtP4Pfk4Z2BRN', 'shop 2017-09-21 15:52:50', 'C1', 27, 37, 10, 0),
('grid 2017-09-21 15:57:32', 'row x9ZtP4Pfk4Z2BRN', 'shop 2017-09-21 15:52:50', 'C2', 36, 14, 13, 0),
('grid 2017-09-21 15:58:59', 'row 6Jh0TkkOau1W96k', 'shop 2017-09-21 15:52:50', 'ELLE DECORATION', 57, 23, 4, 0),
('grid 2017-09-21 15:59:00', 'row 6Jh0TkkOau1W96k', 'shop 2017-09-21 15:52:50', 'Wine Spectator ', 25, 31, 2, 0),
('grid 2017-09-21 15:59:04', 'row HDd3aDZWyCZ9mEs', 'shop 2017-09-21 15:52:50', 'NATIONAL GEOGRAPHIC', 76, 38, 14, 0),
('grid 2017-09-21 15:59:07', 'row ZxtJ1AscFYpc0W9', 'shop 2017-09-21 15:52:50', 'PC GAMER', 67, 15, 4, 0),
('grid 2017-09-21 15:59:10', 'row HiQccJVDXVGMHbA', 'shop 2017-09-21 15:52:50', 'Jelly', 40, 9, 1, 0),
('grid 2017-09-21 15:59:13', 'row KEnC8vQf1wqr0nt', 'shop 2017-09-21 15:52:50', 'i-D JAPAN ', 33, 15, 3, 0),
('grid 2017-09-21 15:59:16', 'row yxm5tyP6LoEeKuU', 'shop 2017-09-21 15:52:50', 'Disney Dream Theater', 44, 7, 2, 0),
('grid 2017-09-21 16:09:21', 'row 8hw3xwgs88F1eAO', 'shop 2017-09-21 16:06:11', 'Cola', 77, 50, 17, 0),
('grid 2017-09-21 16:09:46', 'row BGdHAAgOBPzNumJ', 'shop 2017-09-21 16:06:11', 'Pepsi', 56, 41, 14, 0),
('grid 2017-09-21 16:09:48', 'row EbjOS93OyZNhFjh', 'shop 2017-09-21 16:06:11', 'Soda', 11, 7, 9, 0),
('grid 2017-09-21 16:09:51', 'row aPh2BRbYxao3rR6', 'shop 2017-09-21 16:06:11', 'Juice', 47, 16, 5, 0),
('grid 2017-09-21 16:09:55', 'row eJnF3EaqMYJgvXU', 'shop 2017-09-21 16:06:11', '7UP', 30, 14, 7, 0),
('grid 2017-09-21 16:09:58', 'row ozHPOILtMf3Kw1x', 'shop 2017-09-21 16:06:11', 'HeySong', 81, 47, 17, 0),
('grid 2017-09-21 16:10:01', 'row KmQyFqPocHBby26', 'shop 2017-09-21 16:06:11', 'milktea', 57, 42, 19, 0),
('grid 2017-09-21 16:10:03', 'row MuTSpaG632zDIHe', 'shop 2017-09-21 16:06:11', 'Tea', 49, 28, 10, 0),
('grid 2017-09-21 16:10:07', 'row OPeVunekZQOHaay', 'shop 2017-09-21 16:06:11', 'Chocolate milk', 58, 37, 6, 0),
('grid 2017-09-21 16:10:10', 'row ZHQj3TogrCbfSfH', 'shop 2017-09-21 16:06:11', 'Green tea', 39, 41, 5, 0),
('grid 2017-09-21 16:10:13', 'row mzCTcg4fQ8sIVW7', 'shop 2017-09-21 16:06:11', 'Black tea', 91, 68, 18, 0),
('grid 2017-09-21 16:10:16', 'row wtLQt8IKEhgj98f', 'shop 2017-09-21 16:06:11', 'Sports drink', 41, 33, 13, 0),
('grid 2017-09-21 16:17:15', 'row CbWwhyLt5ck6COX', 'shop 2017-09-21 16:15:47', 'orange juice', 70, 52, 6, 0),
('grid 2017-09-21 16:17:18', 'row NnIz4I5ekZr7VFS', 'shop 2017-09-21 16:15:47', 'coconut milk', 29, 41, 4, 0),
('grid 2017-09-21 16:17:21', 'row sHIXXZCNREjZR1i', 'shop 2017-09-21 16:15:47', 'asparagus juice', 34, 20, 2, 0),
('grid 2017-09-21 16:17:23', 'row vzpZNZkm80AG0Ir', 'shop 2017-09-21 16:15:47', 'vegetable juice', 17, 36, 5, 0),
('grid 2017-09-21 16:17:26', 'row 40Qvxjmry9gCcLq', 'shop 2017-09-21 16:15:47', 'iced coffee', 67, 41, 8, 0),
('grid 2017-09-21 16:17:29', 'row KsTOsyepP6s2G69', 'shop 2017-09-21 16:15:47', 'white coffee', 76, 41, 7, 0),
('grid 2017-09-21 16:17:32', 'row TXDxOInnjYgknlZ', 'shop 2017-09-21 16:15:47', 'black coffee', 66, 53, 3, 0),
('grid 2017-09-21 16:17:35', 'row onZqHJLQF7Sxxni', 'shop 2017-09-21 16:15:47', 'ovaltine', 81, 32, 11, 0),
('grid 2017-09-21 16:27:52', 'row O6aTjpzGCdgL5Zk', 'shop 2017-09-21 16:27:18', 'cocoa', 50, 19, 13, 0),
('grid 2017-09-21 16:27:55', 'row X4Q9YgDjBmQfktH', 'shop 2017-09-21 16:27:18', 'mineral water', 44, 26, 18, 0),
('grid 2017-09-21 16:27:58', 'row lxHmajPtrhjfTLD', 'shop 2017-09-21 16:27:18', 'white goup tea', 39, 19, 11, 0),
('grid 2017-09-21 16:28:01', 'row DPsDMkvinRK3hoM', 'shop 2017-09-21 16:27:18', 'sarsaparilla ', 56, 27, 22, 0),
('grid 2017-09-21 16:28:04', 'row MJBMEFacYVgRkfh', 'shop 2017-09-21 16:27:18', 'soft drink', 49, 20, 13, 0),
('grid 2017-09-21 16:28:07', 'row fOO1k2nQy48BTvO', 'shop 2017-09-21 16:27:18', 'tomato juice', 29, 14, 9, 0),
('grid 2017-12-19 23:03:08', 'row 8IKEhgj98fvzpZN', 'shop 2017-08-27 20:24:37', 'Jodan8', 28, 19, 2, 0),
('grid 2017-12-19 23:10:18', 'row a9QBcsGiaKKkw7h', 'shop 2017-09-21 16:39:04', 'pen', 110, 76, 20, 0),
('grid 2017-12-19 23:10:26', 'row fVLwB1zyztk7dvT', 'shop 2017-09-21 16:39:04', 'pencil', 109, 54, 55, 0),
('grid 2017-12-19 23:10:29', 'row xg8YhQU3ne2fbUC', 'shop 2017-09-21 16:39:04', 'eraser', 37, 59, 20, 0),
('grid 2017-12-19 23:10:33', 'row HXSQoT92BXxMTSo', 'shop 2017-09-21 16:39:04', 'qas123', 57, 10, 40, 0),
('grid 2017-12-19 23:10:37', 'row LxPdjNsX9MMqXRf', 'shop 2017-09-21 16:39:04', 'sgk710', 170, 52, 50, 0),
('grid 2017-12-19 23:10:40', 'row zoSylFGmAPuEgs1', 'shop 2017-09-21 16:39:04', 'usb457', 69, 87, 37, 0),
('grid 2017-12-19 23:15:00', 'row 2TivVuZVgg21LyV', 'shop 2017-09-21 16:39:04', 'A1', 8, 9, 4, 0),
('grid 2017-12-19 23:15:04', 'row M90SqGDwc1s67Mb', 'shop 2017-09-21 16:39:04', 'A2', 34, 21, 12, 0),
('grid 2017-12-19 23:15:08', 'row RFdD2FABGZvQlnk', 'shop 2017-09-21 16:39:04', 'A4', 81, 10, 99, 0),
('grid 2017-12-19 23:15:12', 'row Vr4pfkMfmHMoD29', 'shop 2017-09-21 16:39:04', 'B3', 57, 43, 38, 0),
('grid 2017-12-19 23:15:16', 'row WC24TGoOjMXC1Ri', 'shop 2017-09-21 16:39:04', 'B5', 47, 63, 22, 0),
('grid 2017-12-19 23:15:20', 'row eoqwQfpdcWjuvi4', 'shop 2017-09-21 16:39:04', 'C2', 10, 3, 2, 0),
('grid 2017-12-19 23:15:23', 'row LCXPVgzZh8EIhkr', 'shop 2017-09-21 16:39:04', 'YTR44', 53, 28, 17, 0),
('grid 2017-12-19 23:15:26', 'row SUqEODwvmpeISJD', 'shop 2017-09-21 16:39:04', 'CCM', 44, 29, 36, 0),
('grid 2017-12-19 23:15:30', 'row UuGbBlWB8PpOB7V', 'shop 2017-09-21 16:39:04', 'IUTG', 40, 39, 22, 0),
('grid 2017-12-19 23:15:34', 'row ubxjzEjoa61qZS8', 'shop 2017-09-21 16:39:04', 'rgh', 28, 60, 27, 0),
('grid 2017-12-19 23:15:38', 'row v2KPbo3QzSDAD5b', 'shop 2017-09-21 16:39:04', 'BIG', 24, 70, 37, 0),
('grid 2017-12-19 23:15:42', 'row xgQCjHjXQxa5ItI', 'shop 2017-09-21 16:39:04', 'XXX1', 83, 27, 20, 0),
('grid 2017-12-19 23:15:50', 'row MQFwAj2Gp6EJ6d7', 'shop 2017-09-21 16:39:49', 'apple', 50, 44, 17, 0),
('grid 2017-12-19 23:15:54', 'row SZ3k0XFD2m235o1', 'shop 2017-09-21 16:39:49', 'lemon', 40, 27, 3, 0),
('grid 2017-12-19 23:15:58', 'row oZ6xSWKuUiA4HTD', 'shop 2017-09-21 16:39:49', 'fish2', 28, 31, 9, 0),
('grid 2017-12-19 23:16:02', 'row wJMYw4LI0G1CtHN', 'shop 2017-09-21 16:39:49', 'fish', 46, 43, 29, 0),
('grid 2017-12-19 23:16:05', 'row GLuZQvKUOsWWbkp', 'shop 2017-09-21 16:39:49', 'dff', 10, 68, 47, 0),
('grid 2017-12-19 23:16:08', 'row VjHI3jOYvRag0ie', 'shop 2017-09-21 16:39:49', 'juice', 76, 46, 27, 0),
('grid 2017-12-19 23:16:13', 'row Ca8DB2GNc80TDg5', 'shop 2017-09-21 16:39:49', 'milk', 50, 19, 67, 0),
('grid 2017-12-19 23:16:16', 'row JQNizzLtuT6BVV0', 'shop 2017-09-21 16:39:49', 'pepsi', 24, 41, 17, 0),
('grid 2017-12-19 23:16:20', 'row xBOnOkAQixWY7sJ', 'shop 2017-09-21 16:39:49', 'cola', 91, 27, 16, 0),
('grid 2017-12-19 23:16:24', 'row xRecCKVVHAAR6Pk', 'shop 2017-09-21 16:39:49', 'lyt', 72, 28, 76, 0),
('grid 2017-12-19 23:16:28', 'row z4kZK4b2Yf8nbdR', 'shop 2017-09-21 16:39:49', 'fhrr', 67, 90, 25, 0),
('grid 2017-12-19 23:16:32', 'row vSFOIGIg7RqU2ST', 'shop 2017-09-21 16:39:49', 'pineapple', 27, 101, 73, 0),
('grid 2017-12-19 23:16:35', 'row mR3BQZn5a0hw9Tk', 'shop 2017-09-21 16:39:49', 'melon', 71, 60, 66, 0),
('grid 2017-12-19 23:16:40', 'row 4NDxIXRf6FElHZb', 'shop 2017-09-21 16:39:49', 'beef', 17, 77, 37, 0),
('grid 2017-12-19 23:16:44', 'row 7WbORQHQppHKYr7', 'shop 2017-09-21 16:39:49', 'pork', 28, 78, 14, 0),
('grid 2017-12-19 23:16:49', 'row 8gks5vSFcqsdzdT', 'shop 2017-09-21 16:39:49', 'lamb', 75, 44, 25, 0),
('grid 2017-12-19 23:16:53', 'row GuydBWqWX0d55a0', 'shop 2017-09-21 16:39:49', 'cvb', 45, 43, 37, 0),
('grid 2017-12-19 23:16:57', 'row pR7WaczCc9wrlEz', 'shop 2017-09-21 16:39:49', 'djyt', 47, 83, 27, 0),
('grid 2017-12-19 23:17:01', 'row ChiJl2gh8fpdBD5', 'shop 2017-09-21 16:39:49', 'fgdvgd', 137, 14, 17, 0),
('grid 2017-12-19 23:17:04', 'row SOnp1v8uK0nRKEA', 'shop 2017-09-21 16:39:49', 'dhew', 70, 39, 43, 0),
('grid 2017-12-19 23:17:08', 'row YOp7ynhRpou9wrJ', 'shop 2017-09-21 16:39:49', '11cc', 67, 37, 24, 0),
('grid 2017-12-19 23:17:12', 'row 3sF0ONCJqAzF7Fx', 'shop 2017-09-21 16:39:49', 'cake', 46, 71, 37, 0),
('grid 2017-12-19 23:17:16', 'row llCfhQvKiverfim', 'shop 2017-09-21 16:39:49', 'cookie', 27, 52, 17, 0),
('grid 2017-12-19 23:17:38', 'row daj7qIDp2jpS1Am', 'shop 2017-08-16 19:17:06', 'iPhone 8', 20, 50, 7, 0),
('grid 2017-12-19 23:18:16', 'row jFoOwmpDpEdWBeb', 'shop 2017-08-16 19:17:06', 'iPad 5', 47, 35, 4, 0),
('grid 2017-12-19 23:18:50', 'row ImtFMC2nQWLU6cC', 'shop 2017-08-16 19:17:06', 'Samsung S9', 51, 22, 14, 0),
('grid 2017-12-19 23:25:16', 'row gGrIPNTSNganRsI', 'shop 2017-09-21 16:15:47', 'rice', 55, 17, 7, 0),
('grid 2017-12-19 23:25:38', 'row kfbvjGO0qobcg4D', 'shop 2017-09-21 16:15:47', 'noodle', 42, 29, 11, 0),
('grid 2017-12-20 19:55:25', 'row 9einFLTvvGz5wZU', 'shop 2017-12-20 19:54:56', 'Untitled', 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `row`
--

CREATE TABLE `row` (
  `shelf_id` varchar(100) NOT NULL,
  `row_id` varchar(100) NOT NULL,
  `shop_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `row`
--

INSERT INTO `row` (`shelf_id`, `row_id`, `shop_id`) VALUES
('shelf 2017-12-19 23:13:05', 'row 2TivVuZVgg21LyV', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:14:26', 'row 3sF0ONCJqAzF7Fx', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:17:12', 'row 40Qvxjmry9gCcLq', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:12:45', 'row 4I6PDdXOPDey638', 'shop 2017-09-21 16:27:18'),
('shelf 2017-12-19 23:13:57', 'row 4NDxIXRf6FElHZb', 'shop 2017-09-21 16:39:49'),
('shelf 2017-08-29 01:00:53', 'row 6G3VjNszr0h7QPB', 'shop 2017-08-29 00:41:06'),
('shelf 2017-09-21 15:58:25', 'row 6Jh0TkkOau1W96k', 'shop 2017-09-21 15:52:50'),
('shelf 2017-12-19 23:13:57', 'row 7WbORQHQppHKYr7', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:13:57', 'row 8gks5vSFcqsdzdT', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:08:56', 'row 8hw3xwgs88F1eAO', 'shop 2017-09-21 16:06:11'),
('shelf 2017-08-27 20:25:24', 'row 8IKEhgj98fvzpZN', 'shop 2017-08-27 20:24:37'),
('shelf 2017-12-19 23:12:45', 'row 9y9SwJuCyVaCtZ9', 'shop 2017-09-21 16:27:18'),
('shelf 2017-12-19 23:09:36', 'row a9QBcsGiaKKkw7h', 'shop 2017-09-21 16:39:04'),
('shelf 2017-09-21 16:08:56', 'row aPh2BRbYxao3rR6', 'shop 2017-09-21 16:06:11'),
('shelf 2017-12-20 19:37:18', 'row auOXZjrTwISkkqt', 'shop 2017-08-16 19:17:06'),
('shelf 2017-09-21 16:08:56', 'row BGdHAAgOBPzNumJ', 'shop 2017-09-21 16:06:11'),
('shelf 2017-12-19 23:11:33', 'row Ca8DB2GNc80TDg5', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:16:55', 'row CbWwhyLt5ck6COX', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:14:10', 'row ChiJl2gh8fpdBD5', 'shop 2017-09-21 16:39:49'),
('shelf 2017-08-27 19:17:59', 'row daj7qIDp2jpS1Am', 'shop 2017-08-16 19:17:06'),
('shelf 2017-09-21 16:27:47', 'row DPsDMkvinRK3hoM', 'shop 2017-09-21 16:27:18'),
('shelf 2017-08-29 01:00:36', 'row EaI7WSRBuB3ZKtu', 'shop 2017-08-29 00:41:06'),
('shelf 2017-09-21 16:08:56', 'row EbjOS93OyZNhFjh', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 16:08:56', 'row eJnF3EaqMYJgvXU', 'shop 2017-09-21 16:06:11'),
('shelf 2017-12-19 23:13:05', 'row eoqwQfpdcWjuvi4', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:12:30', 'row Fn6nc1K2n8iJ3Hi', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 16:27:47', 'row fOO1k2nQy48BTvO', 'shop 2017-09-21 16:27:18'),
('shelf 2017-12-19 23:09:36', 'row fVLwB1zyztk7dvT', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:12:14', 'row gGrIPNTSNganRsI', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:11:20', 'row GLuZQvKUOsWWbkp', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:13:57', 'row GuydBWqWX0d55a0', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 15:58:25', 'row HDd3aDZWyCZ9mEs', 'shop 2017-09-21 15:52:50'),
('shelf 2017-09-21 15:58:42', 'row HiQccJVDXVGMHbA', 'shop 2017-09-21 15:52:50'),
('shelf 2017-09-21 15:53:42', 'row hLG5XpddxBI1ZYS', 'shop 2017-09-21 15:52:50'),
('shelf 2017-12-19 23:10:05', 'row HXSQoT92BXxMTSo', 'shop 2017-09-21 16:39:04'),
('shelf 2017-08-27 19:21:14', 'row ImtFMC2nQWLU6cC', 'shop 2017-08-16 19:17:06'),
('shelf 2017-08-27 20:26:33', 'row InnjYgknlZKsTOs', 'shop 2017-08-27 20:24:37'),
('shelf 2017-12-20 19:37:18', 'row IwD23G5WNVZ2UO3', 'shop 2017-08-16 19:17:06'),
('shelf 2017-08-27 19:17:59', 'row jFoOwmpDpEdWBeb', 'shop 2017-08-16 19:17:06'),
('shelf 2017-08-27 20:26:33', 'row JLQF7Sxxni40Qvx', 'shop 2017-08-27 20:24:37'),
('shelf 2017-12-19 23:11:33', 'row JQNizzLtuT6BVV0', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 15:58:42', 'row KEnC8vQf1wqr0nt', 'shop 2017-09-21 15:52:50'),
('shelf 2017-12-19 23:12:14', 'row kfbvjGO0qobcg4D', 'shop 2017-09-21 16:15:47'),
('shelf 2017-09-21 16:09:17', 'row KmQyFqPocHBby26', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 16:17:12', 'row KsTOsyepP6s2G69', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:13:20', 'row LCXPVgzZh8EIhkr', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:14:26', 'row llCfhQvKiverfim', 'shop 2017-09-21 16:39:49'),
('shelf 2017-08-29 01:00:53', 'row lQYb60doq79tUU6', 'shop 2017-08-29 00:41:06'),
('shelf 2017-09-21 16:27:35', 'row lxHmajPtrhjfTLD', 'shop 2017-09-21 16:27:18'),
('shelf 2017-12-19 23:10:05', 'row LxPdjNsX9MMqXRf', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:13:05', 'row M90SqGDwc1s67Mb', 'shop 2017-09-21 16:39:04'),
('shelf 2017-09-21 16:27:47', 'row MJBMEFacYVgRkfh', 'shop 2017-09-21 16:27:18'),
('shelf 2017-12-19 23:11:02', 'row MQFwAj2Gp6EJ6d7', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:11:20', 'row mR3BQZn5a0hw9Tk', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:09:17', 'row MuTSpaG632zDIHe', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 16:09:17', 'row mzCTcg4fQ8sIVW7', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 16:16:55', 'row NnIz4I5ekZr7VFS', 'shop 2017-09-21 16:15:47'),
('shelf 2017-09-21 16:27:35', 'row O6aTjpzGCdgL5Zk', 'shop 2017-09-21 16:27:18'),
('shelf 2017-08-29 01:00:36', 'row oJM4SS7q1cYDVUb', 'shop 2017-08-29 00:41:06'),
('shelf 2017-08-29 01:00:53', 'row Omc1mlBEZC03pyS', 'shop 2017-08-29 00:41:06'),
('shelf 2017-09-21 16:17:12', 'row onZqHJLQF7Sxxni', 'shop 2017-09-21 16:15:47'),
('shelf 2017-09-21 16:09:17', 'row OPeVunekZQOHaay', 'shop 2017-09-21 16:06:11'),
('shelf 2017-12-19 23:11:02', 'row oZ6xSWKuUiA4HTD', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:08:56', 'row ozHPOILtMf3Kw1x', 'shop 2017-09-21 16:06:11'),
('shelf 2017-12-19 23:13:57', 'row pR7WaczCc9wrlEz', 'shop 2017-09-21 16:39:49'),
('shelf 2017-08-27 21:06:39', 'row QIrIDcrRptfFED3', 'shop 2017-08-16 19:17:06'),
('shelf 2017-09-21 15:53:42', 'row QNAVxU4AqNt4nqq', 'shop 2017-09-21 15:52:50'),
('shelf 2017-08-27 20:25:24', 'row qPocHBby26wtLQt', 'shop 2017-08-27 20:24:37'),
('shelf 2017-08-27 19:21:14', 'row QRCHcvZ8fqOTRAF', 'shop 2017-08-16 19:17:06'),
('shelf 2017-12-19 23:13:05', 'row RFdD2FABGZvQlnk', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:12:45', 'row s0gUfnBqzhj9xWh', 'shop 2017-09-21 16:27:18'),
('shelf 2017-09-21 16:16:55', 'row sHIXXZCNREjZR1i', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:14:10', 'row SOnp1v8uK0nRKEA', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:13:20', 'row SUqEODwvmpeISJD', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:11:02', 'row SZ3k0XFD2m235o1', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:17:12', 'row TXDxOInnjYgknlZ', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:13:20', 'row ubxjzEjoa61qZS8', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:13:20', 'row UuGbBlWB8PpOB7V', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:13:41', 'row v2KPbo3QzSDAD5b', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:11:20', 'row VjHI3jOYvRag0ie', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:13:05', 'row Vr4pfkMfmHMoD29', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:11:20', 'row vSFOIGIg7RqU2ST', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:16:55', 'row vzpZNZkm80AG0Ir', 'shop 2017-09-21 16:15:47'),
('shelf 2017-12-19 23:13:05', 'row WC24TGoOjMXC1Ri', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:11:02', 'row wJMYw4LI0G1CtHN', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:09:17', 'row wtLQt8IKEhgj98f', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 16:27:35', 'row X4Q9YgDjBmQfktH', 'shop 2017-09-21 16:27:18'),
('shelf 2017-09-21 15:53:42', 'row x9ZtP4Pfk4Z2BRN', 'shop 2017-09-21 15:52:50'),
('shelf 2017-12-19 23:11:33', 'row xBOnOkAQixWY7sJ', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:09:36', 'row xg8YhQU3ne2fbUC', 'shop 2017-09-21 16:39:04'),
('shelf 2017-12-19 23:13:41', 'row xgQCjHjXQxa5ItI', 'shop 2017-09-21 16:39:04'),
('shelf 2017-08-29 01:00:36', 'row Xh9tCXQxzNuY1C4', 'shop 2017-08-29 00:41:06'),
('shelf 2017-08-27 21:06:39', 'row XkhA5Ut5TnQfIat', 'shop 2017-08-16 19:17:06'),
('shelf 2017-12-19 23:11:33', 'row xRecCKVVHAAR6Pk', 'shop 2017-09-21 16:39:49'),
('shelf 2017-08-27 20:26:33', 'row yepP6s2G69onZqH', 'shop 2017-08-27 20:24:37'),
('shelf 2017-12-19 23:14:10', 'row YOp7ynhRpou9wrJ', 'shop 2017-09-21 16:39:49'),
('shelf 2017-12-19 23:12:30', 'row yUX11ZLF5yHrIev', 'shop 2017-09-21 16:06:11'),
('shelf 2017-09-21 15:58:42', 'row yxm5tyP6LoEeKuU', 'shop 2017-09-21 15:52:50'),
('shelf 2017-12-19 23:11:20', 'row z4kZK4b2Yf8nbdR', 'shop 2017-09-21 16:39:49'),
('shelf 2017-09-21 16:09:17', 'row ZHQj3TogrCbfSfH', 'shop 2017-09-21 16:06:11'),
('shelf 2017-08-27 20:25:24', 'row Zkm80AG0IrNnIz4', 'shop 2017-08-27 20:24:37'),
('shelf 2017-12-19 23:10:05', 'row zoSylFGmAPuEgs1', 'shop 2017-09-21 16:39:04'),
('shelf 2017-09-21 15:58:25', 'row ZxtJ1AscFYpc0W9', 'shop 2017-09-21 15:52:50');

-- --------------------------------------------------------

--
-- 資料表結構 `shelf`
--

CREATE TABLE `shelf` (
  `shop_id` varchar(100) NOT NULL,
  `shelf_id` varchar(100) NOT NULL,
  `shelf_name` varchar(100) NOT NULL,
  `row_num` int(11) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `shelf`
--

INSERT INTO `shelf` (`shop_id`, `shelf_id`, `shelf_name`, `row_num`, `time`) VALUES
('shop 2017-08-16 19:17:06', 'shelf 2017-08-27 19:17:59', 'Apple區', 2, '2017-08-27 19:17:59'),
('shop 2017-08-16 19:17:06', 'shelf 2017-08-27 19:21:14', 'Samaung區', 2, '2017-08-27 19:21:14'),
('shop 2017-08-27 20:24:37', 'shelf 2017-08-27 20:25:24', 'Nike 鞋', 3, '2017-08-27 20:25:24'),
('shop 2017-08-27 20:24:37', 'shelf 2017-08-27 20:26:33', 'Adidas 鞋', 3, '2017-08-27 20:26:33'),
('shop 2017-08-16 19:17:06', 'shelf 2017-08-27 21:06:39', 'HTC 區', 2, '2017-08-27 21:06:39'),
('shop 2017-08-29 00:41:06', 'shelf 2017-08-29 01:00:36', '男 - 衣服', 3, '2017-08-29 01:00:36'),
('shop 2017-08-29 00:41:06', 'shelf 2017-08-29 01:00:53', '女 - 衣服', 3, '2017-08-29 01:00:53'),
('shop 2017-09-21 15:52:50', 'shelf 2017-09-21 15:53:42', '中文雜誌', 3, '2017-09-21 15:53:42'),
('shop 2017-09-21 15:52:50', 'shelf 2017-09-21 15:58:25', '英文雜誌', 3, '2017-09-21 15:58:25'),
('shop 2017-09-21 15:52:50', 'shelf 2017-09-21 15:58:42', '日文雜誌', 3, '2017-09-21 15:58:42'),
('shop 2017-09-21 16:06:11', 'shelf 2017-09-21 16:08:56', '飲料櫃A', 6, '2017-09-21 16:08:56'),
('shop 2017-09-21 16:06:11', 'shelf 2017-09-21 16:09:17', '飲料櫃B', 6, '2017-09-21 16:09:17'),
('shop 2017-09-21 16:15:47', 'shelf 2017-09-21 16:16:55', '飲料櫃A', 4, '2017-09-21 16:16:55'),
('shop 2017-09-21 16:15:47', 'shelf 2017-09-21 16:17:12', '飲料櫃B', 4, '2017-09-21 16:17:12'),
('shop 2017-09-21 16:27:18', 'shelf 2017-09-21 16:27:35', '飲料櫃A', 3, '2017-09-21 16:27:35'),
('shop 2017-09-21 16:27:18', 'shelf 2017-09-21 16:27:47', '飲料櫃B', 3, '2017-09-21 16:27:47'),
('shop 2017-09-21 16:39:04', 'shelf 2017-12-19 23:09:36', '文具區', 3, '2017-12-19 23:09:36'),
('shop 2017-09-21 16:39:04', 'shelf 2017-12-19 23:10:05', '電子產品區', 3, '2017-12-19 23:10:05'),
('shop 2017-09-21 16:39:49', 'shelf 2017-12-19 23:11:02', '生鮮區', 4, '2017-12-19 23:11:02'),
('shop 2017-09-21 16:39:49', 'shelf 2017-12-19 23:11:20', '水果區', 5, '2017-12-19 23:11:20'),
('shop 2017-09-21 16:39:49', 'shelf 2017-12-19 23:11:33', '飲料區', 4, '2017-12-19 23:11:33'),
('shop 2017-09-21 16:15:47', 'shelf 2017-12-19 23:12:14', '微波區', 2, '2017-12-19 23:12:14'),
('shop 2017-09-21 16:06:11', 'shelf 2017-12-19 23:12:30', '特價區', 2, '2017-12-19 23:12:30'),
('shop 2017-09-21 16:27:18', 'shelf 2017-12-19 23:12:45', '特價區', 3, '2017-12-19 23:12:45'),
('shop 2017-09-21 16:39:04', 'shelf 2017-12-19 23:13:05', '紙類區', 6, '2017-12-19 23:13:05'),
('shop 2017-09-21 16:39:04', 'shelf 2017-12-19 23:13:20', '書籍區', 4, '2017-12-19 23:13:20'),
('shop 2017-09-21 16:39:04', 'shelf 2017-12-19 23:13:41', '成人區', 2, '2017-12-19 23:13:41'),
('shop 2017-09-21 16:39:49', 'shelf 2017-12-19 23:13:57', '冷凍區', 5, '2017-12-19 23:13:57'),
('shop 2017-09-21 16:39:49', 'shelf 2017-12-19 23:14:10', '泡麵區', 3, '2017-12-19 23:14:10'),
('shop 2017-09-21 16:39:49', 'shelf 2017-12-19 23:14:26', '點心區', 2, '2017-12-19 23:14:26'),
('shop 2017-08-16 19:17:06', 'shelf 2017-12-20 19:37:18', '84562', 2, '2017-12-20 19:37:18');

-- --------------------------------------------------------

--
-- 資料表結構 `shop`
--

CREATE TABLE `shop` (
  `shop_id` varchar(100) NOT NULL,
  `shop_name` varchar(100) NOT NULL,
  `shop_describtion` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`, `shop_describtion`) VALUES
('shop 2017-08-16 19:17:06', '中滑電信基隆旗艦店', '業績第一名'),
('shop 2017-08-27 20:24:37', '一亨運動用品西門店', '買一送一'),
('shop 2017-08-29 00:41:06', 'UNIQLO忠孝復興店', '周年慶開跑囉'),
('shop 2017-09-21 15:52:50', '誠品信義店', '臺北市信義區松高路11號'),
('shop 2017-09-21 16:06:11', '7-11 統一超商海大門市', '基隆市北寧路2號1樓'),
('shop 2017-09-21 16:15:47', '全家便利商店新豐門市', '02-24632645'),
('shop 2017-09-21 16:27:18', 'OK便利超商海大店', '歡慶新開幕'),
('shop 2017-09-21 16:39:04', '光南基隆店', '滿千送百活動中'),
('shop 2017-09-21 16:39:49', '全聯基隆新豐門市', '香蕉一根5元'),
('shop 2017-12-20 19:54:56', '5566', '77');

--
-- 已匯出資料表的索引
--

--
-- 資料表索引 `grid`
--
ALTER TABLE `grid`
  ADD PRIMARY KEY (`grid_id`);

--
-- 資料表索引 `row`
--
ALTER TABLE `row`
  ADD PRIMARY KEY (`row_id`);

--
-- 資料表索引 `shelf`
--
ALTER TABLE `shelf`
  ADD PRIMARY KEY (`shelf_id`);

--
-- 資料表索引 `shop`
--
ALTER TABLE `shop`
  ADD PRIMARY KEY (`shop_id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
