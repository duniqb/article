-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 2017-11-16 11:11:13
-- 服务器版本： 5.7.14
-- PHP Version: 5.6.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `info`
--

-- --------------------------------------------------------

--
-- 表的结构 `article`
--

CREATE TABLE `article` (
  `id` int(11) NOT NULL COMMENT '文章编号',
  `title` char(100) CHARACTER SET utf8 NOT NULL COMMENT '文章标题',
  `author` char(50) CHARACTER SET utf8 NOT NULL COMMENT '文章作者',
  `description` varchar(255) CHARACTER SET utf8 NOT NULL COMMENT '文章简介',
  `content` text CHARACTER SET utf8 NOT NULL COMMENT '文章内容',
  `dateline` int(11) NOT NULL DEFAULT '0' COMMENT '发布时间'
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `article`
--

INSERT INTO `article` (`id`, `title`, `author`, `description`, `content`, `dateline`) VALUES
(4, '1', 'aitwzl', '文章1', '文章1 内容', 1510816971),
(5, '标题2', 'aitwzl', '文章2', '文章2的内容！', 1510819928),
(7, '标题3', 'aitw', '文章3', '文章3的内容', 1510820598),
(8, '', '的', '的', '的', 1510820623),
(9, 'test', 'TEST', 'TEST', 'TEST', 1510826742),
(10, 'one', 'one', 'one', 'one', 1510826771);

-- --------------------------------------------------------

--
-- 表的结构 `fruitshop`
--

CREATE TABLE `fruitshop` (
  `id` int(4) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `num` int(4) NOT NULL,
  `price` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `fruitshop`
--

INSERT INTO `fruitshop` (`id`, `name`, `num`, `price`) VALUES
(1, '菠萝蜜', 5, 10),
(4, '苹果', 5, 5),
(5, '香蕉', 6, 3),
(6, '荔枝', 8, 10),
(12, '梨', 9, 5),
(11, '西红柿', 5, 6);

-- --------------------------------------------------------

--
-- 表的结构 `introduce`
--

CREATE TABLE `introduce` (
  `about` varchar(255) CHARACTER SET utf8 DEFAULT NULL,
  `contact` varchar(255) CHARACTER SET utf8 DEFAULT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `introduce`
--

INSERT INTO `introduce` (`about`, `contact`) VALUES
('我们是谁？', '联系地址：');

-- --------------------------------------------------------

--
-- 表的结构 `test`
--

CREATE TABLE `test` (
  `id` int(4) NOT NULL,
  `name` varchar(25) CHARACTER SET utf8 NOT NULL,
  `num` int(4) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- 转存表中的数据 `test`
--

INSERT INTO `test` (`id`, `name`, `num`) VALUES
(1, 'abc', 2),
(4, '苹果', 5),
(5, '香蕉', 6),
(6, '荔枝', 8);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `article`
--
ALTER TABLE `article`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `fruitshop`
--
ALTER TABLE `fruitshop`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `test`
--
ALTER TABLE `test`
  ADD PRIMARY KEY (`id`);

--
-- 在导出的表使用AUTO_INCREMENT
--

--
-- 使用表AUTO_INCREMENT `article`
--
ALTER TABLE `article`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '文章编号', AUTO_INCREMENT=11;
--
-- 使用表AUTO_INCREMENT `fruitshop`
--
ALTER TABLE `fruitshop`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- 使用表AUTO_INCREMENT `test`
--
ALTER TABLE `test`
  MODIFY `id` int(4) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
