-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 2016-02-26 10:29:26
-- 服务器版本： 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `ltp`
--

-- --------------------------------------------------------

--
-- 表的结构 `rbac_access`
--

CREATE TABLE IF NOT EXISTS `rbac_access` (
  `role_id` smallint(6) unsigned NOT NULL,
  `node_id` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) NOT NULL,
  `pid` smallint(6) NOT NULL,
  `module` varchar(50) DEFAULT NULL,
  KEY `groupId` (`role_id`),
  KEY `nodeId` (`node_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rbac_access`
--

INSERT INTO `rbac_access` (`role_id`, `node_id`, `level`, `pid`, `module`) VALUES
(2, 1, 1, 0, NULL),
(2, 40, 2, 1, NULL),
(2, 30, 2, 1, NULL),
(3, 1, 1, 0, NULL),
(2, 69, 2, 1, NULL),
(2, 50, 3, 40, NULL),
(3, 50, 3, 40, NULL),
(1, 50, 3, 40, NULL),
(3, 7, 2, 1, NULL),
(3, 39, 3, 30, NULL),
(2, 39, 3, 30, NULL),
(2, 49, 3, 30, NULL),
(4, 1, 1, 0, NULL),
(4, 2, 2, 1, NULL),
(4, 3, 2, 1, NULL),
(4, 4, 2, 1, NULL),
(4, 5, 2, 1, NULL),
(4, 6, 2, 1, NULL),
(4, 7, 2, 1, NULL),
(4, 11, 2, 1, NULL),
(5, 25, 1, 0, NULL),
(5, 51, 2, 25, NULL),
(1, 1, 1, 0, NULL),
(1, 39, 3, 30, NULL),
(1, 69, 2, 1, NULL),
(1, 30, 2, 1, NULL),
(1, 40, 2, 1, NULL),
(1, 49, 3, 30, NULL),
(3, 69, 2, 1, NULL),
(3, 30, 2, 1, NULL),
(3, 40, 2, 1, NULL),
(1, 37, 3, 30, NULL),
(1, 36, 3, 30, NULL),
(1, 35, 3, 30, NULL),
(1, 34, 3, 30, NULL),
(1, 33, 3, 30, NULL),
(1, 32, 3, 30, NULL),
(1, 31, 3, 30, NULL),
(2, 32, 3, 30, NULL),
(2, 31, 3, 30, NULL),
(7, 1, 1, 0, NULL),
(7, 30, 2, 1, NULL),
(7, 40, 2, 1, NULL),
(7, 69, 2, 1, NULL),
(7, 50, 3, 40, NULL),
(7, 39, 3, 30, NULL),
(7, 49, 3, 30, NULL);

-- --------------------------------------------------------

--
-- 表的结构 `rbac_form`
--

CREATE TABLE IF NOT EXISTS `rbac_form` (
  `id` smallint(4) unsigned NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `content` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) unsigned NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- 表的结构 `rbac_group`
--

CREATE TABLE IF NOT EXISTS `rbac_group` (
  `id` smallint(3) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(25) NOT NULL,
  `title` varchar(50) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL DEFAULT '0',
  `status` tinyint(1) unsigned NOT NULL DEFAULT '0',
  `sort` smallint(3) unsigned NOT NULL DEFAULT '0',
  `show` tinyint(1) unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=6 ;

--
-- 转存表中的数据 `rbac_group`
--

INSERT INTO `rbac_group` (`id`, `name`, `title`, `create_time`, `update_time`, `status`, `sort`, `show`) VALUES
(2, 'App', '应用中心', 1222841259, 0, 1, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `rbac_node`
--

CREATE TABLE IF NOT EXISTS `rbac_node` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `title` varchar(50) DEFAULT NULL,
  `status` tinyint(1) DEFAULT '0',
  `remark` varchar(255) DEFAULT NULL,
  `sort` smallint(6) unsigned DEFAULT NULL,
  `pid` smallint(6) unsigned NOT NULL,
  `level` tinyint(1) unsigned NOT NULL,
  `type` tinyint(1) NOT NULL DEFAULT '0',
  `group_id` tinyint(3) unsigned DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `level` (`level`),
  KEY `pid` (`pid`),
  KEY `status` (`status`),
  KEY `name` (`name`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=83 ;

--
-- 转存表中的数据 `rbac_node`
--

INSERT INTO `rbac_node` (`id`, `name`, `title`, `status`, `remark`, `sort`, `pid`, `level`, `type`, `group_id`) VALUES
(49, 'read', '查看', 1, '', NULL, 30, 3, 0, 0),
(40, 'Index', '默认模块', 1, '', 1, 1, 2, 0, 0),
(39, 'index', '列表', 1, '', NULL, 30, 3, 0, 0),
(37, 'resume', '恢复', 1, '', NULL, 30, 3, 0, 0),
(36, 'forbid', '禁用', 1, '', NULL, 30, 3, 0, 0),
(35, 'foreverdelete', '删除', 1, '', NULL, 30, 3, 0, 0),
(34, 'update', '更新', 1, '', NULL, 30, 3, 0, 0),
(33, 'edit', '编辑', 1, '', NULL, 30, 3, 0, 0),
(32, 'insert', '写入', 1, '', NULL, 30, 3, 0, 0),
(31, 'add', '新增', 1, '', NULL, 30, 3, 0, 0),
(30, 'Public', '公共模块', 1, '', 2, 1, 2, 0, 0),
(69, 'Form', '数据管理', 1, '', 1, 1, 2, 0, 2),
(7, 'User', '后台用户', 1, '', 4, 1, 2, 0, 2),
(6, 'Role', '角色管理', 1, '', 3, 1, 2, 0, 2),
(2, 'Node', '节点管理', 1, '', 2, 1, 2, 0, 2),
(1, 'Home', 'Rbac后台管理', 1, '', NULL, 0, 1, 0, 0),
(50, 'main', '空白首页', 1, '', NULL, 40, 3, 0, 0);

-- --------------------------------------------------------

--
-- 表的结构 `rbac_role`
--

CREATE TABLE IF NOT EXISTS `rbac_role` (
  `id` smallint(6) unsigned NOT NULL AUTO_INCREMENT,
  `name` varchar(20) NOT NULL,
  `pid` smallint(6) DEFAULT NULL,
  `status` tinyint(1) unsigned DEFAULT NULL,
  `remark` varchar(255) DEFAULT NULL,
  `ename` varchar(5) DEFAULT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parentId` (`pid`),
  KEY `ename` (`ename`),
  KEY `status` (`status`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=12 ;

--
-- 转存表中的数据 `rbac_role`
--

INSERT INTO `rbac_role` (`id`, `name`, `pid`, `status`, `remark`, `ename`, `create_time`, `update_time`) VALUES
(1, '领导组', 0, 1, '', '', 1208784792, 1254325558),
(2, '员工组', 0, 1, '', '', 1215496283, 1254325566),
(7, '演示组', 0, 1, '', NULL, 1254325787, 0),
(3, '超级管理员', 0, 1, '', NULL, 1254325787, 0);

-- --------------------------------------------------------

--
-- 表的结构 `rbac_role_user`
--

CREATE TABLE IF NOT EXISTS `rbac_role_user` (
  `role_id` mediumint(9) unsigned DEFAULT NULL,
  `user_id` char(32) DEFAULT NULL,
  KEY `group_id` (`role_id`),
  KEY `user_id` (`user_id`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

--
-- 转存表中的数据 `rbac_role_user`
--

INSERT INTO `rbac_role_user` (`role_id`, `user_id`) VALUES
(1, '69'),
(2, '67'),
(3, '1'),
(1, '4'),
(1, '3');

-- --------------------------------------------------------

--
-- 表的结构 `rbac_user`
--

CREATE TABLE IF NOT EXISTS `rbac_user` (
  `id` smallint(5) unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(64) NOT NULL,
  `nickname` varchar(50) NOT NULL,
  `password` char(32) NOT NULL,
  `bind_account` varchar(50) NOT NULL,
  `last_login_time` int(11) unsigned DEFAULT '0',
  `last_login_ip` varchar(40) DEFAULT NULL,
  `login_count` mediumint(8) unsigned DEFAULT '0',
  `verify` varchar(32) DEFAULT NULL,
  `email` varchar(50) NOT NULL,
  `remark` varchar(255) NOT NULL,
  `create_time` int(11) unsigned NOT NULL,
  `update_time` int(11) unsigned NOT NULL,
  `status` tinyint(1) DEFAULT '0',
  `type_id` tinyint(2) unsigned DEFAULT '0',
  `info` text NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `account` (`account`)
) ENGINE=MyISAM  DEFAULT CHARSET=utf8 AUTO_INCREMENT=70 ;

--
-- 转存表中的数据 `rbac_user`
--

INSERT INTO `rbac_user` (`id`, `account`, `nickname`, `password`, `bind_account`, `last_login_time`, `last_login_ip`, `login_count`, `verify`, `email`, `remark`, `create_time`, `update_time`, `status`, `type_id`, `info`) VALUES
(1, 'admin', '管理员', '21232f297a57a5a743894a0e4a801fc3', '', 1456478774, '127.0.0.1', 1134, '8888', 'liu21st@gmail.com', '备注信息', 1222907803, 1326266696, 1, 0, ''),
(67, '张三', '张三', '698d51a19d8a121ce581499d7b701668', '', 0, NULL, 0, NULL, 'abc@126.com', '', 1456393870, 1456473358, 1, 0, ''),
(3, 'member', '员工', 'aa08769cdcb26674c6706093503ff0a3', '', 1456199638, '127.0.0.1', 18, '', '', '', 1253514375, 1254325728, 1, 0, ''),
(4, 'leader', '领导', 'a0b7fcc0332dbbc0b77b05ea2b6b0ded', '', 1456220984, '127.0.0.1', 77, '', '', '领导', 1253514575, 1456478932, 0, 0, ''),
(69, 'lisi', '李四', 'd41d8cd98f00b204e9800998ecf8427e', '', 0, NULL, 0, NULL, '11111@dsafewf.com', '李四李四', 1456473381, 1456474170, 0, 0, '');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
