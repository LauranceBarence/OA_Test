/*
Navicat MySQL Data Transfer

Source Server         : localhost_3306
Source Server Version : 50720
Source Host           : localhost:3306
Source Database       : oa_project

Target Server Type    : MYSQL
Target Server Version : 50720
File Encoding         : 65001

Date: 2018-10-09 19:09:51
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for department
-- ----------------------------
DROP TABLE IF EXISTS `department`;
CREATE TABLE `department` (
  `department_id` int(10) NOT NULL,
  `department_name` varchar(255) NOT NULL,
  `p_id` int(10) DEFAULT NULL,
  `chief_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`department_id`),
  KEY `fk_chief_id_user_id` (`chief_id`),
  CONSTRAINT `fk_chief_id_user_id` FOREIGN KEY (`chief_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of department
-- ----------------------------
INSERT INTO `department` VALUES ('1', '总经理办公室', null, '11');
INSERT INTO `department` VALUES ('2', '业务集群I-王琰', '1', '8');
INSERT INTO `department` VALUES ('3', '业务集群II-余笑', '1', '7');
INSERT INTO `department` VALUES ('4', '财务部', '1', '2');
INSERT INTO `department` VALUES ('5', '人力资源部', '1', '3');
INSERT INTO `department` VALUES ('6', '行政管理部', '1', '3');
INSERT INTO `department` VALUES ('7', '市场部', '2', '4');
INSERT INTO `department` VALUES ('8', '销售部', '3', '5');
INSERT INTO `department` VALUES ('9', '就业部', '2', '6');
INSERT INTO `department` VALUES ('10', '教学部', '3', '19');
INSERT INTO `department` VALUES ('11', '教务部', '10', '19');

-- ----------------------------
-- Table structure for menu
-- ----------------------------
DROP TABLE IF EXISTS `menu`;
CREATE TABLE `menu` (
  `menu_id` int(10) NOT NULL,
  `menu_name` varchar(255) NOT NULL,
  `menu_url` varchar(255) DEFAULT NULL,
  `p_id` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of menu
-- ----------------------------
INSERT INTO `menu` VALUES ('1', '人力资源', '', '');
INSERT INTO `menu` VALUES ('2', '公文模块', '', '');
INSERT INTO `menu` VALUES ('3', '邮箱模块', '', '');
INSERT INTO `menu` VALUES ('4', '个人办公', '', '');
INSERT INTO `menu` VALUES ('5', '系统设置', '', '');
INSERT INTO `menu` VALUES ('6', '考勤管理', '', '1');
INSERT INTO `menu` VALUES ('7', '公告管理', '', '1');
INSERT INTO `menu` VALUES ('8', '员工管理', '', '1');
INSERT INTO `menu` VALUES ('9', '部门管理', '', '1');
INSERT INTO `menu` VALUES ('10', '角色管理', '', '1');
INSERT INTO `menu` VALUES ('11', '权限管理', '', '1');
INSERT INTO `menu` VALUES ('12', '公文设计', '', '2');
INSERT INTO `menu` VALUES ('13', '公文管理', '', '2');
INSERT INTO `menu` VALUES ('14', '邮箱管理', '', '3');
INSERT INTO `menu` VALUES ('15', '工作日志', '', '4');
INSERT INTO `menu` VALUES ('16', '行程安排', '', '4');
INSERT INTO `menu` VALUES ('17', '菜单管理', '', '5');
INSERT INTO `menu` VALUES ('18', '个人设置', '', '5');

-- ----------------------------
-- Table structure for operate
-- ----------------------------
DROP TABLE IF EXISTS `operate`;
CREATE TABLE `operate` (
  `operate_id` int(10) NOT NULL,
  `operate_name` varchar(255) DEFAULT NULL,
  `operate_code` varchar(255) DEFAULT NULL,
  `operate_url` varchar(255) DEFAULT NULL,
  `p_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`operate_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of operate
-- ----------------------------
INSERT INTO `operate` VALUES ('1', '博为峰OA办公自动化系统', 'OA', '', null);
INSERT INTO `operate` VALUES ('6', '考勤管理', 'Roster', '', '1');
INSERT INTO `operate` VALUES ('7', '公告管理', 'News', '', '1');
INSERT INTO `operate` VALUES ('8', '员工管理', 'User', '', '1');
INSERT INTO `operate` VALUES ('9', '部门管理', 'Department', '', '1');
INSERT INTO `operate` VALUES ('10', '角色管理', 'Role', '', '1');
INSERT INTO `operate` VALUES ('11', '权限管理', 'Permission', '', '1');
INSERT INTO `operate` VALUES ('12', '公文设计', 'AffairModule', '', '1');
INSERT INTO `operate` VALUES ('13', '公文管理', 'Affair', '', '1');
INSERT INTO `operate` VALUES ('14', '邮箱管理', 'Email', '', '1');
INSERT INTO `operate` VALUES ('15', '工作日志', 'Daily', '', '1');
INSERT INTO `operate` VALUES ('16', '行程安排', 'Schedule', '', '1');
INSERT INTO `operate` VALUES ('17', '菜单管理', 'Menu', '', '1');
INSERT INTO `operate` VALUES ('18', '个人设置', 'Setting', '', '1');
INSERT INTO `operate` VALUES ('19', '添加公告', 'NewsAdd', '', '1');
INSERT INTO `operate` VALUES ('20', '修改公告', 'NewsUpdate', '', '1');
INSERT INTO `operate` VALUES ('21', '删除公告', 'NewsDelete', '', '1');
INSERT INTO `operate` VALUES ('22', '添加考勤', 'RosterAdd', '', '1');
INSERT INTO `operate` VALUES ('23', '修改考勤', 'RosterUpdate', '', '1');
INSERT INTO `operate` VALUES ('24', '删除考勤', 'RosterDelete', '', '1');
INSERT INTO `operate` VALUES ('25', '新增员工', 'UserAdd', '', '1');
INSERT INTO `operate` VALUES ('26', '修改员工', 'UserUpdate', '', '1');
INSERT INTO `operate` VALUES ('27', '删除员工', 'UserDelete', '', '1');
INSERT INTO `operate` VALUES ('28', '新增部门', 'DepartmentAdd', '', '1');
INSERT INTO `operate` VALUES ('29', '修改部门', 'DepartmentUpdate', '', '1');
INSERT INTO `operate` VALUES ('30', '删除部门', 'DepartmentDelete', '', '1');
INSERT INTO `operate` VALUES ('31', '新增角色', 'RoleAdd', '', '1');
INSERT INTO `operate` VALUES ('32', '修改角色', 'RoleUpdate', '', '1');
INSERT INTO `operate` VALUES ('33', '删除角色', 'RoleDelete', '', '1');
INSERT INTO `operate` VALUES ('34', '新增公文模板', 'AffairModuleAdd', '', '1');
INSERT INTO `operate` VALUES ('35', '修改公文模板', 'AffairModuleUpdate', '', '1');
INSERT INTO `operate` VALUES ('36', '删除公文模板', 'AffairModuleDelete', '', '1');
INSERT INTO `operate` VALUES ('37', '添加公告保存', 'NewsSave', '', '1');
INSERT INTO `operate` VALUES ('38', '修改公告保存', 'NewsAlter', '', '1');
INSERT INTO `operate` VALUES ('39', '添加考勤保存', 'RosterSave', '', '1');
INSERT INTO `operate` VALUES ('40', '修改考勤保存', 'RosterAlter', '', '1');
INSERT INTO `operate` VALUES ('41', '新增员工保存', 'UserSave', '', '1');
INSERT INTO `operate` VALUES ('42', '修改员工保存', 'UserAlter', '', '1');
INSERT INTO `operate` VALUES ('43', '新增部门保存', 'DepartmentSave', '', '1');
INSERT INTO `operate` VALUES ('44', '修改部门保存', 'DepartmentAlter', '', '1');
INSERT INTO `operate` VALUES ('45', '新增角色保存', 'RoleSave', '', '1');
INSERT INTO `operate` VALUES ('46', '修改角色保存', 'RoleAlter', '', '1');
INSERT INTO `operate` VALUES ('47', '新增公文模板保存', 'AffairModuleSave', '', '1');
INSERT INTO `operate` VALUES ('48', '修改公文模板保存', 'AffairModuleAlter', '', '1');

-- ----------------------------
-- Table structure for permission
-- ----------------------------
DROP TABLE IF EXISTS `permission`;
CREATE TABLE `permission` (
  `permission_id` int(10) NOT NULL,
  `permission_name` varchar(255) NOT NULL,
  `permission_type` varchar(255) NOT NULL,
  `pid` int(10) DEFAULT NULL,
  PRIMARY KEY (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of permission
-- ----------------------------
INSERT INTO `permission` VALUES ('1', '人力资源', '', null);
INSERT INTO `permission` VALUES ('2', '公文模块', '', null);
INSERT INTO `permission` VALUES ('3', '邮箱模块', '', null);
INSERT INTO `permission` VALUES ('4', '个人办公', '', null);
INSERT INTO `permission` VALUES ('5', '系统设置', '', null);
INSERT INTO `permission` VALUES ('6', '考勤管理', '', '1');
INSERT INTO `permission` VALUES ('7', '公告管理', '', '1');
INSERT INTO `permission` VALUES ('8', '员工管理', '', '1');
INSERT INTO `permission` VALUES ('9', '部门管理', '', '1');
INSERT INTO `permission` VALUES ('10', '角色管理', '', '1');
INSERT INTO `permission` VALUES ('11', '权限管理', '', '1');
INSERT INTO `permission` VALUES ('12', '公文设计', '', '2');
INSERT INTO `permission` VALUES ('13', '公文管理', '', '2');
INSERT INTO `permission` VALUES ('14', '邮箱管理', '', '3');
INSERT INTO `permission` VALUES ('15', '工作日志', '', '4');
INSERT INTO `permission` VALUES ('16', '行程安排', '', '4');
INSERT INTO `permission` VALUES ('17', '菜单管理', '', '5');
INSERT INTO `permission` VALUES ('18', '个人设置', '', '5');
INSERT INTO `permission` VALUES ('19', '添加公告', '', '7');
INSERT INTO `permission` VALUES ('20', '修改公告', '', '7');
INSERT INTO `permission` VALUES ('21', '删除公告', '', '7');
INSERT INTO `permission` VALUES ('22', '添加考勤', '', '6');
INSERT INTO `permission` VALUES ('23', '修改考勤', '', '6');
INSERT INTO `permission` VALUES ('24', '删除考勤', '', '6');
INSERT INTO `permission` VALUES ('25', '新增员工', '', '8');
INSERT INTO `permission` VALUES ('26', '修改员工', '', '8');
INSERT INTO `permission` VALUES ('27', '删除员工', '', '8');
INSERT INTO `permission` VALUES ('28', '新增部门', '', '9');
INSERT INTO `permission` VALUES ('29', '修改部门', '', '9');
INSERT INTO `permission` VALUES ('30', '删除部门', '', '9');
INSERT INTO `permission` VALUES ('31', '新增角色', '', '10');
INSERT INTO `permission` VALUES ('32', '修改角色', '', '10');
INSERT INTO `permission` VALUES ('33', '删除角色', '', '10');
INSERT INTO `permission` VALUES ('34', '新增公文模板', '', '12');
INSERT INTO `permission` VALUES ('35', '修改公文模板', '', '12');
INSERT INTO `permission` VALUES ('36', '删除公文模板', '', '12');

-- ----------------------------
-- Table structure for rel_permission_menu
-- ----------------------------
DROP TABLE IF EXISTS `rel_permission_menu`;
CREATE TABLE `rel_permission_menu` (
  `permission_id` int(10) NOT NULL,
  `menu_id` int(10) DEFAULT NULL,
  KEY `fk_permission_id_menu` (`permission_id`),
  KEY `fk_menu_id_per` (`menu_id`),
  CONSTRAINT `fk_menu_id_per` FOREIGN KEY (`menu_id`) REFERENCES `menu` (`menu_id`),
  CONSTRAINT `fk_permission_id_menu` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rel_permission_menu
-- ----------------------------
INSERT INTO `rel_permission_menu` VALUES ('1', '1');
INSERT INTO `rel_permission_menu` VALUES ('2', '2');
INSERT INTO `rel_permission_menu` VALUES ('3', '3');
INSERT INTO `rel_permission_menu` VALUES ('4', '4');
INSERT INTO `rel_permission_menu` VALUES ('5', '5');
INSERT INTO `rel_permission_menu` VALUES ('6', '6');
INSERT INTO `rel_permission_menu` VALUES ('7', '7');
INSERT INTO `rel_permission_menu` VALUES ('8', '8');
INSERT INTO `rel_permission_menu` VALUES ('9', '9');
INSERT INTO `rel_permission_menu` VALUES ('10', '10');
INSERT INTO `rel_permission_menu` VALUES ('11', '11');
INSERT INTO `rel_permission_menu` VALUES ('12', '12');
INSERT INTO `rel_permission_menu` VALUES ('13', '13');
INSERT INTO `rel_permission_menu` VALUES ('14', '14');
INSERT INTO `rel_permission_menu` VALUES ('15', '15');
INSERT INTO `rel_permission_menu` VALUES ('16', '16');
INSERT INTO `rel_permission_menu` VALUES ('17', '17');
INSERT INTO `rel_permission_menu` VALUES ('18', '18');

-- ----------------------------
-- Table structure for rel_permission_operate
-- ----------------------------
DROP TABLE IF EXISTS `rel_permission_operate`;
CREATE TABLE `rel_permission_operate` (
  `permission_id` int(10) NOT NULL,
  `operate_id` int(10) DEFAULT NULL,
  KEY `fk_permission_id_ope` (`permission_id`),
  KEY `fk_operate_id_per` (`operate_id`),
  CONSTRAINT `fk_operate_id_per` FOREIGN KEY (`operate_id`) REFERENCES `operate` (`operate_id`),
  CONSTRAINT `fk_permission_id_ope` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rel_permission_operate
-- ----------------------------
INSERT INTO `rel_permission_operate` VALUES ('6', '6');
INSERT INTO `rel_permission_operate` VALUES ('7', '7');
INSERT INTO `rel_permission_operate` VALUES ('8', '8');
INSERT INTO `rel_permission_operate` VALUES ('9', '9');
INSERT INTO `rel_permission_operate` VALUES ('10', '10');
INSERT INTO `rel_permission_operate` VALUES ('11', '11');
INSERT INTO `rel_permission_operate` VALUES ('12', '12');
INSERT INTO `rel_permission_operate` VALUES ('13', '13');
INSERT INTO `rel_permission_operate` VALUES ('14', '14');
INSERT INTO `rel_permission_operate` VALUES ('15', '15');
INSERT INTO `rel_permission_operate` VALUES ('16', '16');
INSERT INTO `rel_permission_operate` VALUES ('17', '17');
INSERT INTO `rel_permission_operate` VALUES ('18', '18');
INSERT INTO `rel_permission_operate` VALUES ('19', '19');
INSERT INTO `rel_permission_operate` VALUES ('20', '20');
INSERT INTO `rel_permission_operate` VALUES ('21', '21');
INSERT INTO `rel_permission_operate` VALUES ('22', '22');
INSERT INTO `rel_permission_operate` VALUES ('23', '23');
INSERT INTO `rel_permission_operate` VALUES ('24', '24');
INSERT INTO `rel_permission_operate` VALUES ('25', '25');
INSERT INTO `rel_permission_operate` VALUES ('26', '26');
INSERT INTO `rel_permission_operate` VALUES ('27', '27');
INSERT INTO `rel_permission_operate` VALUES ('28', '28');
INSERT INTO `rel_permission_operate` VALUES ('29', '29');
INSERT INTO `rel_permission_operate` VALUES ('30', '30');
INSERT INTO `rel_permission_operate` VALUES ('31', '31');
INSERT INTO `rel_permission_operate` VALUES ('32', '32');
INSERT INTO `rel_permission_operate` VALUES ('33', '33');
INSERT INTO `rel_permission_operate` VALUES ('34', '34');
INSERT INTO `rel_permission_operate` VALUES ('35', '35');
INSERT INTO `rel_permission_operate` VALUES ('36', '36');
INSERT INTO `rel_permission_operate` VALUES ('19', '37');
INSERT INTO `rel_permission_operate` VALUES ('20', '38');
INSERT INTO `rel_permission_operate` VALUES ('22', '39');
INSERT INTO `rel_permission_operate` VALUES ('23', '40');
INSERT INTO `rel_permission_operate` VALUES ('25', '41');
INSERT INTO `rel_permission_operate` VALUES ('26', '42');
INSERT INTO `rel_permission_operate` VALUES ('28', '43');
INSERT INTO `rel_permission_operate` VALUES ('29', '44');
INSERT INTO `rel_permission_operate` VALUES ('31', '45');
INSERT INTO `rel_permission_operate` VALUES ('32', '46');
INSERT INTO `rel_permission_operate` VALUES ('34', '47');
INSERT INTO `rel_permission_operate` VALUES ('35', '48');

-- ----------------------------
-- Table structure for rel_role_permission
-- ----------------------------
DROP TABLE IF EXISTS `rel_role_permission`;
CREATE TABLE `rel_role_permission` (
  `role_id` int(10) NOT NULL,
  `permission_id` int(10) DEFAULT NULL,
  KEY `fk_role_id_per` (`role_id`),
  KEY `fk_permission_id_rol` (`permission_id`),
  CONSTRAINT `fk_permission_id_rol` FOREIGN KEY (`permission_id`) REFERENCES `permission` (`permission_id`),
  CONSTRAINT `fk_role_id_per` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rel_role_permission
-- ----------------------------
INSERT INTO `rel_role_permission` VALUES ('2', '1');
INSERT INTO `rel_role_permission` VALUES ('2', '2');
INSERT INTO `rel_role_permission` VALUES ('2', '3');
INSERT INTO `rel_role_permission` VALUES ('2', '4');
INSERT INTO `rel_role_permission` VALUES ('2', '5');
INSERT INTO `rel_role_permission` VALUES ('2', '6');
INSERT INTO `rel_role_permission` VALUES ('2', '7');
INSERT INTO `rel_role_permission` VALUES ('2', '8');
INSERT INTO `rel_role_permission` VALUES ('2', '9');
INSERT INTO `rel_role_permission` VALUES ('2', '10');
INSERT INTO `rel_role_permission` VALUES ('2', '11');
INSERT INTO `rel_role_permission` VALUES ('2', '12');
INSERT INTO `rel_role_permission` VALUES ('2', '13');
INSERT INTO `rel_role_permission` VALUES ('2', '14');
INSERT INTO `rel_role_permission` VALUES ('2', '15');
INSERT INTO `rel_role_permission` VALUES ('2', '16');
INSERT INTO `rel_role_permission` VALUES ('2', '17');
INSERT INTO `rel_role_permission` VALUES ('2', '18');
INSERT INTO `rel_role_permission` VALUES ('2', '19');
INSERT INTO `rel_role_permission` VALUES ('2', '20');
INSERT INTO `rel_role_permission` VALUES ('2', '21');
INSERT INTO `rel_role_permission` VALUES ('2', '22');
INSERT INTO `rel_role_permission` VALUES ('2', '23');
INSERT INTO `rel_role_permission` VALUES ('2', '24');
INSERT INTO `rel_role_permission` VALUES ('2', '25');
INSERT INTO `rel_role_permission` VALUES ('2', '26');
INSERT INTO `rel_role_permission` VALUES ('2', '27');
INSERT INTO `rel_role_permission` VALUES ('2', '28');
INSERT INTO `rel_role_permission` VALUES ('2', '29');
INSERT INTO `rel_role_permission` VALUES ('2', '30');
INSERT INTO `rel_role_permission` VALUES ('2', '31');
INSERT INTO `rel_role_permission` VALUES ('2', '32');
INSERT INTO `rel_role_permission` VALUES ('2', '33');
INSERT INTO `rel_role_permission` VALUES ('2', '34');
INSERT INTO `rel_role_permission` VALUES ('2', '35');
INSERT INTO `rel_role_permission` VALUES ('2', '36');
INSERT INTO `rel_role_permission` VALUES ('3', '1');
INSERT INTO `rel_role_permission` VALUES ('3', '2');
INSERT INTO `rel_role_permission` VALUES ('3', '3');
INSERT INTO `rel_role_permission` VALUES ('3', '4');
INSERT INTO `rel_role_permission` VALUES ('3', '5');
INSERT INTO `rel_role_permission` VALUES ('3', '6');
INSERT INTO `rel_role_permission` VALUES ('3', '7');
INSERT INTO `rel_role_permission` VALUES ('3', '8');
INSERT INTO `rel_role_permission` VALUES ('3', '9');
INSERT INTO `rel_role_permission` VALUES ('3', '10');
INSERT INTO `rel_role_permission` VALUES ('3', '11');
INSERT INTO `rel_role_permission` VALUES ('3', '12');
INSERT INTO `rel_role_permission` VALUES ('3', '13');
INSERT INTO `rel_role_permission` VALUES ('3', '14');
INSERT INTO `rel_role_permission` VALUES ('3', '15');
INSERT INTO `rel_role_permission` VALUES ('3', '16');
INSERT INTO `rel_role_permission` VALUES ('3', '17');
INSERT INTO `rel_role_permission` VALUES ('3', '18');
INSERT INTO `rel_role_permission` VALUES ('3', '19');
INSERT INTO `rel_role_permission` VALUES ('3', '20');
INSERT INTO `rel_role_permission` VALUES ('3', '21');
INSERT INTO `rel_role_permission` VALUES ('3', '22');
INSERT INTO `rel_role_permission` VALUES ('3', '23');
INSERT INTO `rel_role_permission` VALUES ('3', '24');
INSERT INTO `rel_role_permission` VALUES ('3', '25');
INSERT INTO `rel_role_permission` VALUES ('3', '26');
INSERT INTO `rel_role_permission` VALUES ('3', '27');
INSERT INTO `rel_role_permission` VALUES ('3', '28');
INSERT INTO `rel_role_permission` VALUES ('3', '29');
INSERT INTO `rel_role_permission` VALUES ('3', '30');
INSERT INTO `rel_role_permission` VALUES ('3', '31');
INSERT INTO `rel_role_permission` VALUES ('3', '32');
INSERT INTO `rel_role_permission` VALUES ('3', '33');
INSERT INTO `rel_role_permission` VALUES ('3', '34');
INSERT INTO `rel_role_permission` VALUES ('3', '35');
INSERT INTO `rel_role_permission` VALUES ('3', '36');
INSERT INTO `rel_role_permission` VALUES ('26', '2');
INSERT INTO `rel_role_permission` VALUES ('26', '3');
INSERT INTO `rel_role_permission` VALUES ('26', '4');
INSERT INTO `rel_role_permission` VALUES ('26', '5');
INSERT INTO `rel_role_permission` VALUES ('26', '13');
INSERT INTO `rel_role_permission` VALUES ('26', '14');
INSERT INTO `rel_role_permission` VALUES ('26', '15');
INSERT INTO `rel_role_permission` VALUES ('26', '16');
INSERT INTO `rel_role_permission` VALUES ('26', '18');
INSERT INTO `rel_role_permission` VALUES ('27', '2');
INSERT INTO `rel_role_permission` VALUES ('27', '3');
INSERT INTO `rel_role_permission` VALUES ('27', '4');
INSERT INTO `rel_role_permission` VALUES ('27', '5');
INSERT INTO `rel_role_permission` VALUES ('27', '13');
INSERT INTO `rel_role_permission` VALUES ('27', '14');
INSERT INTO `rel_role_permission` VALUES ('27', '15');
INSERT INTO `rel_role_permission` VALUES ('27', '16');
INSERT INTO `rel_role_permission` VALUES ('27', '18');
INSERT INTO `rel_role_permission` VALUES ('28', '2');
INSERT INTO `rel_role_permission` VALUES ('28', '3');
INSERT INTO `rel_role_permission` VALUES ('28', '4');
INSERT INTO `rel_role_permission` VALUES ('28', '5');
INSERT INTO `rel_role_permission` VALUES ('28', '13');
INSERT INTO `rel_role_permission` VALUES ('28', '14');
INSERT INTO `rel_role_permission` VALUES ('28', '15');
INSERT INTO `rel_role_permission` VALUES ('28', '16');
INSERT INTO `rel_role_permission` VALUES ('28', '18');
INSERT INTO `rel_role_permission` VALUES ('8', '1');
INSERT INTO `rel_role_permission` VALUES ('8', '2');
INSERT INTO `rel_role_permission` VALUES ('8', '3');
INSERT INTO `rel_role_permission` VALUES ('8', '4');
INSERT INTO `rel_role_permission` VALUES ('8', '5');
INSERT INTO `rel_role_permission` VALUES ('8', '6');
INSERT INTO `rel_role_permission` VALUES ('8', '7');
INSERT INTO `rel_role_permission` VALUES ('8', '8');
INSERT INTO `rel_role_permission` VALUES ('8', '9');
INSERT INTO `rel_role_permission` VALUES ('8', '10');
INSERT INTO `rel_role_permission` VALUES ('8', '11');
INSERT INTO `rel_role_permission` VALUES ('8', '12');
INSERT INTO `rel_role_permission` VALUES ('8', '13');
INSERT INTO `rel_role_permission` VALUES ('8', '14');
INSERT INTO `rel_role_permission` VALUES ('8', '15');
INSERT INTO `rel_role_permission` VALUES ('8', '16');
INSERT INTO `rel_role_permission` VALUES ('8', '17');
INSERT INTO `rel_role_permission` VALUES ('8', '18');
INSERT INTO `rel_role_permission` VALUES ('8', '19');
INSERT INTO `rel_role_permission` VALUES ('8', '20');
INSERT INTO `rel_role_permission` VALUES ('8', '21');
INSERT INTO `rel_role_permission` VALUES ('8', '22');
INSERT INTO `rel_role_permission` VALUES ('8', '23');
INSERT INTO `rel_role_permission` VALUES ('8', '24');
INSERT INTO `rel_role_permission` VALUES ('8', '25');
INSERT INTO `rel_role_permission` VALUES ('8', '26');
INSERT INTO `rel_role_permission` VALUES ('8', '27');
INSERT INTO `rel_role_permission` VALUES ('8', '28');
INSERT INTO `rel_role_permission` VALUES ('8', '29');
INSERT INTO `rel_role_permission` VALUES ('8', '30');
INSERT INTO `rel_role_permission` VALUES ('8', '31');
INSERT INTO `rel_role_permission` VALUES ('8', '32');
INSERT INTO `rel_role_permission` VALUES ('8', '33');
INSERT INTO `rel_role_permission` VALUES ('8', '34');
INSERT INTO `rel_role_permission` VALUES ('8', '35');
INSERT INTO `rel_role_permission` VALUES ('8', '36');
INSERT INTO `rel_role_permission` VALUES ('13', '2');
INSERT INTO `rel_role_permission` VALUES ('13', '3');
INSERT INTO `rel_role_permission` VALUES ('13', '4');
INSERT INTO `rel_role_permission` VALUES ('13', '5');
INSERT INTO `rel_role_permission` VALUES ('13', '13');
INSERT INTO `rel_role_permission` VALUES ('13', '14');
INSERT INTO `rel_role_permission` VALUES ('13', '15');
INSERT INTO `rel_role_permission` VALUES ('13', '16');
INSERT INTO `rel_role_permission` VALUES ('13', '18');

-- ----------------------------
-- Table structure for rel_user_role
-- ----------------------------
DROP TABLE IF EXISTS `rel_user_role`;
CREATE TABLE `rel_user_role` (
  `user_id` int(10) NOT NULL,
  `role_id` int(10) DEFAULT NULL,
  KEY `fk_role_id_use` (`role_id`),
  KEY `fk_user_id_rol` (`user_id`),
  CONSTRAINT `fk_role_id_use` FOREIGN KEY (`role_id`) REFERENCES `role` (`role_id`),
  CONSTRAINT `fk_user_id_rol` FOREIGN KEY (`user_id`) REFERENCES `user` (`user_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of rel_user_role
-- ----------------------------
INSERT INTO `rel_user_role` VALUES ('1', '2');
INSERT INTO `rel_user_role` VALUES ('2', '5');
INSERT INTO `rel_user_role` VALUES ('3', '8');
INSERT INTO `rel_user_role` VALUES ('3', '13');
INSERT INTO `rel_user_role` VALUES ('4', '17');
INSERT INTO `rel_user_role` VALUES ('5', '20');
INSERT INTO `rel_user_role` VALUES ('6', '23');
INSERT INTO `rel_user_role` VALUES ('7', '30');
INSERT INTO `rel_user_role` VALUES ('8', '29');
INSERT INTO `rel_user_role` VALUES ('9', '4');
INSERT INTO `rel_user_role` VALUES ('10', '4');
INSERT INTO `rel_user_role` VALUES ('11', '3');
INSERT INTO `rel_user_role` VALUES ('12', '6');
INSERT INTO `rel_user_role` VALUES ('13', '10');
INSERT INTO `rel_user_role` VALUES ('14', '12');
INSERT INTO `rel_user_role` VALUES ('15', '21');
INSERT INTO `rel_user_role` VALUES ('16', '22');
INSERT INTO `rel_user_role` VALUES ('17', '24');
INSERT INTO `rel_user_role` VALUES ('18', '25');
INSERT INTO `rel_user_role` VALUES ('19', '26');
INSERT INTO `rel_user_role` VALUES ('20', '27');
INSERT INTO `rel_user_role` VALUES ('21', '27');
INSERT INTO `rel_user_role` VALUES ('22', '27');
INSERT INTO `rel_user_role` VALUES ('23', '27');
INSERT INTO `rel_user_role` VALUES ('24', '28');
INSERT INTO `rel_user_role` VALUES ('25', '15');

-- ----------------------------
-- Table structure for role
-- ----------------------------
DROP TABLE IF EXISTS `role`;
CREATE TABLE `role` (
  `role_id` int(10) NOT NULL,
  `role_name` varchar(255) NOT NULL,
  `department_id` int(10) DEFAULT NULL,
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of role
-- ----------------------------
INSERT INTO `role` VALUES ('2', '超级管理员', null);
INSERT INTO `role` VALUES ('3', '总经理', '1');
INSERT INTO `role` VALUES ('4', '副总经理', '1');
INSERT INTO `role` VALUES ('5', '财务经理', '4');
INSERT INTO `role` VALUES ('6', '出纳', '4');
INSERT INTO `role` VALUES ('7', '会计', '4');
INSERT INTO `role` VALUES ('8', '人力资源经理', '5');
INSERT INTO `role` VALUES ('9', '招聘主管', '5');
INSERT INTO `role` VALUES ('10', '薪酬主管', '5');
INSERT INTO `role` VALUES ('11', '招聘专员', '5');
INSERT INTO `role` VALUES ('12', '薪酬专员', '5');
INSERT INTO `role` VALUES ('13', '行政经理', '6');
INSERT INTO `role` VALUES ('14', '行政专员', '6');
INSERT INTO `role` VALUES ('15', '前台', '6');
INSERT INTO `role` VALUES ('16', '法务', '6');
INSERT INTO `role` VALUES ('17', '市场经理', '7');
INSERT INTO `role` VALUES ('18', '网络推广', '7');
INSERT INTO `role` VALUES ('19', '广告宣传', '7');
INSERT INTO `role` VALUES ('20', '销售经理', '8');
INSERT INTO `role` VALUES ('21', '电话销售', '8');
INSERT INTO `role` VALUES ('22', '产品顾问', '8');
INSERT INTO `role` VALUES ('23', '就业经理', '9');
INSERT INTO `role` VALUES ('24', '就业主管', '9');
INSERT INTO `role` VALUES ('25', '就业顾问', '9');
INSERT INTO `role` VALUES ('26', '教学经理', '10');
INSERT INTO `role` VALUES ('27', '讲师', '10');
INSERT INTO `role` VALUES ('28', '班主任', '11');
INSERT INTO `role` VALUES ('29', '分管业务副总I-王琰', '2');
INSERT INTO `role` VALUES ('30', '分管业务副总II-余笑', '3');

-- ----------------------------
-- Table structure for user
-- ----------------------------
DROP TABLE IF EXISTS `user`;
CREATE TABLE `user` (
  `user_id` int(10) NOT NULL AUTO_INCREMENT,
  `username` varchar(255) DEFAULT NULL,
  `password` varchar(255) DEFAULT '',
  `nickname` varchar(255) DEFAULT NULL,
  `avatar` varchar(255) DEFAULT NULL,
  `leader_id` int(10) DEFAULT NULL,
  `status` int(1) DEFAULT '0',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=utf8mb4;

-- ----------------------------
-- Records of user
-- ----------------------------
INSERT INTO `user` VALUES ('1', 'admin', '21232F297A57A5A743894A0E4A801FC3', 'admin', null, null, '0');
INSERT INTO `user` VALUES ('2', 'maxuemei', '202CB962AC59075B964B07152D234B70', '马雪梅', null, '11', '0');
INSERT INTO `user` VALUES ('3', 'nixiaoyu', '202CB962AC59075B964B07152D234B70', '倪笑宇', null, '11', '0');
INSERT INTO `user` VALUES ('4', 'zhangming', '202CB962AC59075B964B07152D234B70', '张明', null, '11', '0');
INSERT INTO `user` VALUES ('5', 'huofang', '202CB962AC59075B964B07152D234B70', '霍芳', null, '7', '0');
INSERT INTO `user` VALUES ('6', 'sunlirui', '202CB962AC59075B964B07152D234B70', '孙丽睿', null, '8', '0');
INSERT INTO `user` VALUES ('7', 'yuxiao', '202CB962AC59075B964B07152D234B70', '余笑', null, '11', '0');
INSERT INTO `user` VALUES ('8', 'wangyan', '202CB962AC59075B964B07152D234B70', '王琰', null, '11', '0');
INSERT INTO `user` VALUES ('9', 'zhoufeng', '202CB962AC59075B964B07152D234B70', '周峰', null, '11', '0');
INSERT INTO `user` VALUES ('10', 'wangwei', '202CB962AC59075B964B07152D234B70', '王威', null, '11', '0');
INSERT INTO `user` VALUES ('11', 'libo', '202CB962AC59075B964B07152D234B70', '李波', null, null, '0');
INSERT INTO `user` VALUES ('12', 'zhuminghua', '202CB962AC59075B964B07152D234B70', '朱明华', null, '2', '0');
INSERT INTO `user` VALUES ('13', 'kangshanshan', '202CB962AC59075B964B07152D234B70', '康珊珊', null, '3', '0');
INSERT INTO `user` VALUES ('14', 'xujiayao', '202CB962AC59075B964B07152D234B70', '徐佳瑶', null, '13', '0');
INSERT INTO `user` VALUES ('15', 'lipingran', '202CB962AC59075B964B07152D234B70', '李品然', null, '5', '0');
INSERT INTO `user` VALUES ('16', 'wanglixia', '202CB962AC59075B964B07152D234B70', '王丽霞', null, '5', '0');
INSERT INTO `user` VALUES ('17', 'donghuanhuan', '202CB962AC59075B964B07152D234B70', '董欢欢', null, '6', '0');
INSERT INTO `user` VALUES ('18', 'zhuqiong', '202CB962AC59075B964B07152D234B70', '朱琼', null, '17', '0');
INSERT INTO `user` VALUES ('19', 'gongweibin', '202CB962AC59075B964B07152D234B70', '龚玮斌', null, '7', '0');
INSERT INTO `user` VALUES ('20', 'fengrui', '202CB962AC59075B964B07152D234B70', '冯瑞', null, '19', '0');
INSERT INTO `user` VALUES ('21', 'chenchen', '202CB962AC59075B964B07152D234B70', '陈晨', null, '19', '0');
INSERT INTO `user` VALUES ('22', 'zhaokai', '202CB962AC59075B964B07152D234B70', '赵凯', null, '19', '0');
INSERT INTO `user` VALUES ('23', 'caigenrong', '202CB962AC59075B964B07152D234B70', '蔡根荣', null, '19', '0');
INSERT INTO `user` VALUES ('24', 'wenshuqing', '202CB962AC59075B964B07152D234B70', '闻书晴', null, '19', '0');
INSERT INTO `user` VALUES ('25', 'chengfengjiao', '202CB962AC59075B964B07152D234B70', '陈凤娇', null, '3', '0');
SET FOREIGN_KEY_CHECKS=1;
