/*
Navicat MySQL Data Transfer

Source Server         : 192.168.1.110_3306
Source Server Version : 50616
Source Host           : 192.168.1.110:3306
Source Database       : jeecg-weixin

Target Server Type    : MYSQL
Target Server Version : 50616
File Encoding         : 65001

Date: 2014-08-13 15:02:00
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for cgform_button
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button`;
CREATE TABLE `cgform_button` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `button_icon` varchar(20) DEFAULT NULL,
  `BUTTON_NAME` varchar(50) DEFAULT NULL,
  `BUTTON_STATUS` varchar(2) DEFAULT NULL,
  `BUTTON_STYLE` varchar(20) DEFAULT NULL,
  `EXP` varchar(255) DEFAULT NULL,
  `FORM_ID` varchar(32) DEFAULT NULL,
  `OPT_TYPE` varchar(20) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_button_sql
-- ----------------------------
DROP TABLE IF EXISTS `cgform_button_sql`;
CREATE TABLE `cgform_button_sql` (
  `ID` varchar(32) NOT NULL,
  `BUTTON_CODE` varchar(50) DEFAULT NULL,
  `CGB_SQL` tinyblob,
  `CGB_SQL_NAME` varchar(50) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_button_sql
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_enhance_js
-- ----------------------------
DROP TABLE IF EXISTS `cgform_enhance_js`;
CREATE TABLE `cgform_enhance_js` (
  `ID` varchar(32) NOT NULL,
  `CG_JS` blob,
  `CG_JS_TYPE` varchar(20) DEFAULT NULL,
  `CONTENT` longtext,
  `FORM_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_enhance_js
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_field
-- ----------------------------
DROP TABLE IF EXISTS `cgform_field`;
CREATE TABLE `cgform_field` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(255) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `dict_field` varchar(100) DEFAULT NULL,
  `dict_table` varchar(100) DEFAULT NULL,
  `dict_text` varchar(100) DEFAULT NULL,
  `field_default` varchar(20) DEFAULT NULL,
  `field_href` varchar(200) DEFAULT NULL,
  `field_length` int(11) DEFAULT NULL,
  `field_name` varchar(32) NOT NULL,
  `field_valid_type` varchar(10) DEFAULT NULL,
  `is_key` varchar(2) DEFAULT NULL,
  `is_null` varchar(5) DEFAULT NULL,
  `is_query` varchar(5) DEFAULT NULL,
  `is_show` varchar(5) DEFAULT NULL,
  `is_show_list` varchar(5) DEFAULT NULL,
  `length` int(11) NOT NULL,
  `main_field` varchar(100) DEFAULT NULL,
  `main_table` varchar(100) DEFAULT NULL,
  `old_field_name` varchar(32) DEFAULT NULL,
  `order_num` int(11) DEFAULT NULL,
  `point_length` int(11) DEFAULT NULL,
  `query_mode` varchar(10) DEFAULT NULL,
  `show_type` varchar(10) DEFAULT NULL,
  `type` varchar(32) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `table_id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_iwtkke1oigq9ukafldrovslx6` (`table_id`),
  CONSTRAINT `FK_iwtkke1oigq9ukafldrovslx6` FOREIGN KEY (`table_id`) REFERENCES `cgform_head` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_field
-- ----------------------------
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466770878c0002', '主键', 'admin', '2014-06-04 23:12:46', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a060146677087df0003', '关键字', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'keyword', '', 'N', 'N', 'N', 'Y', 'Y', '100', '', '', 'key', '2', '0', 'single', 'text', 'string', 'admin', '2014-06-04 23:18:27', '管理员', '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a060146677087e20004', '类长名', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'classname', '', 'N', 'N', 'N', 'Y', 'Y', '100', '', '', 'classname', '3', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a060146677087e50005', '微信公众帐号', 'admin', '2014-06-04 23:12:47', '管理员', '', '', '', '', '', '120', 'accountid', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountid', '4', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466775b8fc0007', '功能名称', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', '120', 'name', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'name', '5', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e446676a0601466775b9000008', '功能描述', 'admin', '2014-06-04 23:18:27', '管理员', '', '', '', '', '', '120', 'content', '', 'N', 'Y', 'N', 'Y', 'Y', '300', '', '', 'content', '6', '0', 'single', 'text', 'string', null, null, null, '402881e446676a060146677087880001');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445120008', '主键', 'admin', '2014-05-04 21:02:39', '管理员', '', '', '', '', '', '0', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445ae0009', '公众帐号名称', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountname', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountname', '2', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445b5000b', '公众帐号TOKEN', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accounttoken', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accounttoken', '3', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445b8000c', '公众微信号', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountnumber', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountnumber', '4', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445c3000d', '公众号类型', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accounttype', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'accounttype', '5', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445c7000e', '电子邮箱', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountemail', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountemail', '6', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845c73cb00145c75445cb000f', '公众帐号描述', 'admin', '2014-05-04 21:02:40', '管理员', '', '', '', '', '', '120', 'accountdesc', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'accountdesc', '7', '0', 'single', 'text', 'string', 'admin', '2014-05-06 20:10:22', '管理员', '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845d16cb10145d1711e730002', '公众帐号APPID', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountappid', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'accountappid', '8', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845d16cb10145d1711e790003', '公众帐号APPSECRET', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountappsecret', '', 'N', 'Y', 'N', 'Y', 'Y', '500', '', '', 'accountappsecret', '9', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e845d16cb10145d1711e7e0004', 'ACCESS_TOKEN', 'admin', '2014-05-06 20:10:22', '管理员', '', '', '', '', '', '120', 'accountaccesstoken', '', 'N', 'Y', 'N', 'Y', 'Y', '1000', '', '', 'accountaccesstoken', '10', '0', 'single', 'text', 'string', null, null, null, '402881e845c73cb00145c754450c0007');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f74632020009', '主键', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463216000a', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f746321c000b', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'Y', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463224000c', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463246000d', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f7463250000e', '分类名称', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'name', '', 'N', 'Y', 'N', 'Y', 'Y', '50', '', '', 'name', '6', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f746326b000f', '图片路径', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'imgurl', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'imgurl', '7', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f74632720010', '分类上级ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'parentid', '', 'N', 'Y', 'N', 'Y', 'Y', '36', '', '', 'parentid', '8', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e946f72f8e0146f746327b0011', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', '', '', '', '', '', '120', 'seller_id', '', 'N', 'Y', 'N', 'N', 'N', '36', '', '', 'seller_id', '9', '0', 'single', 'text', 'string', null, null, null, '402881e946f72f8e0146f74632010008');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed3c0002', '主键', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'id', '', 'Y', 'N', 'N', 'N', 'N', '36', '', '', 'id', '1', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed620003', '创建人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'create_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'create_name', '2', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed6a0004', '创建日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'create_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'create_date', '3', '0', 'single', 'text', 'Date', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed880005', '修改人名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'update_name', '', 'N', 'Y', 'N', 'N', 'N', '50', '', '', 'update_name', '4', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed920006', '修改日期', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'update_date', '', 'N', 'Y', 'N', 'N', 'N', '20', '', '', 'update_date', '5', '0', 'single', 'text', 'Date', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ed9c0007', '标题信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'title', '', 'N', 'Y', 'N', 'Y', 'Y', '200', '', '', 'title', '6', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6eda50008', '标题图片', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'title_img', '', 'N', 'Y', 'N', 'Y', 'Y', '100', '', '', 'title_img', '7', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edbd0009', '商品详情', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'descriptions', '', 'N', 'Y', 'N', 'Y', 'Y', '5000', '', '', 'descriptions', '8', '0', 'single', 'text', 'Text', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edc5000a', '商品原价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'price', '9', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edcc000b', '商品现价', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'real_price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'real_price', '10', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edd4000c', '折扣', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'sale', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'sale', '11', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edde000d', '销售数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'sell_count', '', 'N', 'Y', 'N', 'Y', 'Y', '11', '', '', 'sell_count', '12', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ede5000e', '评价数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'discuss_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'discuss_count', '13', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edec000f', '好评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'good_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'good_count', '14', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edf40010', '差评数量', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'bad_count', '', 'N', 'Y', 'N', 'N', 'Y', '11', '', '', 'bad_count', '15', '0', 'single', 'text', 'int', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6edff0011', '状态', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'statement', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'statement', '16', '0', 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee1a0012', '上架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'shelve_time', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'shelve_time', '17', '0', 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee220013', '下架时间', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'remove_time', '', 'N', 'Y', 'N', 'N', 'Y', '32', '', '', 'remove_time', '18', '0', 'single', 'text', 'Date', '4028d881436d514601436d5215ac0043', '2014-07-04 22:16:50', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee280014', '快递名称', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'express_name', '', 'N', 'Y', 'N', 'Y', 'Y', '32', '', '', 'express_name', '19', '0', 'single', 'text', 'string', null, null, null, '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee2f0015', '快递费用', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'express_price', '', 'N', 'Y', 'N', 'Y', 'Y', '18', '', '', 'express_price', '20', '2', 'single', 'text', 'double', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('402881e94701b0bc014701b6ee360016', '卖家ID', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', '', '', '', '', '', '120', 'seller_id', '', 'N', 'Y', 'N', 'Y', 'Y', '36', '', '', 'seller_id', '21', '0', 'single', 'text', 'string', '4028d881436d514601436d5215ac0043', '2014-07-04 22:14:48', 'admin', '402881e94701b0bc014701b6ed380001');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52193b012f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219410130', '订单号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_code', null, 'N', 'Y', 'Y', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219460131', '订单日期', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_date', null, 'N', 'Y', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'date', 'Date', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219480132', '订单金额', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'order_money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '3', '3', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52194a0133', '备注', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'Y', 'Y', 'Y', 'Y', '255', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521928012a');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219520134', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219550135', '请假标题', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'title', null, 'N', 'N', 'N', 'Y', 'Y', '50', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219570136', '请假人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'people', null, 'N', 'N', 'Y', 'Y', 'Y', '20', '', '', null, '2', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219580137', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', null, null, null, '0', 'sex', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '3', '0', 'single', 'list', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195a0138', '请假开始时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'begindate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '4', '0', 'group', 'date', 'Date', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195b0139', '请假结束时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'enddate', null, 'N', 'N', 'N', 'Y', 'Y', '0', '', '', null, '5', '0', 'group', 'datetime', 'Date', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195d013a', '所属部门', 'admin', '2014-01-07 23:28:53', '管理员', 'id', 't_s_depart', 'departname', null, null, '0', 'hol_dept', null, 'N', 'N', 'N', 'Y', 'Y', '32', '', '', null, '7', '0', 'single', 'list', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52195e013b', '请假原因', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'hol_reson', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521960013c', '部门审批人', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'dep_leader', null, 'N', 'N', 'N', 'Y', 'Y', '20', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521961013d', '部门审批意见', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'content', null, 'N', 'N', 'N', 'Y', 'Y', '255', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521963013e', '请假天数', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'day_num', null, 'N', 'Y', 'N', 'Y', 'Y', '10', '', '', null, '6', '0', 'single', 'text', 'int', null, null, null, '4028d881436d514601436d52192d012b');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52196e013f', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219700140', '客户名', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'name', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219720141', '单价', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'money', null, 'N', 'Y', 'Y', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219740142', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'fk_id', null, 'N', 'N', 'Y', 'N', 'N', '36', 'id', 'jform_order_main', null, '5', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219750143', '电话', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'telphone', null, 'N', 'Y', 'Y', 'Y', 'Y', '32', '', '', null, '4', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219770144', '性别', 'admin', '2014-01-07 23:28:53', '管理员', 'sex', '', null, null, null, '120', 'sex', null, 'N', 'Y', 'Y', 'Y', 'Y', '4', '', '', null, '3', '0', 'single', 'radio', 'string', null, null, null, '4028d881436d514601436d52192f012c');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52197b0145', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'checkbox', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52197d0146', '航班号', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'ticket_code', null, 'N', 'N', 'Y', 'Y', 'Y', '100', '', '', null, '1', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52197f0147', '航班时间', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'tickect_date', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '2', '0', 'single', 'datetime', 'Date', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219810148', '外键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '120', 'fck_id', null, 'N', 'N', 'N', 'N', 'N', '36', 'id', 'jform_order_main', null, '3', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521931012d');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219860149', '主键', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'id', null, 'Y', 'N', 'N', 'N', 'N', '36', '', '', null, '0', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521989014a', '机构合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'a', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '1', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52198a014b', '行政小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '2', '2', 'group', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52198d014c', '行政省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b11', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '3', '0', 'group', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52198f014d', '行政市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b12', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '4', '0', 'group', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521991014e', '行政县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b13', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '5', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d521994014f', '事业合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '6', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219970150', '参公小计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '7', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219990151', '参公省', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b31', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '8', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52199c0152', '参公市', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b32', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '9', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d52199e0153', '参公县', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'b33', null, 'N', 'N', 'N', 'Y', 'Y', '100', '', '', null, '10', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a00154', '全额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c1', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '11', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a30155', '差额拨款', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c2', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '12', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a60156', '自收自支', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'c3', null, 'N', 'N', 'N', 'Y', 'Y', '10', '', '', null, '13', '2', 'single', 'text', 'double', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219a80157', '经费合计', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'd', null, 'N', 'N', 'Y', 'Y', 'Y', '10', '', '', null, '14', '2', 'single', 'text', 'int', null, null, null, '4028d881436d514601436d521933012e');
INSERT INTO `cgform_field` VALUES ('4028d881436d514601436d5219aa0158', '机构资质', 'admin', '2014-01-07 23:28:53', '管理员', '', '', null, null, null, '0', 'd1', null, 'N', 'N', 'N', 'Y', 'Y', '1000', '', '', null, '15', '0', 'single', 'text', 'string', null, null, null, '4028d881436d514601436d521933012e');

-- ----------------------------
-- Table structure for cgform_ftl
-- ----------------------------
DROP TABLE IF EXISTS `cgform_ftl`;
CREATE TABLE `cgform_ftl` (
  `ID` varchar(32) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `CREATE_BY` varchar(36) DEFAULT NULL,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_NAME` varchar(32) DEFAULT NULL,
  `FTL_CONTENT` longtext,
  `FTL_STATUS` varchar(50) DEFAULT NULL,
  `FTL_VERSION` int(11) NOT NULL,
  `FTL_WORD_URL` varchar(200) DEFAULT NULL,
  `UPDATE_BY` varchar(36) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_NAME` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_ftl
-- ----------------------------

-- ----------------------------
-- Table structure for cgform_head
-- ----------------------------
DROP TABLE IF EXISTS `cgform_head`;
CREATE TABLE `cgform_head` (
  `id` varchar(32) NOT NULL,
  `content` varchar(200) NOT NULL,
  `create_by` varchar(32) DEFAULT NULL,
  `create_date` datetime DEFAULT NULL,
  `create_name` varchar(32) DEFAULT NULL,
  `is_checkbox` varchar(5) NOT NULL,
  `is_dbsynch` varchar(20) NOT NULL,
  `is_pagination` varchar(5) NOT NULL,
  `is_tree` varchar(5) NOT NULL,
  `jform_type` int(11) NOT NULL,
  `jform_version` varchar(10) NOT NULL,
  `querymode` varchar(10) NOT NULL,
  `relation_type` int(11) DEFAULT NULL,
  `sub_table_str` longtext,
  `table_name` varchar(20) NOT NULL,
  `update_by` varchar(32) DEFAULT NULL,
  `update_date` datetime DEFAULT NULL,
  `update_name` varchar(32) DEFAULT NULL,
  `jform_pk_sequence` varchar(200) DEFAULT NULL,
  `jform_pk_type` varchar(100) DEFAULT NULL,
  `tab_order` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_head
-- ----------------------------
INSERT INTO `cgform_head` VALUES ('402881e446676a060146677087880001', '扩展接口管理', 'admin', '2014-06-04 23:12:46', '管理员', 'N', 'Y', 'Y', 'N', '1', '2', 'single', '0', null, 'weixin_expandconfig', 'admin', '2014-06-04 23:18:31', '管理员', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e845c73cb00145c754450c0007', '微信公众帐号信息', 'admin', '2014-05-04 21:02:39', '管理员', 'Y', 'Y', 'Y', 'N', '1', '2', 'single', '0', null, 'weixin_account', 'admin', '2014-05-06 20:10:30', '管理员', null, null, null);
INSERT INTO `cgform_head` VALUES ('402881e946f72f8e0146f74632010008', '商品分类', '4028d881436d514601436d5215ac0043', '2014-07-02 21:31:51', 'admin', 'N', 'Y', 'Y', 'Y', '1', '1', 'single', '0', null, 'WEIXIN_MALL_CATEGORY', '4028d881436d514601436d5215ac0043', '2014-07-02 21:45:35', 'admin', '', 'UUID', null);
INSERT INTO `cgform_head` VALUES ('402881e94701b0bc014701b6ed380001', '商品信息', '4028d881436d514601436d5215ac0043', '2014-07-04 22:11:11', 'admin', 'Y', 'Y', 'Y', 'N', '1', '3', 'group', '0', null, 'weixin_shop_goods', '4028d881436d514601436d5215ac0043', '2014-07-04 22:23:37', 'admin', '', 'UUID', null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d521928012a', '订单主信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', '2', '57', 'group', '0', 'jform_order_ticket,jform_order_customer', 'jform_order_main', '4028d881436d514601436d5215ac0043', '2014-07-24 15:39:44', 'admin', null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d52192d012b', '请假单', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'Y', 'Y', 'N', '1', '51', 'group', '0', null, 'jform_leave', 'admin', '2014-01-19 10:08:17', '管理员', null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d52192f012c', '订单客户信息', 'admin', '2014-01-07 23:28:53', '管理员', 'Y', 'N', 'Y', 'N', '3', '16', 'single', '0', null, 'jform_order_customer', null, null, null, null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d521931012d', '订单机票信息', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', '3', '20', 'single', '0', null, 'jform_order_ticket', null, null, null, null, null, null);
INSERT INTO `cgform_head` VALUES ('4028d881436d514601436d521933012e', '价格认证机构统计表', 'admin', '2014-01-07 23:28:53', '管理员', 'N', 'N', 'Y', 'N', '1', '3', 'group', '0', null, 'jform_price1', null, null, null, null, null, null);

-- ----------------------------
-- Table structure for cgform_uploadfiles
-- ----------------------------
DROP TABLE IF EXISTS `cgform_uploadfiles`;
CREATE TABLE `cgform_uploadfiles` (
  `CGFORM_FIELD` varchar(100) NOT NULL,
  `CGFORM_ID` varchar(36) NOT NULL,
  `CGFORM_NAME` varchar(100) NOT NULL,
  `id` varchar(32) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `FK_qwig8sn3okhvh4wye8nn8gdeg` (`id`),
  CONSTRAINT `FK_qwig8sn3okhvh4wye8nn8gdeg` FOREIGN KEY (`id`) REFERENCES `t_s_attachment` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of cgform_uploadfiles
-- ----------------------------

-- ----------------------------
-- Table structure for ck_editor
-- ----------------------------
DROP TABLE IF EXISTS `ck_editor`;
CREATE TABLE `ck_editor` (
  `ID` varchar(32) NOT NULL,
  `CONTENTS` blob,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_editor
-- ----------------------------
INSERT INTO `ck_editor` VALUES ('4028d881436d514601436d5219250129', 0x3C68746D6C3E3C686561643E3C7469746C653E3C2F7469746C653E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F64656661756C742F6561737975692E637373272069643D276561737975695468656D65272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6561737975692F7468656D65732F69636F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F6163636F7264696F6E2F6373732F6163636F7264696F6E2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7374796C652E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C6C696E6B20687265663D27706C75672D696E2F56616C6964666F726D2F6373732F7461626C6566726F6D2E637373272072656C3D277374796C6573686565742720747970653D27746578742F63737327202F3E3C7374796C6520747970653D27746578742F637373273E626F64797B666F6E742D73697A653A313270783B7D7461626C65207B626F726465723A31707820736F6C696420233030303030303B626F726465722D636F6C6C617073653A20636F6C6C617073653B7D7464207B626F726465723A31707820736F6C696420233030303030303B6261636B67726F756E643A77686974653B666F6E742D73697A653A313270783B666F6E742D66616D696C793A20D0C2CBCECCE53B636F6C6F723A20233333333B3C2F7374796C653E3C2F686561643E3C626F64793E3C6469763E3C703EB8BDBCFE32A3BA3C2F703E3C6831207374796C653D27746578742D616C69676E3A63656E746572273E3C7370616E207374796C653D27666F6E742D73697A653A32347078273E3C7374726F6E673EBCDBB8F1C8CFD6A4C8CBD4B1CDB3BCC6B1ED3C2F7374726F6E673E3C2F7370616E3E3C2F68313E3C703ECCEEB1A8B5A5CEBBA3A8B8C7D5C2A3A9A3BA3C696E707574206E616D653D276F72675F6E616D652720747970653D2774657874272076616C75653D27247B6F72675F6E616D653F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C703EB5A5CEBBB4FAC2EBBAC5A3BA3C696E707574206E616D653D276E756D2720747970653D2774657874272076616C75653D27247B6E756D3F69665F6578697374733F68746D6C7D27202F3E20266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703BB5A5CEBBA3BAC8CBCCEE266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20B1A8C8D5C6DAA3BA266E6273703B266E6273703B266E6273703B266E6273703B266E6273703B20C4EA266E6273703B266E6273703B20D4C2266E6273703B266E6273703B20C8D53C2F703E3C666F726D20616374696F6E3D276367466F726D4275696C64436F6E74726F6C6C65722E646F3F736176654F72557064617465272069643D27666F726D6F626A27206D6574686F643D27706F737427206E616D653D27666F726D6F626A273E3C696E707574206E616D653D277461626C654E616D652720747970653D2768696464656E272076616C75653D27247B7461626C654E616D653F69665F6578697374733F68746D6C7D27202F3E203C696E707574206E616D653D2769642720747970653D2768696464656E272076616C75653D27247B69643F69665F6578697374733F68746D6C7D27202F3E237B6A666F726D5F68696464656E5F6669656C647D3C696E70757420747970653D2768696464656E27202F3E3C703E266E6273703B3C2F703E3C7461626C6520626F726465723D2731272063656C6C70616464696E673D2730272063656C6C73706163696E673D273027207374796C653D2777696474683A313031367078273E3C74626F64793E3C74723E3C746420726F777370616E3D2734273E3C703E266E6273703B3C2F703E3C703E266E6273703B3C2F703E3C703EBACFBCC63C2F703E3C703E266E6273703B3C2F703E3C2F74643E3C746420636F6C7370616E3D27362720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8CBCAFD3C2F703E3C2F74643E3C746420636F6C7370616E3D27352720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703ED1A7C0FA3C2F703E3C2F74643E3C746420636F6C7370616E3D27342720726F777370616E3D2732273E3C703E266E6273703B3C2F703E3C703EC8A1B5C3B5C4A3A8C9CFB8DAA3A9D6B4D2B5D7CAB8F13C2F703E3C2F74643E3C746420636F6C7370616E3D2734273E3C703ED7A8D2B5BCBCCAF5D6B0B3C63C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2734273E3C703EA3A8BEADBCC3CFB5C1D0A1A2B9A4B3CCCFB5C1D0A3A93C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D2733273E3C703ED4DAB1E0C8CBD4B13C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6B8D3C3C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC1D9CAB128BDE8D3C329C8CBD4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFD6D03C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB4F3D7A83C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB1BEBFC63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED1D0BEBFC9FA3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EBCDBB8F13C2F703E3C703EBCF8D6A4CAA63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8B4BACB3C2F703E3C703EB2C3B6A8D4B13C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB3F5BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703ED6D0BCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EB8DFBCB63C2F703E3C2F74643E3C746420726F777370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703EB1BEB5A5CEBB3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703EC6E4CBFC3C2F703E3C2F74643E3C74643E3C703EB3A4C6DA3C2F703E3C2F74643E3C74643E3C703EB6CCC6DA3C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E41313C2F703E3C2F74643E3C74643E3C703E42313C2F703E3C2F74643E3C74643E3C703E42323C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E42333C2F703E3C2F74643E3C74643E3C703E42343C2F703E3C2F74643E3C74643E3C703E42353C2F703E3C2F74643E3C74643E3C703E43313C2F703E3C2F74643E3C74643E3C703E43323C2F703E3C2F74643E3C74643E3C703E43333C2F703E3C2F74643E3C74643E3C703E43343C2F703E3C2F74643E3C74643E3C703E43353C2F703E3C2F74643E3C74643E3C703E44313C2F703E3C2F74643E3C74643E3C703E44323C2F703E3C2F74643E3C74643E3C703E44333C2F703E3C2F74643E3C74643E3C703E44343C2F703E3C2F74643E3C74643E3C703E45313C2F703E3C2F74643E3C74643E3C703E45323C2F703E3C2F74643E3C74643E3C703E45333C2F703E3C2F74643E3C74643E3C703E45343C2F703E3C2F74643E3C2F74723E3C74723E3C74643E3C703E3C696E707574206E616D653D276131272073697A653D27342720747970653D2774657874272076616C75653D27247B61313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276231272073697A653D27342720747970653D2774657874272076616C75653D27247B62313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276232272073697A653D27342720747970653D2774657874272076616C75653D27247B62323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C746420636F6C7370616E3D2732273E3C703E3C696E707574206E616D653D276233272073697A653D27342720747970653D2774657874272076616C75653D27247B62333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276234272073697A653D27342720747970653D2774657874272076616C75653D27247B62343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276235272073697A653D27342720747970653D2774657874272076616C75653D27247B62353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276331272073697A653D27342720747970653D2774657874272076616C75653D27247B63313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276332272073697A653D27342720747970653D2774657874272076616C75653D27247B63323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276333272073697A653D27342720747970653D2774657874272076616C75653D27247B63333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276334272073697A653D27342720747970653D2774657874272076616C75653D27247B63343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276335272073697A653D27342720747970653D2774657874272076616C75653D27247B63353F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276431272073697A653D27342720747970653D2774657874272076616C75653D27247B64313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276432272073697A653D27342720747970653D2774657874272076616C75653D27247B64323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276433272073697A653D27342720747970653D2774657874272076616C75653D27247B64333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276434272073697A653D27342720747970653D2774657874272076616C75653D27247B64343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276531272073697A653D27342720747970653D2774657874272076616C75653D27247B65313F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276532272073697A653D27342720747970653D2774657874272076616C75653D27247B65323F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276533272073697A653D27342720747970653D2774657874272076616C75653D27247B65333F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C74643E3C703E3C696E707574206E616D653D276534272073697A653D27342720747970653D2774657874272076616C75653D27247B65343F69665F6578697374733F68746D6C7D27202F3E3C2F703E3C2F74643E3C2F74723E3C74723E3C746420636F6C7370616E3D273230273E3C703E266E6273703B3C2F703E3C703ECCEEB1A8CBB5C3F7A3BA3C2F703E3C703ED2BBA1A2BACFBCC6A3A841A3A9A3BACCEEB1A8D6C1CDB3BCC6BDD8D6B9C6DAB5C4B1BEBBFAB9B9B5C4C8CBD4B1D7DCCAFDA1A33C2F703E3C703EB6FEA1A2C8CBCAFDA3BA3C2F703E3C703ED4DAB1E0C8CBD4B1A3BAB7D6B1F0B0B4D5D5BCDBB8F1C8CFD6A4BBFAB9B9B1E0D6C6C4DABCB0C6E4CBFCBEDFD3D0BCDBB8F1D6F7B9DCB2BFC3C5B1E0D6C6B5C4CAB5D3D0C8CBCAFDCCEEB1A8D4DA4231A1A24232C0B8C4DAA1A33C2F703E3C703EC6B8D3C3C8CBD4B1A3BAB0B4D5D5BEADBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4B2A2C7A9B6A9C8FDC4EAD2D4C9CFB5C4B9A4D7F7BACFCDACB5C4C8CBD4B1A3A84233A3A9A3BBD2D4BCB0C3BBD3D0BEADB9FDBCDBB8F1D6F7B9DCB2BFC3C5BBF2BCDBB8F1C8CFD6A4BBFAB9B9C8CBCAC2B2BFC3C5C8CFBFC9B5C4C7A9B6A9BACFCDACC9D9D3DAC8FDC4EAB5C4C8CBD4B1A3A84234A3A9B7D6B1F0C0B4BDF8D0D0CDB3BCC6A1A33C2F703E3C703EC1D9CAB1A3A8BDE8D3C3A3A9C8CBD4B1A3A84235A3A9A3BACCD8D6B8CDE2C6B8B5C4C1D9CAB1B9A4A3ACBBF2D5DFB9A4D7F7B9D8CFB5B2BBD4DAB1BEB5A5CEBBC7D2CEDEB3A4C6DAC6B8D3C3BACFCDACB5C4BDE8B5F7C8CBD4B1B5C8A1A33C2F703E3C703EC8FDA1A2B1EDC4DAB8F7C0B8C4BFB9D8CFB53C2F703E3C703E413D42312B42322B42332B42342B42353D43312B43322B43332B43342B43353D44312B44322B44332B44343D45312B45322B45332B45343C2F703E3C2F74643E3C2F74723E3C2F74626F64793E3C2F7461626C653E3C2F666F726D3E3C2F6469763E3C2F626F64793E3C2F68746D6C3E);

-- ----------------------------
-- Table structure for ck_finder
-- ----------------------------
DROP TABLE IF EXISTS `ck_finder`;
CREATE TABLE `ck_finder` (
  `ID` varchar(32) NOT NULL,
  `ATTACHMENT` varchar(255) DEFAULT NULL,
  `IMAGE` varchar(255) DEFAULT NULL,
  `REMARK` longtext,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of ck_finder
-- ----------------------------

-- ----------------------------
-- Table structure for doc
-- ----------------------------
DROP TABLE IF EXISTS `doc`;
CREATE TABLE `doc` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `DOCCONTENT` longblob,
  `DOCDATE` datetime DEFAULT NULL,
  `DOCID` varchar(255) DEFAULT NULL,
  `DOCTITLE` varchar(255) DEFAULT NULL,
  `DOCTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of doc
-- ----------------------------

-- ----------------------------
-- Table structure for jeecg_demo
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo`;
CREATE TABLE `jeecg_demo` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `content` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` varchar(255) DEFAULT NULL,
  `status` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  `create_date` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo
-- ----------------------------
INSERT INTO `jeecg_demo` VALUES ('4028d881436d514601436d521ad4015e', '12', '2014-01-07 23:28:53', null, null, '123', 'demo@jeecg.com', '13111111111', '66666666', '111111.00', '1', null, '小明', null);

-- ----------------------------
-- Table structure for jeecg_demo_course
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_course`;
CREATE TABLE `jeecg_demo_course` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(25) DEFAULT NULL,
  `teacher_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_g3jn8mfod69i7jfv5gnrcvgbx` (`teacher_ID`),
  CONSTRAINT `FK_g3jn8mfod69i7jfv5gnrcvgbx` FOREIGN KEY (`teacher_ID`) REFERENCES `jeecg_demo_teacher` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_course
-- ----------------------------
INSERT INTO `jeecg_demo_course` VALUES ('4028d881436d514601436d5219b0015b', '海贼王', '4028d881436d514601436d5219ae015a');

-- ----------------------------
-- Table structure for jeecg_demo_student
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_student`;
CREATE TABLE `jeecg_demo_student` (
  `ID` varchar(32) NOT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `NAME` varchar(32) DEFAULT NULL,
  `SEX` varchar(1) DEFAULT NULL,
  `COURSE_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_r86q81koyocgod3cx6529hbpw` (`COURSE_ID`),
  CONSTRAINT `FK_r86q81koyocgod3cx6529hbpw` FOREIGN KEY (`COURSE_ID`) REFERENCES `jeecg_demo_course` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_student
-- ----------------------------
INSERT INTO `jeecg_demo_student` VALUES ('4028d881436d514601436d5219b4015c', null, '卓洛', '0', '4028d881436d514601436d5219b0015b');
INSERT INTO `jeecg_demo_student` VALUES ('4028d881436d514601436d5219b7015d', null, '山治 ', '0', '4028d881436d514601436d5219b0015b');

-- ----------------------------
-- Table structure for jeecg_demo_teacher
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_demo_teacher`;
CREATE TABLE `jeecg_demo_teacher` (
  `ID` varchar(32) NOT NULL,
  `NAME` varchar(12) DEFAULT NULL,
  `pic` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_demo_teacher
-- ----------------------------
INSERT INTO `jeecg_demo_teacher` VALUES ('4028d881436d514601436d5219ae015a', '路飞', 'upload/Teacher/pic3345280233.PNG');

-- ----------------------------
-- Table structure for jeecg_matter_bom
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_matter_bom`;
CREATE TABLE `jeecg_matter_bom` (
  `ID` varchar(32) NOT NULL,
  `address` varchar(255) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `price` decimal(21,6) NOT NULL,
  `productionDate` datetime DEFAULT NULL,
  `quantity` int(11) NOT NULL,
  `stock` int(11) NOT NULL,
  `unit` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `parent_ID` varchar(32) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_fldfyrevj0li4hej5b2gu2q7w` (`parent_ID`),
  CONSTRAINT `FK_fldfyrevj0li4hej5b2gu2q7w` FOREIGN KEY (`parent_ID`) REFERENCES `jeecg_matter_bom` (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_matter_bom
-- ----------------------------
INSERT INTO `jeecg_matter_bom` VALUES ('4028d881436d514601436d521ae40163', '广东深圳', '001', '电脑', '5000.000000', '2014-01-07 23:28:53', '5', '10', '台', '100', null);
INSERT INTO `jeecg_matter_bom` VALUES ('4028d881436d514601436d521ae70164', '上海', '001001', '主板', '800.000000', '2014-01-07 23:28:53', '6', '18', '个', '60', '4028d881436d514601436d521ae40163');

-- ----------------------------
-- Table structure for jeecg_minidao
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_minidao`;
CREATE TABLE `jeecg_minidao` (
  `ID` varchar(32) NOT NULL,
  `AGE` int(11) DEFAULT NULL,
  `BIRTHDAY` datetime DEFAULT NULL,
  `CONTENT` varchar(255) DEFAULT NULL,
  `CREATE_TIME` datetime DEFAULT NULL,
  `DEP_ID` varchar(255) DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `MOBILE_PHONE` varchar(255) DEFAULT NULL,
  `OFFICE_PHONE` varchar(255) DEFAULT NULL,
  `SALARY` decimal(19,2) DEFAULT NULL,
  `SEX` int(11) DEFAULT NULL,
  `STATUS` varchar(255) DEFAULT NULL,
  `USER_NAME` varchar(255) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_minidao
-- ----------------------------

-- ----------------------------
-- Table structure for jeecg_order_custom
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_custom`;
CREATE TABLE `jeecg_order_custom` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOC_BUSS_CONTENT` varchar(33) DEFAULT NULL,
  `GOC_CONTENT` varchar(66) DEFAULT NULL,
  `GOC_CUS_NAME` varchar(16) DEFAULT NULL,
  `GOC_IDCARD` varchar(18) DEFAULT NULL,
  `GOC_PASSPORT_CODE` varchar(10) DEFAULT NULL,
  `GOC_SEX` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_custom
-- ----------------------------
INSERT INTO `jeecg_order_custom` VALUES ('4028d881436d514601436d521ae20162', null, null, null, null, null, '11111AAA', null, null, '小明', null, null, '1', null, null, null);

-- ----------------------------
-- Table structure for jeecg_order_main
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_main`;
CREATE TABLE `jeecg_order_main` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ALL_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_CONTACT_NAME` varchar(16) DEFAULT NULL,
  `GO_CONTENT` varchar(66) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GO_ORDER_COUNT` int(11) DEFAULT NULL,
  `GO_RETURN_PRICE` decimal(10,2) DEFAULT NULL,
  `GO_TELPHONE` varchar(11) DEFAULT NULL,
  `GODER_TYPE` varchar(255) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  `USERTYPE` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_main
-- ----------------------------
INSERT INTO `jeecg_order_main` VALUES ('4028d881436d514601436d521adb0160', null, null, null, null, null, '1111111.00', 'alex', '别放辣椒', '11111AAA', '1', '100.00', null, '1', null, null, null, '1');

-- ----------------------------
-- Table structure for jeecg_order_product
-- ----------------------------
DROP TABLE IF EXISTS `jeecg_order_product`;
CREATE TABLE `jeecg_order_product` (
  `ID` varchar(32) NOT NULL,
  `CREATE_DT` datetime DEFAULT NULL,
  `CRTUSER` varchar(12) DEFAULT NULL,
  `CRTUSER_NAME` varchar(10) DEFAULT NULL,
  `DEL_DT` datetime DEFAULT NULL,
  `DELFLAG` int(11) DEFAULT NULL,
  `GO_ORDER_CODE` varchar(12) NOT NULL,
  `GOP_CONTENT` varchar(66) DEFAULT NULL,
  `GOP_COUNT` int(11) DEFAULT NULL,
  `GOP_ONE_PRICE` decimal(10,2) DEFAULT NULL,
  `GOP_PRODUCT_NAME` varchar(33) DEFAULT NULL,
  `GOP_PRODUCT_TYPE` varchar(1) NOT NULL,
  `GOP_SUM_PRICE` decimal(10,2) DEFAULT NULL,
  `MODIFIER` varchar(12) DEFAULT NULL,
  `MODIFIER_NAME` varchar(10) DEFAULT NULL,
  `MODIFY_DT` datetime DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jeecg_order_product
-- ----------------------------
INSERT INTO `jeecg_order_product` VALUES ('4028d881436d514601436d521adf0161', null, null, null, null, null, '11111AAA', null, '1', '100.00', '最最美味的地锅鸡', '1', '100.00', null, null, null);

-- ----------------------------
-- Table structure for jform_cgreport_head
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_head`;
CREATE TABLE `jform_cgreport_head` (
  `ID` varchar(36) NOT NULL,
  `CGR_SQL` longtext NOT NULL,
  `CODE` varchar(36) NOT NULL,
  `CONTENT` longtext NOT NULL,
  `NAME` varchar(100) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_head
-- ----------------------------
INSERT INTO `jform_cgreport_head` VALUES ('402889f847666ae401476670bb72000a', 'select * from  weixin_cms_menu', 'A001', '查询微网站栏目', '查询栏目');

-- ----------------------------
-- Table structure for jform_cgreport_item
-- ----------------------------
DROP TABLE IF EXISTS `jform_cgreport_item`;
CREATE TABLE `jform_cgreport_item` (
  `ID` varchar(36) NOT NULL,
  `S_FLAG` varchar(2) DEFAULT NULL,
  `S_MODE` varchar(10) DEFAULT NULL,
  `CGRHEAD_ID` varchar(36) DEFAULT NULL,
  `DICT_CODE` varchar(36) DEFAULT NULL,
  `FIELD_HREF` varchar(120) DEFAULT NULL,
  `FIELD_NAME` varchar(36) DEFAULT NULL,
  `FIELD_TXT` longtext,
  `FIELD_TYPE` varchar(10) DEFAULT NULL,
  `IS_SHOW` varchar(5) DEFAULT NULL,
  `ORDER_NUM` int(11) DEFAULT NULL,
  `REPLACE_VA` varchar(36) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of jform_cgreport_item
-- ----------------------------
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb74000b', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ID', 'ID', 'String', 'Y', '0', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb78000c', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'ACCOUNTID', 'ACCOUNTID', 'String', 'Y', '1', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb79000d', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_BY', 'CREATE_BY', 'String', 'Y', '2', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7a000e', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_DATE', 'CREATE_DATE', 'String', 'Y', '3', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7b000f', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'CREATE_NAME', 'CREATE_NAME', 'String', 'Y', '4', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7e0010', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_HREF', 'IMAGE_HREF', 'String', 'Y', '5', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb7f0011', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'IMAGE_NAME', 'IMAGE_NAME', 'String', 'Y', '6', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb800012', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'NAME', 'NAME', 'String', 'Y', '7', '');
INSERT INTO `jform_cgreport_item` VALUES ('402889f847666ae401476670bb810013', 'Y', 'single', '402889f847666ae401476670bb72000a', '', '', 'TYPE', 'TYPE', 'String', 'Y', '8', '');
