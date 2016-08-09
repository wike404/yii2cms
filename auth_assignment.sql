/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50547
Source Host           : localhost:3306
Source Database       : yii2shop

Target Server Type    : MYSQL
Target Server Version : 50547
File Encoding         : 65001

Date: 2016-08-09 10:52:59
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for auth_assignment
-- ----------------------------
DROP TABLE IF EXISTS `auth_assignment`;
CREATE TABLE `auth_assignment` (
  `item_name` varchar(64) NOT NULL,
  `user_id` varchar(64) NOT NULL,
  `created_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`item_name`,`user_id`),
  CONSTRAINT `auth_assignment_ibfk_1` FOREIGN KEY (`item_name`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_assignment
-- ----------------------------
INSERT INTO `auth_assignment` VALUES ('超级管理员', '1', '1470709940');

-- ----------------------------
-- Table structure for auth_item
-- ----------------------------
DROP TABLE IF EXISTS `auth_item`;
CREATE TABLE `auth_item` (
  `name` varchar(64) NOT NULL,
  `type` int(11) NOT NULL,
  `description` text,
  `rule_name` varchar(64) DEFAULT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`),
  KEY `rule_name` (`rule_name`),
  KEY `type` (`type`),
  CONSTRAINT `auth_item_ibfk_1` FOREIGN KEY (`rule_name`) REFERENCES `auth_rule` (`name`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item
-- ----------------------------
INSERT INTO `auth_item` VALUES ('/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/admin/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/admin/assignment/*', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/assignment/assign', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/assignment/index', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/assignment/revoke', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/assignment/view', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/default/*', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/default/index', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/menu/*', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/menu/create', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/menu/delete', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/menu/index', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/menu/update', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/menu/view', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/*', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/assign', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/create', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/delete', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/index', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/remove', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/update', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/permission/view', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/role/*', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/role/assign', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/role/create', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/role/delete', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/role/index', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/role/remove', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/role/update', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/role/view', '2', null, null, null, '1470709817', '1470709817');
INSERT INTO `auth_item` VALUES ('/admin/route/*', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/route/assign', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/route/create', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/route/index', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/route/refresh', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/route/remove', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/rule/*', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/rule/create', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/rule/delete', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/rule/index', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/rule/update', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/rule/view', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/*', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/activate', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/change-password', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/delete', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/index', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/login', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/logout', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/request-password-reset', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/reset-password', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/signup', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/admin/user/view', '2', null, null, null, '1470709818', '1470709818');
INSERT INTO `auth_item` VALUES ('/debug/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/debug/default/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/debug/default/db-explain', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/debug/default/download-mail', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/debug/default/index', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/debug/default/toolbar', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/debug/default/view', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/default/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/default/action', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/default/diff', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/default/index', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/default/preview', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/gii/default/view', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/site/*', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/site/error', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/site/index', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/site/login', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('/site/logout', '2', null, null, null, '1470709819', '1470709819');
INSERT INTO `auth_item` VALUES ('超级管理员', '1', null, null, null, '1470709908', '1470709908');

-- ----------------------------
-- Table structure for auth_item_child
-- ----------------------------
DROP TABLE IF EXISTS `auth_item_child`;
CREATE TABLE `auth_item_child` (
  `parent` varchar(64) NOT NULL,
  `child` varchar(64) NOT NULL,
  PRIMARY KEY (`parent`,`child`),
  KEY `child` (`child`),
  CONSTRAINT `auth_item_child_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE,
  CONSTRAINT `auth_item_child_ibfk_2` FOREIGN KEY (`child`) REFERENCES `auth_item` (`name`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_item_child
-- ----------------------------
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/revoke');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/assignment/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/menu/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/permission/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/role/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/assign');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/refresh');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/route/remove');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/create');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/update');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/rule/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/activate');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/change-password');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/delete');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/login');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/logout');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/request-password-reset');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/reset-password');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/signup');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/admin/user/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/db-explain');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/download-mail');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/toolbar');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/debug/default/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/action');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/diff');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/preview');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/gii/default/view');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/*');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/error');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/index');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/login');
INSERT INTO `auth_item_child` VALUES ('超级管理员', '/site/logout');

-- ----------------------------
-- Table structure for auth_rule
-- ----------------------------
DROP TABLE IF EXISTS `auth_rule`;
CREATE TABLE `auth_rule` (
  `name` varchar(64) NOT NULL,
  `data` text,
  `created_at` int(11) DEFAULT NULL,
  `updated_at` int(11) DEFAULT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of auth_rule
-- ----------------------------

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(128) DEFAULT NULL,
  `parent` int(11) DEFAULT NULL,
  `route` varchar(256) DEFAULT NULL,
  `order` int(11) DEFAULT NULL,
  `data` blob,
  PRIMARY KEY (`id`),
  KEY `parent` (`parent`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`parent`) REFERENCES `menu` (`id`) ON DELETE SET NULL ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '权限管理', null, null, '999', 0x7B2269636F6E223A202266612066612D7573657273222C202276697369626C65223A20747275657D);
INSERT INTO `menu` VALUES ('2', '路由管理', '1', '/admin/route/index', '1', null);
INSERT INTO `menu` VALUES ('3', '权限设置', '1', '/admin/permission/index', '2', null);
INSERT INTO `menu` VALUES ('4', '角色管理', '1', '/admin/role/index', '3', null);
INSERT INTO `menu` VALUES ('5', '分配权限', '1', '/admin/assignment/index', '4', null);
INSERT INTO `menu` VALUES ('6', '规则设置', '1', '/admin/rule/index', '6', null);
INSERT INTO `menu` VALUES ('7', '菜单管理', '1', '/admin/menu/index', '7', null);
INSERT INTO `menu` VALUES ('8', '控制台', null, '/site/index', '1', 0x7B2269636F6E223A202266612066612D64617368626F617264222C202276697369626C65223A747275657D);

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '自增ID',
  `username` varchar(255) NOT NULL COMMENT '用户名',
  `auth_key` varchar(32) NOT NULL COMMENT '自动登录key',
  `password_hash` varchar(255) NOT NULL COMMENT '加密密码',
  `password_reset_token` varchar(255) DEFAULT NULL COMMENT '重置密码token',
  `email` varchar(255) NOT NULL COMMENT '邮箱',
  `role` smallint(6) NOT NULL DEFAULT '10' COMMENT '角色等级',
  `status` smallint(6) NOT NULL DEFAULT '10' COMMENT '状态',
  `created_at` int(11) NOT NULL COMMENT '创建时间',
  `updated_at` int(11) NOT NULL COMMENT '更新时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户表';

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', 'apiRub6ToRurVTcby16Gz-cKvi2NPHyE', '$2y$13$kptijPzEa6oMO1iLqaV7f.GHkfG/BdcS0Q3bc2f9bde6Ei/fQ6eeC', null, 'admin@yii2shop.cn', '10', '10', '1470708185', '1470708185');
