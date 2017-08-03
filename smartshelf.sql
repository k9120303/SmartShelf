-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- 主機: 127.0.0.1
-- 產生時間： 2017-08-03 08:07:04
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
  `grid_num` int(11) NOT NULL,
  `name` varchar(100) NOT NULL,
  `look` int(11) NOT NULL,
  `think` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `grid`
--

INSERT INTO `grid` (`grid_id`, `row_id`, `grid_num`, `name`, `look`, `think`) VALUES
('', '', 0, '', 0, 0),
('1', '1', 1, '一櫃一排一格', 1, 0);

-- --------------------------------------------------------

--
-- 資料表結構 `row`
--

CREATE TABLE `row` (
  `shelf_id` varchar(100) NOT NULL,
  `grid_num` int(10) NOT NULL,
  `row_id` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `row`
--

INSERT INTO `row` (`shelf_id`, `grid_num`, `row_id`) VALUES
('shelf1', 0, 'row1'),
('shelf1', 0, 'row2'),
('shelf1', 0, 'row3'),
('shelf1', 0, 'row4'),
('shelf1', 0, 'row5');

-- --------------------------------------------------------

--
-- 資料表結構 `shelf`
--

CREATE TABLE `shelf` (
  `shop_id` varchar(100) NOT NULL,
  `shelf_id` varchar(100) NOT NULL,
  `shelf_name` varchar(100) NOT NULL,
  `row_num` int(11) NOT NULL,
  `describtion` varchar(1000) NOT NULL,
  `time` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `shelf`
--

INSERT INTO `shelf` (`shop_id`, `shelf_id`, `shelf_name`, `row_num`, `describtion`, `time`) VALUES
('shop1', 'shelf1', '蛋架', 5, '蛋的架子', ''),
('shop1', 'shelf2', '手機架', 3, '手機的架子', ''),
('shop1', 'shelf3', '玩具架', 6, '玩具的架子', ''),
('shop2', 'shelf4', '書架', 7, '放書的架子', '');

-- --------------------------------------------------------

--
-- 資料表結構 `shop`
--

CREATE TABLE `shop` (
  `shop_id` varchar(100) NOT NULL,
  `shop_name` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- 資料表的匯出資料 `shop`
--

INSERT INTO `shop` (`shop_id`, `shop_name`) VALUES
('shop1', '富而美'),
('shop2', '7-11');

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
