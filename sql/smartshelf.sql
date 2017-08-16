-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-08-16 03:17:34
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
  `name` varchar(100) NOT NULL,
  `look` int(11) NOT NULL,
  `think` int(11) NOT NULL,
  `solded` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `grid`
--

INSERT INTO `grid` (`grid_id`, `row_id`, `name`, `look`, `think`, `solded`) VALUES
('', '', '', 0, 0, 0),
('1', 'row 2Hdo21Fc7vXd76E', '全家飲料第一排第一格', 1, 0, 0);

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
('shelf 2017-08-14 13:57:40', 'row 2Hdo21Fc7vXd76E', 'shop 2017-08-03 09:44:35'),
('shelf 2017-08-15 13:12:36', 'row 4nP8SeA7VYdpQj3', 'shop 2017-08-15 13:12:08'),
('shelf 2017-08-14 13:57:40', 'row 5aiCuiuq9R0M4tz', 'shop 2017-08-03 09:44:35'),
('shelf 2017-08-14 14:07:41', 'row 5SyXzc5MqlXJYLh', 'shop 2017-08-14 14:06:54'),
('shelf 2017-08-14 13:57:40', 'row 8phQcN298EOD8NA', 'shop 2017-08-03 09:44:35'),
('shelf 2017-08-14 14:03:22', 'row BcRn4E3Rna0Sd5b', 'shop 2017-08-14 13:56:00'),
('shelf 2017-08-14 13:58:22', 'row BQ5JTwIh16VMPyh', 'shop 2017-08-03 09:44:35'),
('shelf 2017-08-14 14:07:22', 'row FU4SMLCFuX7YSKr', 'shop 2017-08-14 14:06:54'),
('shelf 2017-08-14 13:57:40', 'row IVyp00AMmwNvodw', 'shop 2017-08-03 09:44:35'),
('shelf 2017-08-13 16:48:39', 'row jVJTPFxocIcuMxN', 'shop 2017-08-13 15:51:47'),
('shelf 2017-08-14 14:01:22', 'row MQ3C3zP6yNcemHZ', 'shop 2017-08-14 13:55:32'),
('shelf 2017-08-14 14:07:22', 'row MzPTyDplgGe8nMv', 'shop 2017-08-14 14:06:54'),
('shelf 2017-08-14 14:01:22', 'row N6usS0aaWQQ7m5z', 'shop 2017-08-14 13:55:32'),
('shelf 2017-08-14 14:07:41', 'row ncqsOSroLHATOmc', 'shop 2017-08-14 14:06:54'),
('shelf 2017-08-13 16:48:39', 'row pq7WSsUI6KSHPBv', 'shop 2017-08-13 15:51:47'),
('shelf 2017-08-15 13:12:36', 'row RsUjpYnoIzR7DdW', 'shop 2017-08-15 13:12:08'),
('shelf 2017-08-14 14:03:22', 'row uFtsbyJLykaJWrQ', 'shop 2017-08-14 13:56:00'),
('shelf 2017-08-15 13:12:36', 'row uHuWj5cem6GLAlE', 'shop 2017-08-15 13:12:08'),
('shelf 2017-08-13 16:47:36', 'row v9UxdC91oYo00Nn', 'shop 2017-08-13 15:51:47'),
('shelf 2017-08-14 14:02:59', 'row VE3y1cSh7ytDFL6', 'shop 2017-08-14 13:56:00'),
('shelf 2017-08-14 13:58:22', 'row WEmUZltnEfmN8cZ', 'shop 2017-08-03 09:44:35'),
('shelf 2017-08-14 14:01:22', 'row wWHY53972wpD6HX', 'shop 2017-08-14 13:55:32'),
('shelf 2017-08-14 14:01:22', 'row Z52xPO1IJ9lRaaf', 'shop 2017-08-14 13:55:32'),
('shelf 2017-08-14 14:07:41', 'row Z5qDj5O8SPTlrF6', 'shop 2017-08-14 14:06:54');

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
('shop 2017-08-13 15:51:47', 'shelf 2017-08-13 16:47:36', '牛角', 1, '2017-08-13 16:47:36'),
('shop 2017-08-13 15:51:47', 'shelf 2017-08-13 16:48:39', '波羅', 2, '2017-08-13 16:48:39'),
('shop 2017-08-03 09:44:35', 'shelf 2017-08-14 13:57:40', '飲料', 4, '2017-08-14 13:57:40'),
('shop 2017-08-03 09:44:35', 'shelf 2017-08-14 13:58:22', '飯糰', 2, '2017-08-14 13:58:22'),
('shop 2017-08-14 13:55:32', 'shelf 2017-08-14 14:01:22', '是不是很簡單呢', 4, '2017-08-14 14:01:22'),
('shop 2017-08-14 13:56:00', 'shelf 2017-08-14 14:02:59', '阿明', 1, '2017-08-14 14:02:59'),
('shop 2017-08-14 13:56:00', 'shelf 2017-08-14 14:03:22', '阿福', 2, '2017-08-14 14:03:22'),
('shop 2017-08-14 14:06:54', 'shelf 2017-08-14 14:07:22', '統二食品', 2, '2017-08-14 14:07:22'),
('shop 2017-08-14 14:06:54', 'shelf 2017-08-14 14:07:41', 'OPEN醬', 3, '2017-08-14 14:07:41'),
('shop 2017-08-15 13:12:08', 'shelf 2017-08-15 13:12:36', 'drink', 3, '2017-08-15 13:12:36');

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
('shop 2017-08-03 09:44:35', '全家', '你家'),
('shop 2017-08-13 15:51:47', '麵包店', '好ㄘ'),
('shop 2017-08-14 13:55:32', '上班不要看', '呱吉吃大便'),
('shop 2017-08-14 13:56:00', 'howhow', '喔喔喔喔喔喔'),
('shop 2017-08-14 14:06:54', '7-11', '-4'),
('shop 2017-08-15 13:12:08', '萊爾富', 'zxc');

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
