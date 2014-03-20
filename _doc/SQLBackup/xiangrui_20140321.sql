/*
Navicat MySQL Data Transfer

Source Server         : localhost
Source Server Version : 50136
Source Host           : localhost:3306
Source Database       : xiangrui

Target Server Type    : MYSQL
Target Server Version : 50136
File Encoding         : 65001

Date: 2014-03-21 01:21:16
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `admin_base_app_device`
-- ----------------------------
DROP TABLE IF EXISTS `admin_base_app_device`;
CREATE TABLE `admin_base_app_device` (
  `badid` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `appdcode` int(6) NOT NULL DEFAULT '0' COMMENT '设备编码,可作唯一标示,二进制递增',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '设备名称',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`badid`),
  KEY `code` (`appdcode`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='应该设备管理';

-- ----------------------------
-- Records of admin_base_app_device
-- ----------------------------
INSERT INTO `admin_base_app_device` VALUES ('1', '1', 'Web', '1', '1', '2013-10-31 20:37:17', '2013-11-12 15:59:16');
INSERT INTO `admin_base_app_device` VALUES ('2', '2', 'Wap', '2', '1', '2013-10-31 20:37:26', '2013-10-31 20:41:41');
INSERT INTO `admin_base_app_device` VALUES ('3', '4', 'Android', '3', '1', '2013-10-31 20:37:40', '2013-10-31 20:41:34');
INSERT INTO `admin_base_app_device` VALUES ('4', '8', 'IOS', '4', '1', '2013-10-31 20:41:56', '2013-10-31 20:41:56');
INSERT INTO `admin_base_app_device` VALUES ('5', '16', 'Win', '5', '1', '2013-10-31 20:42:51', '2013-10-31 20:43:24');
INSERT INTO `admin_base_app_device` VALUES ('6', '32', 'Ipad', '6', '1', '2013-10-31 20:43:31', '2013-10-31 20:43:31');

-- ----------------------------
-- Table structure for `admin_base_area`
-- ----------------------------
DROP TABLE IF EXISTS `admin_base_area`;
CREATE TABLE `admin_base_area` (
  `baid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长,地区编码(行政代码)',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '地区父级ID',
  `crumb` varchar(100) NOT NULL DEFAULT '' COMMENT '面包屑，用横杠分割',
  `new_baid` int(11) DEFAULT '0' COMMENT '删除后对应的新行政代码',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '中文名称',
  `name_full` varchar(60) DEFAULT '' COMMENT '中文全称',
  `ename` varchar(60) DEFAULT '' COMMENT '英文名称',
  `ename_full` varchar(60) DEFAULT '' COMMENT '英文全称',
  `abbrevia` varchar(5) DEFAULT '' COMMENT '英文缩写',
  `administrative_code` int(11) DEFAULT '0' COMMENT '行政代码',
  `zip_code` varchar(8) DEFAULT '0' COMMENT '邮政编码',
  `call_code` varchar(8) DEFAULT '0' COMMENT '长途区号',
  `time_zone` varchar(8) DEFAULT '' COMMENT '时区',
  `time_diff` varchar(8) DEFAULT '' COMMENT '与中国时差',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  PRIMARY KEY (`baid`)
) ENGINE=InnoDB AUTO_INCREMENT=820001 DEFAULT CHARSET=utf8 COMMENT='地区管理';

-- ----------------------------
-- Records of admin_base_area
-- ----------------------------
INSERT INTO `admin_base_area` VALUES ('4', '0', '4-', '0', '阿富汗', '阿富汗', 'Afghanistan', 'Afghanistan', 'AF', '4', '0', '0093', '+4:30', '-3:30', '1');
INSERT INTO `admin_base_area` VALUES ('8', '0', '8-', '0', '阿尔巴尼亚', '阿尔巴尼亚', 'Albania', 'Albania', 'AL', '8', '0', '00355', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('10', '0', '10-', '0', '南极洲', '南极洲', 'Antarctica', 'Antarctica', 'AQ', '10', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('12', '0', '12-', '0', '阿尔及利亚', '阿尔及利亚', 'Algeria', 'Algeria', 'DZ', '12', '0', '00213', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('16', '0', '16-', '0', '东萨摩亚', '美属萨摩亚', 'American Samoa', 'American Samoa', 'AS', '16', '0', '00684', '-11', '-19', '1');
INSERT INTO `admin_base_area` VALUES ('20', '0', '20-', '0', '安道尔', '安道尔', 'Andorra', 'Andorra', 'AD', '20', '0', '00376', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('24', '0', '24-', '0', '安哥拉', '安哥拉', 'Angola', 'Angola', 'AO', '24', '0', '00244', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('28', '0', '28-', '0', '安提瓜和巴布达', '安提瓜和巴布达', 'Antigua And Barbuda', 'Antigua And Barbuda', 'AG', '28', '0', '001268', '-4', '-12', '1');
INSERT INTO `admin_base_area` VALUES ('31', '0', '31-', '0', '阿塞拜疆', '阿塞拜疆', 'Azerbaijan', 'Azerbaijan', 'AZ', '31', '0', '00994', '+4', '-4', '1');
INSERT INTO `admin_base_area` VALUES ('32', '0', '32-', '0', '阿根廷', '阿根廷', 'Argentina', 'Argentina', 'AR', '32', '0', '0054', '-3', '-11', '1');
INSERT INTO `admin_base_area` VALUES ('36', '0', '36-', '0', '澳大利亚', '澳大利亚', 'Australia', 'Australia', 'AU', '36', '0', '0061', '+8-+10', '0-+2', '1');
INSERT INTO `admin_base_area` VALUES ('40', '0', '40-', '0', '奥地利', '奥地利', 'Austria', 'Austria', 'AT', '40', '0', '0043', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('44', '0', '44-', '0', '巴哈马', '巴哈马', 'Bahamas', 'Bahamas', 'BS', '44', '0', '001242', '-5', '-13', '1');
INSERT INTO `admin_base_area` VALUES ('48', '0', '48-', '0', '巴林', '巴林', 'Bahrain', 'Bahrain', 'BH', '48', '0', '00973', '+3', '-5', '1');
INSERT INTO `admin_base_area` VALUES ('50', '0', '50-', '0', '孟加拉', '孟加拉国', 'Bangladesh', 'Bangladesh', 'BD', '50', '0', '00880', '+6', '-2', '1');
INSERT INTO `admin_base_area` VALUES ('51', '0', '51-', '0', '亚美尼亚', '亚美尼亚', 'Armenia', 'Armenia', 'AM', '51', '0', '00374', '+4', '-4', '1');
INSERT INTO `admin_base_area` VALUES ('52', '0', '52-', '0', '巴巴多斯', '巴巴多斯', 'Barbados', 'Barbados', 'BB', '52', '0', '001246', '-4', '-12', '1');
INSERT INTO `admin_base_area` VALUES ('56', '0', '56-', '0', '比利时', '比利时', 'Belgium', 'Belgium', 'BE', '56', '0', '0032', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('60', '0', '60-', '0', '百慕大', '百慕大', 'Bermuda', 'Bermuda', 'BM', '60', '0', '001441', '-4', '-12', '1');
INSERT INTO `admin_base_area` VALUES ('64', '0', '64-', '0', '不丹', '不丹', 'Bhutan', 'Bhutan', 'BT', '64', '0', '00975', '+6', '-2', '1');
INSERT INTO `admin_base_area` VALUES ('68', '0', '68-', '0', '玻利维亚', '玻利维亚', 'Bolivia', 'Bolivia', 'BO', '68', '0', '00591', '-4', '-12', '1');
INSERT INTO `admin_base_area` VALUES ('70', '0', '70-', '0', '波黑', '波黑', 'Bosnia and Herzegovina', 'Bosnia and Herzegovina', 'BA', '70', '0', '00387', '+1', '-7', '1');
INSERT INTO `admin_base_area` VALUES ('72', '0', '72-', '0', '博茨瓦纳', '博茨瓦纳', 'Botswana', 'Botswana', 'BW', '72', '0', '00267', '+2', '-6', '1');
INSERT INTO `admin_base_area` VALUES ('74', '0', '74-', '0', '布维岛', '布维岛', 'BOUVET ISLAND', 'BOUVET ISLAND', 'BV', '74', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('76', '0', '76-', '0', '巴西', '巴西', 'Brazil', 'Brazil', 'BR', '76', '0', '0055', '-3--5', '-11--13', '1');
INSERT INTO `admin_base_area` VALUES ('84', '0', '84-', '0', '伯利兹', '伯利兹', 'Belize', 'Belize', 'BZ', '84', '0', '00501', '-6', '-14', '1');
INSERT INTO `admin_base_area` VALUES ('86', '0', '86-', '0', '英属印度洋领土', '英属印度洋领土', 'BRITISH INDIAN OCEAN TER-RITORY', 'BRITISH INDIAN OCEAN TER-RITORY', 'IO', '86', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('90', '0', '90-', '0', '所罗门群岛', '所罗门群岛', 'SOLOMON ISLANDS', 'SOLOMON ISLANDS', 'SB', '90', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('92', '0', '92-', '0', '英属维尔京群岛', '英属维尔京群岛', 'VIRGIN ISLANDS, BRITISH', 'VIRGIN ISLANDS, BRITISH', 'VG', '92', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('96', '0', '96-', '0', '文莱', '文莱', 'BRUNEI DARUSSALAM', 'BRUNEI DARUSSALAM', 'BN', '96', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('100', '0', '100-', '0', '保加利亚', '保加利亚', 'BULGARIA', 'BULGARIA', 'BG', '100', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('104', '0', '104-', '0', '缅甸', '缅甸', 'MYANMAR', 'MYANMAR', 'MM', '104', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('108', '0', '108-', '0', '布隆迪', '布隆迪', 'BURUNDI', 'BURUNDI', 'BI', '108', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('112', '0', '112-', '0', '白俄罗斯', '白俄罗斯', 'BELARUS', 'BELARUS', 'BY', '112', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('116', '0', '116-', '0', '柬埔寨', '柬埔寨', 'CAMBODIA', 'CAMBODIA', 'KH', '116', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120', '0', '120-', '0', '喀麦隆', '喀麦隆', 'CAMEROON', 'CAMEROON', 'CM', '120', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('124', '0', '124-', '0', '加拿大', '加拿大', 'CANADA', 'CANADA', 'CA', '124', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('132', '0', '132-', '0', '佛得角', '佛得角', 'CAPE VERDE', 'CAPE VERDE', 'CV', '132', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('136', '0', '136-', '0', '开曼群岛', '开曼群岛', 'CAYMAN ISLANDS', 'CAYMAN ISLANDS', 'KY', '136', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140', '0', '140-', '0', '中非', '中非', 'CENTRAL AFRICA', 'CENTRAL AFRICA', 'CF', '140', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('144', '0', '144-', '0', '斯里兰卡', '斯里兰卡', 'SRI LANKA', 'SRI LANKA', 'LK', '144', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('148', '0', '148-', '0', '乍得', '乍得', 'CHAD', 'CHAD', 'TD', '148', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152', '0', '152-', '0', '智利', '智利', 'CHILE', 'CHILE', 'CL', '152', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('156', '0', '156-', '0', '中国', '中国', 'China', 'China', 'CN', '156', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('162', '0', '162-', '0', '圣诞岛', '圣诞岛', 'CHRISTMAS ISLAND', 'CHRISTMAS ISLAND', 'CS', '162', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('166', '0', '166-', '0', '科科斯(基林)群岛', '科科斯(基林)群岛', 'COCOS(KEELING) ISLANDS', 'COCOS(KEELING) ISLANDS', 'CC', '166', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('170', '0', '170-', '0', '哥伦比亚', '哥伦比亚', 'COLOMBIA', 'COLOMBIA', 'Co', '170', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('174', '0', '174-', '0', '科摩罗', '科摩罗', 'COMOROS', 'COMOROS', 'KM', '174', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('175', '0', '175-', '0', '马约特', '马约特', 'MAYOTTE', 'MAYOTTE', 'YT', '175', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('178', '0', '178-', '0', '刚果（布）', '刚果（布）', 'CONGO', 'CONGO', 'CG', '178', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('180', '0', '180-', '0', '刚果（金）', '刚果（金）', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CONGO, THE DEMOCRATIC REPUBLIC OF THE', 'CD', '180', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('184', '0', '184-', '0', '库克群岛', '库克群岛', 'COOK ISLANDS', 'COOK ISLANDS', 'CK', '184', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('188', '0', '188-', '0', '哥斯达黎加', '哥斯达黎加', 'COSTA RICA', 'COSTA RICA', 'CR', '188', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('191', '0', '191-', '0', '克罗地亚', '克罗地亚', 'CROATIA', 'CROATIA', 'HR', '191', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('192', '0', '192-', '0', '古巴', '古巴', 'CUBA', 'CUBA', 'CU', '192', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('196', '0', '196-', '0', '塞浦路斯', '塞浦路斯', 'CYPRUS', 'CYPRUS', 'CY', '196', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('203', '0', '203-', '0', '捷克', '捷克', 'CZECH REPOUBLIC', 'CZECH REPOUBLIC', 'CZ', '203', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('204', '0', '204-', '0', '贝宁', '贝宁', 'BENIN', 'BENIN', 'BJ', '204', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('208', '0', '208-', '0', '丹麦', '丹麦', 'DENMARK', 'DENMARK', 'DK', '208', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('212', '0', '212-', '0', '多米尼克', '多米尼克', 'DOMINICA', 'DOMINICA', 'DM', '212', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('214', '0', '214-', '0', '多米尼加', '多米尼加', 'DOMINICAN REPUBLIC', 'DOMINICAN REPUBLIC', 'DO', '214', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('218', '0', '218-', '0', '厄瓜多尔', '厄瓜多尔', 'ECUADOR', 'ECUADOR', 'EC', '218', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222', '0', '222-', '0', '萨尔瓦多', '萨尔瓦多', 'EL SALVADOR', 'EL SALVADOR', 'SV', '222', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('226', '0', '226-', '0', '赤道几内亚', '赤道几内亚', 'EQUATORIAL GUINEA', 'EQUATORIAL GUINEA', 'GQ', '226', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231', '0', '231-', '0', '埃塞俄比亚', '埃塞俄比亚', 'ETHIOPIA', 'ETHIOPIA', 'ET', '231', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('232', '0', '232-', '0', '厄立特里亚', '厄立特里亚', 'ERITREA', 'ERITREA', 'ER', '232', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('233', '0', '233-', '0', '爱沙尼亚', '爱沙尼亚', 'ESTONIA', 'ESTONIA', 'EE', '233', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('234', '0', '234-', '0', '法罗群岛', '法罗群岛', 'FAROE ISLANDS', 'FAROE ISLANDS', 'FO', '234', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('238', '0', '238-', '0', '福克兰群岛(马尔维纳斯)', '福克兰群岛(马尔维纳斯)', 'FALKLAND ISLANDS(MALVINAS)', 'FALKLAND ISLANDS(MALVINAS)', 'FK', '238', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('239', '0', '239-', '0', '南乔治亚岛和南桑德韦奇岛', '南乔治亚岛和南桑德韦奇岛', 'SOUTH GEORGIA AND SOUTH SANDWICH ISLANDS', 'SOUTH GEORGIA AND SOUTH SANDWICH ISLANDS', 'GS', '239', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('242', '0', '242-', '0', '斐济', '斐济', 'FIJI', 'FIJI', 'FJ', '242', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('246', '0', '246-', '0', '芬兰', '芬兰', 'FINLAND', 'FINLAND', 'FI', '246', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('250', '0', '250-', '0', '法国', '法国', 'FRANCE', 'FRANCE', 'FR', '250', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('254', '0', '254-', '0', '法属圭亚那', '法属圭亚那', 'FRENCH GUIANA', 'FRENCH GUIANA', 'GF', '254', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('258', '0', '258-', '0', '法属波利尼西亚', '法属波利尼西亚', 'FRENCH POLYNESIA', 'FRENCH POLYNESIA', 'PF', '258', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('260', '0', '260-', '0', '法属南部领土', '法属南部领土', 'FRENCH SOUTHERN TERRITO-RIES', 'FRENCH SOUTHERN TERRITO-RIES', 'TF', '260', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('262', '0', '262-', '0', '吉布提', '吉布提', 'DJIBOUTI', 'DJIBOUTI', 'DJ', '262', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('266', '0', '266-', '0', '加蓬', '加蓬', 'GABON', 'GABON', 'GA', '266', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('268', '0', '268-', '0', '格鲁吉亚', '格鲁吉亚', 'GEORGIA', 'GEORGIA', 'GE', '268', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('270', '0', '270-', '0', '冈比亚', '冈比亚', 'Gambia', 'Gambia', 'GM', '270', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('276', '0', '276-', '0', '德国', '德国', 'GERMANY', 'GERMANY', 'DE', '276', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('288', '0', '288-', '0', '加纳', '加纳', 'GHANA', 'GHANA', 'GH', '288', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('292', '0', '292-', '0', '直布罗陀', '直布罗陀', 'GIBRALTAR', 'GIBRALTAR', 'GI', '292', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('296', '0', '296-', '0', '基里巴斯', '基里巴斯', 'KIRIBATI', 'KIRIBATI', 'KI', '296', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('300', '0', '300-', '0', '希腊', '希腊', 'GREECE', 'GREECE', 'GR', '300', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('304', '0', '304-', '0', '格陵兰', '格陵兰', 'GREENLAND', 'GREENLAND', 'GL', '304', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('308', '0', '308-', '0', '格林纳达', '格林纳达', 'GRENADA', 'GRENADA', 'GD', '308', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('312', '0', '312-', '0', '瓜德罗普', '瓜德罗普', 'GUADELOUPE', 'GUADELOUPE', 'GP', '312', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('316', '0', '316-', '0', '关岛', '关岛', 'GUAM', 'GUAM', 'GU', '316', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320', '0', '320-', '0', '危地马拉', '危地马拉', 'GUATEMALA', 'GUATEMALA', 'GT', '320', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('324', '0', '324-', '0', '几内亚', '几内亚', 'GUINEA', 'GUINEA', 'GN', '324', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('328', '0', '328-', '0', '圭亚那', '圭亚那', 'GUYANA', 'GUYANA', 'GY', '328', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('332', '0', '332-', '0', '海地', '海地', 'HAITI', 'HAITI', 'HT', '332', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('334', '0', '334-', '0', '赫德岛和麦克唐纳岛', '赫德岛和麦克唐纳岛', 'HEARD ISLANDS AND MC DONALD ISLANDS', 'HEARD ISLANDS AND MC DONALD ISLANDS', 'HM', '334', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('336', '0', '336-', '0', '梵蒂冈', '梵蒂冈', 'VATICAN', 'VATICAN', 'VA', '336', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340', '0', '340-', '0', '洪都拉斯', '洪都拉斯', 'HONDURAS', 'HONDURAS', 'HN', '340', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('348', '0', '348-', '0', '匈牙利', '匈牙利', 'HUNGARY', 'HUNGARY', 'HU', '348', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('352', '0', '352-', '0', '冰岛', '冰岛', 'ICELAND', 'ICELAND', 'IS', '352', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('356', '0', '356-', '0', '印度', '印度', 'INDIA', 'INDIA', 'IN', '356', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360', '0', '360-', '0', '印度尼西亚', '印度尼西亚', 'INDONESIA', 'INDONESIA', 'ID', '360', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('364', '0', '364-', '0', '伊朗', '伊朗', 'IRAN', 'IRAN', 'IR', '364', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('368', '0', '368-', '0', '伊拉克', '伊拉克', 'IRAQ', 'IRAQ', 'IQ', '368', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('372', '0', '372-', '0', '爱尔兰', '爱尔兰', 'IRELAND', 'IRELAND', 'IE', '372', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('374', '0', '374-', '0', '巴勒斯坦', '巴勒斯坦', 'PALESTINE', 'PALESTINE', 'PS', '374', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('376', '0', '376-', '0', '以色列', '以色列', 'ISRAEL', 'ISRAEL', 'IL', '376', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('380', '0', '380-', '0', '意大利', '意大利', 'ITALY', 'ITALY', 'IT', '380', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('384', '0', '384-', '0', '科特迪瓦', '科特迪瓦', 'COTE D\'IVOIRE', 'COTE D\'IVOIRE', 'CI', '384', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('388', '0', '388-', '0', '牙买加', '牙买加', 'JAMAICA', 'JAMAICA', 'JM', '388', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('392', '0', '392-', '0', '日本', '日本', 'JAPAN', 'JAPAN', 'JP', '392', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('398', '0', '398-', '0', '哈萨克斯坦', '哈萨克斯坦', 'KAZAKHSTAN', 'KAZAKHSTAN', 'KZ', '398', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('400', '0', '400-', '0', '约旦', '约旦', 'JORDAN', 'JORDAN', 'JO', '400', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('404', '0', '404-', '0', '肯尼亚', '肯尼亚', 'KENYA', 'KENYA', 'KE', '404', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('408', '0', '408-', '0', '朝鲜', '朝鲜', 'KOREA,DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KOREA,DEMOCRATIC PEOPLE\'S REPUBLIC OF', 'KP', '408', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410', '0', '410-', '0', '韩国', '韩国', 'KOREA,REPUBLIC OF', 'KOREA,REPUBLIC OF', 'KR', '410', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('414', '0', '414-', '0', '科威特', '科威特', 'KUWAIT', 'KUWAIT', 'KW', '414', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('417', '0', '417-', '0', '吉尔吉斯斯坦', '吉尔吉斯斯坦', 'KYRGYZSTAN', 'KYRGYZSTAN', 'KG', '417', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('418', '0', '418-', '0', '老挝', '老挝', 'LAOS', 'LAOS', 'LA', '418', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422', '0', '422-', '0', '黎巴嫩', '黎巴嫩', 'LEBANON', 'LEBANON', 'LB', '422', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('426', '0', '426-', '0', '莱索托', '莱索托', 'LESOTHO', 'LESOTHO', 'LS', '426', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('428', '0', '428-', '0', '拉脱维亚', '拉脱维亚', 'LATVIA', 'LATVIA', 'LV', '428', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430', '0', '430-', '0', '利比里亚', '利比里亚', 'LIBERIA', 'LIBERIA', 'LR', '430', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('434', '0', '434-', '0', '利比亚', '利比亚', 'LIBYA', 'LIBYA', 'LY', '434', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('438', '0', '438-', '0', '列支敦士登', '列支敦士登', 'LIECHTENSTEIN', 'LIECHTENSTEIN', 'LI', '438', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440', '0', '440-', '0', '立陶宛', '立陶宛', 'LITHUANIA', 'LITHUANIA', 'LT', '440', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('442', '0', '442-', '0', '卢森堡', '卢森堡', 'LUXEMBOURG', 'LUXEMBOURG', 'LU', '442', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450', '0', '450-', '0', '马达加斯加', '马达加斯加', 'MADAGASCAR', 'MADAGASCAR', 'MG', '450', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('454', '0', '454-', '0', '马拉维', '马拉维', 'MALAWI', 'MALAWI', 'MW', '454', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('458', '0', '458-', '0', '马来西亚', '马来西亚', 'MALAYSIA', 'MALAYSIA', 'MY', '458', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('462', '0', '462-', '0', '马尔代夫', '马尔代夫', 'MALDIVES', 'MALDIVES', 'MV', '462', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('466', '0', '466-', '0', '马里', '马里', 'MALI', 'MALI', 'ML', '466', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('470', '0', '470-', '0', '马耳他', '马耳他', 'MALTA', 'MALTA', 'MT', '470', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('474', '0', '474-', '0', '马提尼克', '马提尼克', 'MARTINIQUE', 'MARTINIQUE', 'MQ', '474', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('478', '0', '478-', '0', '毛里塔尼亚', '毛里塔尼亚', 'MAURITANIA', 'MAURITANIA', 'MR', '478', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('480', '0', '480-', '0', '毛里求斯', '毛里求斯', 'MAURITIUS', 'MAURITIUS', 'MU', '480', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('484', '0', '484-', '0', '墨西哥', '墨西哥', 'MEXICO', 'MEXICO', 'MX', '484', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('492', '0', '492-', '0', '摩纳哥', '摩纳哥', 'MONACO', 'MONACO', 'MC', '492', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('496', '0', '496-', '0', '蒙古', '蒙古', 'MONGOLIA', 'MONGOLIA', 'MN', '496', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('498', '0', '498-', '0', '摩尔多瓦', '摩尔多瓦', 'MOLDOVA', 'MOLDOVA', 'MD', '498', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500', '0', '500-', '0', '蒙特塞拉特', '蒙特塞拉特', 'MONTSERRAT', 'MONTSERRAT', 'MS', '500', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('504', '0', '504-', '0', '摩洛哥', '摩洛哥', 'MOROCCO', 'MOROCCO', 'MA', '504', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('508', '0', '508-', '0', '莫桑比克', '莫桑比克', 'MOZAMBIQUE', 'MOZAMBIQUE', 'MZ', '508', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512', '0', '512-', '0', '阿曼', '阿曼', 'OMAN', 'OMAN', 'OM', '512', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('516', '0', '516-', '0', '纳米比亚', '纳米比亚', 'NAMIBIA', 'NAMIBIA', 'NA', '516', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520', '0', '520-', '0', '瑙鲁', '瑙鲁', 'NAURU', 'NAURU', 'NR', '520', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('524', '0', '524-', '0', '尼泊尔', '尼泊尔', 'NEPAL', 'NEPAL', 'NP', '524', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('528', '0', '528-', '0', '荷兰', '荷兰', 'NETHERLANDS', 'NETHERLANDS', 'NL', '528', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530', '0', '530-', '0', '荷属安的列斯', '荷属安的列斯', 'NETHERLANDS ANTILLES', 'NETHERLANDS ANTILLES', 'AN', '530', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533', '0', '533-', '0', '阿鲁巴', '阿鲁巴', 'ARUBA', 'ARUBA', 'AW', '533', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540', '0', '540-', '0', '新喀里多尼亚', '新喀里多尼亚', 'NEW CALEDONIA', 'NEW CALEDONIA', 'NC', '540', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('548', '0', '548-', '0', '瓦努阿图', '瓦努阿图', 'VANUATU', 'VANUATU', 'VU', '548', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('554', '0', '554-', '0', '新西兰', '新西兰', 'NEW ZEALAND', 'NEW ZEALAND', 'NZ', '554', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('558', '0', '558-', '0', '尼加拉瓜', '尼加拉瓜', 'NICARAGUA', 'NICARAGUA', 'NI', '558', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('562', '0', '562-', '0', '尼日尔', '尼日尔', 'NIGER', 'NIGER', 'NE', '562', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('566', '0', '566-', '0', '尼日利亚', '尼日利亚', 'NIGERIA', 'NIGERIA', 'NG', '566', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('570', '0', '570-', '0', '纽埃', '纽埃', 'NIUE', 'NIUE', 'NU', '570', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('574', '0', '574-', '0', '诺福克岛', '诺福克岛', 'NORFOLK ISLAND', 'NORFOLK ISLAND', 'NF', '574', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('578', '0', '578-', '0', '挪威', '挪威', 'NORWAY', 'NORWAY', 'NO', '578', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('580', '0', '580-', '0', '北马里亚纳', '北马里亚纳', 'NORTHERN MARIANAS', 'NORTHERN MARIANAS', 'MP', '580', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('581', '0', '581-', '0', '美国本土外小岛屿', '美国本土外小岛屿', 'UNITED STATES MINOR OUTLYING ISLANDS', 'UNITED STATES MINOR OUTLYING ISLANDS', 'UM', '581', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('583', '0', '583-', '0', '密克罗尼西亚联邦', '密克罗尼西亚联邦', 'MICRONESIA, FEDERATED STATES OF', 'MICRONESIA, FEDERATED STATES OF', 'FM', '583', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('584', '0', '584-', '0', '马绍尔群岛', '马绍尔群岛', 'MARSHALL ISLANDS', 'MARSHALL ISLANDS', 'MH', '584', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('585', '0', '585-', '0', '帕劳', '帕劳', 'PALAU', 'PALAU', 'PW', '585', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('586', '0', '586-', '0', '巴基斯坦', '巴基斯坦', 'PAKISTAN', 'PAKISTAN', 'PK', '586', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('591', '0', '591-', '0', '巴拿马', '巴拿马', 'PANAMA', 'PANAMA', 'PA', '591', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('598', '0', '598-', '0', '巴布亚新几内亚', '巴布亚新几内亚', 'PAPUA NEW GUINEA', 'PAPUA NEW GUINEA', 'PG', '598', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('600', '0', '600-', '0', '巴拉圭', '巴拉圭', 'PARAGUAY', 'PARAGUAY', 'PY', '600', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('604', '0', '604-', '0', '秘鲁', '秘鲁', 'PERU', 'PERU', 'PE', '604', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('608', '0', '608-', '0', '菲律宾', '菲律宾', 'PHILIPPINES', 'PHILIPPINES', 'PH', '608', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('612', '0', '612-', '0', '皮特凯恩群岛', '皮特凯恩群岛', 'PITCAIRN ISLANDS GROUP', 'PITCAIRN ISLANDS GROUP', 'PN', '612', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('616', '0', '616-', '0', '波兰', '波兰', 'POLAND', 'POLAND', 'PL', '616', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620', '0', '620-', '0', '葡萄牙', '葡萄牙', 'PORTUGAL', 'PORTUGAL', 'PT', '620', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('624', '0', '624-', '0', '几内亚比绍', '几内亚比绍', 'GUINE-BISSAU', 'GUINE-BISSAU', 'GW', '624', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('626', '0', '626-', '0', '东帝汶', '东帝汶', 'EAST TIMOR', 'EAST TIMOR', 'TP', '626', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630', '0', '630-', '0', '波多黎各', '波多黎各', 'PUERTO RICO', 'PUERTO RICO', 'PR', '630', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('634', '0', '634-', '0', '卡塔尔', '卡塔尔', 'QATAR', 'QATAR', 'QA', '634', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('638', '0', '638-', '0', '留尼汪', '留尼汪', 'REUNION', 'REUNION', 'RE', '638', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('642', '0', '642-', '0', '罗马尼亚', '罗马尼亚', 'ROMANIA', 'ROMANIA', 'RO', '642', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('643', '0', '643-', '0', '俄罗斯', '俄罗斯', 'RUSSIAN FEDERATION', 'RUSSIAN FEDERATION', 'RU', '643', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('646', '0', '646-', '0', '卢旺达', '卢旺达', 'RWANDA', 'RWANDA', 'RW', '646', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654', '0', '654-', '0', '圣赫勒拿', '圣赫勒拿', 'SAINT HELENA', 'SAINT HELENA', 'Sh', '654', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('659', '0', '659-', '0', '圣基茨和尼维斯', '圣基茨和尼维斯', 'SAINT KITTS AND NEVIS', 'SAINT KITTS AND NEVIS', 'KN', '659', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('660', '0', '660-', '0', '安圭拉', '安圭拉', 'Anguilla', 'Anguilla', 'AI', '660', '0', '001264', '', '-12', '1');
INSERT INTO `admin_base_area` VALUES ('662', '0', '662-', '0', '圣卢西亚', '圣卢西亚', 'SAINT LUCIA', 'SAINT LUCIA', 'LC', '662', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('666', '0', '666-', '0', '圣皮埃尔和密克隆', '圣皮埃尔和密克隆', 'SAINT PIERRE AND MIQUELON', 'SAINT PIERRE AND MIQUELON', 'PM', '666', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('670', '0', '670-', '0', '圣文森特和格林纳丁斯', '圣文森特和格林纳丁斯', 'SAINT VINCENT AND THE GRENADINES', 'SAINT VINCENT AND THE GRENADINES', 'VC', '670', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('674', '0', '674-', '0', '圣马力诺', '圣马力诺', 'SAN MARION', 'SAN MARION', 'SM', '674', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('678', '0', '678-', '0', '圣多美和普林西比', '圣多美和普林西比', 'SAO TOME AND PRINCIPE', 'SAO TOME AND PRINCIPE', 'St', '678', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('682', '0', '682-', '0', '沙特阿拉伯', '沙特阿拉伯', 'SAUDI ARABIA', 'SAUDI ARABIA', 'SA', '682', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('686', '0', '686-', '0', '塞内加尔', '塞内加尔', 'SENEGAL', 'SENEGAL', 'SN', '686', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('690', '0', '690-', '0', '塞舌尔', '塞舌尔', 'SEYCHELLS', 'SEYCHELLS', 'SC', '690', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('694', '0', '694-', '0', '塞拉利昂', '塞拉利昂', 'SIERRA LEONE', 'SIERRA LEONE', 'SL', '694', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('702', '0', '702-', '0', '新加坡', '新加坡', 'SINGAPORE', 'SINGAPORE', 'SG', '702', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('703', '0', '703-', '0', '斯洛伐克', '斯洛伐克', 'SLOVAKIA', 'SLOVAKIA', 'SK', '703', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('704', '0', '704-', '0', '越南', '越南', 'VIET NAM', 'VIET NAM', 'VN', '704', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('705', '0', '705-', '0', '斯洛文尼亚', '斯洛文尼亚', 'SLOVENIA', 'SLOVENIA', 'SI', '705', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('706', '0', '706-', '0', '索马里', '索马里', 'SOMALIA', 'SOMALIA', 'SO', '706', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('710', '0', '710-', '0', '南非', '南非', 'SOUTH AFRICA', 'SOUTH AFRICA', 'ZA', '710', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('716', '0', '716-', '0', '津巴布韦', '津巴布韦', 'ZIMBABWE', 'ZIMBABWE', 'ZW', '716', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('724', '0', '724-', '0', '西班牙', '西班牙', 'SPAIN', 'SPAIN', 'ES', '724', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('732', '0', '732-', '0', '西撒哈拉', '西撒哈拉', 'WESTERN SAHARA', 'WESTERN SAHARA', 'EH', '732', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('736', '0', '736-', '0', '苏丹', '苏丹', 'SUDAN', 'SUDAN', 'SD', '736', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('740', '0', '740-', '0', '苏里南', '苏里南', 'SURINAME', 'SURINAME', 'SR', '740', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('744', '0', '744-', '0', '斯瓦尔巴群岛', '斯瓦尔巴群岛', 'SVALBARD AND JAN MAYEN ISLANDS', 'SVALBARD AND JAN MAYEN ISLANDS', 'SJ', '744', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('748', '0', '748-', '0', '斯威士兰', '斯威士兰', 'SWAZILAND', 'SWAZILAND', 'SZ', '748', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('752', '0', '752-', '0', '瑞典', '瑞典', 'SWEDEN', 'SWEDEN', 'SE', '752', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('756', '0', '756-', '0', '瑞士', '瑞士', 'SWITZERLAND', 'SWITZERLAND', 'CH', '756', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('760', '0', '760-', '0', '叙利亚', '叙利亚', 'SYRIA', 'SYRIA', 'SY', '760', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('762', '0', '762-', '0', '塔吉克斯坦', '塔吉克斯坦', 'TAJIKISTAN', 'TAJIKISTAN', 'TJ', '762', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('764', '0', '764-', '0', '泰国', '泰国', 'THAILAND', 'THAILAND', 'TH', '764', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('768', '0', '768-', '0', '多哥', '多哥', 'TOGO', 'TOGO', 'TG', '768', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('772', '0', '772-', '0', '托克劳', '托克劳', 'TOKELAU', 'TOKELAU', 'TK', '772', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('776', '0', '776-', '0', '汤加', '汤加', 'TONGA', 'TONGA', 'TO', '776', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('780', '0', '780-', '0', '特立尼达和多巴哥', '特立尼达和多巴哥', 'TRINIDAD AND TOBAGO', 'TRINIDAD AND TOBAGO', 'TT', '780', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('784', '0', '784-', '0', '阿联酋', '阿联酋', 'UNITED ARAB EMIRATES', 'UNITED ARAB EMIRATES', 'AE', '784', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('788', '0', '788-', '0', '突尼斯', '突尼斯', 'TUNISIA', 'TUNISIA', 'TN', '788', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('792', '0', '792-', '0', '土耳其', '土耳其', 'TURKEY', 'TURKEY', 'TR', '792', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('795', '0', '795-', '0', '土库曼斯坦', '土库曼斯坦', 'TURKMENISTAN', 'TURKMENISTAN', 'TM', '795', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('796', '0', '796-', '0', '特克斯科斯群岛', '特克斯科斯群岛', 'TURKS AND CAICOS ISLANDS', 'TURKS AND CAICOS ISLANDS', 'TC', '796', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('798', '0', '798-', '0', '图瓦卢', '图瓦卢', 'TUVALU', 'TUVALU', 'TV', '798', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('800', '0', '800-', '0', '乌干达', '乌干达', 'UGANDA', 'UGANDA', 'UG', '800', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('804', '0', '804-', '0', '乌克兰', '乌克兰', 'UKRAINE', 'UKRAINE', 'UA', '804', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('807', '0', '807-', '0', '前南马其顿', '前南马其顿', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MACEDONIA, THE FORMER YUGOSLAV REPUBLIC OF', 'MK', '807', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('818', '0', '818-', '0', '埃及', '埃及', 'EGYPT', 'EGYPT', 'EG', '818', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('826', '0', '826-', '0', '英国', '英国', 'UNITED KINGDOM', 'UNITED KINGDOM', 'GB', '826', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('834', '0', '834-', '0', '坦桑尼亚', '坦桑尼亚', 'TANZANIA', 'TANZANIA', 'TZ', '834', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('840', '0', '840-', '0', '美国', '美国', 'UNITED STATES', 'UNITED STATES', 'US', '840', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('850', '0', '850-', '0', '美属维尔京群岛', '美属维尔京群岛', 'VIRGIN ISLANDS,U.S.', 'VIRGIN ISLANDS,U.S.', 'VI', '850', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('854', '0', '854-', '0', '布基纳法索', '布基纳法索', 'BURKINA FASO', 'BURKINA FASO', 'BF', '854', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('858', '0', '858-', '0', '乌拉圭', '乌拉圭', 'URUGUAY', 'URUGUAY', 'UY', '858', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('860', '0', '860-', '0', '乌兹别克斯坦', '乌兹别克斯坦', 'UZBEKISTAN', 'UZBEKISTAN', 'UZ', '860', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('862', '0', '862-', '0', '委内瑞拉', '委内瑞拉', 'VENEZUELA', 'VENEZUELA', 'VE', '862', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('876', '0', '876-', '0', '瓦利斯和富图纳', '瓦利斯和富图纳', 'WALLIS AND FUTUNA', 'WALLIS AND FUTUNA', 'WF', '876', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('882', '0', '882-', '0', '萨摩亚', '萨摩亚', 'SAMOA', 'SAMOA', 'WS', '882', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('887', '0', '887-', '0', '也门', '也门', 'YEMEN', 'YEMEN', 'YE', '887', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('891', '0', '891-', '0', '南斯拉夫', '南斯拉夫', 'YUGOSLAVIA', 'YUGOSLAVIA', 'YU', '891', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('894', '0', '894-', '0', '赞比亚', '赞比亚', 'ZAMBIA', 'ZAMBIA', 'ZM', '894', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110000', '156', '156-110000-', '0', '北京', '北京市', 'BeiJing', 'BeiJing', 'BJ', '110000', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110100', '110000', '156-110000-110100-', '0', '市辖区', '市辖区', '', '', '', '110100', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110101', '110100', '156-110000-110100-110101-', '0', '东城区', '东城区', '', '', '', '110101', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110102', '110100', '156-110000-110100-110102-', '0', '西城区', '西城区', '', '', '', '110102', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110105', '110100', '156-110000-110100-110105-', '0', '朝阳区', '朝阳区', '', '', '', '110105', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110106', '110100', '156-110000-110100-110106-', '0', '丰台区', '丰台区', '', '', '', '110106', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110107', '110100', '156-110000-110100-110107-', '0', '石景山区', '石景山区', '', '', '', '110107', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110108', '110100', '156-110000-110100-110108-', '0', '海淀区', '海淀区', '', '', '', '110108', '100000', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110109', '110100', '156-110000-110100-110109-', '0', '门头沟区', '门头沟区', '', '', '', '110109', '102300', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110111', '110100', '156-110000-110100-110111-', '0', '房山区', '房山区', '', '', '', '110111', '102400', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110112', '110100', '156-110000-110100-110112-', '0', '通州区', '通州区', '', '', '', '110112', '101100', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110113', '110100', '156-110000-110100-110113-', '0', '顺义区', '顺义区', '', '', '', '110113', '101300', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110114', '110100', '156-110000-110100-110114-', '0', '昌平区', '昌平区', '', '', '', '110114', '102200', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110115', '110100', '156-110000-110100-110115-', '0', '大兴区', '大兴区', '', '', '', '110115', '102600', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110116', '110100', '156-110000-110100-110116-', '0', '怀柔区', '怀柔区', '', '', '', '110116', '101400', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110117', '110100', '156-110000-110100-110117-', '0', '平谷区', '平谷区', '', '', '', '110117', '101200', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110200', '110000', '156-110000-110200-', '0', '县', '县', '', '', '', '110200', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110228', '110200', '156-110000-110200-110228-', '0', '密云县', '密云县', '', '', '', '110228', '101500', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('110229', '110200', '156-110000-110200-110229-', '0', '延庆县', '延庆县', '', '', '', '110229', '102100', '010', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120000', '156', '156-120000-', '0', '天津', '天津市', 'TianJin', 'TianJin', 'TJ', '120000', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120100', '120000', '156-120000-120100-', '0', '市辖区', '市辖区', '', '', '', '120100', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120101', '120100', '156-120000-120100-120101-', '0', '和平区', '和平区', '', '', '', '120101', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120102', '120100', '156-120000-120100-120102-', '0', '河东区', '河东区', '', '', '', '120102', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120103', '120100', '156-120000-120100-120103-', '0', '河西区', '河西区', '', '', '', '120103', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120104', '120100', '156-120000-120100-120104-', '0', '南开区', '南开区', '', '', '', '120104', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120105', '120100', '156-120000-120100-120105-', '0', '河北区', '河北区', '', '', '', '120105', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120106', '120100', '156-120000-120100-120106-', '0', '红桥区', '红桥区', '', '', '', '120106', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120110', '120100', '156-120000-120100-120110-', '0', '东丽区', '东丽区', '', '', '', '120110', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120111', '120100', '156-120000-120100-120111-', '0', '西青区', '西青区', '', '', '', '120111', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120112', '120100', '156-120000-120100-120112-', '0', '津南区', '津南区', '', '', '', '120112', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120113', '120100', '156-120000-120100-120113-', '0', '北辰区', '北辰区', '', '', '', '120113', '300000', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120114', '120100', '156-120000-120100-120114-', '0', '武清区', '武清区', '', '', '', '120114', '301700', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120115', '120100', '156-120000-120100-120115-', '0', '宝坻区', '宝坻区', '', '', '', '120115', '301800', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120116', '120100', '156-120000-120100-120116-', '0', '滨海新区', '滨海新区', '', '', '', '120116', '300450', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120200', '120000', '156-120000-120200-', '0', '县', '县', '', '', '', '120200', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120221', '120200', '156-120000-120200-120221-', '0', '宁河县', '宁河县', '', '', '', '120221', '301500', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120223', '120200', '156-120000-120200-120223-', '0', '静海县', '静海县', '', '', '', '120223', '301600', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('120225', '120200', '156-120000-120200-120225-', '0', '蓟县', '蓟县', '', '', '', '120225', '301900', '022', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130000', '156', '156-130000-', '0', '河北', '河北省', 'HeBei', 'HeBei', 'HB', '130000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130100', '130000', '156-130000-130100-', '0', '石家庄', '石家庄市', '', '', '', '130100', '050000', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130101', '130100', '156-130000-130100-130101-', '0', '市辖区', '市辖区', '', '', '', '130101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130102', '130100', '156-130000-130100-130102-', '0', '长安区', '长安区', '', '', '', '130102', '050000', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130103', '130100', '156-130000-130100-130103-', '0', '桥东区', '桥东区', '', '', '', '130103', '050000', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130104', '130100', '156-130000-130100-130104-', '0', '桥西区', '桥西区', '', '', '', '130104', '050000', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130105', '130100', '156-130000-130100-130105-', '0', '新华区', '新华区', '', '', '', '130105', '050000', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130107', '130100', '156-130000-130100-130107-', '0', '井陉矿区', '井陉矿区', '', '', '', '130107', '050100', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130108', '130100', '156-130000-130100-130108-', '0', '裕华区', '裕华区', '', '', '', '130108', '050000', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130121', '130100', '156-130000-130100-130121-', '0', '井陉县', '井陉县', '', '', '', '130121', '050300', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130123', '130100', '156-130000-130100-130123-', '0', '正定县', '正定县', '', '', '', '130123', '050800', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130124', '130100', '156-130000-130100-130124-', '0', '栾城县', '栾城县', '', '', '', '130124', '051430', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130125', '130100', '156-130000-130100-130125-', '0', '行唐县', '行唐县', '', '', '', '130125', '050600', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130126', '130100', '156-130000-130100-130126-', '0', '灵寿县', '灵寿县', '', '', '', '130126', '050500', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130127', '130100', '156-130000-130100-130127-', '0', '高邑县', '高邑县', '', '', '', '130127', '051330', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130128', '130100', '156-130000-130100-130128-', '0', '深泽县', '深泽县', '', '', '', '130128', '052500', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130129', '130100', '156-130000-130100-130129-', '0', '赞皇县', '赞皇县', '', '', '', '130129', '051230', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130130', '130100', '156-130000-130100-130130-', '0', '无极县', '无极县', '', '', '', '130130', '052400', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130131', '130100', '156-130000-130100-130131-', '0', '平山县', '平山县', '', '', '', '130131', '050400', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130132', '130100', '156-130000-130100-130132-', '0', '元氏县', '元氏县', '', '', '', '130132', '051130', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130133', '130100', '156-130000-130100-130133-', '0', '赵县', '赵县', '', '', '', '130133', '051530', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130181', '130100', '156-130000-130100-130181-', '0', '辛集市', '辛集市', '', '', '', '130181', '052300', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130182', '130100', '156-130000-130100-130182-', '0', '藁城市', '藁城市', '', '', '', '130182', '052160', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130183', '130100', '156-130000-130100-130183-', '0', '晋州市', '晋州市', '', '', '', '130183', '052200', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130184', '130100', '156-130000-130100-130184-', '0', '新乐市', '新乐市', '', '', '', '130184', '050700', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130185', '130100', '156-130000-130100-130185-', '0', '鹿泉市', '鹿泉市', '', '', '', '130185', '050200', '0311', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130200', '130000', '156-130000-130200-', '0', '唐山', '唐山市', '', '', '', '130200', '063000', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130201', '130200', '156-130000-130200-130201-', '0', '市辖区', '市辖区', '', '', '', '130201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130202', '130200', '156-130000-130200-130202-', '0', '路南区', '路南区', '', '', '', '130202', '063000', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130203', '130200', '156-130000-130200-130203-', '0', '路北区', '路北区', '', '', '', '130203', '063000', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130204', '130200', '156-130000-130200-130204-', '0', '古冶区', '古冶区', '', '', '', '130204', '063100', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130205', '130200', '156-130000-130200-130205-', '0', '开平区', '开平区', '', '', '', '130205', '063000', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130207', '130200', '156-130000-130200-130207-', '0', '丰南区', '丰南区', '', '', '', '130207', '063300', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130208', '130200', '156-130000-130200-130208-', '0', '丰润区', '丰润区', '', '', '', '130208', '063000', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130209', '130200', '156-130000-130200-130209-', '0', '曹妃甸区', '曹妃甸区', '', '', '', '130209', '0', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130223', '130200', '156-130000-130200-130223-', '0', '滦县', '滦县', '', '', '', '130223', '063700', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130224', '130200', '156-130000-130200-130224-', '0', '滦南县', '滦南县', '', '', '', '130224', '063500', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130225', '130200', '156-130000-130200-130225-', '0', '乐亭县', '乐亭县', '', '', '', '130225', '063600', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130227', '130200', '156-130000-130200-130227-', '0', '迁西县', '迁西县', '', '', '', '130227', '064300', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130229', '130200', '156-130000-130200-130229-', '0', '玉田县', '玉田县', '', '', '', '130229', '064100', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130281', '130200', '156-130000-130200-130281-', '0', '遵化市', '遵化市', '', '', '', '130281', '064200', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130283', '130200', '156-130000-130200-130283-', '0', '迁安市', '迁安市', '', '', '', '130283', '064400', '0315', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130300', '130000', '156-130000-130300-', '0', '秦皇岛', '秦皇岛市', '', '', '', '130300', '066000', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130301', '130300', '156-130000-130300-130301-', '0', '市辖区', '市辖区', '', '', '', '130301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130302', '130300', '156-130000-130300-130302-', '0', '海港区', '海港区', '', '', '', '130302', '066000', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130303', '130300', '156-130000-130300-130303-', '0', '山海关区', '山海关区', '', '', '', '130303', '066200', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130304', '130300', '156-130000-130300-130304-', '0', '北戴河区', '北戴河区', '', '', '', '130304', '066100', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130321', '130300', '156-130000-130300-130321-', '0', '青龙满族自治县', '青龙满族自治县', '', '', '', '130321', '066500', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130322', '130300', '156-130000-130300-130322-', '0', '昌黎县', '昌黎县', '', '', '', '130322', '066600', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130323', '130300', '156-130000-130300-130323-', '0', '抚宁县', '抚宁县', '', '', '', '130323', '066300', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130324', '130300', '156-130000-130300-130324-', '0', '卢龙县', '卢龙县', '', '', '', '130324', '066400', '0335', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130400', '130000', '156-130000-130400-', '0', '邯郸', '邯郸市', '', '', '', '130400', '056000', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130401', '130400', '156-130000-130400-130401-', '0', '市辖区', '市辖区', '', '', '', '130401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130402', '130400', '156-130000-130400-130402-', '0', '邯山区', '邯山区', '', '', '', '130402', '056000', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130403', '130400', '156-130000-130400-130403-', '0', '丛台区', '丛台区', '', '', '', '130403', '056000', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130404', '130400', '156-130000-130400-130404-', '0', '复兴区', '复兴区', '', '', '', '130404', '056000', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130406', '130400', '156-130000-130400-130406-', '0', '峰峰矿区', '峰峰矿区', '', '', '', '130406', '056200', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130421', '130400', '156-130000-130400-130421-', '0', '邯郸县', '邯郸县', '', '', '', '130421', '056000', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130423', '130400', '156-130000-130400-130423-', '0', '临漳县', '临漳县', '', '', '', '130423', '056600', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130424', '130400', '156-130000-130400-130424-', '0', '成安县', '成安县', '', '', '', '130424', '056700', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130425', '130400', '156-130000-130400-130425-', '0', '大名县', '大名县', '', '', '', '130425', '056900', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130426', '130400', '156-130000-130400-130426-', '0', '涉县', '涉县', '', '', '', '130426', '056400', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130427', '130400', '156-130000-130400-130427-', '0', '磁县', '磁县', '', '', '', '130427', '056500', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130428', '130400', '156-130000-130400-130428-', '0', '肥乡县', '肥乡县', '', '', '', '130428', '057550', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130429', '130400', '156-130000-130400-130429-', '0', '永年县', '永年县', '', '', '', '130429', '057150', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130430', '130400', '156-130000-130400-130430-', '0', '邱县', '邱县', '', '', '', '130430', '057450', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130431', '130400', '156-130000-130400-130431-', '0', '鸡泽县', '鸡泽县', '', '', '', '130431', '057350', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130432', '130400', '156-130000-130400-130432-', '0', '广平县', '广平县', '', '', '', '130432', '057650', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130433', '130400', '156-130000-130400-130433-', '0', '馆陶县', '馆陶县', '', '', '', '130433', '057750', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130434', '130400', '156-130000-130400-130434-', '0', '魏县', '魏县', '', '', '', '130434', '056800', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130435', '130400', '156-130000-130400-130435-', '0', '曲周县', '曲周县', '', '', '', '130435', '057250', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130481', '130400', '156-130000-130400-130481-', '0', '武安市', '武安市', '', '', '', '130481', '056300', '0310', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130500', '130000', '156-130000-130500-', '0', '邢台', '邢台市', '', '', '', '130500', '054000', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130501', '130500', '156-130000-130500-130501-', '0', '市辖区', '市辖区', '', '', '', '130501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130502', '130500', '156-130000-130500-130502-', '0', '桥东区', '桥东区', '', '', '', '130502', '054000', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130503', '130500', '156-130000-130500-130503-', '0', '桥西区', '桥西区', '', '', '', '130503', '054000', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130521', '130500', '156-130000-130500-130521-', '0', '邢台县', '邢台县', '', '', '', '130521', '054000', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130522', '130500', '156-130000-130500-130522-', '0', '临城县', '临城县', '', '', '', '130522', '054300', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130523', '130500', '156-130000-130500-130523-', '0', '内丘县', '内丘县', '', '', '', '130523', '054200', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130524', '130500', '156-130000-130500-130524-', '0', '柏乡县', '柏乡县', '', '', '', '130524', '055450', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130525', '130500', '156-130000-130500-130525-', '0', '隆尧县', '隆尧县', '', '', '', '130525', '055350', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130526', '130500', '156-130000-130500-130526-', '0', '任县', '任县', '', '', '', '130526', '055150', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130527', '130500', '156-130000-130500-130527-', '0', '南和县', '南和县', '', '', '', '130527', '054400', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130528', '130500', '156-130000-130500-130528-', '0', '宁晋县', '宁晋县', '', '', '', '130528', '055550', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130529', '130500', '156-130000-130500-130529-', '0', '巨鹿县', '巨鹿县', '', '', '', '130529', '055250', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130530', '130500', '156-130000-130500-130530-', '0', '新河县', '新河县', '', '', '', '130530', '051730', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130531', '130500', '156-130000-130500-130531-', '0', '广宗县', '广宗县', '', '', '', '130531', '054600', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130532', '130500', '156-130000-130500-130532-', '0', '平乡县', '平乡县', '', '', '', '130532', '054500', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130533', '130500', '156-130000-130500-130533-', '0', '威县', '威县', '', '', '', '130533', '054700', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130534', '130500', '156-130000-130500-130534-', '0', '清河县', '清河县', '', '', '', '130534', '054800', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130535', '130500', '156-130000-130500-130535-', '0', '临西县', '临西县', '', '', '', '130535', '054900', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130581', '130500', '156-130000-130500-130581-', '0', '南宫市', '南宫市', '', '', '', '130581', '051800', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130582', '130500', '156-130000-130500-130582-', '0', '沙河市', '沙河市', '', '', '', '130582', '054100', '0319', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130600', '130000', '156-130000-130600-', '0', '保定', '保定市', '', '', '', '130600', '071000', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130601', '130600', '156-130000-130600-130601-', '0', '市辖区', '市辖区', '', '', '', '130601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130602', '130600', '156-130000-130600-130602-', '0', '新市区', '新市区', '', '', '', '130602', '071000', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130603', '130600', '156-130000-130600-130603-', '0', '北市区', '北市区', '', '', '', '130603', '071000', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130604', '130600', '156-130000-130600-130604-', '0', '南市区', '南市区', '', '', '', '130604', '071000', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130621', '130600', '156-130000-130600-130621-', '0', '满城县', '满城县', '', '', '', '130621', '072150', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130622', '130600', '156-130000-130600-130622-', '0', '清苑县', '清苑县', '', '', '', '130622', '071100', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130623', '130600', '156-130000-130600-130623-', '0', '涞水县', '涞水县', '', '', '', '130623', '074100', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130624', '130600', '156-130000-130600-130624-', '0', '阜平县', '阜平县', '', '', '', '130624', '073200', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130625', '130600', '156-130000-130600-130625-', '0', '徐水县', '徐水县', '', '', '', '130625', '072550', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130626', '130600', '156-130000-130600-130626-', '0', '定兴县', '定兴县', '', '', '', '130626', '072650', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130627', '130600', '156-130000-130600-130627-', '0', '唐县', '唐县', '', '', '', '130627', '072350', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130628', '130600', '156-130000-130600-130628-', '0', '高阳县', '高阳县', '', '', '', '130628', '071500', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130629', '130600', '156-130000-130600-130629-', '0', '容城县', '容城县', '', '', '', '130629', '071700', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130630', '130600', '156-130000-130600-130630-', '0', '涞源县', '涞源县', '', '', '', '130630', '074300', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130631', '130600', '156-130000-130600-130631-', '0', '望都县', '望都县', '', '', '', '130631', '072450', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130632', '130600', '156-130000-130600-130632-', '0', '安新县', '安新县', '', '', '', '130632', '071600', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130633', '130600', '156-130000-130600-130633-', '0', '易县', '易县', '', '', '', '130633', '074200', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130634', '130600', '156-130000-130600-130634-', '0', '曲阳县', '曲阳县', '', '', '', '130634', '073100', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130635', '130600', '156-130000-130600-130635-', '0', '蠡县', '蠡县', '', '', '', '130635', '071400', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130636', '130600', '156-130000-130600-130636-', '0', '顺平县', '顺平县', '', '', '', '130636', '072250', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130637', '130600', '156-130000-130600-130637-', '0', '博野县', '博野县', '', '', '', '130637', '071300', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130638', '130600', '156-130000-130600-130638-', '0', '雄县', '雄县', '', '', '', '130638', '071800', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130681', '130600', '156-130000-130600-130681-', '0', '涿州市', '涿州市', '', '', '', '130681', '072750', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130682', '130600', '156-130000-130600-130682-', '0', '定州市', '定州市', '', '', '', '130682', '073000', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130683', '130600', '156-130000-130600-130683-', '0', '安国市', '安国市', '', '', '', '130683', '071200', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130684', '130600', '156-130000-130600-130684-', '0', '高碑店市', '高碑店市', '', '', '', '130684', '074000', '0312', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130700', '130000', '156-130000-130700-', '0', '张家口', '张家口市', '', '', '', '130700', '075000', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130701', '130700', '156-130000-130700-130701-', '0', '市辖区', '市辖区', '', '', '', '130701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130702', '130700', '156-130000-130700-130702-', '0', '桥东区', '桥东区', '', '', '', '130702', '075000', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130703', '130700', '156-130000-130700-130703-', '0', '桥西区', '桥西区', '', '', '', '130703', '075000', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130705', '130700', '156-130000-130700-130705-', '0', '宣化区', '宣化区', '', '', '', '130705', '075000', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130706', '130700', '156-130000-130700-130706-', '0', '下花园区', '下花园区', '', '', '', '130706', '075300', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130721', '130700', '156-130000-130700-130721-', '0', '宣化县', '宣化县', '', '', '', '130721', '075100', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130722', '130700', '156-130000-130700-130722-', '0', '张北县', '张北县', '', '', '', '130722', '076450', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130723', '130700', '156-130000-130700-130723-', '0', '康保县', '康保县', '', '', '', '130723', '076650', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130724', '130700', '156-130000-130700-130724-', '0', '沽源县', '沽源县', '', '', '', '130724', '076550', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130725', '130700', '156-130000-130700-130725-', '0', '尚义县', '尚义县', '', '', '', '130725', '076750', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130726', '130700', '156-130000-130700-130726-', '0', '蔚县', '蔚县', '', '', '', '130726', '075700', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130727', '130700', '156-130000-130700-130727-', '0', '阳原县', '阳原县', '', '', '', '130727', '075800', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130728', '130700', '156-130000-130700-130728-', '0', '怀安县', '怀安县', '', '', '', '130728', '076150', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130729', '130700', '156-130000-130700-130729-', '0', '万全县', '万全县', '', '', '', '130729', '076250', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130730', '130700', '156-130000-130700-130730-', '0', '怀来县', '怀来县', '', '', '', '130730', '075400', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130731', '130700', '156-130000-130700-130731-', '0', '涿鹿县', '涿鹿县', '', '', '', '130731', '075600', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130732', '130700', '156-130000-130700-130732-', '0', '赤城县', '赤城县', '', '', '', '130732', '075500', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130733', '130700', '156-130000-130700-130733-', '0', '崇礼县', '崇礼县', '', '', '', '130733', '076350', '0313', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130800', '130000', '156-130000-130800-', '0', '承德', '承德市', '', '', '', '130800', '067000', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130801', '130800', '156-130000-130800-130801-', '0', '市辖区', '市辖区', '', '', '', '130801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130802', '130800', '156-130000-130800-130802-', '0', '双桥区', '双桥区', '', '', '', '130802', '067000', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130803', '130800', '156-130000-130800-130803-', '0', '双滦区', '双滦区', '', '', '', '130803', '067000', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130804', '130800', '156-130000-130800-130804-', '0', '鹰手营子矿区', '鹰手营子矿区', '', '', '', '130804', '067200', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130821', '130800', '156-130000-130800-130821-', '0', '承德县', '承德县', '', '', '', '130821', '067400', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130822', '130800', '156-130000-130800-130822-', '0', '兴隆县', '兴隆县', '', '', '', '130822', '067300', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130823', '130800', '156-130000-130800-130823-', '0', '平泉县', '平泉县', '', '', '', '130823', '067500', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130824', '130800', '156-130000-130800-130824-', '0', '滦平县', '滦平县', '', '', '', '130824', '068250', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130825', '130800', '156-130000-130800-130825-', '0', '隆化县', '隆化县', '', '', '', '130825', '068150', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130826', '130800', '156-130000-130800-130826-', '0', '丰宁满族自治县', '丰宁满族自治县', '', '', '', '130826', '068350', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130827', '130800', '156-130000-130800-130827-', '0', '宽城满族自治县', '宽城满族自治县', '', '', '', '130827', '067600', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130828', '130800', '156-130000-130800-130828-', '0', '围场满族蒙古族自治县', '围场满族蒙古族自治县', '', '', '', '130828', '068450', '0314', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130900', '130000', '156-130000-130900-', '0', '沧州', '沧州市', '', '', '', '130900', '061000', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130901', '130900', '156-130000-130900-130901-', '0', '市辖区', '市辖区', '', '', '', '130901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130902', '130900', '156-130000-130900-130902-', '0', '新华区', '新华区', '', '', '', '130902', '061000', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130903', '130900', '156-130000-130900-130903-', '0', '运河区', '运河区', '', '', '', '130903', '061000', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130921', '130900', '156-130000-130900-130921-', '0', '沧县', '沧县', '', '', '', '130921', '061000', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130922', '130900', '156-130000-130900-130922-', '0', '青县', '青县', '', '', '', '130922', '062650', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130923', '130900', '156-130000-130900-130923-', '0', '东光县', '东光县', '', '', '', '130923', '061600', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130924', '130900', '156-130000-130900-130924-', '0', '海兴县', '海兴县', '', '', '', '130924', '061200', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130925', '130900', '156-130000-130900-130925-', '0', '盐山县', '盐山县', '', '', '', '130925', '061300', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130926', '130900', '156-130000-130900-130926-', '0', '肃宁县', '肃宁县', '', '', '', '130926', '062350', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130927', '130900', '156-130000-130900-130927-', '0', '南皮县', '南皮县', '', '', '', '130927', '061500', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130928', '130900', '156-130000-130900-130928-', '0', '吴桥县', '吴桥县', '', '', '', '130928', '061800', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130929', '130900', '156-130000-130900-130929-', '0', '献县', '献县', '', '', '', '130929', '062250', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130930', '130900', '156-130000-130900-130930-', '0', '孟村回族自治县', '孟村回族自治县', '', '', '', '130930', '061400', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130981', '130900', '156-130000-130900-130981-', '0', '泊头市', '泊头市', '', '', '', '130981', '062150', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130982', '130900', '156-130000-130900-130982-', '0', '任丘市', '任丘市', '', '', '', '130982', '062550', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130983', '130900', '156-130000-130900-130983-', '0', '黄骅市', '黄骅市', '', '', '', '130983', '061100', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('130984', '130900', '156-130000-130900-130984-', '0', '河间市', '河间市', '', '', '', '130984', '062450', '0317', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131000', '130000', '156-130000-131000-', '0', '廊坊', '廊坊市', '', '', '', '131000', '065000', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131001', '131000', '156-130000-131000-131001-', '0', '市辖区', '市辖区', '', '', '', '131001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131002', '131000', '156-130000-131000-131002-', '0', '安次区', '安次区', '', '', '', '131002', '065000', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131003', '131000', '156-130000-131000-131003-', '0', '广阳区', '广阳区', '', '', '', '131003', '065000', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131022', '131000', '156-130000-131000-131022-', '0', '固安县', '固安县', '', '', '', '131022', '065500', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131023', '131000', '156-130000-131000-131023-', '0', '永清县', '永清县', '', '', '', '131023', '065600', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131024', '131000', '156-130000-131000-131024-', '0', '香河县', '香河县', '', '', '', '131024', '065400', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131025', '131000', '156-130000-131000-131025-', '0', '大城县', '大城县', '', '', '', '131025', '065900', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131026', '131000', '156-130000-131000-131026-', '0', '文安县', '文安县', '', '', '', '131026', '065800', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131028', '131000', '156-130000-131000-131028-', '0', '大厂回族自治县', '大厂回族自治县', '', '', '', '131028', '065300', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131081', '131000', '156-130000-131000-131081-', '0', '霸州市', '霸州市', '', '', '', '131081', '065700', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131082', '131000', '156-130000-131000-131082-', '0', '三河市', '三河市', '', '', '', '131082', '065200', '0316', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131100', '130000', '156-130000-131100-', '0', '衡水', '衡水市', '', '', '', '131100', '053000', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131101', '131100', '156-130000-131100-131101-', '0', '市辖区', '市辖区', '', '', '', '131101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131102', '131100', '156-130000-131100-131102-', '0', '桃城区', '桃城区', '', '', '', '131102', '053000', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131121', '131100', '156-130000-131100-131121-', '0', '枣强县', '枣强县', '', '', '', '131121', '053100', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131122', '131100', '156-130000-131100-131122-', '0', '武邑县', '武邑县', '', '', '', '131122', '053400', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131123', '131100', '156-130000-131100-131123-', '0', '武强县', '武强县', '', '', '', '131123', '053300', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131124', '131100', '156-130000-131100-131124-', '0', '饶阳县', '饶阳县', '', '', '', '131124', '053900', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131125', '131100', '156-130000-131100-131125-', '0', '安平县', '安平县', '', '', '', '131125', '053600', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131126', '131100', '156-130000-131100-131126-', '0', '故城县', '故城县', '', '', '', '131126', '253800', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131127', '131100', '156-130000-131100-131127-', '0', '景县', '景县', '', '', '', '131127', '053500', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131128', '131100', '156-130000-131100-131128-', '0', '阜城县', '阜城县', '', '', '', '131128', '053700', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131181', '131100', '156-130000-131100-131181-', '0', '冀州市', '冀州市', '', '', '', '131181', '053200', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('131182', '131100', '156-130000-131100-131182-', '0', '深州市', '深州市', '', '', '', '131182', '052800', '0318', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140000', '156', '156-140000-', '0', '山西', '山西省', 'ShanXi', 'ShanXi', 'SX', '140000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140100', '140000', '156-140000-140100-', '0', '太原', '太原市', '', '', '', '140100', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140101', '140100', '156-140000-140100-140101-', '0', '市辖区', '市辖区', '', '', '', '140101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140105', '140100', '156-140000-140100-140105-', '0', '小店区', '小店区', '', '', '', '140105', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140106', '140100', '156-140000-140100-140106-', '0', '迎泽区', '迎泽区', '', '', '', '140106', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140107', '140100', '156-140000-140100-140107-', '0', '杏花岭区', '杏花岭区', '', '', '', '140107', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140108', '140100', '156-140000-140100-140108-', '0', '尖草坪区', '尖草坪区', '', '', '', '140108', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140109', '140100', '156-140000-140100-140109-', '0', '万柏林区', '万柏林区', '', '', '', '140109', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140110', '140100', '156-140000-140100-140110-', '0', '晋源区', '晋源区', '', '', '', '140110', '030000', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140121', '140100', '156-140000-140100-140121-', '0', '清徐县', '清徐县', '', '', '', '140121', '030400', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140122', '140100', '156-140000-140100-140122-', '0', '阳曲县', '阳曲县', '', '', '', '140122', '030100', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140123', '140100', '156-140000-140100-140123-', '0', '娄烦县', '娄烦县', '', '', '', '140123', '030300', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140181', '140100', '156-140000-140100-140181-', '0', '古交市', '古交市', '', '', '', '140181', '030200', '0351', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140200', '140000', '156-140000-140200-', '0', '大同', '大同市', '', '', '', '140200', '037000', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140201', '140200', '156-140000-140200-140201-', '0', '市辖区', '市辖区', '', '', '', '140201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140202', '140200', '156-140000-140200-140202-', '0', '城区', '城区', '', '', '', '140202', '037000', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140203', '140200', '156-140000-140200-140203-', '0', '矿区', '矿区', '', '', '', '140203', '037000', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140211', '140200', '156-140000-140200-140211-', '0', '南郊区', '南郊区', '', '', '', '140211', '037000', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140212', '140200', '156-140000-140200-140212-', '0', '新荣区', '新荣区', '', '', '', '140212', '037000', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140221', '140200', '156-140000-140200-140221-', '0', '阳高县', '阳高县', '', '', '', '140221', '038100', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140222', '140200', '156-140000-140200-140222-', '0', '天镇县', '天镇县', '', '', '', '140222', '038200', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140223', '140200', '156-140000-140200-140223-', '0', '广灵县', '广灵县', '', '', '', '140223', '037500', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140224', '140200', '156-140000-140200-140224-', '0', '灵丘县', '灵丘县', '', '', '', '140224', '034400', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140225', '140200', '156-140000-140200-140225-', '0', '浑源县', '浑源县', '', '', '', '140225', '037400', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140226', '140200', '156-140000-140200-140226-', '0', '左云县', '左云县', '', '', '', '140226', '037100', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140227', '140200', '156-140000-140200-140227-', '0', '大同县', '大同县', '', '', '', '140227', '037300', '0352', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140300', '140000', '156-140000-140300-', '0', '阳泉', '阳泉市', '', '', '', '140300', '045000', '0353', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140301', '140300', '156-140000-140300-140301-', '0', '市辖区', '市辖区', '', '', '', '140301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140302', '140300', '156-140000-140300-140302-', '0', '城区', '城区', '', '', '', '140302', '045000', '0353', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140303', '140300', '156-140000-140300-140303-', '0', '矿区', '矿区', '', '', '', '140303', '045000', '0353', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140311', '140300', '156-140000-140300-140311-', '0', '郊区', '郊区', '', '', '', '140311', '045000', '0353', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140321', '140300', '156-140000-140300-140321-', '0', '平定县', '平定县', '', '', '', '140321', '045200', '0353', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140322', '140300', '156-140000-140300-140322-', '0', '盂县', '盂县', '', '', '', '140322', '045100', '0353', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140400', '140000', '156-140000-140400-', '0', '长治', '长治市', '', '', '', '140400', '046000', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140401', '140400', '156-140000-140400-140401-', '0', '市辖区', '市辖区', '', '', '', '140401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140402', '140400', '156-140000-140400-140402-', '0', '城区', '城区', '', '', '', '140402', '046000', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140411', '140400', '156-140000-140400-140411-', '0', '郊区', '郊区', '', '', '', '140411', '046000', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140421', '140400', '156-140000-140400-140421-', '0', '长治县', '长治县', '', '', '', '140421', '047100', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140423', '140400', '156-140000-140400-140423-', '0', '襄垣县', '襄垣县', '', '', '', '140423', '046200', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140424', '140400', '156-140000-140400-140424-', '0', '屯留县', '屯留县', '', '', '', '140424', '046100', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140425', '140400', '156-140000-140400-140425-', '0', '平顺县', '平顺县', '', '', '', '140425', '047400', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140426', '140400', '156-140000-140400-140426-', '0', '黎城县', '黎城县', '', '', '', '140426', '047600', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140427', '140400', '156-140000-140400-140427-', '0', '壶关县', '壶关县', '', '', '', '140427', '047300', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140428', '140400', '156-140000-140400-140428-', '0', '长子县', '长子县', '', '', '', '140428', '046600', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140429', '140400', '156-140000-140400-140429-', '0', '武乡县', '武乡县', '', '', '', '140429', '046300', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140430', '140400', '156-140000-140400-140430-', '0', '沁县', '沁县', '', '', '', '140430', '046400', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140431', '140400', '156-140000-140400-140431-', '0', '沁源县', '沁源县', '', '', '', '140431', '046500', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140481', '140400', '156-140000-140400-140481-', '0', '潞城市', '潞城市', '', '', '', '140481', '047500', '0355', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140500', '140000', '156-140000-140500-', '0', '晋城', '晋城市', '', '', '', '140500', '048000', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140501', '140500', '156-140000-140500-140501-', '0', '市辖区', '晋城市市辖区', '', '', '', '140501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140502', '140500', '156-140000-140500-140502-', '0', '城区', '城区', '', '', '', '140502', '048000', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140521', '140500', '156-140000-140500-140521-', '0', '沁水县', '沁水县', '', '', '', '140521', '048200', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140522', '140500', '156-140000-140500-140522-', '0', '阳城县', '阳城县', '', '', '', '140522', '048100', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140524', '140500', '156-140000-140500-140524-', '0', '陵川县', '陵川县', '', '', '', '140524', '048300', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140525', '140500', '156-140000-140500-140525-', '0', '泽州县', '泽州县', '', '', '', '140525', '048000', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140581', '140500', '156-140000-140500-140581-', '0', '高平市', '高平市', '', '', '', '140581', '046700', '0356', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140600', '140000', '156-140000-140600-', '0', '朔州', '朔州市', '', '', '', '140600', '036000', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140601', '140600', '156-140000-140600-140601-', '0', '市辖区', '市辖区', '', '', '', '140601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140602', '140600', '156-140000-140600-140602-', '0', '朔城区', '朔城区', '', '', '', '140602', '036002', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140603', '140600', '156-140000-140600-140603-', '0', '平鲁区', '平鲁区', '', '', '', '140603', '036800', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140621', '140600', '156-140000-140600-140621-', '0', '山阴县', '山阴县', '', '', '', '140621', '036900', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140622', '140600', '156-140000-140600-140622-', '0', '应县', '应县', '', '', '', '140622', '037600', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140623', '140600', '156-140000-140600-140623-', '0', '右玉县', '右玉县', '', '', '', '140623', '037200', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140624', '140600', '156-140000-140600-140624-', '0', '怀仁县', '怀仁县', '', '', '', '140624', '038300', '0349', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140700', '140000', '156-140000-140700-', '0', '晋中', '晋中市', '', '', '', '140700', '030600', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140701', '140700', '156-140000-140700-140701-', '0', '市辖区', '市辖区', '', '', '', '140701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140702', '140700', '156-140000-140700-140702-', '0', '榆次区', '榆次区', '', '', '', '140702', '030600', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140721', '140700', '156-140000-140700-140721-', '0', '榆社县', '榆社县', '', '', '', '140721', '031800', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140722', '140700', '156-140000-140700-140722-', '0', '左权县', '左权县', '', '', '', '140722', '032600', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140723', '140700', '156-140000-140700-140723-', '0', '和顺县', '和顺县', '', '', '', '140723', '032700', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140724', '140700', '156-140000-140700-140724-', '0', '昔阳县', '昔阳县', '', '', '', '140724', '045300', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140725', '140700', '156-140000-140700-140725-', '0', '寿阳县', '寿阳县', '', '', '', '140725', '045400', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140726', '140700', '156-140000-140700-140726-', '0', '太谷县', '太谷县', '', '', '', '140726', '030800', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140727', '140700', '156-140000-140700-140727-', '0', '祁县', '祁县', '', '', '', '140727', '030900', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140728', '140700', '156-140000-140700-140728-', '0', '平遥县', '平遥县', '', '', '', '140728', '031100', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140729', '140700', '156-140000-140700-140729-', '0', '灵石县', '灵石县', '', '', '', '140729', '031300', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140781', '140700', '156-140000-140700-140781-', '0', '介休市', '介休市', '', '', '', '140781', '032000', '0354', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140800', '140000', '156-140000-140800-', '0', '运城', '运城市', '', '', '', '140800', '044000', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140801', '140800', '156-140000-140800-140801-', '0', '市辖区', '市辖区', '', '', '', '140801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140802', '140800', '156-140000-140800-140802-', '0', '盐湖区', '盐湖区', '', '', '', '140802', '044000', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140821', '140800', '156-140000-140800-140821-', '0', '临猗县', '临猗县', '', '', '', '140821', '044100', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140822', '140800', '156-140000-140800-140822-', '0', '万荣县', '万荣县', '', '', '', '140822', '044200', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140823', '140800', '156-140000-140800-140823-', '0', '闻喜县', '闻喜县', '', '', '', '140823', '043800', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140824', '140800', '156-140000-140800-140824-', '0', '稷山县', '稷山县', '', '', '', '140824', '043200', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140825', '140800', '156-140000-140800-140825-', '0', '新绛县', '新绛县', '', '', '', '140825', '043100', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140826', '140800', '156-140000-140800-140826-', '0', '绛县', '绛县', '', '', '', '140826', '043600', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140827', '140800', '156-140000-140800-140827-', '0', '垣曲县', '垣曲县', '', '', '', '140827', '043700', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140828', '140800', '156-140000-140800-140828-', '0', '夏县', '夏县', '', '', '', '140828', '044400', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140829', '140800', '156-140000-140800-140829-', '0', '平陆县', '平陆县', '', '', '', '140829', '044300', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140830', '140800', '156-140000-140800-140830-', '0', '芮城县', '芮城县', '', '', '', '140830', '044600', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140881', '140800', '156-140000-140800-140881-', '0', '永济市', '永济市', '', '', '', '140881', '044500', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140882', '140800', '156-140000-140800-140882-', '0', '河津市', '河津市', '', '', '', '140882', '043300', '0359', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140900', '140000', '156-140000-140900-', '0', '忻州', '忻州市', '', '', '', '140900', '034000', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140901', '140900', '156-140000-140900-140901-', '0', '市辖区', '市辖区', '', '', '', '140901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140902', '140900', '156-140000-140900-140902-', '0', '忻府区', '忻府区', '', '', '', '140902', '034000', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140921', '140900', '156-140000-140900-140921-', '0', '定襄县', '定襄县', '', '', '', '140921', '035400', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140922', '140900', '156-140000-140900-140922-', '0', '五台县', '五台县', '', '', '', '140922', '035500', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140923', '140900', '156-140000-140900-140923-', '0', '代县', '代县', '', '', '', '140923', '034200', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140924', '140900', '156-140000-140900-140924-', '0', '繁峙县', '繁峙县', '', '', '', '140924', '034300', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140925', '140900', '156-140000-140900-140925-', '0', '宁武县', '宁武县', '', '', '', '140925', '036000', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140926', '140900', '156-140000-140900-140926-', '0', '静乐县', '静乐县', '', '', '', '140926', '035100', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140927', '140900', '156-140000-140900-140927-', '0', '神池县', '神池县', '', '', '', '140927', '036100', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140928', '140900', '156-140000-140900-140928-', '0', '五寨县', '五寨县', '', '', '', '140928', '036200', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140929', '140900', '156-140000-140900-140929-', '0', '岢岚县', '岢岚县', '', '', '', '140929', '036300', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140930', '140900', '156-140000-140900-140930-', '0', '河曲县', '河曲县', '', '', '', '140930', '036500', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140931', '140900', '156-140000-140900-140931-', '0', '保德县', '保德县', '', '', '', '140931', '036600', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140932', '140900', '156-140000-140900-140932-', '0', '偏关县', '偏关县', '', '', '', '140932', '036400', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('140981', '140900', '156-140000-140900-140981-', '0', '原平市', '原平市', '', '', '', '140981', '034100', '0350', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141000', '140000', '156-140000-141000-', '0', '临汾', '临汾市', '', '', '', '141000', '041000', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141001', '141000', '156-140000-141000-141001-', '0', '市辖区', '市辖区', '', '', '', '141001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141002', '141000', '156-140000-141000-141002-', '0', '尧都区', '尧都区', '', '', '', '141002', '041000', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141021', '141000', '156-140000-141000-141021-', '0', '曲沃县', '曲沃县', '', '', '', '141021', '043400', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141022', '141000', '156-140000-141000-141022-', '0', '翼城县', '翼城县', '', '', '', '141022', '043500', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141023', '141000', '156-140000-141000-141023-', '0', '襄汾县', '襄汾县', '', '', '', '141023', '041500', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141024', '141000', '156-140000-141000-141024-', '0', '洪洞县', '洪洞县', '', '', '', '141024', '041600', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141025', '141000', '156-140000-141000-141025-', '0', '古县', '古县', '', '', '', '141025', '042400', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141026', '141000', '156-140000-141000-141026-', '0', '安泽县', '安泽县', '', '', '', '141026', '042500', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141027', '141000', '156-140000-141000-141027-', '0', '浮山县', '浮山县', '', '', '', '141027', '042600', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141028', '141000', '156-140000-141000-141028-', '0', '吉县', '吉县', '', '', '', '141028', '042200', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141029', '141000', '156-140000-141000-141029-', '0', '乡宁县', '乡宁县', '', '', '', '141029', '042100', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141030', '141000', '156-140000-141000-141030-', '0', '大宁县', '大宁县', '', '', '', '141030', '042300', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141031', '141000', '156-140000-141000-141031-', '0', '隰县', '隰县', '', '', '', '141031', '041300', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141032', '141000', '156-140000-141000-141032-', '0', '永和县', '永和县', '', '', '', '141032', '041400', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141033', '141000', '156-140000-141000-141033-', '0', '蒲县', '蒲县', '', '', '', '141033', '041200', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141034', '141000', '156-140000-141000-141034-', '0', '汾西县', '汾西县', '', '', '', '141034', '031500', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141081', '141000', '156-140000-141000-141081-', '0', '侯马市', '侯马市', '', '', '', '141081', '043000', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141082', '141000', '156-140000-141000-141082-', '0', '霍州市', '霍州市', '', '', '', '141082', '031400', '0357', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141100', '140000', '156-140000-141100-', '0', '吕梁', '吕梁市', '', '', '', '141100', '033000', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141101', '141100', '156-140000-141100-141101-', '0', '市辖区', '市辖区', '', '', '', '141101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141102', '141100', '156-140000-141100-141102-', '0', '离石区', '离石区', '', '', '', '141102', '033000', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141121', '141100', '156-140000-141100-141121-', '0', '文水县', '文水县', '', '', '', '141121', '032100', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141122', '141100', '156-140000-141100-141122-', '0', '交城县', '交城县', '', '', '', '141122', '030500', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141123', '141100', '156-140000-141100-141123-', '0', '兴县', '兴县', '', '', '', '141123', '035300', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141124', '141100', '156-140000-141100-141124-', '0', '临县', '临县', '', '', '', '141124', '033200', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141125', '141100', '156-140000-141100-141125-', '0', '柳林县', '柳林县', '', '', '', '141125', '033300', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141126', '141100', '156-140000-141100-141126-', '0', '石楼县', '石楼县', '', '', '', '141126', '032500', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141127', '141100', '156-140000-141100-141127-', '0', '岚县', '岚县', '', '', '', '141127', '035200', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141128', '141100', '156-140000-141100-141128-', '0', '方山县', '方山县', '', '', '', '141128', '033100', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141129', '141100', '156-140000-141100-141129-', '0', '中阳县', '中阳县', '', '', '', '141129', '033400', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141130', '141100', '156-140000-141100-141130-', '0', '交口县', '交口县', '', '', '', '141130', '032400', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141181', '141100', '156-140000-141100-141181-', '0', '孝义市', '孝义市', '', '', '', '141181', '032300', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('141182', '141100', '156-140000-141100-141182-', '0', '汾阳市', '汾阳市', '', '', '', '141182', '032200', '0358', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150000', '156', '156-150000-', '0', '内蒙古', '内蒙古自治区', 'InnerMongolia', 'InnerMongolia', 'NM', '150000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150100', '150000', '156-150000-150100-', '0', '呼和浩特', '呼和浩特市', '', '', '', '150100', '010000', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150101', '150100', '156-150000-150100-150101-', '0', '市辖区', '市辖区', '', '', '', '150101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150102', '150100', '156-150000-150100-150102-', '0', '新城区', '新城区', '', '', '', '150102', '010000', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150103', '150100', '156-150000-150100-150103-', '0', '回民区', '回民区', '', '', '', '150103', '010000', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150104', '150100', '156-150000-150100-150104-', '0', '玉泉区', '玉泉区', '', '', '', '150104', '010000', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150105', '150100', '156-150000-150100-150105-', '0', '赛罕区', '赛罕区', '', '', '', '150105', '0', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150121', '150100', '156-150000-150100-150121-', '0', '土默特左旗', '土默特左旗', '', '', '', '150121', '010100', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150122', '150100', '156-150000-150100-150122-', '0', '托克托县', '托克托县', '', '', '', '150122', '010200', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150123', '150100', '156-150000-150100-150123-', '0', '和林格尔县', '和林格尔县', '', '', '', '150123', '011500', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150124', '150100', '156-150000-150100-150124-', '0', '清水河县', '清水河县', '', '', '', '150124', '011600', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150125', '150100', '156-150000-150100-150125-', '0', '武川县', '武川县', '', '', '', '150125', '011700', '0471', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150200', '150000', '156-150000-150200-', '0', '包头', '包头市', '', '', '', '150200', '014000', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150201', '150200', '156-150000-150200-150201-', '0', '市辖区', '市辖区', '', '', '', '150201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150202', '150200', '156-150000-150200-150202-', '0', '东河区', '东河区', '', '', '', '150202', '014040', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150203', '150200', '156-150000-150200-150203-', '0', '昆都仑区', '昆都仑区', '', '', '', '150203', '014010', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150204', '150200', '156-150000-150200-150204-', '0', '青山区', '青山区', '', '', '', '150204', '014000', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150205', '150200', '156-150000-150200-150205-', '0', '石拐区', '石拐区', '', '', '', '150205', '014070', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150206', '150200', '156-150000-150200-150206-', '0', '白云矿区', '白云鄂博矿区', '', '', '', '150206', '014000', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150207', '150200', '156-150000-150200-150207-', '0', '九原区', '九原区', '', '', '', '150207', '014000', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150221', '150200', '156-150000-150200-150221-', '0', '土默特右旗', '土默特右旗', '', '', '', '150221', '014100', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150222', '150200', '156-150000-150200-150222-', '0', '固阳县', '固阳县', '', '', '', '150222', '014200', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150223', '150200', '156-150000-150200-150223-', '0', '达尔罕茂明安联合旗', '达尔罕茂明安联合旗', '', '', '', '150223', '014500', '0472', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150300', '150000', '156-150000-150300-', '0', '乌海', '乌海市', '', '', '', '150300', '016000', '0473', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150301', '150300', '156-150000-150300-150301-', '0', '市辖区', '市辖区', '', '', '', '150301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150302', '150300', '156-150000-150300-150302-', '0', '海勃湾区', '海勃湾区', '', '', '', '150302', '016000', '0473', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150303', '150300', '156-150000-150300-150303-', '0', '海南区', '海南区', '', '', '', '150303', '016000', '0473', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150304', '150300', '156-150000-150300-150304-', '0', '乌达区', '乌达区', '', '', '', '150304', '016000', '0473', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150400', '150000', '156-150000-150400-', '0', '赤峰', '赤峰市', '', '', '', '150400', '024000', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150401', '150400', '156-150000-150400-150401-', '0', '市辖区', '市辖区', '', '', '', '150401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150402', '150400', '156-150000-150400-150402-', '0', '红山区', '红山区', '', '', '', '150402', '024000', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150403', '150400', '156-150000-150400-150403-', '0', '元宝山区', '元宝山区', '', '', '', '150403', '024000', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150404', '150400', '156-150000-150400-150404-', '0', '松山区', '松山区', '', '', '', '150404', '024000', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150421', '150400', '156-150000-150400-150421-', '0', '阿鲁科尔沁旗', '阿鲁科尔沁旗', '', '', '', '150421', '025500', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150422', '150400', '156-150000-150400-150422-', '0', '巴林左旗', '巴林左旗', '', '', '', '150422', '025450', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150423', '150400', '156-150000-150400-150423-', '0', '巴林右旗', '巴林右旗', '', '', '', '150423', '025150', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150424', '150400', '156-150000-150400-150424-', '0', '林西县', '林西县', '', '', '', '150424', '025250', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150425', '150400', '156-150000-150400-150425-', '0', '克什克腾旗', '克什克腾旗', '', '', '', '150425', '025350', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150426', '150400', '156-150000-150400-150426-', '0', '翁牛特旗', '翁牛特旗', '', '', '', '150426', '024500', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150428', '150400', '156-150000-150400-150428-', '0', '喀喇沁旗', '喀喇沁旗', '', '', '', '150428', '024400', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150429', '150400', '156-150000-150400-150429-', '0', '宁城县', '宁城县', '', '', '', '150429', '024200', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150430', '150400', '156-150000-150400-150430-', '0', '敖汉旗', '敖汉旗', '', '', '', '150430', '024300', '0476', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150500', '150000', '156-150000-150500-', '0', '通辽', '通辽市', '', '', '', '150500', '028000', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150501', '150500', '156-150000-150500-150501-', '0', '市辖区', '市辖区', '', '', '', '150501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150502', '150500', '156-150000-150500-150502-', '0', '科尔沁区', '科尔沁区', '', '', '', '150502', '028000', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150521', '150500', '156-150000-150500-150521-', '0', '科尔沁左翼中旗', '科尔沁左翼中旗', '', '', '', '150521', '029300', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150522', '150500', '156-150000-150500-150522-', '0', '科尔沁左翼后旗', '科尔沁左翼后旗', '', '', '', '150522', '028100', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150523', '150500', '156-150000-150500-150523-', '0', '开鲁县', '开鲁县', '', '', '', '150523', '028400', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150524', '150500', '156-150000-150500-150524-', '0', '库伦旗', '库伦旗', '', '', '', '150524', '028200', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150525', '150500', '156-150000-150500-150525-', '0', '奈曼旗', '奈曼旗', '', '', '', '150525', '028300', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150526', '150500', '156-150000-150500-150526-', '0', '扎鲁特旗', '扎鲁特旗', '', '', '', '150526', '029100', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150581', '150500', '156-150000-150500-150581-', '0', '霍林郭勒市', '霍林郭勒市', '', '', '', '150581', '029200', '0475', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150600', '150000', '156-150000-150600-', '0', '鄂尔多斯', '鄂尔多斯市', '', '', '', '150600', '017000', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150601', '150600', '156-150000-150600-150601-', '0', '市辖区', '市辖区', '', '', '', '150601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150602', '150600', '156-150000-150600-150602-', '0', '东胜区', '东胜区', '', '', '', '150602', '017000', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150621', '150600', '156-150000-150600-150621-', '0', '达拉特旗', '达拉特旗', '', '', '', '150621', '014300', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150622', '150600', '156-150000-150600-150622-', '0', '准格尔旗', '准格尔旗', '', '', '', '150622', '017100', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150623', '150600', '156-150000-150600-150623-', '0', '鄂托克前旗', '鄂托克前旗', '', '', '', '150623', '016200', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150624', '150600', '156-150000-150600-150624-', '0', '鄂托克旗', '鄂托克旗', '', '', '', '150624', '016100', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150625', '150600', '156-150000-150600-150625-', '0', '杭锦旗', '杭锦旗', '', '', '', '150625', '017400', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150626', '150600', '156-150000-150600-150626-', '0', '乌审旗', '乌审旗', '', '', '', '150626', '017300', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150627', '150600', '156-150000-150600-150627-', '0', '伊金霍洛旗', '伊金霍洛旗', '', '', '', '150627', '017200', '0477', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150700', '150000', '156-150000-150700-', '0', '呼伦贝尔', '呼伦贝尔市', '', '', '', '150700', '021000', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150701', '150700', '156-150000-150700-150701-', '0', '市辖区', '市辖区', '', '', '', '150701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150702', '150700', '156-150000-150700-150702-', '0', '海拉尔区', '海拉尔区', '', '', '', '150702', '021000', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150721', '150700', '156-150000-150700-150721-', '0', '阿荣旗', '阿荣旗', '', '', '', '150721', '162750', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150722', '150700', '156-150000-150700-150722-', '0', '莫力达瓦达斡尔族自治旗', '莫力达瓦达斡尔族自治旗', '', '', '', '150722', '162850', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150723', '150700', '156-150000-150700-150723-', '0', '鄂伦春自治旗', '鄂伦春自治旗', '', '', '', '150723', '022450', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150724', '150700', '156-150000-150700-150724-', '0', '鄂温克族自治旗', '鄂温克族自治旗', '', '', '', '150724', '021100', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150725', '150700', '156-150000-150700-150725-', '0', '陈巴尔虎旗', '陈巴尔虎旗', '', '', '', '150725', '021500', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150726', '150700', '156-150000-150700-150726-', '0', '新巴尔虎左旗', '新巴尔虎左旗', '', '', '', '150726', '021200', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150727', '150700', '156-150000-150700-150727-', '0', '新巴尔虎右旗', '新巴尔虎右旗', '', '', '', '150727', '021300', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150781', '150700', '156-150000-150700-150781-', '0', '满洲里市', '满洲里市', '', '', '', '150781', '021400', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150782', '150700', '156-150000-150700-150782-', '0', '牙克石市', '牙克石市', '', '', '', '150782', '022150', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150783', '150700', '156-150000-150700-150783-', '0', '扎兰屯市', '扎兰屯市', '', '', '', '150783', '162650', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150784', '150700', '156-150000-150700-150784-', '0', '额尔古纳市', '额尔古纳市', '', '', '', '150784', '022250', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150785', '150700', '156-150000-150700-150785-', '0', '根河市', '根河市', '', '', '', '150785', '022350', '0470', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150800', '150000', '156-150000-150800-', '0', '巴彦淖尔', '巴彦淖尔市', '', '', '', '150800', '015000', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150801', '150800', '156-150000-150800-150801-', '0', '市辖区', '市辖区', '', '', '', '150801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150802', '150800', '156-150000-150800-150802-', '0', '临河区', '临河区', '', '', '', '150802', '015000', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150821', '150800', '156-150000-150800-150821-', '0', '五原县', '五原县', '', '', '', '150821', '015100', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150822', '150800', '156-150000-150800-150822-', '0', '磴口县', '磴口县', '', '', '', '150822', '015200', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150823', '150800', '156-150000-150800-150823-', '0', '乌拉特前旗', '乌拉特前旗', '', '', '', '150823', '014400', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150824', '150800', '156-150000-150800-150824-', '0', '乌拉特中旗', '乌拉特中旗', '', '', '', '150824', '015300', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150825', '150800', '156-150000-150800-150825-', '0', '乌拉特后旗', '乌拉特后旗', '', '', '', '150825', '015500', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150826', '150800', '156-150000-150800-150826-', '0', '杭锦后旗', '杭锦后旗', '', '', '', '150826', '015400', '0478', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150900', '150000', '156-150000-150900-', '0', '乌兰察布', '乌兰察布市', '', '', '', '150900', '012000', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150901', '150900', '156-150000-150900-150901-', '0', '市辖区', '市辖区', '', '', '', '150901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150902', '150900', '156-150000-150900-150902-', '0', '集宁区', '集宁区', '', '', '', '150902', '012000', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150921', '150900', '156-150000-150900-150921-', '0', '卓资县', '卓资县', '', '', '', '150921', '012300', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150922', '150900', '156-150000-150900-150922-', '0', '化德县', '化德县', '', '', '', '150922', '013350', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150923', '150900', '156-150000-150900-150923-', '0', '商都县', '商都县', '', '', '', '150923', '013400', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150924', '150900', '156-150000-150900-150924-', '0', '兴和县', '兴和县', '', '', '', '150924', '013650', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150925', '150900', '156-150000-150900-150925-', '0', '凉城县', '凉城县', '', '', '', '150925', '013750', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150926', '150900', '156-150000-150900-150926-', '0', '察哈尔右翼前旗', '察哈尔右翼前旗', '', '', '', '150926', '012200', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150927', '150900', '156-150000-150900-150927-', '0', '察哈尔右翼中旗', '察哈尔右翼中旗', '', '', '', '150927', '013500', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150928', '150900', '156-150000-150900-150928-', '0', '察哈尔右翼后旗', '察哈尔右翼后旗', '', '', '', '150928', '012400', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150929', '150900', '156-150000-150900-150929-', '0', '四子王旗', '四子王旗', '', '', '', '150929', '011800', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('150981', '150900', '156-150000-150900-150981-', '0', '丰镇市', '丰镇市', '', '', '', '150981', '012100', '0474', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152200', '150000', '156-150000-152200-', '0', '兴安盟', '兴安盟', '', '', '', '152200', '137400', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152201', '152200', '156-150000-152200-152201-', '0', '乌兰浩特市', '乌兰浩特市', '', '', '', '152201', '137400', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152202', '152200', '156-150000-152200-152202-', '0', '阿尔山市', '阿尔山市', '', '', '', '152202', '137400', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152221', '152200', '156-150000-152200-152221-', '0', '科尔沁右翼前旗', '科尔沁右翼前旗', '', '', '', '152221', '137400', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152222', '152200', '156-150000-152200-152222-', '0', '科尔沁右翼中旗', '科尔沁右翼中旗', '', '', '', '152222', '029400', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152223', '152200', '156-150000-152200-152223-', '0', '扎赉特旗', '扎赉特旗', '', '', '', '152223', '137600', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152224', '152200', '156-150000-152200-152224-', '0', '突泉县', '突泉县', '', '', '', '152224', '137500', '0482', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152500', '150000', '156-150000-152500-', '0', '锡林郭勒盟', '锡林郭勒盟', '', '', '', '152500', '026000', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152501', '152500', '156-150000-152500-152501-', '0', '二连浩特市', '二连浩特市', '', '', '', '152501', '012600', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152502', '152500', '156-150000-152500-152502-', '0', '锡林浩特市', '锡林浩特市', '', '', '', '152502', '026000', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152522', '152500', '156-150000-152500-152522-', '0', '阿巴嘎旗', '阿巴嘎旗', '', '', '', '152522', '011400', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152523', '152500', '156-150000-152500-152523-', '0', '苏尼特左旗', '苏尼特左旗', '', '', '', '152523', '011300', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152524', '152500', '156-150000-152500-152524-', '0', '苏尼特右旗', '苏尼特右旗', '', '', '', '152524', '011200', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152525', '152500', '156-150000-152500-152525-', '0', '东乌珠穆沁旗', '东乌珠穆沁旗', '', '', '', '152525', '026300', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152526', '152500', '156-150000-152500-152526-', '0', '西乌珠穆沁旗', '西乌珠穆沁旗', '', '', '', '152526', '026200', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152527', '152500', '156-150000-152500-152527-', '0', '太仆寺旗', '太仆寺旗', '', '', '', '152527', '027000', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152528', '152500', '156-150000-152500-152528-', '0', '镶黄旗', '镶黄旗', '', '', '', '152528', '013250', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152529', '152500', '156-150000-152500-152529-', '0', '正镶白旗', '正镶白旗', '', '', '', '152529', '013800', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152530', '152500', '156-150000-152500-152530-', '0', '正蓝旗', '正蓝旗', '', '', '', '152530', '027200', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152531', '152500', '156-150000-152500-152531-', '0', '多伦县', '多伦县', '', '', '', '152531', '027300', '0479', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152900', '150000', '156-150000-152900-', '0', '阿拉善盟', '阿拉善盟', '', '', '', '152900', '735000', '0483', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152921', '152900', '156-150000-152900-152921-', '0', '阿拉善左旗', '阿拉善左旗', '', '', '', '152921', '750300', '0483', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152922', '152900', '156-150000-152900-152922-', '0', '阿拉善右旗', '阿拉善右旗', '', '', '', '152922', '737300', '0483', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('152923', '152900', '156-150000-152900-152923-', '0', '额济纳旗', '额济纳旗', '', '', '', '152923', '735400', '0483', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210000', '156', '156-210000-', '0', '辽宁', '辽宁省', 'LiaoNing', 'LiaoNing', 'LN', '210000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210100', '210000', '156-210000-210100-', '0', '沈阳', '沈阳市', '', '', '', '210100', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210101', '210100', '156-210000-210100-210101-', '0', '市辖区', '市辖区', '', '', '', '210101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210102', '210100', '156-210000-210100-210102-', '0', '和平区', '和平区', '', '', '', '210102', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210103', '210100', '156-210000-210100-210103-', '0', '沈河区', '沈河区', '', '', '', '210103', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210104', '210100', '156-210000-210100-210104-', '0', '大东区', '大东区', '', '', '', '210104', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210105', '210100', '156-210000-210100-210105-', '0', '皇姑区', '皇姑区', '', '', '', '210105', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210106', '210100', '156-210000-210100-210106-', '0', '铁西区', '铁西区', '', '', '', '210106', '110020', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210111', '210100', '156-210000-210100-210111-', '0', '苏家屯区', '苏家屯区', '', '', '', '210111', '110100', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210112', '210100', '156-210000-210100-210112-', '0', '东陵区', '东陵区', '', '', '', '210112', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210113', '210100', '156-210000-210100-210113-', '0', '沈北新区', '沈北新区', '', '', '', '210113', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210114', '210100', '156-210000-210100-210114-', '0', '于洪区', '于洪区', '', '', '', '210114', '110000', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210122', '210100', '156-210000-210100-210122-', '0', '辽中县', '辽中县', '', '', '', '210122', '110200', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210123', '210100', '156-210000-210100-210123-', '0', '康平县', '康平县', '', '', '', '210123', '110500', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210124', '210100', '156-210000-210100-210124-', '0', '法库县', '法库县', '', '', '', '210124', '110400', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210181', '210100', '156-210000-210100-210181-', '0', '新民市', '新民市', '', '', '', '210181', '110300', '024', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210200', '210000', '156-210000-210200-', '0', '大连', '大连市', '', '', '', '210200', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210201', '210200', '156-210000-210200-210201-', '0', '市辖区', '市辖区', '', '', '', '210201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210202', '210200', '156-210000-210200-210202-', '0', '中山区', '中山区', '', '', '', '210202', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210203', '210200', '156-210000-210200-210203-', '0', '西岗区', '西岗区', '', '', '', '210203', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210204', '210200', '156-210000-210200-210204-', '0', '沙河口区', '沙河口区', '', '', '', '210204', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210211', '210200', '156-210000-210200-210211-', '0', '甘井子区', '甘井子区', '', '', '', '210211', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210212', '210200', '156-210000-210200-210212-', '0', '旅顺口区', '旅顺口区', '', '', '', '210212', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210213', '210200', '156-210000-210200-210213-', '0', '金州区', '金州区', '', '', '', '210213', '116000', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210224', '210200', '156-210000-210200-210224-', '0', '长海县', '长海县', '', '', '', '210224', '116500', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210281', '210200', '156-210000-210200-210281-', '0', '瓦房店市', '瓦房店市', '', '', '', '210281', '116300', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210282', '210200', '156-210000-210200-210282-', '0', '普兰店市', '普兰店市', '', '', '', '210282', '116200', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210283', '210200', '156-210000-210200-210283-', '0', '庄河市', '庄河市', '', '', '', '210283', '116400', '0411', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210300', '210000', '156-210000-210300-', '0', '鞍山', '鞍山市', '', '', '', '210300', '114000', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210301', '210300', '156-210000-210300-210301-', '0', '市辖区', '市辖区', '', '', '', '210301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210302', '210300', '156-210000-210300-210302-', '0', '铁东区', '铁东区', '', '', '', '210302', '114000', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210303', '210300', '156-210000-210300-210303-', '0', '铁西区', '铁西区', '', '', '', '210303', '114000', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210304', '210300', '156-210000-210300-210304-', '0', '立山区', '立山区', '', '', '', '210304', '114000', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210311', '210300', '156-210000-210300-210311-', '0', '千山区', '千山区', '', '', '', '210311', '114000', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210321', '210300', '156-210000-210300-210321-', '0', '台安县', '台安县', '', '', '', '210321', '114100', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210323', '210300', '156-210000-210300-210323-', '0', '岫岩满族自治县', '岫岩满族自治县', '', '', '', '210323', '114300', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210381', '210300', '156-210000-210300-210381-', '0', '海城市', '海城市', '', '', '', '210381', '114200', '0412', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210400', '210000', '156-210000-210400-', '0', '抚顺', '抚顺市', '', '', '', '210400', '113000', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210401', '210400', '156-210000-210400-210401-', '0', '市辖区', '市辖区', '', '', '', '210401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210402', '210400', '156-210000-210400-210402-', '0', '新抚区', '新抚区', '', '', '', '210402', '113000', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210403', '210400', '156-210000-210400-210403-', '0', '东洲区', '东洲区', '', '', '', '210403', '113000', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210404', '210400', '156-210000-210400-210404-', '0', '望花区', '望花区', '', '', '', '210404', '113000', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210411', '210400', '156-210000-210400-210411-', '0', '顺城区', '顺城区', '', '', '', '210411', '113000', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210421', '210400', '156-210000-210400-210421-', '0', '抚顺县', '抚顺县', '', '', '', '210421', '113100', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210422', '210400', '156-210000-210400-210422-', '0', '新宾满族自治县', '新宾满族自治县', '', '', '', '210422', '113200', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210423', '210400', '156-210000-210400-210423-', '0', '清原满族自治县', '清原满族自治县', '', '', '', '210423', '113300', '0413', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210500', '210000', '156-210000-210500-', '0', '本溪', '本溪市', '', '', '', '210500', '117000', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210501', '210500', '156-210000-210500-210501-', '0', '市辖区', '市辖区', '', '', '', '210501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210502', '210500', '156-210000-210500-210502-', '0', '平山区', '平山区', '', '', '', '210502', '117000', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210503', '210500', '156-210000-210500-210503-', '0', '溪湖区', '溪湖区', '', '', '', '210503', '117000', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210504', '210500', '156-210000-210500-210504-', '0', '明山区', '明山区', '', '', '', '210504', '117000', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210505', '210500', '156-210000-210500-210505-', '0', '南芬区', '南芬区', '', '', '', '210505', '117000', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210521', '210500', '156-210000-210500-210521-', '0', '本溪满族自治县', '本溪满族自治县', '', '', '', '210521', '117100', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210522', '210500', '156-210000-210500-210522-', '0', '桓仁满族自治县', '桓仁满族自治县', '', '', '', '210522', '117200', '0414', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210600', '210000', '156-210000-210600-', '0', '丹东', '丹东市', '', '', '', '210600', '118000', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210601', '210600', '156-210000-210600-210601-', '0', '市辖区', '市辖区', '', '', '', '210601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210602', '210600', '156-210000-210600-210602-', '0', '元宝区', '元宝区', '', '', '', '210602', '118000', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210603', '210600', '156-210000-210600-210603-', '0', '振兴区', '振兴区', '', '', '', '210603', '118000', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210604', '210600', '156-210000-210600-210604-', '0', '振安区', '振安区', '', '', '', '210604', '118000', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210624', '210600', '156-210000-210600-210624-', '0', '宽甸满族自治县', '宽甸满族自治县', '', '', '', '210624', '118200', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210681', '210600', '156-210000-210600-210681-', '0', '东港市', '东港市', '', '', '', '210681', '118300', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210682', '210600', '156-210000-210600-210682-', '0', '凤城市', '凤城市', '', '', '', '210682', '118100', '0415', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210700', '210000', '156-210000-210700-', '0', '锦州', '锦州市', '', '', '', '210700', '121000', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210701', '210700', '156-210000-210700-210701-', '0', '市辖区', '市辖区', '', '', '', '210701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210702', '210700', '156-210000-210700-210702-', '0', '古塔区', '古塔区', '', '', '', '210702', '121000', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210703', '210700', '156-210000-210700-210703-', '0', '凌河区', '凌河区', '', '', '', '210703', '121000', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210711', '210700', '156-210000-210700-210711-', '0', '太和区', '太和区', '', '', '', '210711', '121000', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210726', '210700', '156-210000-210700-210726-', '0', '黑山县', '黑山县', '', '', '', '210726', '121400', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210727', '210700', '156-210000-210700-210727-', '0', '义县', '义县', '', '', '', '210727', '121100', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210781', '210700', '156-210000-210700-210781-', '0', '凌海市', '凌海市', '', '', '', '210781', '121200', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210782', '210700', '156-210000-210700-210782-', '0', '北镇市', '北镇市', '', '', '', '210782', '121300', '0416', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210800', '210000', '156-210000-210800-', '0', '营口', '营口市', '', '', '', '210800', '115000', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210801', '210800', '156-210000-210800-210801-', '0', '市辖区', '市辖区', '', '', '', '210801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210802', '210800', '156-210000-210800-210802-', '0', '站前区', '站前区', '', '', '', '210802', '115000', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210803', '210800', '156-210000-210800-210803-', '0', '西市区', '西市区', '', '', '', '210803', '115000', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210804', '210800', '156-210000-210800-210804-', '0', '鲅鱼圈区', '鲅鱼圈区', '', '', '', '210804', '115007', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210811', '210800', '156-210000-210800-210811-', '0', '老边区', '老边区', '', '', '', '210811', '115000', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210881', '210800', '156-210000-210800-210881-', '0', '盖州市', '盖州市', '', '', '', '210881', '115200', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210882', '210800', '156-210000-210800-210882-', '0', '大石桥市', '大石桥市', '', '', '', '210882', '115100', '0417', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210900', '210000', '156-210000-210900-', '0', '阜新', '阜新市', '', '', '', '210900', '123000', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210901', '210900', '156-210000-210900-210901-', '0', '市辖区', '市辖区', '', '', '', '210901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210902', '210900', '156-210000-210900-210902-', '0', '海州区', '海州区', '', '', '', '210902', '123000', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210903', '210900', '156-210000-210900-210903-', '0', '新邱区', '新邱区', '', '', '', '210903', '123000', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210904', '210900', '156-210000-210900-210904-', '0', '太平区', '太平区', '', '', '', '210904', '123000', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210905', '210900', '156-210000-210900-210905-', '0', '清河门区', '清河门区', '', '', '', '210905', '123000', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210911', '210900', '156-210000-210900-210911-', '0', '细河区', '细河区', '', '', '', '210911', '123000', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210921', '210900', '156-210000-210900-210921-', '0', '阜新蒙古族自治县', '阜新蒙古族自治县', '', '', '', '210921', '123100', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('210922', '210900', '156-210000-210900-210922-', '0', '彰武县', '彰武县', '', '', '', '210922', '123200', '0418', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211000', '210000', '156-210000-211000-', '0', '辽阳', '辽阳市', '', '', '', '211000', '111000', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211001', '211000', '156-210000-211000-211001-', '0', '市辖区', '市辖区', '', '', '', '211001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211002', '211000', '156-210000-211000-211002-', '0', '白塔区', '白塔区', '', '', '', '211002', '111000', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211003', '211000', '156-210000-211000-211003-', '0', '文圣区', '文圣区', '', '', '', '211003', '111000', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211004', '211000', '156-210000-211000-211004-', '0', '宏伟区', '宏伟区', '', '', '', '211004', '111000', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211005', '211000', '156-210000-211000-211005-', '0', '弓长岭区', '弓长岭区', '', '', '', '211005', '111000', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211011', '211000', '156-210000-211000-211011-', '0', '太子河区', '太子河区', '', '', '', '211011', '111000', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211021', '211000', '156-210000-211000-211021-', '0', '辽阳县', '辽阳县', '', '', '', '211021', '111200', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211081', '211000', '156-210000-211000-211081-', '0', '灯塔市', '灯塔市', '', '', '', '211081', '111300', '0419', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211100', '210000', '156-210000-211100-', '0', '盘锦', '盘锦市', '', '', '', '211100', '124000', '0427', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211101', '211100', '156-210000-211100-211101-', '0', '市辖区', '市辖区', '', '', '', '211101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211102', '211100', '156-210000-211100-211102-', '0', '双台子区', '双台子区', '', '', '', '211102', '124000', '0427', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211103', '211100', '156-210000-211100-211103-', '0', '兴隆台区', '兴隆台区', '', '', '', '211103', '124000', '0427', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211121', '211100', '156-210000-211100-211121-', '0', '大洼县', '大洼县', '', '', '', '211121', '124200', '0427', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211122', '211100', '156-210000-211100-211122-', '0', '盘山县', '盘山县', '', '', '', '211122', '124100', '0427', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211200', '210000', '156-210000-211200-', '0', '铁岭', '铁岭市', '', '', '', '211200', '112000', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211201', '211200', '156-210000-211200-211201-', '0', '市辖区', '市辖区', '', '', '', '211201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211202', '211200', '156-210000-211200-211202-', '0', '银州区', '银州区', '', '', '', '211202', '112000', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211204', '211200', '156-210000-211200-211204-', '0', '清河区', '清河区', '', '', '', '211204', '112000', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211221', '211200', '156-210000-211200-211221-', '0', '铁岭县', '铁岭县', '', '', '', '211221', '112600', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211223', '211200', '156-210000-211200-211223-', '0', '西丰县', '西丰县', '', '', '', '211223', '112400', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211224', '211200', '156-210000-211200-211224-', '0', '昌图县', '昌图县', '', '', '', '211224', '112500', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211281', '211200', '156-210000-211200-211281-', '0', '调兵山市', '调兵山市', '', '', '', '211281', '112700', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211282', '211200', '156-210000-211200-211282-', '0', '开原市', '开原市', '', '', '', '211282', '112300', '0410', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211300', '210000', '156-210000-211300-', '0', '朝阳', '朝阳市', '', '', '', '211300', '122000', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211301', '211300', '156-210000-211300-211301-', '0', '市辖区', '市辖区', '', '', '', '211301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211302', '211300', '156-210000-211300-211302-', '0', '双塔区', '双塔区', '', '', '', '211302', '122000', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211303', '211300', '156-210000-211300-211303-', '0', '龙城区', '龙城区', '', '', '', '211303', '122000', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211321', '211300', '156-210000-211300-211321-', '0', '朝阳县', '朝阳县', '', '', '', '211321', '122000', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211322', '211300', '156-210000-211300-211322-', '0', '建平县', '建平县', '', '', '', '211322', '122400', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211324', '211300', '156-210000-211300-211324-', '0', '喀喇沁左翼蒙古族自治县', '喀喇沁左翼蒙古族自治县', '', '', '', '211324', '122300', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211381', '211300', '156-210000-211300-211381-', '0', '北票市', '北票市', '', '', '', '211381', '122100', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211382', '211300', '156-210000-211300-211382-', '0', '凌源市', '凌源市', '', '', '', '211382', '122500', '0421', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211400', '210000', '156-210000-211400-', '0', '葫芦岛', '葫芦岛市', '', '', '', '211400', '125000', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211401', '211400', '156-210000-211400-211401-', '0', '市辖区', '市辖区', '', '', '', '211401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211402', '211400', '156-210000-211400-211402-', '0', '连山区', '连山区', '', '', '', '211402', '125000', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211403', '211400', '156-210000-211400-211403-', '0', '龙港区', '龙港区', '', '', '', '211403', '125000', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211404', '211400', '156-210000-211400-211404-', '0', '南票区', '南票区', '', '', '', '211404', '125000', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211421', '211400', '156-210000-211400-211421-', '0', '绥中县', '绥中县', '', '', '', '211421', '125200', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211422', '211400', '156-210000-211400-211422-', '0', '建昌县', '建昌县', '', '', '', '211422', '125300', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('211481', '211400', '156-210000-211400-211481-', '0', '兴城市', '兴城市', '', '', '', '211481', '125100', '0429', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220000', '156', '156-220000-', '0', '吉林', '吉林省', 'JiLin', 'JiLin', 'JL', '220000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220100', '220000', '156-220000-220100-', '0', '长春', '长春市', '', '', '', '220100', '130000', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220101', '220100', '156-220000-220100-220101-', '0', '市辖区', '市辖区', '', '', '', '220101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220102', '220100', '156-220000-220100-220102-', '0', '南关区', '南关区', '', '', '', '220102', '130000', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220103', '220100', '156-220000-220100-220103-', '0', '宽城区', '宽城区', '', '', '', '220103', '130000', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220104', '220100', '156-220000-220100-220104-', '0', '朝阳区', '朝阳区', '', '', '', '220104', '130000', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220105', '220100', '156-220000-220100-220105-', '0', '二道区', '二道区', '', '', '', '220105', '130000', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220106', '220100', '156-220000-220100-220106-', '0', '绿园区', '绿园区', '', '', '', '220106', '130000', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220112', '220100', '156-220000-220100-220112-', '0', '双阳区', '双阳区', '', '', '', '220112', '130600', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220122', '220100', '156-220000-220100-220122-', '0', '农安县', '农安县', '', '', '', '220122', '130200', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220181', '220100', '156-220000-220100-220181-', '0', '九台市', '九台市', '', '', '', '220181', '130500', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220182', '220100', '156-220000-220100-220182-', '0', '榆树市', '榆树市', '', '', '', '220182', '130400', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220183', '220100', '156-220000-220100-220183-', '0', '德惠市', '德惠市', '', '', '', '220183', '130300', '0431', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220200', '220000', '156-220000-220200-', '0', '吉林', '吉林市', '', '', '', '220200', '132000', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220201', '220200', '156-220000-220200-220201-', '0', '市辖区', '市辖区', '', '', '', '220201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220202', '220200', '156-220000-220200-220202-', '0', '昌邑区', '昌邑区', '', '', '', '220202', '132000', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220203', '220200', '156-220000-220200-220203-', '0', '龙潭区', '龙潭区', '', '', '', '220203', '132000', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220204', '220200', '156-220000-220200-220204-', '0', '船营区', '船营区', '', '', '', '220204', '132000', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220211', '220200', '156-220000-220200-220211-', '0', '丰满区', '丰满区', '', '', '', '220211', '132000', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220221', '220200', '156-220000-220200-220221-', '0', '永吉县', '永吉县', '', '', '', '220221', '132100', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220281', '220200', '156-220000-220200-220281-', '0', '蛟河市', '蛟河市', '', '', '', '220281', '132500', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220282', '220200', '156-220000-220200-220282-', '0', '桦甸市', '桦甸市', '', '', '', '220282', '132400', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220283', '220200', '156-220000-220200-220283-', '0', '舒兰市', '舒兰市', '', '', '', '220283', '132600', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220284', '220200', '156-220000-220200-220284-', '0', '磐石市', '磐石市', '', '', '', '220284', '132300', '0432', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220300', '220000', '156-220000-220300-', '0', '四平', '四平市', '', '', '', '220300', '136000', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220301', '220300', '156-220000-220300-220301-', '0', '市辖区', '市辖区', '', '', '', '220301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220302', '220300', '156-220000-220300-220302-', '0', '铁西区', '铁西区', '', '', '', '220302', '136000', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220303', '220300', '156-220000-220300-220303-', '0', '铁东区', '铁东区', '', '', '', '220303', '136000', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220322', '220300', '156-220000-220300-220322-', '0', '梨树县', '梨树县', '', '', '', '220322', '136500', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220323', '220300', '156-220000-220300-220323-', '0', '伊通满族自治县', '伊通满族自治县', '', '', '', '220323', '130700', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220381', '220300', '156-220000-220300-220381-', '0', '公主岭市', '公主岭市', '', '', '', '220381', '136100', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220382', '220300', '156-220000-220300-220382-', '0', '双辽市', '双辽市', '', '', '', '220382', '136400', '0434', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220400', '220000', '156-220000-220400-', '0', '辽源', '辽源市', '', '', '', '220400', '136200', '0437', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220401', '220400', '156-220000-220400-220401-', '0', '市辖区', '市辖区', '', '', '', '220401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220402', '220400', '156-220000-220400-220402-', '0', '龙山区', '龙山区', '', '', '', '220402', '136200', '0437', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220403', '220400', '156-220000-220400-220403-', '0', '西安区', '西安区', '', '', '', '220403', '136200', '0437', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220421', '220400', '156-220000-220400-220421-', '0', '东丰县', '东丰县', '', '', '', '220421', '136300', '0437', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220422', '220400', '156-220000-220400-220422-', '0', '东辽县', '东辽县', '', '', '', '220422', '136600', '0437', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220500', '220000', '156-220000-220500-', '0', '通化', '通化市', '', '', '', '220500', '134000', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220501', '220500', '156-220000-220500-220501-', '0', '市辖区', '市辖区', '', '', '', '220501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220502', '220500', '156-220000-220500-220502-', '0', '东昌区', '东昌区', '', '', '', '220502', '134000', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220503', '220500', '156-220000-220500-220503-', '0', '二道江区', '二道江区', '', '', '', '220503', '134000', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220521', '220500', '156-220000-220500-220521-', '0', '通化县', '通化县', '', '', '', '220521', '134100', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220523', '220500', '156-220000-220500-220523-', '0', '辉南县', '辉南县', '', '', '', '220523', '135100', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220524', '220500', '156-220000-220500-220524-', '0', '柳河县', '柳河县', '', '', '', '220524', '135300', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220581', '220500', '156-220000-220500-220581-', '0', '梅河口市', '梅河口市', '', '', '', '220581', '135000', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220582', '220500', '156-220000-220500-220582-', '0', '集安市', '集安市', '', '', '', '220582', '134200', '0435', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220600', '220000', '156-220000-220600-', '0', '白山', '白山市', '', '', '', '220600', '134300', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220601', '220600', '156-220000-220600-220601-', '0', '市辖区', '市辖区', '', '', '', '220601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220602', '220600', '156-220000-220600-220602-', '0', '浑江区', '浑江区', '', '', '', '220602', '134300', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220605', '220600', '156-220000-220600-220605-', '0', '江源区', '江源区', '', '', '', '220605', '134700', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220621', '220600', '156-220000-220600-220621-', '0', '抚松县', '抚松县', '', '', '', '220621', '134500', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220622', '220600', '156-220000-220600-220622-', '0', '靖宇县', '靖宇县', '', '', '', '220622', '135200', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220623', '220600', '156-220000-220600-220623-', '0', '长白朝鲜族自治县', '长白朝鲜族自治县', '', '', '', '220623', '134400', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220681', '220600', '156-220000-220600-220681-', '0', '临江市', '临江市', '', '', '', '220681', '134600', '0439', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220700', '220000', '156-220000-220700-', '0', '松原', '松原市', '', '', '', '220700', '138000', '0438', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220701', '220700', '156-220000-220700-220701-', '0', '市辖区', '市辖区', '', '', '', '220701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220702', '220700', '156-220000-220700-220702-', '0', '宁江区', '宁江区', '', '', '', '220702', '138000', '0438', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220721', '220700', '156-220000-220700-220721-', '0', '前郭尔罗斯蒙古族自治县', '前郭尔罗斯蒙古族自治县', '', '', '', '220721', '131100', '0438', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220722', '220700', '156-220000-220700-220722-', '0', '长岭县', '长岭县', '', '', '', '220722', '131500', '0438', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220723', '220700', '156-220000-220700-220723-', '0', '乾安县', '乾安县', '', '', '', '220723', '131400', '0438', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220724', '220700', '156-220000-220700-220724-', '0', '扶余县', '扶余县', '', '', '', '220724', '131200', '0438', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220800', '220000', '156-220000-220800-', '0', '白城', '白城市', '', '', '', '220800', '137000', '0436', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220801', '220800', '156-220000-220800-220801-', '0', '市辖区', '市辖区', '', '', '', '220801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220802', '220800', '156-220000-220800-220802-', '0', '洮北区', '洮北区', '', '', '', '220802', '137000', '0436', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220821', '220800', '156-220000-220800-220821-', '0', '镇赉县', '镇赉县', '', '', '', '220821', '137300', '0436', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220822', '220800', '156-220000-220800-220822-', '0', '通榆县', '通榆县', '', '', '', '220822', '137200', '0436', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220881', '220800', '156-220000-220800-220881-', '0', '洮南市', '洮南市', '', '', '', '220881', '137100', '0436', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('220882', '220800', '156-220000-220800-220882-', '0', '大安市', '大安市', '', '', '', '220882', '131300', '0436', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222400', '220000', '156-220000-222400-', '0', '延边', '延边朝鲜族自治州', '', '', '', '222400', '133000', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222401', '222400', '156-220000-222400-222401-', '0', '延吉市', '延吉市', '', '', '', '222401', '133000', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222402', '222400', '156-220000-222400-222402-', '0', '图们市', '图们市', '', '', '', '222402', '133100', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222403', '222400', '156-220000-222400-222403-', '0', '敦化市', '敦化市', '', '', '', '222403', '133700', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222404', '222400', '156-220000-222400-222404-', '0', '珲春市', '珲春市', '', '', '', '222404', '133300', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222405', '222400', '156-220000-222400-222405-', '0', '龙井市', '龙井市', '', '', '', '222405', '133400', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222406', '222400', '156-220000-222400-222406-', '0', '和龙市', '和龙市', '', '', '', '222406', '133500', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222424', '222400', '156-220000-222400-222424-', '0', '汪清县', '汪清县', '', '', '', '222424', '133200', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('222426', '222400', '156-220000-222400-222426-', '0', '安图县', '安图县', '', '', '', '222426', '133600', '0433', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230000', '156', '156-230000-', '0', '黑龙江', '黑龙江省', 'HeiLongJiang', 'HeiLongJiang', 'HL', '230000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230100', '230000', '156-230000-230100-', '0', '哈尔滨', '哈尔滨市', '', '', '', '230100', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230101', '230100', '156-230000-230100-230101-', '0', '市辖区', '市辖区', '', '', '', '230101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230102', '230100', '156-230000-230100-230102-', '0', '道里区', '道里区', '', '', '', '230102', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230103', '230100', '156-230000-230100-230103-', '0', '南岗区', '南岗区', '', '', '', '230103', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230104', '230100', '156-230000-230100-230104-', '0', '道外区', '道外区', '', '', '', '230104', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230108', '230100', '156-230000-230100-230108-', '0', '平房区', '平房区', '', '', '', '230108', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230109', '230100', '156-230000-230100-230109-', '0', '松北区', '松北区', '', '', '', '230109', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230110', '230100', '156-230000-230100-230110-', '0', '香坊区', '香坊区', '', '', '', '230110', '150000', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230111', '230100', '156-230000-230100-230111-', '0', '呼兰区', '呼兰区', '', '', '', '230111', '150500', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230112', '230100', '156-230000-230100-230112-', '0', '阿城区', '阿城区', '', '', '', '230112', '150300', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230123', '230100', '156-230000-230100-230123-', '0', '依兰县', '依兰县', '', '', '', '230123', '154800', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230124', '230100', '156-230000-230100-230124-', '0', '方正县', '方正县', '', '', '', '230124', '150800', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230125', '230100', '156-230000-230100-230125-', '0', '宾县', '宾县', '', '', '', '230125', '150400', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230126', '230100', '156-230000-230100-230126-', '0', '巴彦县', '巴彦县', '', '', '', '230126', '151800', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230127', '230100', '156-230000-230100-230127-', '0', '木兰县', '木兰县', '', '', '', '230127', '151900', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230128', '230100', '156-230000-230100-230128-', '0', '通河县', '通河县', '', '', '', '230128', '150900', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230129', '230100', '156-230000-230100-230129-', '0', '延寿县', '延寿县', '', '', '', '230129', '150700', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230182', '230100', '156-230000-230100-230182-', '0', '双城市', '双城市', '', '', '', '230182', '150100', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230183', '230100', '156-230000-230100-230183-', '0', '尚志市', '尚志市', '', '', '', '230183', '150600', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230184', '230100', '156-230000-230100-230184-', '0', '五常市', '五常市', '', '', '', '230184', '150200', '0451', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230200', '230000', '156-230000-230200-', '0', '齐齐哈尔', '齐齐哈尔市', '', '', '', '230200', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230201', '230200', '156-230000-230200-230201-', '0', '市辖区', '市辖区', '', '', '', '230201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230202', '230200', '156-230000-230200-230202-', '0', '龙沙区', '龙沙区', '', '', '', '230202', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230203', '230200', '156-230000-230200-230203-', '0', '建华区', '建华区', '', '', '', '230203', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230204', '230200', '156-230000-230200-230204-', '0', '铁锋区', '铁锋区', '', '', '', '230204', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230205', '230200', '156-230000-230200-230205-', '0', '昂昂溪区', '昂昂溪区', '', '', '', '230205', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230206', '230200', '156-230000-230200-230206-', '0', '富拉尔基区', '富拉尔基区', '', '', '', '230206', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230207', '230200', '156-230000-230200-230207-', '0', '碾子山区', '碾子山区', '', '', '', '230207', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230208', '230200', '156-230000-230200-230208-', '0', '梅里斯达斡尔族区', '梅里斯达斡尔族区', '', '', '', '230208', '161000', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230221', '230200', '156-230000-230200-230221-', '0', '龙江县', '龙江县', '', '', '', '230221', '161100', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230223', '230200', '156-230000-230200-230223-', '0', '依安县', '依安县', '', '', '', '230223', '161500', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230224', '230200', '156-230000-230200-230224-', '0', '泰来县', '泰来县', '', '', '', '230224', '162400', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230225', '230200', '156-230000-230200-230225-', '0', '甘南县', '甘南县', '', '', '', '230225', '162100', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230227', '230200', '156-230000-230200-230227-', '0', '富裕县', '富裕县', '', '', '', '230227', '161200', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230229', '230200', '156-230000-230200-230229-', '0', '克山县', '克山县', '', '', '', '230229', '161600', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230230', '230200', '156-230000-230200-230230-', '0', '克东县', '克东县', '', '', '', '230230', '164800', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230231', '230200', '156-230000-230200-230231-', '0', '拜泉县', '拜泉县', '', '', '', '230231', '164700', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230281', '230200', '156-230000-230200-230281-', '0', '讷河市', '讷河市', '', '', '', '230281', '161300', '0452', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230300', '230000', '156-230000-230300-', '0', '鸡西', '鸡西市', '', '', '', '230300', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230301', '230300', '156-230000-230300-230301-', '0', '市辖区', '市辖区', '', '', '', '230301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230302', '230300', '156-230000-230300-230302-', '0', '鸡冠区', '鸡冠区', '', '', '', '230302', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230303', '230300', '156-230000-230300-230303-', '0', '恒山区', '恒山区', '', '', '', '230303', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230304', '230300', '156-230000-230300-230304-', '0', '滴道区', '滴道区', '', '', '', '230304', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230305', '230300', '156-230000-230300-230305-', '0', '梨树区', '梨树区', '', '', '', '230305', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230306', '230300', '156-230000-230300-230306-', '0', '城子河区', '城子河区', '', '', '', '230306', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230307', '230300', '156-230000-230300-230307-', '0', '麻山区', '麻山区', '', '', '', '230307', '158100', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230321', '230300', '156-230000-230300-230321-', '0', '鸡东县', '鸡东县', '', '', '', '230321', '158200', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230381', '230300', '156-230000-230300-230381-', '0', '虎林市', '虎林市', '', '', '', '230381', '158400', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230382', '230300', '156-230000-230300-230382-', '0', '密山市', '密山市', '', '', '', '230382', '158300', '0467', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230400', '230000', '156-230000-230400-', '0', '鹤岗', '鹤岗市', '', '', '', '230400', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230401', '230400', '156-230000-230400-230401-', '0', '市辖区', '市辖区', '', '', '', '230401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230402', '230400', '156-230000-230400-230402-', '0', '向阳区', '向阳区', '', '', '', '230402', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230403', '230400', '156-230000-230400-230403-', '0', '工农区', '工农区', '', '', '', '230403', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230404', '230400', '156-230000-230400-230404-', '0', '南山区', '南山区', '', '', '', '230404', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230405', '230400', '156-230000-230400-230405-', '0', '兴安区', '兴安区', '', '', '', '230405', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230406', '230400', '156-230000-230400-230406-', '0', '东山区', '东山区', '', '', '', '230406', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230407', '230400', '156-230000-230400-230407-', '0', '兴山区', '兴山区', '', '', '', '230407', '154100', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230421', '230400', '156-230000-230400-230421-', '0', '萝北县', '萝北县', '', '', '', '230421', '154200', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230422', '230400', '156-230000-230400-230422-', '0', '绥滨县', '绥滨县', '', '', '', '230422', '156200', '0468', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230500', '230000', '156-230000-230500-', '0', '双鸭山', '双鸭山市', '', '', '', '230500', '155100', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230501', '230500', '156-230000-230500-230501-', '0', '市辖区', '市辖区', '', '', '', '230501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230502', '230500', '156-230000-230500-230502-', '0', '尖山区', '尖山区', '', '', '', '230502', '155100', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230503', '230500', '156-230000-230500-230503-', '0', '岭东区', '岭东区', '', '', '', '230503', '155100', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230505', '230500', '156-230000-230500-230505-', '0', '四方台区', '四方台区', '', '', '', '230505', '155100', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230506', '230500', '156-230000-230500-230506-', '0', '宝山区', '宝山区', '', '', '', '230506', '155100', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230521', '230500', '156-230000-230500-230521-', '0', '集贤县', '集贤县', '', '', '', '230521', '155900', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230522', '230500', '156-230000-230500-230522-', '0', '友谊县', '友谊县', '', '', '', '230522', '155800', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230523', '230500', '156-230000-230500-230523-', '0', '宝清县', '宝清县', '', '', '', '230523', '155600', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230524', '230500', '156-230000-230500-230524-', '0', '饶河县', '饶河县', '', '', '', '230524', '155700', '0469', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230600', '230000', '156-230000-230600-', '0', '大庆', '大庆市', '', '', '', '230600', '163000', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230601', '230600', '156-230000-230600-230601-', '0', '市辖区', '市辖区', '', '', '', '230601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230602', '230600', '156-230000-230600-230602-', '0', '萨尔图区', '萨尔图区', '', '', '', '230602', '163000', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230603', '230600', '156-230000-230600-230603-', '0', '龙凤区', '龙凤区', '', '', '', '230603', '163000', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230604', '230600', '156-230000-230600-230604-', '0', '让胡路区', '让胡路区', '', '', '', '230604', '163000', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230605', '230600', '156-230000-230600-230605-', '0', '红岗区', '红岗区', '', '', '', '230605', '163000', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230606', '230600', '156-230000-230600-230606-', '0', '大同区', '大同区', '', '', '', '230606', '163000', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230621', '230600', '156-230000-230600-230621-', '0', '肇州县', '肇州县', '', '', '', '230621', '166400', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230622', '230600', '156-230000-230600-230622-', '0', '肇源县', '肇源县', '', '', '', '230622', '166500', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230623', '230600', '156-230000-230600-230623-', '0', '林甸县', '林甸县', '', '', '', '230623', '166300', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230624', '230600', '156-230000-230600-230624-', '0', '杜尔伯特蒙古族自治县', '杜尔伯特蒙古族自治县', '', '', '', '230624', '166200', '0459', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230700', '230000', '156-230000-230700-', '0', '伊春', '伊春市', '', '', '', '230700', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230701', '230700', '156-230000-230700-230701-', '0', '市辖区', '市辖区', '', '', '', '230701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230702', '230700', '156-230000-230700-230702-', '0', '伊春区', '伊春区', '', '', '', '230702', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230703', '230700', '156-230000-230700-230703-', '0', '南岔区', '南岔区', '', '', '', '230703', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230704', '230700', '156-230000-230700-230704-', '0', '友好区', '友好区', '', '', '', '230704', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230705', '230700', '156-230000-230700-230705-', '0', '西林区', '西林区', '', '', '', '230705', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230706', '230700', '156-230000-230700-230706-', '0', '翠峦区', '翠峦区', '', '', '', '230706', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230707', '230700', '156-230000-230700-230707-', '0', '新青区', '新青区', '', '', '', '230707', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230708', '230700', '156-230000-230700-230708-', '0', '美溪区', '美溪区', '', '', '', '230708', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230709', '230700', '156-230000-230700-230709-', '0', '金山屯区', '金山屯区', '', '', '', '230709', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230710', '230700', '156-230000-230700-230710-', '0', '五营区', '五营区', '', '', '', '230710', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230711', '230700', '156-230000-230700-230711-', '0', '乌马河区', '乌马河区', '', '', '', '230711', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230712', '230700', '156-230000-230700-230712-', '0', '汤旺河区', '汤旺河区', '', '', '', '230712', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230713', '230700', '156-230000-230700-230713-', '0', '带岭区', '带岭区', '', '', '', '230713', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230714', '230700', '156-230000-230700-230714-', '0', '乌伊岭区', '乌伊岭区', '', '', '', '230714', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230715', '230700', '156-230000-230700-230715-', '0', '红星区', '红星区', '', '', '', '230715', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230716', '230700', '156-230000-230700-230716-', '0', '上甘岭区', '上甘岭区', '', '', '', '230716', '153000', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230722', '230700', '156-230000-230700-230722-', '0', '嘉荫县', '嘉荫县', '', '', '', '230722', '153200', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230781', '230700', '156-230000-230700-230781-', '0', '铁力市', '铁力市', '', '', '', '230781', '152500', '0458', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230800', '230000', '156-230000-230800-', '0', '佳木斯', '佳木斯市', '', '', '', '230800', '154000', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230801', '230800', '156-230000-230800-230801-', '0', '市辖区', '市辖区', '', '', '', '230801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230803', '230800', '156-230000-230800-230803-', '0', '向阳区', '向阳区', '', '', '', '230803', '154000', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230804', '230800', '156-230000-230800-230804-', '0', '前进区', '前进区', '', '', '', '230804', '154000', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230805', '230800', '156-230000-230800-230805-', '0', '东风区', '东风区', '', '', '', '230805', '154000', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230811', '230800', '156-230000-230800-230811-', '0', '郊区', '郊区', '', '', '', '230811', '0', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230822', '230800', '156-230000-230800-230822-', '0', '桦南县', '桦南县', '', '', '', '230822', '154400', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230826', '230800', '156-230000-230800-230826-', '0', '桦川县', '桦川县', '', '', '', '230826', '154300', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230828', '230800', '156-230000-230800-230828-', '0', '汤原县', '汤原县', '', '', '', '230828', '154700', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230833', '230800', '156-230000-230800-230833-', '0', '抚远县', '抚远县', '', '', '', '230833', '156500', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230881', '230800', '156-230000-230800-230881-', '0', '同江市', '同江市', '', '', '', '230881', '156400', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230882', '230800', '156-230000-230800-230882-', '0', '富锦市', '富锦市', '', '', '', '230882', '156100', '0454', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230900', '230000', '156-230000-230900-', '0', '七台河', '七台河市', '', '', '', '230900', '154600', '0464', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230901', '230900', '156-230000-230900-230901-', '0', '市辖区', '市辖区', '', '', '', '230901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230902', '230900', '156-230000-230900-230902-', '0', '新兴区', '新兴区', '', '', '', '230902', '154600', '0464', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230903', '230900', '156-230000-230900-230903-', '0', '桃山区', '桃山区', '', '', '', '230903', '154600', '0464', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230904', '230900', '156-230000-230900-230904-', '0', '茄子河区', '茄子河区', '', '', '', '230904', '154600', '0464', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('230921', '230900', '156-230000-230900-230921-', '0', '勃利县', '勃利县', '', '', '', '230921', '154500', '0464', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231000', '230000', '156-230000-231000-', '0', '牡丹江', '牡丹江市', '', '', '', '231000', '157000', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231001', '231000', '156-230000-231000-231001-', '0', '市辖区', '市辖区', '', '', '', '231001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231002', '231000', '156-230000-231000-231002-', '0', '东安区', '东安区', '', '', '', '231002', '157000', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231003', '231000', '156-230000-231000-231003-', '0', '阳明区', '阳明区', '', '', '', '231003', '157000', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231004', '231000', '156-230000-231000-231004-', '0', '爱民区', '爱民区', '', '', '', '231004', '157000', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231005', '231000', '156-230000-231000-231005-', '0', '西安区', '西安区', '', '', '', '231005', '157000', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231024', '231000', '156-230000-231000-231024-', '0', '东宁县', '东宁县', '', '', '', '231024', '157200', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231025', '231000', '156-230000-231000-231025-', '0', '林口县', '林口县', '', '', '', '231025', '157600', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231081', '231000', '156-230000-231000-231081-', '0', '绥芬河市', '绥芬河市', '', '', '', '231081', '157300', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231083', '231000', '156-230000-231000-231083-', '0', '海林市', '海林市', '', '', '', '231083', '157100', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231084', '231000', '156-230000-231000-231084-', '0', '宁安市', '宁安市', '', '', '', '231084', '157400', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231085', '231000', '156-230000-231000-231085-', '0', '穆棱市', '穆棱市', '', '', '', '231085', '157500', '0453', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231100', '230000', '156-230000-231100-', '0', '黑河', '黑河市', '', '', '', '231100', '164300', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231101', '231100', '156-230000-231100-231101-', '0', '市辖区', '市辖区', '', '', '', '231101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231102', '231100', '156-230000-231100-231102-', '0', '爱辉区', '爱辉区', '', '', '', '231102', '164300', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231121', '231100', '156-230000-231100-231121-', '0', '嫩江县', '嫩江县', '', '', '', '231121', '161400', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231123', '231100', '156-230000-231100-231123-', '0', '逊克县', '逊克县', '', '', '', '231123', '164400', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231124', '231100', '156-230000-231100-231124-', '0', '孙吴县', '孙吴县', '', '', '', '231124', '164200', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231181', '231100', '156-230000-231100-231181-', '0', '北安市', '北安市', '', '', '', '231181', '164000', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231182', '231100', '156-230000-231100-231182-', '0', '五大连池市', '五大连池市', '', '', '', '231182', '164100', '0456', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231200', '230000', '156-230000-231200-', '0', '绥化', '绥化市', '', '', '', '231200', '152000', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231201', '231200', '156-230000-231200-231201-', '0', '市辖区', '市辖区', '', '', '', '231201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231202', '231200', '156-230000-231200-231202-', '0', '北林区', '北林区', '', '', '', '231202', '152000', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231221', '231200', '156-230000-231200-231221-', '0', '望奎县', '望奎县', '', '', '', '231221', '152100', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231222', '231200', '156-230000-231200-231222-', '0', '兰西县', '兰西县', '', '', '', '231222', '151500', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231223', '231200', '156-230000-231200-231223-', '0', '青冈县', '青冈县', '', '', '', '231223', '151600', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231224', '231200', '156-230000-231200-231224-', '0', '庆安县', '庆安县', '', '', '', '231224', '152400', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231225', '231200', '156-230000-231200-231225-', '0', '明水县', '明水县', '', '', '', '231225', '151700', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231226', '231200', '156-230000-231200-231226-', '0', '绥棱县', '绥棱县', '', '', '', '231226', '152200', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231281', '231200', '156-230000-231200-231281-', '0', '安达市', '安达市', '', '', '', '231281', '151400', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231282', '231200', '156-230000-231200-231282-', '0', '肇东市', '肇东市', '', '', '', '231282', '151100', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('231283', '231200', '156-230000-231200-231283-', '0', '海伦市', '海伦市', '', '', '', '231283', '152300', '0455', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('232700', '230000', '156-230000-232700-', '0', '大兴安岭', '大兴安岭地区', '', '', '', '232700', '165000', '0457', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('232721', '232700', '156-230000-232700-232721-', '0', '呼玛县', '呼玛县', '', '', '', '232721', '165100', '0457', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('232722', '232700', '156-230000-232700-232722-', '0', '塔河县', '塔河县', '', '', '', '232722', '165200', '0457', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('232723', '232700', '156-230000-232700-232723-', '0', '漠河县', '漠河县', '', '', '', '232723', '165300', '0457', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310000', '156', '156-310000-', '0', '上海', '上海市', 'ShangHai', 'ShangHai', 'SH', '310000', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310100', '310000', '156-310000-310100-', '0', '市辖区', '市辖区', '', '', '', '310100', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310101', '310100', '156-310000-310100-310101-', '0', '黄浦区', '黄浦区', '', '', '', '310101', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310102', '310100', '156-310000-310100-310102-', '310101', '南市区', '南市区', '', '', '', '310102', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310103', '310100', '156-310000-310100-310103-', '310101', '卢湾区', '卢湾区', '', '', '', '310103', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310104', '310100', '156-310000-310100-310104-', '0', '徐汇区', '徐汇区', '', '', '', '310104', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310105', '310100', '156-310000-310100-310105-', '0', '长宁区', '长宁区', '', '', '', '310105', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310106', '310100', '156-310000-310100-310106-', '0', '静安区', '静安区', '', '', '', '310106', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310107', '310100', '156-310000-310100-310107-', '0', '普陀区', '普陀区', '', '', '', '310107', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310108', '310100', '156-310000-310100-310108-', '0', '闸北区', '闸北区', '', '', '', '310108', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310109', '310100', '156-310000-310100-310109-', '0', '虹口区', '虹口区', '', '', '', '310109', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310110', '310100', '156-310000-310100-310110-', '0', '杨浦区', '杨浦区', '', '', '', '310110', '200000', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310111', '310100', '156-310000-310100-310111-', '310113', '吴淞区', '吴淞区', '', '', '', '310111', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310112', '310100', '156-310000-310100-310112-', '0', '闵行区', '闵行区', '', '', '', '310112', '201100', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310113', '310100', '156-310000-310100-310113-', '0', '宝山区', '宝山区', '', '', '', '310113', '201900', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310114', '310100', '156-310000-310100-310114-', '0', '嘉定区', '嘉定区', '', '', '', '310114', '201800', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310115', '310100', '156-310000-310100-310115-', '0', '浦东新区', '浦东新区', '', '', '', '310115', '200120', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310116', '310100', '156-310000-310100-310116-', '0', '金山区', '金山区', '', '', '', '310116', '201500', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310117', '310100', '156-310000-310100-310117-', '0', '松江区', '松江区', '', '', '', '310117', '201600', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310118', '310100', '156-310000-310100-310118-', '0', '青浦区', '青浦区', '', '', '', '310118', '201700', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310119', '310100', '156-310000-310100-310119-', '310115', '南汇区', '南汇区', '', '', '', '310119', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310120', '310100', '156-310000-310100-310120-', '0', '奉贤区', '奉贤区', '', '', '', '310120', '201400', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310200', '310000', '156-310000-310200-', '0', '县', '县', '', '', '', '310200', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('310221', '310200', '156-310000-310200-310221-', '310112', '上海县', '上海县', '', '', '', '310221', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310222', '310200', '156-310000-310200-310222-', '310114', '嘉定县', '嘉定县', '', '', '', '310222', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310223', '310200', '156-310000-310200-310223-', '310113', '宝山县', '宝山县', '', '', '', '310223', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310224', '310200', '156-310000-310200-310224-', '310115', '川沙县', '川沙县', '', '', '', '310224', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310225', '310200', '156-310000-310200-310225-', '310119', '南汇县', '南汇县', '', '', '', '310225', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310226', '310200', '156-310000-310200-310226-', '310120', '奉贤县', '奉贤县', '', '', '', '310226', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310227', '310200', '156-310000-310200-310227-', '310117', '松江县', '松江县', '', '', '', '310227', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310228', '310200', '156-310000-310200-310228-', '310116', '金山县', '金山县', '', '', '', '310228', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310229', '310200', '156-310000-310200-310229-', '310118', '青浦县', '青浦县', '', '', '', '310229', '0', '021', '', '', '-1');
INSERT INTO `admin_base_area` VALUES ('310230', '310200', '156-310000-310200-310230-', '0', '崇明县', '崇明县', '', '', '', '310230', '202150', '021', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320000', '156', '156-320000-', '0', '江苏', '江苏省', 'JiangSu', 'JiangSu', 'JX', '320000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320100', '320000', '156-320000-320100-', '0', '南京', '南京市', '', '', '', '320100', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320101', '320100', '156-320000-320100-320101-', '0', '市辖区', '市辖区', '', '', '', '320101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320102', '320100', '156-320000-320100-320102-', '0', '玄武区', '玄武区', '', '', '', '320102', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320103', '320100', '156-320000-320100-320103-', '0', '白下区', '白下区', '', '', '', '320103', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320104', '320100', '156-320000-320100-320104-', '0', '秦淮区', '秦淮区', '', '', '', '320104', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320105', '320100', '156-320000-320100-320105-', '0', '建邺区', '建邺区', '', '', '', '320105', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320106', '320100', '156-320000-320100-320106-', '0', '鼓楼区', '鼓楼区', '', '', '', '320106', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320107', '320100', '156-320000-320100-320107-', '0', '下关区', '下关区', '', '', '', '320107', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320111', '320100', '156-320000-320100-320111-', '0', '浦口区', '浦口区', '', '', '', '320111', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320113', '320100', '156-320000-320100-320113-', '0', '栖霞区', '栖霞区', '', '', '', '320113', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320114', '320100', '156-320000-320100-320114-', '0', '雨花台区', '雨花台区', '', '', '', '320114', '210000', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320115', '320100', '156-320000-320100-320115-', '0', '江宁区', '江宁区', '', '', '', '320115', '211100', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320116', '320100', '156-320000-320100-320116-', '0', '六合区', '六合区', '', '', '', '320116', '211500', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320124', '320100', '156-320000-320100-320124-', '0', '溧水县', '溧水县', '', '', '', '320124', '211200', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320125', '320100', '156-320000-320100-320125-', '0', '高淳县', '高淳县', '', '', '', '320125', '211300', '025', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320200', '320000', '156-320000-320200-', '0', '无锡', '无锡市', '', '', '', '320200', '214000', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320201', '320200', '156-320000-320200-320201-', '0', '市辖区', '市辖区', '', '', '', '320201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320202', '320200', '156-320000-320200-320202-', '0', '崇安区', '崇安区', '', '', '', '320202', '214000', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320203', '320200', '156-320000-320200-320203-', '0', '南长区', '南长区', '', '', '', '320203', '214000', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320204', '320200', '156-320000-320200-320204-', '0', '北塘区', '北塘区', '', '', '', '320204', '214000', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320205', '320200', '156-320000-320200-320205-', '0', '锡山区', '锡山区', '', '', '', '320205', '214000', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320206', '320200', '156-320000-320200-320206-', '0', '惠山区', '惠山区', '', '', '', '320206', '214000', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320211', '320200', '156-320000-320200-320211-', '0', '滨湖区', '滨湖区', '', '', '', '320211', '214062', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320281', '320200', '156-320000-320200-320281-', '0', '江阴市', '江阴市', '', '', '', '320281', '214400', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320282', '320200', '156-320000-320200-320282-', '0', '宜兴市', '宜兴市', '', '', '', '320282', '214200', '0510', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320300', '320000', '156-320000-320300-', '0', '徐州', '徐州市', '', '', '', '320300', '221000', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320301', '320300', '156-320000-320300-320301-', '0', '市辖区', '市辖区', '', '', '', '320301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320302', '320300', '156-320000-320300-320302-', '0', '鼓楼区', '鼓楼区', '', '', '', '320302', '221000', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320303', '320300', '156-320000-320300-320303-', '0', '云龙区', '云龙区', '', '', '', '320303', '221000', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320305', '320300', '156-320000-320300-320305-', '0', '贾汪区', '贾汪区', '', '', '', '320305', '221000', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320311', '320300', '156-320000-320300-320311-', '0', '泉山区', '泉山区', '', '', '', '320311', '221000', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320312', '320300', '156-320000-320300-320312-', '0', '铜山区', '铜山区', '', '', '', '320312', '221100', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320321', '320300', '156-320000-320300-320321-', '0', '丰县', '丰县', '', '', '', '320321', '221700', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320322', '320300', '156-320000-320300-320322-', '0', '沛县', '沛县', '', '', '', '320322', '221600', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320324', '320300', '156-320000-320300-320324-', '0', '睢宁县', '睢宁县', '', '', '', '320324', '221200', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320381', '320300', '156-320000-320300-320381-', '0', '新沂市', '新沂市', '', '', '', '320381', '221400', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320382', '320300', '156-320000-320300-320382-', '0', '邳州市', '邳州市', '', '', '', '320382', '221300', '0516', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320400', '320000', '156-320000-320400-', '0', '常州', '常州市', '', '', '', '320400', '213000', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320401', '320400', '156-320000-320400-320401-', '0', '市辖区', '市辖区', '', '', '', '320401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320402', '320400', '156-320000-320400-320402-', '0', '天宁区', '天宁区', '', '', '', '320402', '213000', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320404', '320400', '156-320000-320400-320404-', '0', '钟楼区', '钟楼区', '', '', '', '320404', '213000', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320405', '320400', '156-320000-320400-320405-', '0', '戚墅堰区', '戚墅堰区', '', '', '', '320405', '213000', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320411', '320400', '156-320000-320400-320411-', '0', '新北区', '新北区', '', '', '', '320411', '213001', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320412', '320400', '156-320000-320400-320412-', '0', '武进区', '武进区', '', '', '', '320412', '213100', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320481', '320400', '156-320000-320400-320481-', '0', '溧阳市', '溧阳市', '', '', '', '320481', '213300', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320482', '320400', '156-320000-320400-320482-', '0', '金坛市', '金坛市', '', '', '', '320482', '213200', '0519', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320500', '320000', '156-320000-320500-', '0', '苏州', '苏州市', '', '', '', '320500', '215000', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320501', '320500', '156-320000-320500-320501-', '0', '市辖区', '市辖区', '', '', '', '320501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320505', '320500', '156-320000-320500-320505-', '0', '虎丘区', '虎丘区', '', '', '', '320505', '215000', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320506', '320500', '156-320000-320500-320506-', '0', '吴中区', '吴中区', '', '', '', '320506', '215100', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320507', '320500', '156-320000-320500-320507-', '0', '相城区', '相城区', '', '', '', '320507', '215100', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320508', '320500', '156-320000-320500-320508-', '0', '姑苏区', '姑苏区', '', '', '', '320508', '215008', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320509', '320500', '156-320000-320500-320509-', '0', '吴江区', '吴江区', '', '', '', '320509', '215200', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320581', '320500', '156-320000-320500-320581-', '0', '常熟市', '常熟市', '', '', '', '320581', '215500', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320582', '320500', '156-320000-320500-320582-', '0', '张家港市', '张家港市', '', '', '', '320582', '215600', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320583', '320500', '156-320000-320500-320583-', '0', '昆山市', '昆山市', '', '', '', '320583', '215300', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320585', '320500', '156-320000-320500-320585-', '0', '太仓市', '太仓市', '', '', '', '320585', '215400', '0512', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320600', '320000', '156-320000-320600-', '0', '南通', '南通市', '', '', '', '320600', '226000', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320601', '320600', '156-320000-320600-320601-', '0', '市辖区', '市辖区', '', '', '', '320601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320602', '320600', '156-320000-320600-320602-', '0', '崇川区', '崇川区', '', '', '', '320602', '226000', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320611', '320600', '156-320000-320600-320611-', '0', '港闸区', '港闸区', '', '', '', '320611', '226000', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320612', '320600', '156-320000-320600-320612-', '0', '通州区', '通州区', '', '', '', '320612', '226300', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320621', '320600', '156-320000-320600-320621-', '0', '海安县', '海安县', '', '', '', '320621', '226600', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320623', '320600', '156-320000-320600-320623-', '0', '如东县', '如东县', '', '', '', '320623', '226400', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320681', '320600', '156-320000-320600-320681-', '0', '启东市', '启东市', '', '', '', '320681', '226200', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320682', '320600', '156-320000-320600-320682-', '0', '如皋市', '如皋市', '', '', '', '320682', '226500', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320684', '320600', '156-320000-320600-320684-', '0', '海门市', '海门市', '', '', '', '320684', '226100', '0513', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320700', '320000', '156-320000-320700-', '0', '连云港', '连云港市', '', '', '', '320700', '222000', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320701', '320700', '156-320000-320700-320701-', '0', '市辖区', '市辖区', '', '', '', '320701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320703', '320700', '156-320000-320700-320703-', '0', '连云区', '连云区', '', '', '', '320703', '222000', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320705', '320700', '156-320000-320700-320705-', '0', '新浦区', '新浦区', '', '', '', '320705', '222000', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320706', '320700', '156-320000-320700-320706-', '0', '海州区', '海州区', '', '', '', '320706', '222000', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320721', '320700', '156-320000-320700-320721-', '0', '赣榆县', '赣榆县', '', '', '', '320721', '222100', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320722', '320700', '156-320000-320700-320722-', '0', '东海县', '东海县', '', '', '', '320722', '222300', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320723', '320700', '156-320000-320700-320723-', '0', '灌云县', '灌云县', '', '', '', '320723', '222200', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320724', '320700', '156-320000-320700-320724-', '0', '灌南县', '灌南县', '', '', '', '320724', '223500', '0518', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320800', '320000', '156-320000-320800-', '0', '淮安', '淮安市', '', '', '', '320800', '223001', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320801', '320800', '156-320000-320800-320801-', '0', '市辖区', '市辖区', '', '', '', '320801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320802', '320800', '156-320000-320800-320802-', '0', '清河区', '清河区', '', '', '', '320802', '223001', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320803', '320800', '156-320000-320800-320803-', '0', '淮安区', '淮安区', '', '', '', '320803', '223200', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320804', '320800', '156-320000-320800-320804-', '0', '淮阴区', '淮阴区', '', '', '', '320804', '223300', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320811', '320800', '156-320000-320800-320811-', '0', '清浦区', '清浦区', '', '', '', '320811', '223001', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320826', '320800', '156-320000-320800-320826-', '0', '涟水县', '涟水县', '', '', '', '320826', '223400', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320829', '320800', '156-320000-320800-320829-', '0', '洪泽县', '洪泽县', '', '', '', '320829', '223100', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320830', '320800', '156-320000-320800-320830-', '0', '盱眙县', '盱眙县', '', '', '', '320830', '211700', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320831', '320800', '156-320000-320800-320831-', '0', '金湖县', '金湖县', '', '', '', '320831', '211600', '0517', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320900', '320000', '156-320000-320900-', '0', '盐城', '盐城市', '', '', '', '320900', '224000', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320901', '320900', '156-320000-320900-320901-', '0', '市辖区', '市辖区', '', '', '', '320901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320902', '320900', '156-320000-320900-320902-', '0', '亭湖区', '亭湖区', '', '', '', '320902', '0', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320903', '320900', '156-320000-320900-320903-', '0', '盐都区', '盐都区', '', '', '', '320903', '224000', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320921', '320900', '156-320000-320900-320921-', '0', '响水县', '响水县', '', '', '', '320921', '224600', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320922', '320900', '156-320000-320900-320922-', '0', '滨海县', '滨海县', '', '', '', '320922', '224000', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320923', '320900', '156-320000-320900-320923-', '0', '阜宁县', '阜宁县', '', '', '', '320923', '224400', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320924', '320900', '156-320000-320900-320924-', '0', '射阳县', '射阳县', '', '', '', '320924', '224300', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320925', '320900', '156-320000-320900-320925-', '0', '建湖县', '建湖县', '', '', '', '320925', '224700', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320981', '320900', '156-320000-320900-320981-', '0', '东台市', '东台市', '', '', '', '320981', '224200', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('320982', '320900', '156-320000-320900-320982-', '0', '大丰市', '大丰市', '', '', '', '320982', '224100', '0515', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321000', '320000', '156-320000-321000-', '0', '扬州', '扬州市', '', '', '', '321000', '225000', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321001', '321000', '156-320000-321000-321001-', '0', '市辖区', '市辖区', '', '', '', '321001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321002', '321000', '156-320000-321000-321002-', '0', '广陵区', '广陵区', '', '', '', '321002', '225000', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321003', '321000', '156-320000-321000-321003-', '0', '邗江区', '邗江区', '', '', '', '321003', '225100', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321012', '321000', '156-320000-321000-321012-', '0', '江都区', '江都区', '', '', '', '321012', '225200', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321023', '321000', '156-320000-321000-321023-', '0', '宝应县', '宝应县', '', '', '', '321023', '225800', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321081', '321000', '156-320000-321000-321081-', '0', '仪征市', '仪征市', '', '', '', '321081', '211400', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321084', '321000', '156-320000-321000-321084-', '0', '高邮市', '高邮市', '', '', '', '321084', '225600', '0514', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321100', '320000', '156-320000-321100-', '0', '镇江', '镇江市', '', '', '', '321100', '212000', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321101', '321100', '156-320000-321100-321101-', '0', '市辖区', '市辖区', '', '', '', '321101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321102', '321100', '156-320000-321100-321102-', '0', '京口区', '京口区', '', '', '', '321102', '212000', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321111', '321100', '156-320000-321100-321111-', '0', '润州区', '润州区', '', '', '', '321111', '212000', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321112', '321100', '156-320000-321100-321112-', '0', '丹徒区', '丹徒区', '', '', '', '321112', '212100', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321181', '321100', '156-320000-321100-321181-', '0', '丹阳市', '丹阳市', '', '', '', '321181', '212300', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321182', '321100', '156-320000-321100-321182-', '0', '扬中市', '扬中市', '', '', '', '321182', '212200', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321183', '321100', '156-320000-321100-321183-', '0', '句容市', '句容市', '', '', '', '321183', '212400', '0511', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321200', '320000', '156-320000-321200-', '0', '泰州', '泰州市', '', '', '', '321200', '225300', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321201', '321200', '156-320000-321200-321201-', '0', '市辖区', '市辖区', '', '', '', '321201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321202', '321200', '156-320000-321200-321202-', '0', '海陵区', '海陵区', '', '', '', '321202', '225300', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321203', '321200', '156-320000-321200-321203-', '0', '高港区', '高港区', '', '', '', '321203', '225300', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321281', '321200', '156-320000-321200-321281-', '0', '兴化市', '兴化市', '', '', '', '321281', '225700', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321282', '321200', '156-320000-321200-321282-', '0', '靖江市', '靖江市', '', '', '', '321282', '214500', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321283', '321200', '156-320000-321200-321283-', '0', '泰兴市', '泰兴市', '', '', '', '321283', '225400', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321284', '321200', '156-320000-321200-321284-', '0', '姜堰市', '姜堰市', '', '', '', '321284', '225500', '0523', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321300', '320000', '156-320000-321300-', '0', '宿迁', '宿迁市', '', '', '', '321300', '223800', '0527', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321301', '321300', '156-320000-321300-321301-', '0', '市辖区', '市辖区', '', '', '', '321301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321302', '321300', '156-320000-321300-321302-', '0', '宿城区', '宿城区', '', '', '', '321302', '223800', '0527', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321311', '321300', '156-320000-321300-321311-', '0', '宿豫区', '宿豫区', '', '', '', '321311', '223800', '0527', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321322', '321300', '156-320000-321300-321322-', '0', '沭阳县', '沭阳县', '', '', '', '321322', '223600', '0527', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321323', '321300', '156-320000-321300-321323-', '0', '泗阳县', '泗阳县', '', '', '', '321323', '223700', '0527', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('321324', '321300', '156-320000-321300-321324-', '0', '泗洪县', '泗洪县', '', '', '', '321324', '223900', '0527', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330000', '156', '156-330000-', '0', '浙江', '浙江省', 'ZheJiang', 'ZheJiang', 'ZJ', '330000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330100', '330000', '156-330000-330100-', '0', '杭州', '杭州市', '', '', '', '330100', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330101', '330100', '156-330000-330100-330101-', '0', '市辖区', '市辖区', '', '', '', '330101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330102', '330100', '156-330000-330100-330102-', '0', '上城区', '上城区', '', '', '', '330102', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330103', '330100', '156-330000-330100-330103-', '0', '下城区', '下城区', '', '', '', '330103', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330104', '330100', '156-330000-330100-330104-', '0', '江干区', '江干区', '', '', '', '330104', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330105', '330100', '156-330000-330100-330105-', '0', '拱墅区', '拱墅区', '', '', '', '330105', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330106', '330100', '156-330000-330100-330106-', '0', '西湖区', '西湖区', '', '', '', '330106', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330108', '330100', '156-330000-330100-330108-', '0', '滨江区', '滨江区', '', '', '', '330108', '310000', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330109', '330100', '156-330000-330100-330109-', '0', '萧山区', '萧山区', '', '', '', '330109', '311200', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330110', '330100', '156-330000-330100-330110-', '0', '余杭区', '余杭区', '', '', '', '330110', '311100', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330122', '330100', '156-330000-330100-330122-', '0', '桐庐县', '桐庐县', '', '', '', '330122', '311500', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330127', '330100', '156-330000-330100-330127-', '0', '淳安县', '淳安县', '', '', '', '330127', '311700', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330182', '330100', '156-330000-330100-330182-', '0', '建德市', '建德市', '', '', '', '330182', '311600', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330183', '330100', '156-330000-330100-330183-', '0', '富阳市', '富阳市', '', '', '', '330183', '311400', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330185', '330100', '156-330000-330100-330185-', '0', '临安市', '临安市', '', '', '', '330185', '311300', '0571', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330200', '330000', '156-330000-330200-', '0', '宁波', '宁波市', '', '', '', '330200', '315000', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330201', '330200', '156-330000-330200-330201-', '0', '市辖区', '市辖区', '', '', '', '330201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330203', '330200', '156-330000-330200-330203-', '0', '海曙区', '海曙区', '', '', '', '330203', '315000', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330204', '330200', '156-330000-330200-330204-', '0', '江东区', '江东区', '', '', '', '330204', '315000', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330205', '330200', '156-330000-330200-330205-', '0', '江北区', '江北区', '', '', '', '330205', '315000', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330206', '330200', '156-330000-330200-330206-', '0', '北仑区', '北仑区', '', '', '', '330206', '315800', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330211', '330200', '156-330000-330200-330211-', '0', '镇海区', '镇海区', '', '', '', '330211', '315200', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330212', '330200', '156-330000-330200-330212-', '0', '鄞州区', '鄞州区', '', '', '', '330212', '315100', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330225', '330200', '156-330000-330200-330225-', '0', '象山县', '象山县', '', '', '', '330225', '315700', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330226', '330200', '156-330000-330200-330226-', '0', '宁海县', '宁海县', '', '', '', '330226', '315600', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330281', '330200', '156-330000-330200-330281-', '0', '余姚市', '余姚市', '', '', '', '330281', '315400', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330282', '330200', '156-330000-330200-330282-', '0', '慈溪市', '慈溪市', '', '', '', '330282', '315300', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330283', '330200', '156-330000-330200-330283-', '0', '奉化市', '奉化市', '', '', '', '330283', '315500', '0574', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330300', '330000', '156-330000-330300-', '0', '温州', '温州市', '', '', '', '330300', '325000', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330301', '330300', '156-330000-330300-330301-', '0', '市辖区', '市辖区', '', '', '', '330301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330302', '330300', '156-330000-330300-330302-', '0', '鹿城区', '鹿城区', '', '', '', '330302', '325000', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330303', '330300', '156-330000-330300-330303-', '0', '龙湾区', '龙湾区', '', '', '', '330303', '325000', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330304', '330300', '156-330000-330300-330304-', '0', '瓯海区', '瓯海区', '', '', '', '330304', '325000', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330322', '330300', '156-330000-330300-330322-', '0', '洞头县', '洞头县', '', '', '', '330322', '325700', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330324', '330300', '156-330000-330300-330324-', '0', '永嘉县', '永嘉县', '', '', '', '330324', '325100', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330326', '330300', '156-330000-330300-330326-', '0', '平阳县', '平阳县', '', '', '', '330326', '325400', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330327', '330300', '156-330000-330300-330327-', '0', '苍南县', '苍南县', '', '', '', '330327', '325800', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330328', '330300', '156-330000-330300-330328-', '0', '文成县', '文成县', '', '', '', '330328', '325300', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330329', '330300', '156-330000-330300-330329-', '0', '泰顺县', '泰顺县', '', '', '', '330329', '325500', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330381', '330300', '156-330000-330300-330381-', '0', '瑞安市', '瑞安市', '', '', '', '330381', '325200', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330382', '330300', '156-330000-330300-330382-', '0', '乐清市', '乐清市', '', '', '', '330382', '325600', '0577', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330400', '330000', '156-330000-330400-', '0', '嘉兴', '嘉兴市', '', '', '', '330400', '314000', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330401', '330400', '156-330000-330400-330401-', '0', '市辖区', '市辖区', '', '', '', '330401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330402', '330400', '156-330000-330400-330402-', '0', '南湖区', '南湖区', '', '', '', '330402', '314001', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330411', '330400', '156-330000-330400-330411-', '0', '秀洲区', '秀洲区', '', '', '', '330411', '314000', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330421', '330400', '156-330000-330400-330421-', '0', '嘉善县', '嘉善县', '', '', '', '330421', '314100', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330424', '330400', '156-330000-330400-330424-', '0', '海盐县', '海盐县', '', '', '', '330424', '314300', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330481', '330400', '156-330000-330400-330481-', '0', '海宁市', '海宁市', '', '', '', '330481', '314400', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330482', '330400', '156-330000-330400-330482-', '0', '平湖市', '平湖市', '', '', '', '330482', '314200', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330483', '330400', '156-330000-330400-330483-', '0', '桐乡市', '桐乡市', '', '', '', '330483', '314500', '0573', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330500', '330000', '156-330000-330500-', '0', '湖州', '湖州市', '', '', '', '330500', '313000', '0572', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330501', '330500', '156-330000-330500-330501-', '0', '市辖区', '市辖区', '', '', '', '330501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330502', '330500', '156-330000-330500-330502-', '0', '吴兴区', '吴兴区', '', '', '', '330502', '313000', '0572', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330503', '330500', '156-330000-330500-330503-', '0', '南浔区', '南浔区', '', '', '', '330503', '313000', '0572', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330521', '330500', '156-330000-330500-330521-', '0', '德清县', '德清县', '', '', '', '330521', '313200', '0572', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330522', '330500', '156-330000-330500-330522-', '0', '长兴县', '长兴县', '', '', '', '330522', '313100', '0572', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330523', '330500', '156-330000-330500-330523-', '0', '安吉县', '安吉县', '', '', '', '330523', '313300', '0572', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330600', '330000', '156-330000-330600-', '0', '绍兴', '绍兴市', '', '', '', '330600', '312000', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330601', '330600', '156-330000-330600-330601-', '0', '市辖区', '市辖区', '', '', '', '330601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330602', '330600', '156-330000-330600-330602-', '0', '越城区', '越城区', '', '', '', '330602', '312000', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330621', '330600', '156-330000-330600-330621-', '0', '绍兴县', '绍兴县', '', '', '', '330621', '312000', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330624', '330600', '156-330000-330600-330624-', '0', '新昌县', '新昌县', '', '', '', '330624', '312500', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330681', '330600', '156-330000-330600-330681-', '0', '诸暨市', '诸暨市', '', '', '', '330681', '311800', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330682', '330600', '156-330000-330600-330682-', '0', '上虞市', '上虞市', '', '', '', '330682', '312300', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330683', '330600', '156-330000-330600-330683-', '0', '嵊州市', '嵊州市', '', '', '', '330683', '312400', '0575', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330700', '330000', '156-330000-330700-', '0', '金华', '金华市', '', '', '', '330700', '321000', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330701', '330700', '156-330000-330700-330701-', '0', '市辖区', '市辖区', '', '', '', '330701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330702', '330700', '156-330000-330700-330702-', '0', '婺城区', '婺城区', '', '', '', '330702', '321000', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330703', '330700', '156-330000-330700-330703-', '0', '金东区', '金东区', '', '', '', '330703', '321000', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330723', '330700', '156-330000-330700-330723-', '0', '武义县', '武义县', '', '', '', '330723', '321200', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330726', '330700', '156-330000-330700-330726-', '0', '浦江县', '浦江县', '', '', '', '330726', '322200', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330727', '330700', '156-330000-330700-330727-', '0', '磐安县', '磐安县', '', '', '', '330727', '322300', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330781', '330700', '156-330000-330700-330781-', '0', '兰溪市', '兰溪市', '', '', '', '330781', '321100', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330782', '330700', '156-330000-330700-330782-', '0', '义乌市', '义乌市', '', '', '', '330782', '322000', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330783', '330700', '156-330000-330700-330783-', '0', '东阳市', '东阳市', '', '', '', '330783', '322100', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330784', '330700', '156-330000-330700-330784-', '0', '永康市', '永康市', '', '', '', '330784', '321300', '0579', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330800', '330000', '156-330000-330800-', '0', '衢州', '衢州市', '', '', '', '330800', '324000', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330801', '330800', '156-330000-330800-330801-', '0', '市辖区', '市辖区', '', '', '', '330801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330802', '330800', '156-330000-330800-330802-', '0', '柯城区', '柯城区', '', '', '', '330802', '324000', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330803', '330800', '156-330000-330800-330803-', '0', '衢江区', '衢江区', '', '', '', '330803', '324000', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330822', '330800', '156-330000-330800-330822-', '0', '常山县', '常山县', '', '', '', '330822', '324200', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330824', '330800', '156-330000-330800-330824-', '0', '开化县', '开化县', '', '', '', '330824', '324300', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330825', '330800', '156-330000-330800-330825-', '0', '龙游县', '龙游县', '', '', '', '330825', '324400', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330881', '330800', '156-330000-330800-330881-', '0', '江山市', '江山市', '', '', '', '330881', '324100', '0570', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330900', '330000', '156-330000-330900-', '0', '舟山', '舟山市', '', '', '', '330900', '316000', '0580', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330901', '330900', '156-330000-330900-330901-', '0', '市辖区', '市辖区', '', '', '', '330901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330902', '330900', '156-330000-330900-330902-', '0', '定海区', '定海区', '', '', '', '330902', '316000', '0580', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330903', '330900', '156-330000-330900-330903-', '0', '普陀区', '普陀区', '', '', '', '330903', '316100', '0580', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330921', '330900', '156-330000-330900-330921-', '0', '岱山县', '岱山县', '', '', '', '330921', '316200', '0580', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('330922', '330900', '156-330000-330900-330922-', '0', '嵊泗县', '嵊泗县', '', '', '', '330922', '202450', '0580', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331000', '330000', '156-330000-331000-', '0', '台州', '台州市', '', '', '', '331000', '318000', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331001', '331000', '156-330000-331000-331001-', '0', '市辖区', '市辖区', '', '', '', '331001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331002', '331000', '156-330000-331000-331002-', '0', '椒江区', '椒江区', '', '', '', '331002', '317700', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331003', '331000', '156-330000-331000-331003-', '0', '黄岩区', '黄岩区', '', '', '', '331003', '318020', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331004', '331000', '156-330000-331000-331004-', '0', '路桥区', '路桥区', '', '', '', '331004', '318000', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331021', '331000', '156-330000-331000-331021-', '0', '玉环县', '玉环县', '', '', '', '331021', '317600', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331022', '331000', '156-330000-331000-331022-', '0', '三门县', '三门县', '', '', '', '331022', '317100', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331023', '331000', '156-330000-331000-331023-', '0', '天台县', '天台县', '', '', '', '331023', '317200', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331024', '331000', '156-330000-331000-331024-', '0', '仙居县', '仙居县', '', '', '', '331024', '317300', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331081', '331000', '156-330000-331000-331081-', '0', '温岭市', '温岭市', '', '', '', '331081', '317500', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331082', '331000', '156-330000-331000-331082-', '0', '临海市', '临海市', '', '', '', '331082', '317000', '0576', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331100', '330000', '156-330000-331100-', '0', '丽水', '丽水市', '', '', '', '331100', '323000', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331101', '331100', '156-330000-331100-331101-', '0', '市辖区', '市辖区', '', '', '', '331101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331102', '331100', '156-330000-331100-331102-', '0', '莲都区', '莲都区', '', '', '', '331102', '323000', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331121', '331100', '156-330000-331100-331121-', '0', '青田县', '青田县', '', '', '', '331121', '323900', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331122', '331100', '156-330000-331100-331122-', '0', '缙云县', '缙云县', '', '', '', '331122', '321400', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331123', '331100', '156-330000-331100-331123-', '0', '遂昌县', '遂昌县', '', '', '', '331123', '323300', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331124', '331100', '156-330000-331100-331124-', '0', '松阳县', '松阳县', '', '', '', '331124', '323400', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331125', '331100', '156-330000-331100-331125-', '0', '云和县', '云和县', '', '', '', '331125', '323600', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331126', '331100', '156-330000-331100-331126-', '0', '庆元县', '庆元县', '', '', '', '331126', '323800', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331127', '331100', '156-330000-331100-331127-', '0', '景宁畲族自治县', '景宁畲族自治县', '', '', '', '331127', '323500', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('331181', '331100', '156-330000-331100-331181-', '0', '龙泉市', '龙泉市', '', '', '', '331181', '323700', '0578', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340000', '156', '156-340000-', '0', '安徽', '安徽省', 'AnHui', 'AnHui', 'AH', '340000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340100', '340000', '156-340000-340100-', '0', '合肥', '合肥市', '', '', '', '340100', '230000', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340101', '340100', '156-340000-340100-340101-', '0', '市辖区', '市辖区', '', '', '', '340101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340102', '340100', '156-340000-340100-340102-', '0', '瑶海区', '瑶海区', '', '', '', '340102', '230000', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340103', '340100', '156-340000-340100-340103-', '0', '庐阳区', '庐阳区', '', '', '', '340103', '230000', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340104', '340100', '156-340000-340100-340104-', '0', '蜀山区', '蜀山区', '', '', '', '340104', '230000', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340111', '340100', '156-340000-340100-340111-', '0', '包河区', '包河区', '', '', '', '340111', '230000', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340121', '340100', '156-340000-340100-340121-', '0', '长丰县', '长丰县', '', '', '', '340121', '231100', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340122', '340100', '156-340000-340100-340122-', '0', '肥东县', '肥东县', '', '', '', '340122', '230000', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340123', '340100', '156-340000-340100-340123-', '0', '肥西县', '肥西县', '', '', '', '340123', '231200', '0551', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340124', '340100', '156-340000-340100-340124-', '0', '庐江县', '庐江县', '', '', '', '340124', '231500', '0565', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340181', '340100', '156-340000-340100-340181-', '0', '巢湖', '巢湖市', '', '', '', '340181', '238000', '0565', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340200', '340000', '156-340000-340200-', '0', '芜湖', '芜湖市', '', '', '', '340200', '241000', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340201', '340200', '156-340000-340200-340201-', '0', '市辖区', '市辖区', '', '', '', '340201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340202', '340200', '156-340000-340200-340202-', '0', '镜湖区', '镜湖区', '', '', '', '340202', '241000', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340203', '340200', '156-340000-340200-340203-', '0', '弋江区', '弋江区', '', '', '', '340203', '241000', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340207', '340200', '156-340000-340200-340207-', '0', '鸠江区', '鸠江区', '', '', '', '340207', '241000', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340208', '340200', '156-340000-340200-340208-', '0', '三山区', '三山区', '', '', '', '340208', '241000', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340221', '340200', '156-340000-340200-340221-', '0', '芜湖县', '芜湖县', '', '', '', '340221', '241100', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340222', '340200', '156-340000-340200-340222-', '0', '繁昌县', '繁昌县', '', '', '', '340222', '241200', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340223', '340200', '156-340000-340200-340223-', '0', '南陵县', '南陵县', '', '', '', '340223', '242400', '0553', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340225', '340200', '156-340000-340200-340225-', '0', '无为县', '无为县', '', '', '', '340225', '238300', '0565', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340300', '340000', '156-340000-340300-', '0', '蚌埠', '蚌埠市', '', '', '', '340300', '233000', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340301', '340300', '156-340000-340300-340301-', '0', '市辖区', '市辖区', '', '', '', '340301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340302', '340300', '156-340000-340300-340302-', '0', '龙子湖区', '龙子湖区', '', '', '', '340302', '233000', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340303', '340300', '156-340000-340300-340303-', '0', '蚌山区', '蚌山区', '', '', '', '340303', '233000', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340304', '340300', '156-340000-340300-340304-', '0', '禹会区', '禹会区', '', '', '', '340304', '233000', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340311', '340300', '156-340000-340300-340311-', '0', '淮上区', '淮上区', '', '', '', '340311', '233000', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340321', '340300', '156-340000-340300-340321-', '0', '怀远县', '怀远县', '', '', '', '340321', '233400', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340322', '340300', '156-340000-340300-340322-', '0', '五河县', '五河县', '', '', '', '340322', '233300', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340323', '340300', '156-340000-340300-340323-', '0', '固镇县', '固镇县', '', '', '', '340323', '233700', '0552', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340400', '340000', '156-340000-340400-', '0', '淮南', '淮南市', '', '', '', '340400', '232000', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340401', '340400', '156-340000-340400-340401-', '0', '市辖区', '市辖区', '', '', '', '340401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340402', '340400', '156-340000-340400-340402-', '0', '大通区', '大通区', '', '', '', '340402', '232000', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340403', '340400', '156-340000-340400-340403-', '0', '田家庵区', '田家庵区', '', '', '', '340403', '232000', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340404', '340400', '156-340000-340400-340404-', '0', '谢家集区', '谢家集区', '', '', '', '340404', '232000', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340405', '340400', '156-340000-340400-340405-', '0', '八公山区', '八公山区', '', '', '', '340405', '232000', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340406', '340400', '156-340000-340400-340406-', '0', '潘集区', '潘集区', '', '', '', '340406', '232000', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340421', '340400', '156-340000-340400-340421-', '0', '凤台县', '凤台县', '', '', '', '340421', '232100', '0554', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340500', '340000', '156-340000-340500-', '0', '马鞍山', '马鞍山市', '', '', '', '340500', '243000', '0555', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340501', '340500', '156-340000-340500-340501-', '0', '市辖区', '市辖区', '', '', '', '340501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340503', '340500', '156-340000-340500-340503-', '0', '花山区', '花山区', '', '', '', '340503', '243000', '0555', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340504', '340500', '156-340000-340500-340504-', '0', '雨山区', '雨山区', '', '', '', '340504', '243000', '0555', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340506', '340500', '156-340000-340500-340506-', '0', '博望区', '博望区', '', '', '', '340506', '0', '0555', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340521', '340500', '156-340000-340500-340521-', '0', '当涂县', '当涂县', '', '', '', '340521', '243100', '0555', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340522', '340500', '156-340000-340500-340522-', '0', '含山县', '含山县', '', '', '', '340522', '238100', '0565', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340523', '340500', '156-340000-340500-340523-', '0', '和县', '和县', '', '', '', '340523', '238200', '0565', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340600', '340000', '156-340000-340600-', '0', '淮北', '淮北市', '', '', '', '340600', '235000', '0561', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340601', '340600', '156-340000-340600-340601-', '0', '市辖区', '市辖区', '', '', '', '340601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340602', '340600', '156-340000-340600-340602-', '0', '杜集区', '杜集区', '', '', '', '340602', '235000', '0561', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340603', '340600', '156-340000-340600-340603-', '0', '相山区', '相山区', '', '', '', '340603', '235000', '0561', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340604', '340600', '156-340000-340600-340604-', '0', '烈山区', '烈山区', '', '', '', '340604', '235000', '0561', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340621', '340600', '156-340000-340600-340621-', '0', '濉溪县', '濉溪县', '', '', '', '340621', '235100', '0561', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340700', '340000', '156-340000-340700-', '0', '铜陵', '铜陵市', '', '', '', '340700', '244000', '0562', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340701', '340700', '156-340000-340700-340701-', '0', '市辖区', '市辖区', '', '', '', '340701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340702', '340700', '156-340000-340700-340702-', '0', '铜官山区', '铜官山区', '', '', '', '340702', '244000', '0562', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340703', '340700', '156-340000-340700-340703-', '0', '狮子山区', '狮子山区', '', '', '', '340703', '244000', '0562', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340711', '340700', '156-340000-340700-340711-', '0', '郊区', '郊区', '', '', '', '340711', '246000', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340721', '340700', '156-340000-340700-340721-', '0', '铜陵县', '铜陵县', '', '', '', '340721', '244100', '0562', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340800', '340000', '156-340000-340800-', '0', '安庆', '安庆市', '', '', '', '340800', '246000', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340801', '340800', '156-340000-340800-340801-', '0', '市辖区', '市辖区', '', '', '', '340801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340802', '340800', '156-340000-340800-340802-', '0', '迎江区', '迎江区', '', '', '', '340802', '246000', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340803', '340800', '156-340000-340800-340803-', '0', '大观区', '大观区', '', '', '', '340803', '246000', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340811', '340800', '156-340000-340800-340811-', '0', '宜秀区', '宜秀区', '', '', '', '340811', '246003', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340822', '340800', '156-340000-340800-340822-', '0', '怀宁县', '怀宁县', '', '', '', '340822', '246100', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340823', '340800', '156-340000-340800-340823-', '0', '枞阳县', '枞阳县', '', '', '', '340823', '246700', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340824', '340800', '156-340000-340800-340824-', '0', '潜山县', '潜山县', '', '', '', '340824', '246300', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340825', '340800', '156-340000-340800-340825-', '0', '太湖县', '太湖县', '', '', '', '340825', '246400', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340826', '340800', '156-340000-340800-340826-', '0', '宿松县', '宿松县', '', '', '', '340826', '246500', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340827', '340800', '156-340000-340800-340827-', '0', '望江县', '望江县', '', '', '', '340827', '246200', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340828', '340800', '156-340000-340800-340828-', '0', '岳西县', '岳西县', '', '', '', '340828', '246600', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('340881', '340800', '156-340000-340800-340881-', '0', '桐城市', '桐城市', '', '', '', '340881', '231400', '0556', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341000', '340000', '156-340000-341000-', '0', '黄山', '黄山市', '', '', '', '341000', '245000', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341001', '341000', '156-340000-341000-341001-', '0', '市辖区', '市辖区', '', '', '', '341001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341002', '341000', '156-340000-341000-341002-', '0', '屯溪区', '屯溪区', '', '', '', '341002', '245000', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341003', '341000', '156-340000-341000-341003-', '0', '黄山区', '黄山区', '', '', '', '341003', '245000', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341004', '341000', '156-340000-341000-341004-', '0', '徽州区', '徽州区', '', '', '', '341004', '245061', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341021', '341000', '156-340000-341000-341021-', '0', '歙县', '歙县', '', '', '', '341021', '245200', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341022', '341000', '156-340000-341000-341022-', '0', '休宁县', '休宁县', '', '', '', '341022', '245400', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341023', '341000', '156-340000-341000-341023-', '0', '黟县', '黟县', '', '', '', '341023', '245500', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341024', '341000', '156-340000-341000-341024-', '0', '祁门县', '祁门县', '', '', '', '341024', '245600', '0559', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341100', '340000', '156-340000-341100-', '0', '滁州', '滁州市', '', '', '', '341100', '239000', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341101', '341100', '156-340000-341100-341101-', '0', '市辖区', '市辖区', '', '', '', '341101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341102', '341100', '156-340000-341100-341102-', '0', '琅琊区', '琅琊区', '', '', '', '341102', '239000', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341103', '341100', '156-340000-341100-341103-', '0', '南谯区', '南谯区', '', '', '', '341103', '239000', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341122', '341100', '156-340000-341100-341122-', '0', '来安县', '来安县', '', '', '', '341122', '239200', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341124', '341100', '156-340000-341100-341124-', '0', '全椒县', '全椒县', '', '', '', '341124', '239500', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341125', '341100', '156-340000-341100-341125-', '0', '定远县', '定远县', '', '', '', '341125', '233200', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341126', '341100', '156-340000-341100-341126-', '0', '凤阳县', '凤阳县', '', '', '', '341126', '233100', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341181', '341100', '156-340000-341100-341181-', '0', '天长市', '天长市', '', '', '', '341181', '239300', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341182', '341100', '156-340000-341100-341182-', '0', '明光市', '明光市', '', '', '', '341182', '239400', '0550', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341200', '340000', '156-340000-341200-', '0', '阜阳', '阜阳市', '', '', '', '341200', '236000', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341201', '341200', '156-340000-341200-341201-', '0', '市辖区', '市辖区', '', '', '', '341201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341202', '341200', '156-340000-341200-341202-', '0', '颍州区', '颍州区', '', '', '', '341202', '236000', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341203', '341200', '156-340000-341200-341203-', '0', '颍东区', '颍东区', '', '', '', '341203', '236000', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341204', '341200', '156-340000-341200-341204-', '0', '颍泉区', '颍泉区', '', '', '', '341204', '236000', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341221', '341200', '156-340000-341200-341221-', '0', '临泉县', '临泉县', '', '', '', '341221', '236400', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341222', '341200', '156-340000-341200-341222-', '0', '太和县', '太和县', '', '', '', '341222', '236600', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341225', '341200', '156-340000-341200-341225-', '0', '阜南县', '阜南县', '', '', '', '341225', '236300', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341226', '341200', '156-340000-341200-341226-', '0', '颍上县', '颍上县', '', '', '', '341226', '236200', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341282', '341200', '156-340000-341200-341282-', '0', '界首市', '界首市', '', '', '', '341282', '236500', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341300', '340000', '156-340000-341300-', '0', '宿州', '宿州市', '', '', '', '341300', '234000', '0557', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341301', '341300', '156-340000-341300-341301-', '0', '市辖区', '市辖区', '', '', '', '341301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341302', '341300', '156-340000-341300-341302-', '0', '墉桥区', '墉桥区', '', '', '', '341302', '234000', '0557', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341321', '341300', '156-340000-341300-341321-', '0', '砀山县', '砀山县', '', '', '', '341321', '235300', '0557', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341322', '341300', '156-340000-341300-341322-', '0', '萧县', '萧县', '', '', '', '341322', '235200', '0557', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341323', '341300', '156-340000-341300-341323-', '0', '灵璧县', '灵璧县', '', '', '', '341323', '234200', '0557', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341324', '341300', '156-340000-341300-341324-', '0', '泗县', '泗县', '', '', '', '341324', '234300', '0557', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341500', '340000', '156-340000-341500-', '0', '六安', '六安市', '', '', '', '341500', '237000', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341501', '341500', '156-340000-341500-341501-', '0', '市辖区', '市辖区', '', '', '', '341501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341502', '341500', '156-340000-341500-341502-', '0', '金安区', '金安区', '', '', '', '341502', '237000', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341503', '341500', '156-340000-341500-341503-', '0', '裕安区', '裕安区', '', '', '', '341503', '237000', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341521', '341500', '156-340000-341500-341521-', '0', '寿县', '寿县', '', '', '', '341521', '232200', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341522', '341500', '156-340000-341500-341522-', '0', '霍邱县', '霍邱县', '', '', '', '341522', '237400', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341523', '341500', '156-340000-341500-341523-', '0', '舒城县', '舒城县', '', '', '', '341523', '231300', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341524', '341500', '156-340000-341500-341524-', '0', '金寨县', '金寨县', '', '', '', '341524', '237300', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341525', '341500', '156-340000-341500-341525-', '0', '霍山县', '霍山县', '', '', '', '341525', '237200', '0564', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341600', '340000', '156-340000-341600-', '0', '亳州', '亳州市', '', '', '', '341600', '236000', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341601', '341600', '156-340000-341600-341601-', '0', '市辖区', '市辖区', '', '', '', '341601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341602', '341600', '156-340000-341600-341602-', '0', '谯城区', '谯城区', '', '', '', '341602', '236800', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341621', '341600', '156-340000-341600-341621-', '0', '涡阳县', '涡阳县', '', '', '', '341621', '233600', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341622', '341600', '156-340000-341600-341622-', '0', '蒙城县', '蒙城县', '', '', '', '341622', '233500', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341623', '341600', '156-340000-341600-341623-', '0', '利辛县', '利辛县', '', '', '', '341623', '236700', '0558', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341700', '340000', '156-340000-341700-', '0', '池州', '池州市', '', '', '', '341700', '247100', '0566', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341701', '341700', '156-340000-341700-341701-', '0', '市辖区', '市辖区', '', '', '', '341701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341702', '341700', '156-340000-341700-341702-', '0', '贵池区', '贵池区', '', '', '', '341702', '247100', '0566', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341721', '341700', '156-340000-341700-341721-', '0', '东至县', '东至县', '', '', '', '341721', '247200', '0566', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341722', '341700', '156-340000-341700-341722-', '0', '石台县', '石台县', '', '', '', '341722', '245100', '0566', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341723', '341700', '156-340000-341700-341723-', '0', '青阳县', '青阳县', '', '', '', '341723', '242800', '0566', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341800', '340000', '156-340000-341800-', '0', '宣城', '宣城市', '', '', '', '341800', '242000', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341801', '341800', '156-340000-341800-341801-', '0', '市辖区', '市辖区', '', '', '', '341801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341802', '341800', '156-340000-341800-341802-', '0', '宣州区', '宣州区', '', '', '', '341802', '242000', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341821', '341800', '156-340000-341800-341821-', '0', '郎溪县', '郎溪县', '', '', '', '341821', '242100', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341822', '341800', '156-340000-341800-341822-', '0', '广德县', '广德县', '', '', '', '341822', '242200', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341823', '341800', '156-340000-341800-341823-', '0', '泾县', '泾县', '', '', '', '341823', '242500', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341824', '341800', '156-340000-341800-341824-', '0', '绩溪县', '绩溪县', '', '', '', '341824', '245300', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341825', '341800', '156-340000-341800-341825-', '0', '旌德县', '旌德县', '', '', '', '341825', '242600', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('341881', '341800', '156-340000-341800-341881-', '0', '宁国市', '宁国市', '', '', '', '341881', '242300', '0563', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350000', '156', '156-350000-', '0', '福建', '福建省', 'FuJian', 'FuJian', 'FJ', '350000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350100', '350000', '156-350000-350100-', '0', '福州', '福州市', '', '', '', '350100', '350000', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350101', '350100', '156-350000-350100-350101-', '0', '市辖区', '市辖区', '', '', '', '350101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350102', '350100', '156-350000-350100-350102-', '0', '鼓楼区', '鼓楼区', '', '', '', '350102', '350000', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350103', '350100', '156-350000-350100-350103-', '0', '台江区', '台江区', '', '', '', '350103', '350000', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350104', '350100', '156-350000-350100-350104-', '0', '仓山区', '仓山区', '', '', '', '350104', '350000', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350105', '350100', '156-350000-350100-350105-', '0', '马尾区', '马尾区', '', '', '', '350105', '350000', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350111', '350100', '156-350000-350100-350111-', '0', '晋安区', '晋安区', '', '', '', '350111', '350000', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350121', '350100', '156-350000-350100-350121-', '0', '闽侯县', '闽侯县', '', '', '', '350121', '350100', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350122', '350100', '156-350000-350100-350122-', '0', '连江县', '连江县', '', '', '', '350122', '350500', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350123', '350100', '156-350000-350100-350123-', '0', '罗源县', '罗源县', '', '', '', '350123', '350600', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350124', '350100', '156-350000-350100-350124-', '0', '闽清县', '闽清县', '', '', '', '350124', '350800', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350125', '350100', '156-350000-350100-350125-', '0', '永泰县', '永泰县', '', '', '', '350125', '350700', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350128', '350100', '156-350000-350100-350128-', '0', '平潭县', '平潭县', '', '', '', '350128', '350400', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350181', '350100', '156-350000-350100-350181-', '0', '福清市', '福清市', '', '', '', '350181', '350300', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350182', '350100', '156-350000-350100-350182-', '0', '长乐市', '长乐市', '', '', '', '350182', '350200', '0591', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350200', '350000', '156-350000-350200-', '0', '厦门', '厦门市', '', '', '', '350200', '361000', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350201', '350200', '156-350000-350200-350201-', '0', '市辖区', '市辖区', '', '', '', '350201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350203', '350200', '156-350000-350200-350203-', '0', '思明区', '思明区', '', '', '', '350203', '361000', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350205', '350200', '156-350000-350200-350205-', '0', '海沧区', '海沧区', '', '', '', '350205', '361000', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350206', '350200', '156-350000-350200-350206-', '0', '湖里区', '湖里区', '', '', '', '350206', '361000', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350211', '350200', '156-350000-350200-350211-', '0', '集美区', '集美区', '', '', '', '350211', '361000', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350212', '350200', '156-350000-350200-350212-', '0', '同安区', '同安区', '', '', '', '350212', '361100', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350213', '350200', '156-350000-350200-350213-', '0', '翔安区', '翔安区', '', '', '', '350213', '361100', '0592', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350300', '350000', '156-350000-350300-', '0', '莆田', '莆田市', '', '', '', '350300', '351100', '0594', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350301', '350300', '156-350000-350300-350301-', '0', '市辖区', '市辖区', '', '', '', '350301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350302', '350300', '156-350000-350300-350302-', '0', '城厢区', '城厢区', '', '', '', '350302', '351100', '0594', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350303', '350300', '156-350000-350300-350303-', '0', '涵江区', '涵江区', '', '', '', '350303', '351100', '0594', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350304', '350300', '156-350000-350300-350304-', '0', '荔城区', '荔城区', '', '', '', '350304', '351100', '0594', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350305', '350300', '156-350000-350300-350305-', '0', '秀屿区', '秀屿区', '', '', '', '350305', '351100', '0594', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350322', '350300', '156-350000-350300-350322-', '0', '仙游县', '仙游县', '', '', '', '350322', '351200', '0594', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350400', '350000', '156-350000-350400-', '0', '三明', '三明市', '', '', '', '350400', '365000', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350401', '350400', '156-350000-350400-350401-', '0', '市辖区', '市辖区', '', '', '', '350401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350402', '350400', '156-350000-350400-350402-', '0', '梅列区', '梅列区', '', '', '', '350402', '365000', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350403', '350400', '156-350000-350400-350403-', '0', '三元区', '三元区', '', '', '', '350403', '365000', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350421', '350400', '156-350000-350400-350421-', '0', '明溪县', '明溪县', '', '', '', '350421', '365200', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350423', '350400', '156-350000-350400-350423-', '0', '清流县', '清流县', '', '', '', '350423', '365300', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350424', '350400', '156-350000-350400-350424-', '0', '宁化县', '宁化县', '', '', '', '350424', '365400', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350425', '350400', '156-350000-350400-350425-', '0', '大田县', '大田县', '', '', '', '350425', '366100', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350426', '350400', '156-350000-350400-350426-', '0', '尤溪县', '尤溪县', '', '', '', '350426', '365100', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350427', '350400', '156-350000-350400-350427-', '0', '沙县', '沙县', '', '', '', '350427', '365500', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350428', '350400', '156-350000-350400-350428-', '0', '将乐县', '将乐县', '', '', '', '350428', '353300', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350429', '350400', '156-350000-350400-350429-', '0', '泰宁县', '泰宁县', '', '', '', '350429', '354400', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350430', '350400', '156-350000-350400-350430-', '0', '建宁县', '建宁县', '', '', '', '350430', '354500', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350481', '350400', '156-350000-350400-350481-', '0', '永安市', '永安市', '', '', '', '350481', '366000', '0598', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350500', '350000', '156-350000-350500-', '0', '泉州', '泉州市', '', '', '', '350500', '362000', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350501', '350500', '156-350000-350500-350501-', '0', '市辖区', '市辖区', '', '', '', '350501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350502', '350500', '156-350000-350500-350502-', '0', '鲤城区', '鲤城区', '', '', '', '350502', '362000', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350503', '350500', '156-350000-350500-350503-', '0', '丰泽区', '丰泽区', '', '', '', '350503', '362000', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350504', '350500', '156-350000-350500-350504-', '0', '洛江区', '洛江区', '', '', '', '350504', '362000', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350505', '350500', '156-350000-350500-350505-', '0', '泉港区', '泉港区', '', '', '', '350505', '362100', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350521', '350500', '156-350000-350500-350521-', '0', '惠安县', '惠安县', '', '', '', '350521', '362100', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350524', '350500', '156-350000-350500-350524-', '0', '安溪县', '安溪县', '', '', '', '350524', '362400', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350525', '350500', '156-350000-350500-350525-', '0', '永春县', '永春县', '', '', '', '350525', '362600', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350526', '350500', '156-350000-350500-350526-', '0', '德化县', '德化县', '', '', '', '350526', '362500', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350527', '350500', '156-350000-350500-350527-', '0', '金门县', '金门县', '', '', '', '350527', '362000', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350581', '350500', '156-350000-350500-350581-', '0', '石狮市', '石狮市', '', '', '', '350581', '362700', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350582', '350500', '156-350000-350500-350582-', '0', '晋江市', '晋江市', '', '', '', '350582', '362200', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350583', '350500', '156-350000-350500-350583-', '0', '南安市', '南安市', '', '', '', '350583', '362300', '0595', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350600', '350000', '156-350000-350600-', '0', '漳州', '漳州市', '', '', '', '350600', '363000', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350601', '350600', '156-350000-350600-350601-', '0', '市辖区', '市辖区', '', '', '', '350601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350602', '350600', '156-350000-350600-350602-', '0', '芗城区', '芗城区', '', '', '', '350602', '363000', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350603', '350600', '156-350000-350600-350603-', '0', '龙文区', '龙文区', '', '', '', '350603', '363000', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350622', '350600', '156-350000-350600-350622-', '0', '云霄县', '云霄县', '', '', '', '350622', '363300', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350623', '350600', '156-350000-350600-350623-', '0', '漳浦县', '漳浦县', '', '', '', '350623', '363200', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350624', '350600', '156-350000-350600-350624-', '0', '诏安县', '诏安县', '', '', '', '350624', '363500', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350625', '350600', '156-350000-350600-350625-', '0', '长泰县', '长泰县', '', '', '', '350625', '363900', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350626', '350600', '156-350000-350600-350626-', '0', '东山县', '东山县', '', '', '', '350626', '363400', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350627', '350600', '156-350000-350600-350627-', '0', '南靖县', '南靖县', '', '', '', '350627', '363600', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350628', '350600', '156-350000-350600-350628-', '0', '平和县', '平和县', '', '', '', '350628', '363700', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350629', '350600', '156-350000-350600-350629-', '0', '华安县', '华安县', '', '', '', '350629', '363800', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350681', '350600', '156-350000-350600-350681-', '0', '龙海市', '龙海市', '', '', '', '350681', '363100', '0596', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350700', '350000', '156-350000-350700-', '0', '南平', '南平市', '', '', '', '350700', '353000', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350701', '350700', '156-350000-350700-350701-', '0', '市辖区', '市辖区', '', '', '', '350701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350702', '350700', '156-350000-350700-350702-', '0', '延平区', '延平区', '', '', '', '350702', '353000', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350721', '350700', '156-350000-350700-350721-', '0', '顺昌县', '顺昌县', '', '', '', '350721', '353200', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350722', '350700', '156-350000-350700-350722-', '0', '浦城县', '浦城县', '', '', '', '350722', '353400', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350723', '350700', '156-350000-350700-350723-', '0', '光泽县', '光泽县', '', '', '', '350723', '354100', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350724', '350700', '156-350000-350700-350724-', '0', '松溪县', '松溪县', '', '', '', '350724', '353500', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350725', '350700', '156-350000-350700-350725-', '0', '政和县', '政和县', '', '', '', '350725', '353600', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350781', '350700', '156-350000-350700-350781-', '0', '邵武市', '邵武市', '', '', '', '350781', '354000', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350782', '350700', '156-350000-350700-350782-', '0', '武夷山市', '武夷山市', '', '', '', '350782', '354300', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350783', '350700', '156-350000-350700-350783-', '0', '建瓯市', '建瓯市', '', '', '', '350783', '353100', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350784', '350700', '156-350000-350700-350784-', '0', '建阳市', '建阳市', '', '', '', '350784', '354200', '0599', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350800', '350000', '156-350000-350800-', '0', '龙岩', '龙岩市', '', '', '', '350800', '364000', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350801', '350800', '156-350000-350800-350801-', '0', '市辖区', '市辖区', '', '', '', '350801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350802', '350800', '156-350000-350800-350802-', '0', '新罗区', '新罗区', '', '', '', '350802', '364000', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350821', '350800', '156-350000-350800-350821-', '0', '长汀县', '长汀县', '', '', '', '350821', '366300', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350822', '350800', '156-350000-350800-350822-', '0', '永定县', '永定县', '', '', '', '350822', '364100', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350823', '350800', '156-350000-350800-350823-', '0', '上杭县', '上杭县', '', '', '', '350823', '364200', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350824', '350800', '156-350000-350800-350824-', '0', '武平县', '武平县', '', '', '', '350824', '364300', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350825', '350800', '156-350000-350800-350825-', '0', '连城县', '连城县', '', '', '', '350825', '366200', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350881', '350800', '156-350000-350800-350881-', '0', '漳平市', '漳平市', '', '', '', '350881', '364400', '0597', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350900', '350000', '156-350000-350900-', '0', '宁德', '宁德市', '', '', '', '350900', '352000', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350901', '350900', '156-350000-350900-350901-', '0', '市辖区', '市辖区', '', '', '', '350901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350902', '350900', '156-350000-350900-350902-', '0', '蕉城区', '蕉城区', '', '', '', '350902', '352000', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350921', '350900', '156-350000-350900-350921-', '0', '霞浦县', '霞浦县', '', '', '', '350921', '355100', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350922', '350900', '156-350000-350900-350922-', '0', '古田县', '古田县', '', '', '', '350922', '352200', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350923', '350900', '156-350000-350900-350923-', '0', '屏南县', '屏南县', '', '', '', '350923', '352300', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350924', '350900', '156-350000-350900-350924-', '0', '寿宁县', '寿宁县', '', '', '', '350924', '355500', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350925', '350900', '156-350000-350900-350925-', '0', '周宁县', '周宁县', '', '', '', '350925', '355400', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350926', '350900', '156-350000-350900-350926-', '0', '柘荣县', '柘荣县', '', '', '', '350926', '355300', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350981', '350900', '156-350000-350900-350981-', '0', '福安市', '福安市', '', '', '', '350981', '355000', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('350982', '350900', '156-350000-350900-350982-', '0', '福鼎市', '福鼎市', '', '', '', '350982', '355200', '0593', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360000', '156', '156-360000-', '0', '江西', '江西省', 'JiangXi', 'JiangXi', 'JX', '360000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360100', '360000', '156-360000-360100-', '0', '南昌', '南昌市', '', '', '', '360100', '330000', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360101', '360100', '156-360000-360100-360101-', '0', '市辖区', '市辖区', '', '', '', '360101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360102', '360100', '156-360000-360100-360102-', '0', '东湖区', '东湖区', '', '', '', '360102', '330000', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360103', '360100', '156-360000-360100-360103-', '0', '西湖区', '西湖区', '', '', '', '360103', '330000', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360104', '360100', '156-360000-360100-360104-', '0', '青云谱区', '青云谱区', '', '', '', '360104', '330000', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360105', '360100', '156-360000-360100-360105-', '0', '湾里区', '湾里区', '', '', '', '360105', '330000', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360111', '360100', '156-360000-360100-360111-', '0', '青山湖区', '青山湖区', '', '', '', '360111', '330006', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360121', '360100', '156-360000-360100-360121-', '0', '南昌县', '南昌县', '', '', '', '360121', '330200', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360122', '360100', '156-360000-360100-360122-', '0', '新建县', '新建县', '', '', '', '360122', '330100', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360123', '360100', '156-360000-360100-360123-', '0', '安义县', '安义县', '', '', '', '360123', '330500', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360124', '360100', '156-360000-360100-360124-', '0', '进贤县', '进贤县', '', '', '', '360124', '331700', '0791', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360200', '360000', '156-360000-360200-', '0', '景德镇', '景德镇市', '', '', '', '360200', '333000', '0798', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360201', '360200', '156-360000-360200-360201-', '0', '市辖区', '市辖区', '', '', '', '360201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360202', '360200', '156-360000-360200-360202-', '0', '昌江区', '昌江区', '', '', '', '360202', '333000', '0798', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360203', '360200', '156-360000-360200-360203-', '0', '珠山区', '珠山区', '', '', '', '360203', '333000', '0798', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360222', '360200', '156-360000-360200-360222-', '0', '浮梁县', '浮梁县', '', '', '', '360222', '333400', '0798', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360281', '360200', '156-360000-360200-360281-', '0', '乐平市', '乐平市', '', '', '', '360281', '333300', '0798', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360300', '360000', '156-360000-360300-', '0', '萍乡', '萍乡市', '', '', '', '360300', '337000', '0799', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360301', '360300', '156-360000-360300-360301-', '0', '市辖区', '市辖区', '', '', '', '360301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360302', '360300', '156-360000-360300-360302-', '0', '安源区', '安源区', '', '', '', '360302', '337000', '0799', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360313', '360300', '156-360000-360300-360313-', '0', '湘东区', '湘东区', '', '', '', '360313', '337000', '0799', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360321', '360300', '156-360000-360300-360321-', '0', '莲花县', '莲花县', '', '', '', '360321', '337100', '0799', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360322', '360300', '156-360000-360300-360322-', '0', '上栗县', '上栗县', '', '', '', '360322', '337000', '0799', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360323', '360300', '156-360000-360300-360323-', '0', '芦溪县', '芦溪县', '', '', '', '360323', '337000', '0799', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360400', '360000', '156-360000-360400-', '0', '九江', '九江市', '', '', '', '360400', '332000', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360401', '360400', '156-360000-360400-360401-', '0', '市辖区', '市辖区', '', '', '', '360401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360402', '360400', '156-360000-360400-360402-', '0', '庐山区', '庐山区', '', '', '', '360402', '332900', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360403', '360400', '156-360000-360400-360403-', '0', '浔阳区', '浔阳区', '', '', '', '360403', '332000', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360421', '360400', '156-360000-360400-360421-', '0', '九江县', '九江县', '', '', '', '360421', '332100', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360423', '360400', '156-360000-360400-360423-', '0', '武宁县', '武宁县', '', '', '', '360423', '332300', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360424', '360400', '156-360000-360400-360424-', '0', '修水县', '修水县', '', '', '', '360424', '332400', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360425', '360400', '156-360000-360400-360425-', '0', '永修县', '永修县', '', '', '', '360425', '330300', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360426', '360400', '156-360000-360400-360426-', '0', '德安县', '德安县', '', '', '', '360426', '330400', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360427', '360400', '156-360000-360400-360427-', '0', '星子县', '星子县', '', '', '', '360427', '332800', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360428', '360400', '156-360000-360400-360428-', '0', '都昌县', '都昌县', '', '', '', '360428', '332600', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360429', '360400', '156-360000-360400-360429-', '0', '湖口县', '湖口县', '', '', '', '360429', '332500', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360430', '360400', '156-360000-360400-360430-', '0', '彭泽县', '彭泽县', '', '', '', '360430', '332700', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360481', '360400', '156-360000-360400-360481-', '0', '瑞昌市', '瑞昌市', '', '', '', '360481', '332200', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360482', '360400', '156-360000-360400-360482-', '0', '共青城市', '共青城市', '', '', '', '360482', '0', '0792', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360500', '360000', '156-360000-360500-', '0', '新余', '新余市', '', '', '', '360500', '338000', '0790', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360501', '360500', '156-360000-360500-360501-', '0', '市辖区', '市辖区', '', '', '', '360501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360502', '360500', '156-360000-360500-360502-', '0', '渝水区', '渝水区', '', '', '', '360502', '338000', '0790', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360521', '360500', '156-360000-360500-360521-', '0', '分宜县', '分宜县', '', '', '', '360521', '336600', '0790', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360600', '360000', '156-360000-360600-', '0', '鹰潭', '鹰潭市', '', '', '', '360600', '335000', '0701', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360601', '360600', '156-360000-360600-360601-', '0', '市辖区', '市辖区', '', '', '', '360601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360602', '360600', '156-360000-360600-360602-', '0', '月湖区', '月湖区', '', '', '', '360602', '335000', '0701', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360622', '360600', '156-360000-360600-360622-', '0', '余江县', '余江县', '', '', '', '360622', '335200', '0701', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360681', '360600', '156-360000-360600-360681-', '0', '贵溪市', '贵溪市', '', '', '', '360681', '335400', '0701', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360700', '360000', '156-360000-360700-', '0', '赣州', '赣州市', '', '', '', '360700', '341000', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360701', '360700', '156-360000-360700-360701-', '0', '市辖区', '市辖区', '', '', '', '360701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360702', '360700', '156-360000-360700-360702-', '0', '章贡区', '章贡区', '', '', '', '360702', '341000', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360721', '360700', '156-360000-360700-360721-', '0', '赣县', '赣县', '', '', '', '360721', '341100', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360722', '360700', '156-360000-360700-360722-', '0', '信丰县', '信丰县', '', '', '', '360722', '341600', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360723', '360700', '156-360000-360700-360723-', '0', '大余县', '大余县', '', '', '', '360723', '341500', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360724', '360700', '156-360000-360700-360724-', '0', '上犹县', '上犹县', '', '', '', '360724', '341200', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360725', '360700', '156-360000-360700-360725-', '0', '崇义县', '崇义县', '', '', '', '360725', '341300', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360726', '360700', '156-360000-360700-360726-', '0', '安远县', '安远县', '', '', '', '360726', '342100', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360727', '360700', '156-360000-360700-360727-', '0', '龙南县', '龙南县', '', '', '', '360727', '341700', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360728', '360700', '156-360000-360700-360728-', '0', '定南县', '定南县', '', '', '', '360728', '341900', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360729', '360700', '156-360000-360700-360729-', '0', '全南县', '全南县', '', '', '', '360729', '341800', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360730', '360700', '156-360000-360700-360730-', '0', '宁都县', '宁都县', '', '', '', '360730', '342800', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360731', '360700', '156-360000-360700-360731-', '0', '于都县', '于都县', '', '', '', '360731', '342300', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360732', '360700', '156-360000-360700-360732-', '0', '兴国县', '兴国县', '', '', '', '360732', '342400', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360733', '360700', '156-360000-360700-360733-', '0', '会昌县', '会昌县', '', '', '', '360733', '342600', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360734', '360700', '156-360000-360700-360734-', '0', '寻乌县', '寻乌县', '', '', '', '360734', '342200', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360735', '360700', '156-360000-360700-360735-', '0', '石城县', '石城县', '', '', '', '360735', '342700', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360781', '360700', '156-360000-360700-360781-', '0', '瑞金市', '瑞金市', '', '', '', '360781', '342500', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360782', '360700', '156-360000-360700-360782-', '0', '南康市', '南康市', '', '', '', '360782', '341400', '0797', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360800', '360000', '156-360000-360800-', '0', '吉安', '吉安市', '', '', '', '360800', '343000', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360801', '360800', '156-360000-360800-360801-', '0', '市辖区', '市辖区', '', '', '', '360801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360802', '360800', '156-360000-360800-360802-', '0', '吉州区', '吉州区', '', '', '', '360802', '343000', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360803', '360800', '156-360000-360800-360803-', '0', '青原区', '青原区', '', '', '', '360803', '343000', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360821', '360800', '156-360000-360800-360821-', '0', '吉安县', '吉安县', '', '', '', '360821', '343100', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360822', '360800', '156-360000-360800-360822-', '0', '吉水县', '吉水县', '', '', '', '360822', '331600', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360823', '360800', '156-360000-360800-360823-', '0', '峡江县', '峡江县', '', '', '', '360823', '331400', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360824', '360800', '156-360000-360800-360824-', '0', '新干县', '新干县', '', '', '', '360824', '331300', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360825', '360800', '156-360000-360800-360825-', '0', '永丰县', '永丰县', '', '', '', '360825', '331500', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360826', '360800', '156-360000-360800-360826-', '0', '泰和县', '泰和县', '', '', '', '360826', '343700', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360827', '360800', '156-360000-360800-360827-', '0', '遂川县', '遂川县', '', '', '', '360827', '343900', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360828', '360800', '156-360000-360800-360828-', '0', '万安县', '万安县', '', '', '', '360828', '343800', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360829', '360800', '156-360000-360800-360829-', '0', '安福县', '安福县', '', '', '', '360829', '343200', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360830', '360800', '156-360000-360800-360830-', '0', '永新县', '永新县', '', '', '', '360830', '343400', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360881', '360800', '156-360000-360800-360881-', '0', '井冈山市', '井冈山市', '', '', '', '360881', '343600', '0796', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360900', '360000', '156-360000-360900-', '0', '宜春', '宜春市', '', '', '', '360900', '336000', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360901', '360900', '156-360000-360900-360901-', '0', '市辖区', '市辖区', '', '', '', '360901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360902', '360900', '156-360000-360900-360902-', '0', '袁州区', '袁州区', '', '', '', '360902', '336000', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360921', '360900', '156-360000-360900-360921-', '0', '奉新县', '奉新县', '', '', '', '360921', '330700', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360922', '360900', '156-360000-360900-360922-', '0', '万载县', '万载县', '', '', '', '360922', '336100', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360923', '360900', '156-360000-360900-360923-', '0', '上高县', '上高县', '', '', '', '360923', '336400', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360924', '360900', '156-360000-360900-360924-', '0', '宜丰县', '宜丰县', '', '', '', '360924', '336300', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360925', '360900', '156-360000-360900-360925-', '0', '靖安县', '靖安县', '', '', '', '360925', '330600', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360926', '360900', '156-360000-360900-360926-', '0', '铜鼓县', '铜鼓县', '', '', '', '360926', '336200', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360981', '360900', '156-360000-360900-360981-', '0', '丰城市', '丰城市', '', '', '', '360981', '331100', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360982', '360900', '156-360000-360900-360982-', '0', '樟树市', '樟树市', '', '', '', '360982', '331200', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('360983', '360900', '156-360000-360900-360983-', '0', '高安市', '高安市', '', '', '', '360983', '330800', '0795', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361000', '360000', '156-360000-361000-', '0', '抚州', '抚州市', '', '', '', '361000', '344000', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361001', '361000', '156-360000-361000-361001-', '0', '市辖区', '市辖区', '', '', '', '361001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361002', '361000', '156-360000-361000-361002-', '0', '临川区', '临川区', '', '', '', '361002', '344100', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361021', '361000', '156-360000-361000-361021-', '0', '南城县', '南城县', '', '', '', '361021', '344700', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361022', '361000', '156-360000-361000-361022-', '0', '黎川县', '黎川县', '', '', '', '361022', '344600', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361023', '361000', '156-360000-361000-361023-', '0', '南丰县', '南丰县', '', '', '', '361023', '344500', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361024', '361000', '156-360000-361000-361024-', '0', '崇仁县', '崇仁县', '', '', '', '361024', '344200', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361025', '361000', '156-360000-361000-361025-', '0', '乐安县', '乐安县', '', '', '', '361025', '344300', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361026', '361000', '156-360000-361000-361026-', '0', '宜黄县', '宜黄县', '', '', '', '361026', '344400', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361027', '361000', '156-360000-361000-361027-', '0', '金溪县', '金溪县', '', '', '', '361027', '344800', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361028', '361000', '156-360000-361000-361028-', '0', '资溪县', '资溪县', '', '', '', '361028', '335300', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361029', '361000', '156-360000-361000-361029-', '0', '东乡县', '东乡县', '', '', '', '361029', '331800', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361030', '361000', '156-360000-361000-361030-', '0', '广昌县', '广昌县', '', '', '', '361030', '344900', '0794', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361100', '360000', '156-360000-361100-', '0', '上饶', '上饶市', '', '', '', '361100', '334000', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361101', '361100', '156-360000-361100-361101-', '0', '市辖区', '市辖区', '', '', '', '361101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361102', '361100', '156-360000-361100-361102-', '0', '信州区', '信州区', '', '', '', '361102', '334000', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361121', '361100', '156-360000-361100-361121-', '0', '上饶县', '上饶县', '', '', '', '361121', '334100', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361122', '361100', '156-360000-361100-361122-', '0', '广丰县', '广丰县', '', '', '', '361122', '334600', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361123', '361100', '156-360000-361100-361123-', '0', '玉山县', '玉山县', '', '', '', '361123', '334700', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361124', '361100', '156-360000-361100-361124-', '0', '铅山县', '铅山县', '', '', '', '361124', '334500', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361125', '361100', '156-360000-361100-361125-', '0', '横峰县', '横峰县', '', '', '', '361125', '334300', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361126', '361100', '156-360000-361100-361126-', '0', '弋阳县', '弋阳县', '', '', '', '361126', '334400', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361127', '361100', '156-360000-361100-361127-', '0', '余干县', '余干县', '', '', '', '361127', '335100', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361128', '361100', '156-360000-361100-361128-', '0', '鄱阳县', '鄱阳县', '', '', '', '361128', '333100', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361129', '361100', '156-360000-361100-361129-', '0', '万年县', '万年县', '', '', '', '361129', '335500', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361130', '361100', '156-360000-361100-361130-', '0', '婺源县', '婺源县', '', '', '', '361130', '333200', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('361181', '361100', '156-360000-361100-361181-', '0', '德兴市', '德兴市', '', '', '', '361181', '334200', '0793', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370000', '156', '156-370000-', '0', '山东', '山东省', 'ShanDong', 'ShanDong', 'SD', '370000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370100', '370000', '156-370000-370100-', '0', '济南', '济南市', '', '', '', '370100', '250000', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370101', '370100', '156-370000-370100-370101-', '0', '市辖区', '市辖区', '', '', '', '370101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370102', '370100', '156-370000-370100-370102-', '0', '历下区', '历下区', '', '', '', '370102', '250000', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370103', '370100', '156-370000-370100-370103-', '0', '市中区', '市中区', '', '', '', '370103', '250000', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370104', '370100', '156-370000-370100-370104-', '0', '槐荫区', '槐荫区', '', '', '', '370104', '250000', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370105', '370100', '156-370000-370100-370105-', '0', '天桥区', '天桥区', '', '', '', '370105', '250000', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370112', '370100', '156-370000-370100-370112-', '0', '历城区', '历城区', '', '', '', '370112', '250100', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370113', '370100', '156-370000-370100-370113-', '0', '长清区', '长清区', '', '', '', '370113', '250300', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370124', '370100', '156-370000-370100-370124-', '0', '平阴县', '平阴县', '', '', '', '370124', '250400', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370125', '370100', '156-370000-370100-370125-', '0', '济阳县', '济阳县', '', '', '', '370125', '251400', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370126', '370100', '156-370000-370100-370126-', '0', '商河县', '商河县', '', '', '', '370126', '251600', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370181', '370100', '156-370000-370100-370181-', '0', '章丘市', '章丘市', '', '', '', '370181', '250200', '0531', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370200', '370000', '156-370000-370200-', '0', '青岛', '青岛市', '', '', '', '370200', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370201', '370200', '156-370000-370200-370201-', '0', '市辖区', '市辖区', '', '', '', '370201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370202', '370200', '156-370000-370200-370202-', '0', '市南区', '市南区', '', '', '', '370202', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370203', '370200', '156-370000-370200-370203-', '0', '市北区', '市北区', '', '', '', '370203', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370205', '370200', '156-370000-370200-370205-', '0', '四方区', '四方区', '', '', '', '370205', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370211', '370200', '156-370000-370200-370211-', '0', '黄岛区', '黄岛区', '', '', '', '370211', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370212', '370200', '156-370000-370200-370212-', '0', '崂山区', '崂山区', '', '', '', '370212', '266100', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370213', '370200', '156-370000-370200-370213-', '0', '李沧区', '李沧区', '', '', '', '370213', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370214', '370200', '156-370000-370200-370214-', '0', '城阳区', '城阳区', '', '', '', '370214', '266000', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370281', '370200', '156-370000-370200-370281-', '0', '胶州市', '胶州市', '', '', '', '370281', '266300', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370282', '370200', '156-370000-370200-370282-', '0', '即墨市', '即墨市', '', '', '', '370282', '266200', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370283', '370200', '156-370000-370200-370283-', '0', '平度市', '平度市', '', '', '', '370283', '266700', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370284', '370200', '156-370000-370200-370284-', '0', '胶南市', '胶南市', '', '', '', '370284', '266400', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370285', '370200', '156-370000-370200-370285-', '0', '莱西市', '莱西市', '', '', '', '370285', '266600', '0532', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370300', '370000', '156-370000-370300-', '0', '淄博', '淄博市', '', '', '', '370300', '255000', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370301', '370300', '156-370000-370300-370301-', '0', '市辖区', '市辖区', '', '', '', '370301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370302', '370300', '156-370000-370300-370302-', '0', '淄川区', '淄川区', '', '', '', '370302', '255100', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370303', '370300', '156-370000-370300-370303-', '0', '张店区', '张店区', '', '', '', '370303', '255000', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370304', '370300', '156-370000-370300-370304-', '0', '博山区', '博山区', '', '', '', '370304', '255200', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370305', '370300', '156-370000-370300-370305-', '0', '临淄区', '临淄区', '', '', '', '370305', '255400', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370306', '370300', '156-370000-370300-370306-', '0', '周村区', '周村区', '', '', '', '370306', '255300', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370321', '370300', '156-370000-370300-370321-', '0', '桓台县', '桓台县', '', '', '', '370321', '256400', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370322', '370300', '156-370000-370300-370322-', '0', '高青县', '高青县', '', '', '', '370322', '256300', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370323', '370300', '156-370000-370300-370323-', '0', '沂源县', '沂源县', '', '', '', '370323', '256100', '0533', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370400', '370000', '156-370000-370400-', '0', '枣庄', '枣庄市', '', '', '', '370400', '277000', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370401', '370400', '156-370000-370400-370401-', '0', '市辖区', '市辖区', '', '', '', '370401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370402', '370400', '156-370000-370400-370402-', '0', '市中区', '市中区', '', '', '', '370402', '277000', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370403', '370400', '156-370000-370400-370403-', '0', '薛城区', '薛城区', '', '', '', '370403', '277000', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370404', '370400', '156-370000-370400-370404-', '0', '峄城区', '峄城区', '', '', '', '370404', '277300', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370405', '370400', '156-370000-370400-370405-', '0', '台儿庄区', '台儿庄区', '', '', '', '370405', '277400', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370406', '370400', '156-370000-370400-370406-', '0', '山亭区', '山亭区', '', '', '', '370406', '277200', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370481', '370400', '156-370000-370400-370481-', '0', '滕州市', '滕州市', '', '', '', '370481', '277500', '0632', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370500', '370000', '156-370000-370500-', '0', '东营', '东营市', '', '', '', '370500', '257000', '0546', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370501', '370500', '156-370000-370500-370501-', '0', '市辖区', '市辖区', '', '', '', '370501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370502', '370500', '156-370000-370500-370502-', '0', '东营区', '东营区', '', '', '', '370502', '257100', '0546', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370503', '370500', '156-370000-370500-370503-', '0', '河口区', '河口区', '', '', '', '370503', '257200', '0546', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370521', '370500', '156-370000-370500-370521-', '0', '垦利县', '垦利县', '', '', '', '370521', '257500', '0546', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370522', '370500', '156-370000-370500-370522-', '0', '利津县', '利津县', '', '', '', '370522', '257400', '0546', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370523', '370500', '156-370000-370500-370523-', '0', '广饶县', '广饶县', '', '', '', '370523', '257300', '0546', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370600', '370000', '156-370000-370600-', '0', '烟台', '烟台市', '', '', '', '370600', '264000', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370601', '370600', '156-370000-370600-370601-', '0', '市辖区', '市辖区', '', '', '', '370601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370602', '370600', '156-370000-370600-370602-', '0', '芝罘区', '芝罘区', '', '', '', '370602', '264000', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370611', '370600', '156-370000-370600-370611-', '0', '福山区', '福山区', '', '', '', '370611', '265500', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370612', '370600', '156-370000-370600-370612-', '0', '牟平区', '牟平区', '', '', '', '370612', '264100', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370613', '370600', '156-370000-370600-370613-', '0', '莱山区', '莱山区', '', '', '', '370613', '264000', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370634', '370600', '156-370000-370600-370634-', '0', '长岛县', '长岛县', '', '', '', '370634', '265800', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370681', '370600', '156-370000-370600-370681-', '0', '龙口市', '龙口市', '', '', '', '370681', '265700', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370682', '370600', '156-370000-370600-370682-', '0', '莱阳市', '莱阳市', '', '', '', '370682', '265200', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370683', '370600', '156-370000-370600-370683-', '0', '莱州市', '莱州市', '', '', '', '370683', '261400', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370684', '370600', '156-370000-370600-370684-', '0', '蓬莱市', '蓬莱市', '', '', '', '370684', '265600', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370685', '370600', '156-370000-370600-370685-', '0', '招远市', '招远市', '', '', '', '370685', '265400', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370686', '370600', '156-370000-370600-370686-', '0', '栖霞市', '栖霞市', '', '', '', '370686', '265300', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370687', '370600', '156-370000-370600-370687-', '0', '海阳市', '海阳市', '', '', '', '370687', '265100', '0535', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370700', '370000', '156-370000-370700-', '0', '潍坊', '潍坊市', '', '', '', '370700', '261000', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370701', '370700', '156-370000-370700-370701-', '0', '市辖区', '市辖区', '', '', '', '370701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370702', '370700', '156-370000-370700-370702-', '0', '潍城区', '潍城区', '', '', '', '370702', '261000', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370703', '370700', '156-370000-370700-370703-', '0', '寒亭区', '寒亭区', '', '', '', '370703', '261100', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370704', '370700', '156-370000-370700-370704-', '0', '坊子区', '坊子区', '', '', '', '370704', '261200', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370705', '370700', '156-370000-370700-370705-', '0', '奎文区', '奎文区', '', '', '', '370705', '261000', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370724', '370700', '156-370000-370700-370724-', '0', '临朐县', '临朐县', '', '', '', '370724', '262600', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370725', '370700', '156-370000-370700-370725-', '0', '昌乐县', '昌乐县', '', '', '', '370725', '262400', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370781', '370700', '156-370000-370700-370781-', '0', '青州市', '青州市', '', '', '', '370781', '262500', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370782', '370700', '156-370000-370700-370782-', '0', '诸城市', '诸城市', '', '', '', '370782', '262200', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370783', '370700', '156-370000-370700-370783-', '0', '寿光市', '寿光市', '', '', '', '370783', '262700', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370784', '370700', '156-370000-370700-370784-', '0', '安丘市', '安丘市', '', '', '', '370784', '262100', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370785', '370700', '156-370000-370700-370785-', '0', '高密市', '高密市', '', '', '', '370785', '261500', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370786', '370700', '156-370000-370700-370786-', '0', '昌邑市', '昌邑市', '', '', '', '370786', '261300', '0536', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370800', '370000', '156-370000-370800-', '0', '济宁', '济宁市', '', '', '', '370800', '272000', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370801', '370800', '156-370000-370800-370801-', '0', '市辖区', '市辖区', '', '', '', '370801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370802', '370800', '156-370000-370800-370802-', '0', '市中区', '市中区', '', '', '', '370802', '272000', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370811', '370800', '156-370000-370800-370811-', '0', '任城区', '任城区', '', '', '', '370811', '272000', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370826', '370800', '156-370000-370800-370826-', '0', '微山县', '微山县', '', '', '', '370826', '277600', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370827', '370800', '156-370000-370800-370827-', '0', '鱼台县', '鱼台县', '', '', '', '370827', '272300', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370828', '370800', '156-370000-370800-370828-', '0', '金乡县', '金乡县', '', '', '', '370828', '272200', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370829', '370800', '156-370000-370800-370829-', '0', '嘉祥县', '嘉祥县', '', '', '', '370829', '272400', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370830', '370800', '156-370000-370800-370830-', '0', '汶上县', '汶上县', '', '', '', '370830', '272500', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370831', '370800', '156-370000-370800-370831-', '0', '泗水县', '泗水县', '', '', '', '370831', '273200', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370832', '370800', '156-370000-370800-370832-', '0', '梁山县', '梁山县', '', '', '', '370832', '272600', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370881', '370800', '156-370000-370800-370881-', '0', '曲阜市', '曲阜市', '', '', '', '370881', '273100', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370882', '370800', '156-370000-370800-370882-', '0', '兖州市', '兖州市', '', '', '', '370882', '272000', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370883', '370800', '156-370000-370800-370883-', '0', '邹城市', '邹城市', '', '', '', '370883', '273500', '0537', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370900', '370000', '156-370000-370900-', '0', '泰安', '泰安市', '', '', '', '370900', '271000', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370901', '370900', '156-370000-370900-370901-', '0', '市辖区', '市辖区', '', '', '', '370901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370902', '370900', '156-370000-370900-370902-', '0', '泰山区', '泰山区', '', '', '', '370902', '271000', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370911', '370900', '156-370000-370900-370911-', '0', '岱岳区', '岱岳区', '', '', '', '370911', '271000', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370921', '370900', '156-370000-370900-370921-', '0', '宁阳县', '宁阳县', '', '', '', '370921', '271400', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370923', '370900', '156-370000-370900-370923-', '0', '东平县', '东平县', '', '', '', '370923', '271500', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370982', '370900', '156-370000-370900-370982-', '0', '新泰市', '新泰市', '', '', '', '370982', '271200', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('370983', '370900', '156-370000-370900-370983-', '0', '肥城市', '肥城市', '', '', '', '370983', '271600', '0538', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371000', '370000', '156-370000-371000-', '0', '威海', '威海市', '', '', '', '371000', '264200', '0631', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371001', '371000', '156-370000-371000-371001-', '0', '市辖区', '市辖区', '', '', '', '371001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371002', '371000', '156-370000-371000-371002-', '0', '环翠区', '环翠区', '', '', '', '371002', '264200', '0631', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371081', '371000', '156-370000-371000-371081-', '0', '文登市', '文登市', '', '', '', '371081', '264400', '0631', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371082', '371000', '156-370000-371000-371082-', '0', '荣成市', '荣成市', '', '', '', '371082', '264300', '0631', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371083', '371000', '156-370000-371000-371083-', '0', '乳山市', '乳山市', '', '', '', '371083', '264500', '0631', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371100', '370000', '156-370000-371100-', '0', '日照', '日照市', '', '', '', '371100', '276800', '0633', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371101', '371100', '156-370000-371100-371101-', '0', '市辖区', '市辖区', '', '', '', '371101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371102', '371100', '156-370000-371100-371102-', '0', '东港区', '东港区', '', '', '', '371102', '276800', '0633', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371103', '371100', '156-370000-371100-371103-', '0', '岚山区', '岚山区', '', '', '', '371103', '276800', '0633', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371121', '371100', '156-370000-371100-371121-', '0', '五莲县', '五莲县', '', '', '', '371121', '262300', '0633', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371122', '371100', '156-370000-371100-371122-', '0', '莒县', '莒县', '', '', '', '371122', '276500', '0633', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371200', '370000', '156-370000-371200-', '0', '莱芜', '莱芜市', '', '', '', '371200', '271100', '0634', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371201', '371200', '156-370000-371200-371201-', '0', '市辖区', '市辖区', '', '', '', '371201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371202', '371200', '156-370000-371200-371202-', '0', '莱城区', '莱城区', '', '', '', '371202', '271100', '0634', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371203', '371200', '156-370000-371200-371203-', '0', '钢城区', '钢城区', '', '', '', '371203', '271100', '0634', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371300', '370000', '156-370000-371300-', '0', '临沂', '临沂市', '', '', '', '371300', '276000', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371301', '371300', '156-370000-371300-371301-', '0', '市辖区', '市辖区', '', '', '', '371301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371302', '371300', '156-370000-371300-371302-', '0', '兰山区', '兰山区', '', '', '', '371302', '276000', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371311', '371300', '156-370000-371300-371311-', '0', '罗庄区', '罗庄区', '', '', '', '371311', '276000', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371312', '371300', '156-370000-371300-371312-', '0', '河东区', '河东区', '', '', '', '371312', '276000', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371321', '371300', '156-370000-371300-371321-', '0', '沂南县', '沂南县', '', '', '', '371321', '276300', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371322', '371300', '156-370000-371300-371322-', '0', '郯城县', '郯城县', '', '', '', '371322', '276100', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371323', '371300', '156-370000-371300-371323-', '0', '沂水县', '沂水县', '', '', '', '371323', '276400', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371324', '371300', '156-370000-371300-371324-', '0', '苍山县', '苍山县', '', '', '', '371324', '277700', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371325', '371300', '156-370000-371300-371325-', '0', '费县', '费县', '', '', '', '371325', '273400', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371326', '371300', '156-370000-371300-371326-', '0', '平邑县', '平邑县', '', '', '', '371326', '273300', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371327', '371300', '156-370000-371300-371327-', '0', '莒南县', '莒南县', '', '', '', '371327', '276600', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371328', '371300', '156-370000-371300-371328-', '0', '蒙阴县', '蒙阴县', '', '', '', '371328', '276200', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371329', '371300', '156-370000-371300-371329-', '0', '临沭县', '临沭县', '', '', '', '371329', '276700', '0539', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371400', '370000', '156-370000-371400-', '0', '德州', '德州市', '', '', '', '371400', '253000', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371401', '371400', '156-370000-371400-371401-', '0', '市辖区', '市辖区', '', '', '', '371401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371402', '371400', '156-370000-371400-371402-', '0', '德城区', '德城区', '', '', '', '371402', '253000', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371421', '371400', '156-370000-371400-371421-', '0', '陵县', '陵县', '', '', '', '371421', '253500', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371422', '371400', '156-370000-371400-371422-', '0', '宁津县', '宁津县', '', '', '', '371422', '253400', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371423', '371400', '156-370000-371400-371423-', '0', '庆云县', '庆云县', '', '', '', '371423', '253700', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371424', '371400', '156-370000-371400-371424-', '0', '临邑县', '临邑县', '', '', '', '371424', '251500', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371425', '371400', '156-370000-371400-371425-', '0', '齐河县', '齐河县', '', '', '', '371425', '251100', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371426', '371400', '156-370000-371400-371426-', '0', '平原县', '平原县', '', '', '', '371426', '253100', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371427', '371400', '156-370000-371400-371427-', '0', '夏津县', '夏津县', '', '', '', '371427', '253200', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371428', '371400', '156-370000-371400-371428-', '0', '武城县', '武城县', '', '', '', '371428', '253300', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371481', '371400', '156-370000-371400-371481-', '0', '乐陵市', '乐陵市', '', '', '', '371481', '253600', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371482', '371400', '156-370000-371400-371482-', '0', '禹城市', '禹城市', '', '', '', '371482', '251200', '0534', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371500', '370000', '156-370000-371500-', '0', '聊城', '聊城市', '', '', '', '371500', '252000', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371501', '371500', '156-370000-371500-371501-', '0', '市辖区', '市辖区', '', '', '', '371501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371502', '371500', '156-370000-371500-371502-', '0', '东昌府区', '东昌府区', '', '', '', '371502', '252000', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371521', '371500', '156-370000-371500-371521-', '0', '阳谷县', '阳谷县', '', '', '', '371521', '252300', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371522', '371500', '156-370000-371500-371522-', '0', '莘县', '莘县', '', '', '', '371522', '252400', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371523', '371500', '156-370000-371500-371523-', '0', '茌平县', '茌平县', '', '', '', '371523', '252100', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371524', '371500', '156-370000-371500-371524-', '0', '东阿县', '东阿县', '', '', '', '371524', '252200', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371525', '371500', '156-370000-371500-371525-', '0', '冠县', '冠县', '', '', '', '371525', '252500', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371526', '371500', '156-370000-371500-371526-', '0', '高唐县', '高唐县', '', '', '', '371526', '252800', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371581', '371500', '156-370000-371500-371581-', '0', '临清市', '临清市', '', '', '', '371581', '252600', '0635', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371600', '370000', '156-370000-371600-', '0', '滨州', '滨州市', '', '', '', '371600', '256600', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371601', '371600', '156-370000-371600-371601-', '0', '市辖区', '市辖区', '', '', '', '371601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371602', '371600', '156-370000-371600-371602-', '0', '滨城区', '滨城区', '', '', '', '371602', '256600', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371621', '371600', '156-370000-371600-371621-', '0', '惠民县', '惠民县', '', '', '', '371621', '251700', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371622', '371600', '156-370000-371600-371622-', '0', '阳信县', '阳信县', '', '', '', '371622', '251800', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371623', '371600', '156-370000-371600-371623-', '0', '无棣县', '无棣县', '', '', '', '371623', '251900', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371624', '371600', '156-370000-371600-371624-', '0', '沾化县', '沾化县', '', '', '', '371624', '256800', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371625', '371600', '156-370000-371600-371625-', '0', '博兴县', '博兴县', '', '', '', '371625', '256500', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371626', '371600', '156-370000-371600-371626-', '0', '邹平县', '邹平县', '', '', '', '371626', '256200', '0543', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371700', '370000', '156-370000-371700-', '0', '菏泽', '菏泽市', '', '', '', '371700', '274000', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371701', '371700', '156-370000-371700-371701-', '0', '市辖区', '市辖区', '', '', '', '371701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371702', '371700', '156-370000-371700-371702-', '0', '牡丹区', '牡丹区', '', '', '', '371702', '274000', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371721', '371700', '156-370000-371700-371721-', '0', '曹县', '曹县', '', '', '', '371721', '274400', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371722', '371700', '156-370000-371700-371722-', '0', '单县', '单县', '', '', '', '371722', '274300', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371723', '371700', '156-370000-371700-371723-', '0', '成武县', '成武县', '', '', '', '371723', '274200', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371724', '371700', '156-370000-371700-371724-', '0', '巨野县', '巨野县', '', '', '', '371724', '274900', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371725', '371700', '156-370000-371700-371725-', '0', '郓城县', '郓城县', '', '', '', '371725', '274700', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371726', '371700', '156-370000-371700-371726-', '0', '鄄城县', '鄄城县', '', '', '', '371726', '274600', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371727', '371700', '156-370000-371700-371727-', '0', '定陶县', '定陶县', '', '', '', '371727', '274100', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('371728', '371700', '156-370000-371700-371728-', '0', '东明县', '东明县', '', '', '', '371728', '274500', '0530', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410000', '156', '156-410000-', '0', '河南', '河南省', 'HeNan', 'HeNan', 'HA', '410000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410100', '410000', '156-410000-410100-', '0', '郑州', '郑州市', '', '', '', '410100', '450000', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410101', '410100', '156-410000-410100-410101-', '0', '市辖区', '市辖区', '', '', '', '410101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410102', '410100', '156-410000-410100-410102-', '0', '中原区', '中原区', '', '', '', '410102', '450000', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410103', '410100', '156-410000-410100-410103-', '0', '二七区', '二七区', '', '', '', '410103', '450000', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410104', '410100', '156-410000-410100-410104-', '0', '管城回族区', '管城回族区', '', '', '', '410104', '450000', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410105', '410100', '156-410000-410100-410105-', '0', '金水区', '金水区', '', '', '', '410105', '450000', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410106', '410100', '156-410000-410100-410106-', '0', '上街区', '上街区', '', '', '', '410106', '450041', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410108', '410100', '156-410000-410100-410108-', '0', '惠济区', '惠济区', '', '', '', '410108', '450000', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410122', '410100', '156-410000-410100-410122-', '0', '中牟县', '中牟县', '', '', '', '410122', '451450', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410181', '410100', '156-410000-410100-410181-', '0', '巩义市', '巩义市', '', '', '', '410181', '451200', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410182', '410100', '156-410000-410100-410182-', '0', '荥阳市', '荥阳市', '', '', '', '410182', '450100', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410183', '410100', '156-410000-410100-410183-', '0', '新密市', '新密市', '', '', '', '410183', '452370', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410184', '410100', '156-410000-410100-410184-', '0', '新郑市', '新郑市', '', '', '', '410184', '451100', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410185', '410100', '156-410000-410100-410185-', '0', '登封市', '登封市', '', '', '', '410185', '452470', '0371', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410200', '410000', '156-410000-410200-', '0', '开封', '开封市', '', '', '', '410200', '475000', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410201', '410200', '156-410000-410200-410201-', '0', '市辖区', '市辖区', '', '', '', '410201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410202', '410200', '156-410000-410200-410202-', '0', '龙亭区', '龙亭区', '', '', '', '410202', '475000', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410203', '410200', '156-410000-410200-410203-', '0', '顺河回族区', '顺河回族区', '', '', '', '410203', '475000', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410204', '410200', '156-410000-410200-410204-', '0', '鼓楼区', '鼓楼区', '', '', '', '410204', '475000', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410205', '410200', '156-410000-410200-410205-', '0', '禹王台区', '禹王台区', '', '', '', '410205', '475000', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410211', '410200', '156-410000-410200-410211-', '0', '金明区', '金明区', '', '', '', '410211', '475000', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410221', '410200', '156-410000-410200-410221-', '0', '杞县', '杞县', '', '', '', '410221', '475200', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410222', '410200', '156-410000-410200-410222-', '0', '通许县', '通许县', '', '', '', '410222', '475400', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410223', '410200', '156-410000-410200-410223-', '0', '尉氏县', '尉氏县', '', '', '', '410223', '475500', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410224', '410200', '156-410000-410200-410224-', '0', '开封县', '开封县', '', '', '', '410224', '475100', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410225', '410200', '156-410000-410200-410225-', '0', '兰考县', '兰考县', '', '', '', '410225', '475300', '0378', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410300', '410000', '156-410000-410300-', '0', '洛阳', '洛阳市', '', '', '', '410300', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410301', '410300', '156-410000-410300-410301-', '0', '市辖区', '市辖区', '', '', '', '410301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410302', '410300', '156-410000-410300-410302-', '0', '老城区', '老城区', '', '', '', '410302', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410303', '410300', '156-410000-410300-410303-', '0', '西工区', '西工区', '', '', '', '410303', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410304', '410300', '156-410000-410300-410304-', '0', '瀍河区', '瀍河回族区', '', '', '', '410304', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410305', '410300', '156-410000-410300-410305-', '0', '涧西区', '涧西区', '', '', '', '410305', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410306', '410300', '156-410000-410300-410306-', '0', '吉利区', '吉利区', '', '', '', '410306', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410311', '410300', '156-410000-410300-410311-', '0', '洛龙区', '洛龙区', '', '', '', '410311', '471000', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410322', '410300', '156-410000-410300-410322-', '0', '孟津县', '孟津县', '', '', '', '410322', '471100', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410323', '410300', '156-410000-410300-410323-', '0', '新安县', '新安县', '', '', '', '410323', '471800', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410324', '410300', '156-410000-410300-410324-', '0', '栾川县', '栾川县', '', '', '', '410324', '471500', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410325', '410300', '156-410000-410300-410325-', '0', '嵩县', '嵩县', '', '', '', '410325', '471400', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410326', '410300', '156-410000-410300-410326-', '0', '汝阳县', '汝阳县', '', '', '', '410326', '471200', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410327', '410300', '156-410000-410300-410327-', '0', '宜阳县', '宜阳县', '', '', '', '410327', '471600', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410328', '410300', '156-410000-410300-410328-', '0', '洛宁县', '洛宁县', '', '', '', '410328', '471700', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410329', '410300', '156-410000-410300-410329-', '0', '伊川县', '伊川县', '', '', '', '410329', '471300', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410381', '410300', '156-410000-410300-410381-', '0', '偃师市', '偃师市', '', '', '', '410381', '471900', '0379', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410400', '410000', '156-410000-410400-', '0', '平顶山', '平顶山市', '', '', '', '410400', '467000', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410401', '410400', '156-410000-410400-410401-', '0', '市辖区', '市辖区', '', '', '', '410401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410402', '410400', '156-410000-410400-410402-', '0', '新华区', '新华区', '', '', '', '410402', '467000', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410403', '410400', '156-410000-410400-410403-', '0', '卫东区', '卫东区', '', '', '', '410403', '467000', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410404', '410400', '156-410000-410400-410404-', '0', '石龙区', '石龙区', '', '', '', '410404', '467000', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410411', '410400', '156-410000-410400-410411-', '0', '湛河区', '湛河区', '', '', '', '410411', '467000', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410421', '410400', '156-410000-410400-410421-', '0', '宝丰县', '宝丰县', '', '', '', '410421', '467400', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410422', '410400', '156-410000-410400-410422-', '0', '叶县', '叶县', '', '', '', '410422', '467200', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410423', '410400', '156-410000-410400-410423-', '0', '鲁山县', '鲁山县', '', '', '', '410423', '467300', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410425', '410400', '156-410000-410400-410425-', '0', '郏县', '郏县', '', '', '', '410425', '467100', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410481', '410400', '156-410000-410400-410481-', '0', '舞钢市', '舞钢市', '', '', '', '410481', '462500', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410482', '410400', '156-410000-410400-410482-', '0', '汝州市', '汝州市', '', '', '', '410482', '467500', '0375', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410500', '410000', '156-410000-410500-', '0', '安阳', '安阳市', '', '', '', '410500', '455000', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410501', '410500', '156-410000-410500-410501-', '0', '市辖区', '市辖区', '', '', '', '410501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410502', '410500', '156-410000-410500-410502-', '0', '文峰区', '文峰区', '', '', '', '410502', '455000', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410503', '410500', '156-410000-410500-410503-', '0', '北关区', '北关区', '', '', '', '410503', '455000', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410505', '410500', '156-410000-410500-410505-', '0', '殷都区', '殷都区', '', '', '', '410505', '455000', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410506', '410500', '156-410000-410500-410506-', '0', '龙安区', '龙安区', '', '', '', '410506', '455000', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410522', '410500', '156-410000-410500-410522-', '0', '安阳县', '安阳县', '', '', '', '410522', '455100', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410523', '410500', '156-410000-410500-410523-', '0', '汤阴县', '汤阴县', '', '', '', '410523', '456150', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410526', '410500', '156-410000-410500-410526-', '0', '滑县', '滑县', '', '', '', '410526', '456400', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410527', '410500', '156-410000-410500-410527-', '0', '内黄县', '内黄县', '', '', '', '410527', '456300', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410581', '410500', '156-410000-410500-410581-', '0', '林州市', '林州市', '', '', '', '410581', '456500', '0372', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410600', '410000', '156-410000-410600-', '0', '鹤壁', '鹤壁市', '', '', '', '410600', '458000', '0392', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410601', '410600', '156-410000-410600-410601-', '0', '市辖区', '市辖区', '', '', '', '410601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410602', '410600', '156-410000-410600-410602-', '0', '鹤山区', '鹤山区', '', '', '', '410602', '458000', '0392', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410603', '410600', '156-410000-410600-410603-', '0', '山城区', '山城区', '', '', '', '410603', '458000', '0392', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410611', '410600', '156-410000-410600-410611-', '0', '淇滨区', '淇滨区', '', '', '', '410611', '458000', '0392', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410621', '410600', '156-410000-410600-410621-', '0', '浚县', '浚县', '', '', '', '410621', '456250', '0392', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410622', '410600', '156-410000-410600-410622-', '0', '淇县', '淇县', '', '', '', '410622', '456750', '0392', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410700', '410000', '156-410000-410700-', '0', '新乡', '新乡市', '', '', '', '410700', '453000', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410701', '410700', '156-410000-410700-410701-', '0', '市辖区', '市辖区', '', '', '', '410701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410702', '410700', '156-410000-410700-410702-', '0', '红旗区', '红旗区', '', '', '', '410702', '453000', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410703', '410700', '156-410000-410700-410703-', '0', '卫滨区', '卫滨区', '', '', '', '410703', '453000', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410704', '410700', '156-410000-410700-410704-', '0', '凤泉区', '凤泉区', '', '', '', '410704', '0', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410711', '410700', '156-410000-410700-410711-', '0', '牧野区', '牧野区', '', '', '', '410711', '453002', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410721', '410700', '156-410000-410700-410721-', '0', '新乡县', '新乡县', '', '', '', '410721', '453700', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410724', '410700', '156-410000-410700-410724-', '0', '获嘉县', '获嘉县', '', '', '', '410724', '453800', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410725', '410700', '156-410000-410700-410725-', '0', '原阳县', '原阳县', '', '', '', '410725', '453500', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410726', '410700', '156-410000-410700-410726-', '0', '延津县', '延津县', '', '', '', '410726', '453200', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410727', '410700', '156-410000-410700-410727-', '0', '封丘县', '封丘县', '', '', '', '410727', '453300', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410728', '410700', '156-410000-410700-410728-', '0', '长垣县', '长垣县', '', '', '', '410728', '453400', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410781', '410700', '156-410000-410700-410781-', '0', '卫辉市', '卫辉市', '', '', '', '410781', '453100', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410782', '410700', '156-410000-410700-410782-', '0', '辉县市', '辉县市', '', '', '', '410782', '453600', '0373', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410800', '410000', '156-410000-410800-', '0', '焦作', '焦作市', '', '', '', '410800', '454150', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410801', '410800', '156-410000-410800-410801-', '0', '市辖区', '市辖区', '', '', '', '410801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410802', '410800', '156-410000-410800-410802-', '0', '解放区', '解放区', '', '', '', '410802', '454150', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410803', '410800', '156-410000-410800-410803-', '0', '中站区', '中站区', '', '', '', '410803', '454150', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410804', '410800', '156-410000-410800-410804-', '0', '马村区', '马村区', '', '', '', '410804', '454150', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410811', '410800', '156-410000-410800-410811-', '0', '山阳区', '山阳区', '', '', '', '410811', '454150', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410821', '410800', '156-410000-410800-410821-', '0', '修武县', '修武县', '', '', '', '410821', '454350', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410822', '410800', '156-410000-410800-410822-', '0', '博爱县', '博爱县', '', '', '', '410822', '454450', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410823', '410800', '156-410000-410800-410823-', '0', '武陟县', '武陟县', '', '', '', '410823', '454950', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410825', '410800', '156-410000-410800-410825-', '0', '温县', '温县', '', '', '', '410825', '454850', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410882', '410800', '156-410000-410800-410882-', '0', '沁阳市', '沁阳市', '', '', '', '410882', '454550', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410883', '410800', '156-410000-410800-410883-', '0', '孟州市', '孟州市', '', '', '', '410883', '454750', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410900', '410000', '156-410000-410900-', '0', '濮阳', '濮阳市', '', '', '', '410900', '457000', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410901', '410900', '156-410000-410900-410901-', '0', '市辖区', '市辖区', '', '', '', '410901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410902', '410900', '156-410000-410900-410902-', '0', '华龙区', '华龙区', '', '', '', '410902', '0', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410922', '410900', '156-410000-410900-410922-', '0', '清丰县', '清丰县', '', '', '', '410922', '457300', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410923', '410900', '156-410000-410900-410923-', '0', '南乐县', '南乐县', '', '', '', '410923', '457400', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410926', '410900', '156-410000-410900-410926-', '0', '范县', '范县', '', '', '', '410926', '457500', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410927', '410900', '156-410000-410900-410927-', '0', '台前县', '台前县', '', '', '', '410927', '457600', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('410928', '410900', '156-410000-410900-410928-', '0', '濮阳县', '濮阳县', '', '', '', '410928', '457100', '0393', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411000', '410000', '156-410000-411000-', '0', '许昌', '许昌市', '', '', '', '411000', '461000', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411001', '411000', '156-410000-411000-411001-', '0', '市辖区', '市辖区', '', '', '', '411001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411002', '411000', '156-410000-411000-411002-', '0', '魏都区', '魏都区', '', '', '', '411002', '461000', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411023', '411000', '156-410000-411000-411023-', '0', '许昌县', '许昌县', '', '', '', '411023', '461100', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411024', '411000', '156-410000-411000-411024-', '0', '鄢陵县', '鄢陵县', '', '', '', '411024', '461200', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411025', '411000', '156-410000-411000-411025-', '0', '襄城县', '襄城县', '', '', '', '411025', '452670', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411081', '411000', '156-410000-411000-411081-', '0', '禹州市', '禹州市', '', '', '', '411081', '452570', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411082', '411000', '156-410000-411000-411082-', '0', '长葛市', '长葛市', '', '', '', '411082', '461500', '0374', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411100', '410000', '156-410000-411100-', '0', '漯河', '漯河市', '', '', '', '411100', '462000', '0395', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411101', '411100', '156-410000-411100-411101-', '0', '市辖区', '市辖区', '', '', '', '411101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411102', '411100', '156-410000-411100-411102-', '0', '源汇区', '源汇区', '', '', '', '411102', '462000', '0395', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411103', '411100', '156-410000-411100-411103-', '0', '郾城区', '郾城区', '', '', '', '411103', '462300', '0395', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411104', '411100', '156-410000-411100-411104-', '0', '召陵区', '召陵区', '', '', '', '411104', '462300', '0395', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411121', '411100', '156-410000-411100-411121-', '0', '舞阳县', '舞阳县', '', '', '', '411121', '462400', '0395', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411122', '411100', '156-410000-411100-411122-', '0', '临颍县', '临颍县', '', '', '', '411122', '462600', '0395', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411200', '410000', '156-410000-411200-', '0', '三门峡', '三门峡市', '', '', '', '411200', '472000', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411201', '411200', '156-410000-411200-411201-', '0', '市辖区', '市辖区', '', '', '', '411201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411202', '411200', '156-410000-411200-411202-', '0', '湖滨区', '湖滨区', '', '', '', '411202', '472000', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411221', '411200', '156-410000-411200-411221-', '0', '渑池县', '渑池县', '', '', '', '411221', '472400', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411222', '411200', '156-410000-411200-411222-', '0', '陕县', '陕县', '', '', '', '411222', '472100', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411224', '411200', '156-410000-411200-411224-', '0', '卢氏县', '卢氏县', '', '', '', '411224', '472200', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411281', '411200', '156-410000-411200-411281-', '0', '义马市', '义马市', '', '', '', '411281', '472300', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411282', '411200', '156-410000-411200-411282-', '0', '灵宝市', '灵宝市', '', '', '', '411282', '472500', '0398', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411300', '410000', '156-410000-411300-', '0', '南阳', '南阳市', '', '', '', '411300', '473000', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411301', '411300', '156-410000-411300-411301-', '0', '市辖区', '市辖区', '', '', '', '411301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411302', '411300', '156-410000-411300-411302-', '0', '宛城区', '宛城区', '', '', '', '411302', '473000', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411303', '411300', '156-410000-411300-411303-', '0', '卧龙区', '卧龙区', '', '', '', '411303', '473000', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411321', '411300', '156-410000-411300-411321-', '0', '南召县', '南召县', '', '', '', '411321', '474650', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411322', '411300', '156-410000-411300-411322-', '0', '方城县', '方城县', '', '', '', '411322', '473200', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411323', '411300', '156-410000-411300-411323-', '0', '西峡县', '西峡县', '', '', '', '411323', '474550', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411324', '411300', '156-410000-411300-411324-', '0', '镇平县', '镇平县', '', '', '', '411324', '474250', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411325', '411300', '156-410000-411300-411325-', '0', '内乡县', '内乡县', '', '', '', '411325', '474350', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411326', '411300', '156-410000-411300-411326-', '0', '淅川县', '淅川县', '', '', '', '411326', '474450', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411327', '411300', '156-410000-411300-411327-', '0', '社旗县', '社旗县', '', '', '', '411327', '473300', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411328', '411300', '156-410000-411300-411328-', '0', '唐河县', '唐河县', '', '', '', '411328', '473400', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411329', '411300', '156-410000-411300-411329-', '0', '新野县', '新野县', '', '', '', '411329', '473500', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411330', '411300', '156-410000-411300-411330-', '0', '桐柏县', '桐柏县', '', '', '', '411330', '474750', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411381', '411300', '156-410000-411300-411381-', '0', '邓州市', '邓州市', '', '', '', '411381', '474150', '0377', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411400', '410000', '156-410000-411400-', '0', '商丘', '商丘市', '', '', '', '411400', '476000', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411401', '411400', '156-410000-411400-411401-', '0', '市辖区', '市辖区', '', '', '', '411401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411402', '411400', '156-410000-411400-411402-', '0', '梁园区', '梁园区', '', '', '', '411402', '476000', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411403', '411400', '156-410000-411400-411403-', '0', '睢阳区', '睢阳区', '', '', '', '411403', '476000', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411421', '411400', '156-410000-411400-411421-', '0', '民权县', '民权县', '', '', '', '411421', '476800', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411422', '411400', '156-410000-411400-411422-', '0', '睢县', '睢县', '', '', '', '411422', '476900', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411423', '411400', '156-410000-411400-411423-', '0', '宁陵县', '宁陵县', '', '', '', '411423', '476700', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411424', '411400', '156-410000-411400-411424-', '0', '柘城县', '柘城县', '', '', '', '411424', '476200', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411425', '411400', '156-410000-411400-411425-', '0', '虞城县', '虞城县', '', '', '', '411425', '476300', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411426', '411400', '156-410000-411400-411426-', '0', '夏邑县', '夏邑县', '', '', '', '411426', '476400', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411481', '411400', '156-410000-411400-411481-', '0', '永城市', '永城市', '', '', '', '411481', '476600', '0370', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411500', '410000', '156-410000-411500-', '0', '信阳', '信阳市', '', '', '', '411500', '464000', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411501', '411500', '156-410000-411500-411501-', '0', '市辖区', '市辖区', '', '', '', '411501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411502', '411500', '156-410000-411500-411502-', '0', '浉河区', '浉河区', '', '', '', '411502', '464000', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411503', '411500', '156-410000-411500-411503-', '0', '平桥区', '平桥区', '', '', '', '411503', '464000', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411521', '411500', '156-410000-411500-411521-', '0', '罗山县', '罗山县', '', '', '', '411521', '464200', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411522', '411500', '156-410000-411500-411522-', '0', '光山县', '光山县', '', '', '', '411522', '465450', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411523', '411500', '156-410000-411500-411523-', '0', '新县', '新县', '', '', '', '411523', '465500', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411524', '411500', '156-410000-411500-411524-', '0', '商城县', '商城县', '', '', '', '411524', '465350', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411525', '411500', '156-410000-411500-411525-', '0', '固始县', '固始县', '', '', '', '411525', '465200', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411526', '411500', '156-410000-411500-411526-', '0', '潢川县', '潢川县', '', '', '', '411526', '465150', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411527', '411500', '156-410000-411500-411527-', '0', '淮滨县', '淮滨县', '', '', '', '411527', '464400', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411528', '411500', '156-410000-411500-411528-', '0', '息县', '息县', '', '', '', '411528', '464300', '0376', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411600', '410000', '156-410000-411600-', '0', '周口', '周口市', '', '', '', '411600', '466000', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411601', '411600', '156-410000-411600-411601-', '0', '市辖区', '市辖区', '', '', '', '411601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411602', '411600', '156-410000-411600-411602-', '0', '川汇区', '川汇区', '', '', '', '411602', '466000', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411621', '411600', '156-410000-411600-411621-', '0', '扶沟县', '扶沟县', '', '', '', '411621', '461300', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411622', '411600', '156-410000-411600-411622-', '0', '西华县', '西华县', '', '', '', '411622', '466600', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411623', '411600', '156-410000-411600-411623-', '0', '商水县', '商水县', '', '', '', '411623', '466100', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411624', '411600', '156-410000-411600-411624-', '0', '沈丘县', '沈丘县', '', '', '', '411624', '466300', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411625', '411600', '156-410000-411600-411625-', '0', '郸城县', '郸城县', '', '', '', '411625', '477150', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411626', '411600', '156-410000-411600-411626-', '0', '淮阳县', '淮阳县', '', '', '', '411626', '466700', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411627', '411600', '156-410000-411600-411627-', '0', '太康县', '太康县', '', '', '', '411627', '475400', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411628', '411600', '156-410000-411600-411628-', '0', '鹿邑县', '鹿邑县', '', '', '', '411628', '477200', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411681', '411600', '156-410000-411600-411681-', '0', '项城市', '项城市', '', '', '', '411681', '466200', '0394', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411700', '410000', '156-410000-411700-', '0', '驻马店', '驻马店市', '', '', '', '411700', '463000', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411701', '411700', '156-410000-411700-411701-', '0', '市辖区', '市辖区', '', '', '', '411701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411702', '411700', '156-410000-411700-411702-', '0', '驿城区', '驿城区', '', '', '', '411702', '463000', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411721', '411700', '156-410000-411700-411721-', '0', '西平县', '西平县', '', '', '', '411721', '463900', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411722', '411700', '156-410000-411700-411722-', '0', '上蔡县', '上蔡县', '', '', '', '411722', '463800', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411723', '411700', '156-410000-411700-411723-', '0', '平舆县', '平舆县', '', '', '', '411723', '463400', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411724', '411700', '156-410000-411700-411724-', '0', '正阳县', '正阳县', '', '', '', '411724', '463600', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411725', '411700', '156-410000-411700-411725-', '0', '确山县', '确山县', '', '', '', '411725', '463200', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411726', '411700', '156-410000-411700-411726-', '0', '泌阳县', '泌阳县', '', '', '', '411726', '463700', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411727', '411700', '156-410000-411700-411727-', '0', '汝南县', '汝南县', '', '', '', '411727', '463300', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411728', '411700', '156-410000-411700-411728-', '0', '遂平县', '遂平县', '', '', '', '411728', '463100', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('411729', '411700', '156-410000-411700-411729-', '0', '新蔡县', '新蔡县', '', '', '', '411729', '463500', '0396', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('419000', '410000', '156-410000-419000-', '0', '省直辖县', '省直辖县级行政区划', '', '', '', '419000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('419001', '419000', '156-410000-419000-419001-', '0', '济源', '济源市', '', '', '', '419001', '454650', '0391', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420000', '156', '156-420000-', '0', '湖北', '湖北省', 'HuBei', 'HuBei', 'HB', '420000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420100', '420000', '156-420000-420100-', '0', '武汉', '武汉市', '', '', '', '420100', '430000', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420101', '420100', '156-420000-420100-420101-', '0', '市辖区', '市辖区', '', '', '', '420101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420102', '420100', '156-420000-420100-420102-', '0', '江岸区', '江岸区', '', '', '', '420102', '430014', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420103', '420100', '156-420000-420100-420103-', '0', '江汉区', '江汉区', '', '', '', '420103', '430000', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420104', '420100', '156-420000-420100-420104-', '0', '硚口区', '硚口区', '', '', '', '420104', '430000', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420105', '420100', '156-420000-420100-420105-', '0', '汉阳区', '汉阳区', '', '', '', '420105', '430050', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420106', '420100', '156-420000-420100-420106-', '0', '武昌区', '武昌区', '', '', '', '420106', '430000', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420107', '420100', '156-420000-420100-420107-', '0', '青山区', '青山区', '', '', '', '420107', '430080', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420111', '420100', '156-420000-420100-420111-', '0', '洪山区', '洪山区', '', '', '', '420111', '430070', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420112', '420100', '156-420000-420100-420112-', '0', '东西湖区', '东西湖区', '', '', '', '420112', '430040', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420113', '420100', '156-420000-420100-420113-', '0', '汉南区', '汉南区', '', '', '', '420113', '430090', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420114', '420100', '156-420000-420100-420114-', '0', '蔡甸区', '蔡甸区', '', '', '', '420114', '430100', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420115', '420100', '156-420000-420100-420115-', '0', '江夏区', '江夏区', '', '', '', '420115', '430200', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420116', '420100', '156-420000-420100-420116-', '0', '黄陂区', '黄陂区', '', '', '', '420116', '432200', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420117', '420100', '156-420000-420100-420117-', '0', '新洲区', '新洲区', '', '', '', '420117', '431400', '027', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420200', '420000', '156-420000-420200-', '0', '黄石', '黄石市', '', '', '', '420200', '435000', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420201', '420200', '156-420000-420200-420201-', '0', '市辖区', '市辖区', '', '', '', '420201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420202', '420200', '156-420000-420200-420202-', '0', '黄石港区', '黄石港区', '', '', '', '420202', '435000', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420203', '420200', '156-420000-420200-420203-', '0', '西塞山区', '西塞山区', '', '', '', '420203', '0', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420204', '420200', '156-420000-420200-420204-', '0', '下陆区', '下陆区', '', '', '', '420204', '435000', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420205', '420200', '156-420000-420200-420205-', '0', '铁山区', '铁山区', '', '', '', '420205', '435000', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420222', '420200', '156-420000-420200-420222-', '0', '阳新县', '阳新县', '', '', '', '420222', '435200', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420281', '420200', '156-420000-420200-420281-', '0', '大冶市', '大冶市', '', '', '', '420281', '435100', '0714', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420300', '420000', '156-420000-420300-', '0', '十堰', '十堰市', '', '', '', '420300', '442000', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420301', '420300', '156-420000-420300-420301-', '0', '市辖区', '市辖区', '', '', '', '420301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420302', '420300', '156-420000-420300-420302-', '0', '茅箭区', '茅箭区', '', '', '', '420302', '442000', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420303', '420300', '156-420000-420300-420303-', '0', '张湾区', '张湾区', '', '', '', '420303', '442000', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420321', '420300', '156-420000-420300-420321-', '0', '郧县', '郧县', '', '', '', '420321', '442500', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420322', '420300', '156-420000-420300-420322-', '0', '郧西县', '郧西县', '', '', '', '420322', '442600', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420323', '420300', '156-420000-420300-420323-', '0', '竹山县', '竹山县', '', '', '', '420323', '442200', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420324', '420300', '156-420000-420300-420324-', '0', '竹溪县', '竹溪县', '', '', '', '420324', '442300', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420325', '420300', '156-420000-420300-420325-', '0', '房县', '房县', '', '', '', '420325', '442100', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420381', '420300', '156-420000-420300-420381-', '0', '丹江口市', '丹江口市', '', '', '', '420381', '442700', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420500', '420000', '156-420000-420500-', '0', '宜昌', '宜昌市', '', '', '', '420500', '443000', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420501', '420500', '156-420000-420500-420501-', '0', '市辖区', '市辖区', '', '', '', '420501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420502', '420500', '156-420000-420500-420502-', '0', '西陵区', '西陵区', '', '', '', '420502', '443000', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420503', '420500', '156-420000-420500-420503-', '0', '伍家岗区', '伍家岗区', '', '', '', '420503', '443000', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420504', '420500', '156-420000-420500-420504-', '0', '点军区', '点军区', '', '', '', '420504', '443000', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420505', '420500', '156-420000-420500-420505-', '0', '猇亭区', '猇亭区', '', '', '', '420505', '443000', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420506', '420500', '156-420000-420500-420506-', '0', '夷陵区', '夷陵区', '', '', '', '420506', '443100', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420525', '420500', '156-420000-420500-420525-', '0', '远安县', '远安县', '', '', '', '420525', '444200', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420526', '420500', '156-420000-420500-420526-', '0', '兴山县', '兴山县', '', '', '', '420526', '443700', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420527', '420500', '156-420000-420500-420527-', '0', '秭归县', '秭归县', '', '', '', '420527', '443600', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420528', '420500', '156-420000-420500-420528-', '0', '长阳土家族自治县', '长阳土家族自治县', '', '', '', '420528', '443500', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420529', '420500', '156-420000-420500-420529-', '0', '五峰土家族自治县', '五峰土家族自治县', '', '', '', '420529', '443400', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420581', '420500', '156-420000-420500-420581-', '0', '宜都市', '宜都市', '', '', '', '420581', '443000', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420582', '420500', '156-420000-420500-420582-', '0', '当阳市', '当阳市', '', '', '', '420582', '444100', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420583', '420500', '156-420000-420500-420583-', '0', '枝江市', '枝江市', '', '', '', '420583', '443200', '0717', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420600', '420000', '156-420000-420600-', '0', '襄阳', '襄阳市', '', '', '', '420600', '441000', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420601', '420600', '156-420000-420600-420601-', '0', '市辖区', '市辖区', '', '', '', '420601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420602', '420600', '156-420000-420600-420602-', '0', '襄城区', '襄城区', '', '', '', '420602', '441000', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420606', '420600', '156-420000-420600-420606-', '0', '樊城区', '樊城区', '', '', '', '420606', '441000', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420607', '420600', '156-420000-420600-420607-', '0', '襄州区', '襄州区', '', '', '', '420607', '441100', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420624', '420600', '156-420000-420600-420624-', '0', '南漳县', '南漳县', '', '', '', '420624', '441500', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420625', '420600', '156-420000-420600-420625-', '0', '谷城县', '谷城县', '', '', '', '420625', '441700', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420626', '420600', '156-420000-420600-420626-', '0', '保康县', '保康县', '', '', '', '420626', '441600', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420682', '420600', '156-420000-420600-420682-', '0', '老河口市', '老河口市', '', '', '', '420682', '441800', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420683', '420600', '156-420000-420600-420683-', '0', '枣阳市', '枣阳市', '', '', '', '420683', '441200', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420684', '420600', '156-420000-420600-420684-', '0', '宜城市', '宜城市', '', '', '', '420684', '441400', '0710', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420700', '420000', '156-420000-420700-', '0', '鄂州', '鄂州市', '', '', '', '420700', '436000', '0711', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420701', '420700', '156-420000-420700-420701-', '0', '市辖区', '市辖区', '', '', '', '420701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420702', '420700', '156-420000-420700-420702-', '0', '梁子湖区', '梁子湖区', '', '', '', '420702', '436000', '0711', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420703', '420700', '156-420000-420700-420703-', '0', '华容区', '华容区', '', '', '', '420703', '436000', '0711', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420704', '420700', '156-420000-420700-420704-', '0', '鄂城区', '鄂城区', '', '', '', '420704', '436000', '0711', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420800', '420000', '156-420000-420800-', '0', '荆门', '荆门市', '', '', '', '420800', '448000', '0724', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420801', '420800', '156-420000-420800-420801-', '0', '市辖区', '市辖区', '', '', '', '420801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420802', '420800', '156-420000-420800-420802-', '0', '东宝区', '东宝区', '', '', '', '420802', '448000', '0724', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420804', '420800', '156-420000-420800-420804-', '0', '掇刀区', '掇刀区', '', '', '', '420804', '448000', '0724', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420821', '420800', '156-420000-420800-420821-', '0', '京山县', '京山县', '', '', '', '420821', '431800', '0724', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420822', '420800', '156-420000-420800-420822-', '0', '沙洋县', '沙洋县', '', '', '', '420822', '448200', '0724', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420881', '420800', '156-420000-420800-420881-', '0', '钟祥市', '钟祥市', '', '', '', '420881', '431900', '0724', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420900', '420000', '156-420000-420900-', '0', '孝感', '孝感市', '', '', '', '420900', '432000', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420901', '420900', '156-420000-420900-420901-', '0', '市辖区', '市辖区', '', '', '', '420901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420902', '420900', '156-420000-420900-420902-', '0', '孝南区', '孝南区', '', '', '', '420902', '432100', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420921', '420900', '156-420000-420900-420921-', '0', '孝昌县', '孝昌县', '', '', '', '420921', '432900', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420922', '420900', '156-420000-420900-420922-', '0', '大悟县', '大悟县', '', '', '', '420922', '432800', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420923', '420900', '156-420000-420900-420923-', '0', '云梦县', '云梦县', '', '', '', '420923', '432500', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420981', '420900', '156-420000-420900-420981-', '0', '应城市', '应城市', '', '', '', '420981', '432400', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420982', '420900', '156-420000-420900-420982-', '0', '安陆市', '安陆市', '', '', '', '420982', '432600', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('420984', '420900', '156-420000-420900-420984-', '0', '汉川市', '汉川市', '', '', '', '420984', '432300', '0712', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421000', '420000', '156-420000-421000-', '0', '荆州', '荆州市', '', '', '', '421000', '434000', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421001', '421000', '156-420000-421000-421001-', '0', '市辖区', '市辖区', '', '', '', '421001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421002', '421000', '156-420000-421000-421002-', '0', '沙市区', '沙市区', '', '', '', '421002', '434000', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421003', '421000', '156-420000-421000-421003-', '0', '荆州区', '荆州区', '', '', '', '421003', '434020', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421022', '421000', '156-420000-421000-421022-', '0', '公安县', '公安县', '', '', '', '421022', '434300', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421023', '421000', '156-420000-421000-421023-', '0', '监利县', '监利县', '', '', '', '421023', '433300', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421024', '421000', '156-420000-421000-421024-', '0', '江陵县', '江陵县', '', '', '', '421024', '434100', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421081', '421000', '156-420000-421000-421081-', '0', '石首市', '石首市', '', '', '', '421081', '434400', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421083', '421000', '156-420000-421000-421083-', '0', '洪湖市', '洪湖市', '', '', '', '421083', '433200', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421087', '421000', '156-420000-421000-421087-', '0', '松滋市', '松滋市', '', '', '', '421087', '434200', '0716', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421100', '420000', '156-420000-421100-', '0', '黄冈', '黄冈市', '', '', '', '421100', '438000', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421101', '421100', '156-420000-421100-421101-', '0', '市辖区', '市辖区', '', '', '', '421101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421102', '421100', '156-420000-421100-421102-', '0', '黄州区', '黄州区', '', '', '', '421102', '438000', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421121', '421100', '156-420000-421100-421121-', '0', '团风县', '团风县', '', '', '', '421121', '438000', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421122', '421100', '156-420000-421100-421122-', '0', '红安县', '红安县', '', '', '', '421122', '438400', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421123', '421100', '156-420000-421100-421123-', '0', '罗田县', '罗田县', '', '', '', '421123', '438600', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421124', '421100', '156-420000-421100-421124-', '0', '英山县', '英山县', '', '', '', '421124', '438700', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421125', '421100', '156-420000-421100-421125-', '0', '浠水县', '浠水县', '', '', '', '421125', '438200', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421126', '421100', '156-420000-421100-421126-', '0', '蕲春县', '蕲春县', '', '', '', '421126', '435300', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421127', '421100', '156-420000-421100-421127-', '0', '黄梅县', '黄梅县', '', '', '', '421127', '435500', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421181', '421100', '156-420000-421100-421181-', '0', '麻城市', '麻城市', '', '', '', '421181', '438300', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421182', '421100', '156-420000-421100-421182-', '0', '武穴市', '武穴市', '', '', '', '421182', '435400', '0713', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421200', '420000', '156-420000-421200-', '0', '咸宁', '咸宁市', '', '', '', '421200', '437000', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421201', '421200', '156-420000-421200-421201-', '0', '市辖区', '市辖区', '', '', '', '421201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421202', '421200', '156-420000-421200-421202-', '0', '咸安区', '咸安区', '', '', '', '421202', '437000', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421221', '421200', '156-420000-421200-421221-', '0', '嘉鱼县', '嘉鱼县', '', '', '', '421221', '437200', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421222', '421200', '156-420000-421200-421222-', '0', '通城县', '通城县', '', '', '', '421222', '437400', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421223', '421200', '156-420000-421200-421223-', '0', '崇阳县', '崇阳县', '', '', '', '421223', '437500', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421224', '421200', '156-420000-421200-421224-', '0', '通山县', '通山县', '', '', '', '421224', '437600', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421281', '421200', '156-420000-421200-421281-', '0', '赤壁市', '赤壁市', '', '', '', '421281', '437300', '0715', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421300', '420000', '156-420000-421300-', '0', '随州', '随州市', '', '', '', '421300', '441300', '0722', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421301', '421300', '156-420000-421300-421301-', '0', '市辖区', '市辖区', '', '', '', '421301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421303', '421300', '156-420000-421300-421303-', '0', '曾都区', '曾都区', '', '', '', '421303', '441300', '0722', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421321', '421300', '156-420000-421300-421321-', '0', '随县', '随县', '', '', '', '421321', '441315', '0722', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('421381', '421300', '156-420000-421300-421381-', '0', '广水市', '广水市', '', '', '', '421381', '432700', '0722', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422800', '420000', '156-420000-422800-', '0', '恩施', '恩施土家族苗族自治州', '', '', '', '422800', '445000', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422801', '422800', '156-420000-422800-422801-', '0', '恩施市', '恩施市', '', '', '', '422801', '445000', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422802', '422800', '156-420000-422800-422802-', '0', '利川市', '利川市', '', '', '', '422802', '445400', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422822', '422800', '156-420000-422800-422822-', '0', '建始县', '建始县', '', '', '', '422822', '445300', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422823', '422800', '156-420000-422800-422823-', '0', '巴东县', '巴东县', '', '', '', '422823', '444300', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422825', '422800', '156-420000-422800-422825-', '0', '宣恩县', '宣恩县', '', '', '', '422825', '445500', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422826', '422800', '156-420000-422800-422826-', '0', '咸丰县', '咸丰县', '', '', '', '422826', '445600', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422827', '422800', '156-420000-422800-422827-', '0', '来凤县', '来凤县', '', '', '', '422827', '445700', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('422828', '422800', '156-420000-422800-422828-', '0', '鹤峰县', '鹤峰县', '', '', '', '422828', '445800', '0718', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('429000', '420000', '156-420000-429000-', '0', '省直辖县', '省直辖县级行政区划', '', '', '', '429000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('429004', '429000', '156-420000-429000-429004-', '0', '仙桃市', '仙桃市', '', '', '', '429004', '433000', '0728', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('429005', '429000', '156-420000-429000-429005-', '0', '潜江市', '潜江市', '', '', '', '429005', '433100', '0728', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('429006', '429000', '156-420000-429000-429006-', '0', '天门市', '天门市', '', '', '', '429006', '431700', '0728', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('429021', '429000', '156-420000-429000-429021-', '0', '神农架林区', '神农架林区', '', '', '', '429021', '442400', '0719', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430000', '156', '156-430000-', '0', '湖南', '湖南省', 'HuNan', 'HuNan', 'HN', '430000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430100', '430000', '156-430000-430100-', '0', '长沙', '长沙市', '', '', '', '430100', '410000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430101', '430100', '156-430000-430100-430101-', '0', '市辖区', '市辖区', '', '', '', '430101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430102', '430100', '156-430000-430100-430102-', '0', '芙蓉区', '芙蓉区', '', '', '', '430102', '410000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430103', '430100', '156-430000-430100-430103-', '0', '天心区', '天心区', '', '', '', '430103', '410000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430104', '430100', '156-430000-430100-430104-', '0', '岳麓区', '岳麓区', '', '', '', '430104', '410000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430105', '430100', '156-430000-430100-430105-', '0', '开福区', '开福区', '', '', '', '430105', '410000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430111', '430100', '156-430000-430100-430111-', '0', '雨花区', '雨花区', '', '', '', '430111', '410000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430112', '430100', '156-430000-430100-430112-', '0', '望城区', '望城区', '', '', '', '430112', '410200', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430121', '430100', '156-430000-430100-430121-', '0', '长沙县', '长沙县', '', '', '', '430121', '410100', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430124', '430100', '156-430000-430100-430124-', '0', '宁乡县', '宁乡县', '', '', '', '430124', '410600', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430181', '430100', '156-430000-430100-430181-', '0', '浏阳市', '浏阳市', '', '', '', '430181', '410300', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430200', '430000', '156-430000-430200-', '0', '株洲', '株洲市', '', '', '', '430200', '412000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430201', '430200', '156-430000-430200-430201-', '0', '市辖区', '市辖区', '', '', '', '430201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430202', '430200', '156-430000-430200-430202-', '0', '荷塘区', '荷塘区', '', '', '', '430202', '412000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430203', '430200', '156-430000-430200-430203-', '0', '芦淞区', '芦淞区', '', '', '', '430203', '412000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430204', '430200', '156-430000-430200-430204-', '0', '石峰区', '石峰区', '', '', '', '430204', '412000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430211', '430200', '156-430000-430200-430211-', '0', '天元区', '天元区', '', '', '', '430211', '412000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430221', '430200', '156-430000-430200-430221-', '0', '株洲县', '株洲县', '', '', '', '430221', '412000', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430223', '430200', '156-430000-430200-430223-', '0', '攸县', '攸县', '', '', '', '430223', '412300', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430224', '430200', '156-430000-430200-430224-', '0', '茶陵县', '茶陵县', '', '', '', '430224', '412400', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430225', '430200', '156-430000-430200-430225-', '0', '炎陵县', '炎陵县', '', '', '', '430225', '412500', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430281', '430200', '156-430000-430200-430281-', '0', '醴陵市', '醴陵市', '', '', '', '430281', '412200', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430300', '430000', '156-430000-430300-', '0', '湘潭', '湘潭市', '', '', '', '430300', '411100', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430301', '430300', '156-430000-430300-430301-', '0', '市辖区', '市辖区', '', '', '', '430301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430302', '430300', '156-430000-430300-430302-', '0', '雨湖区', '雨湖区', '', '', '', '430302', '411100', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430304', '430300', '156-430000-430300-430304-', '0', '岳塘区', '岳塘区', '', '', '', '430304', '411100', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430321', '430300', '156-430000-430300-430321-', '0', '湘潭县', '湘潭县', '', '', '', '430321', '411200', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430381', '430300', '156-430000-430300-430381-', '0', '湘乡市', '湘乡市', '', '', '', '430381', '411400', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430382', '430300', '156-430000-430300-430382-', '0', '韶山市', '韶山市', '', '', '', '430382', '411300', '0731', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430400', '430000', '156-430000-430400-', '0', '衡阳', '衡阳市', '', '', '', '430400', '421000', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430401', '430400', '156-430000-430400-430401-', '0', '市辖区', '市辖区', '', '', '', '430401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430405', '430400', '156-430000-430400-430405-', '0', '珠晖区', '珠晖区', '', '', '', '430405', '421000', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430406', '430400', '156-430000-430400-430406-', '0', '雁峰区', '雁峰区', '', '', '', '430406', '421000', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430407', '430400', '156-430000-430400-430407-', '0', '石鼓区', '石鼓区', '', '', '', '430407', '421000', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430408', '430400', '156-430000-430400-430408-', '0', '蒸湘区', '蒸湘区', '', '', '', '430408', '421000', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430412', '430400', '156-430000-430400-430412-', '0', '南岳区', '南岳区', '', '', '', '430412', '421000', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430421', '430400', '156-430000-430400-430421-', '0', '衡阳县', '衡阳县', '', '', '', '430421', '421200', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430422', '430400', '156-430000-430400-430422-', '0', '衡南县', '衡南县', '', '', '', '430422', '421100', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430423', '430400', '156-430000-430400-430423-', '0', '衡山县', '衡山县', '', '', '', '430423', '421300', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430424', '430400', '156-430000-430400-430424-', '0', '衡东县', '衡东县', '', '', '', '430424', '421400', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430426', '430400', '156-430000-430400-430426-', '0', '祁东县', '祁东县', '', '', '', '430426', '421600', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430481', '430400', '156-430000-430400-430481-', '0', '耒阳市', '耒阳市', '', '', '', '430481', '421800', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430482', '430400', '156-430000-430400-430482-', '0', '常宁市', '常宁市', '', '', '', '430482', '421500', '0734', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430500', '430000', '156-430000-430500-', '0', '邵阳', '邵阳市', '', '', '', '430500', '422000', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430501', '430500', '156-430000-430500-430501-', '0', '市辖区', '市辖区', '', '', '', '430501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430502', '430500', '156-430000-430500-430502-', '0', '双清区', '双清区', '', '', '', '430502', '422000', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430503', '430500', '156-430000-430500-430503-', '0', '大祥区', '大祥区', '', '', '', '430503', '422000', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430511', '430500', '156-430000-430500-430511-', '0', '北塔区', '北塔区', '', '', '', '430511', '422000', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430521', '430500', '156-430000-430500-430521-', '0', '邵东县', '邵东县', '', '', '', '430521', '422800', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430522', '430500', '156-430000-430500-430522-', '0', '新邵县', '新邵县', '', '', '', '430522', '422900', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430523', '430500', '156-430000-430500-430523-', '0', '邵阳县', '邵阳县', '', '', '', '430523', '422100', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430524', '430500', '156-430000-430500-430524-', '0', '隆回县', '隆回县', '', '', '', '430524', '422200', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430525', '430500', '156-430000-430500-430525-', '0', '洞口县', '洞口县', '', '', '', '430525', '422300', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430527', '430500', '156-430000-430500-430527-', '0', '绥宁县', '绥宁县', '', '', '', '430527', '422600', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430528', '430500', '156-430000-430500-430528-', '0', '新宁县', '新宁县', '', '', '', '430528', '422700', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430529', '430500', '156-430000-430500-430529-', '0', '城步苗族自治县', '城步苗族自治县', '', '', '', '430529', '422500', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430581', '430500', '156-430000-430500-430581-', '0', '武冈市', '武冈市', '', '', '', '430581', '422400', '0739', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430600', '430000', '156-430000-430600-', '0', '岳阳', '岳阳市', '', '', '', '430600', '414000', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430601', '430600', '156-430000-430600-430601-', '0', '市辖区', '市辖区', '', '', '', '430601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430602', '430600', '156-430000-430600-430602-', '0', '岳阳楼区', '岳阳楼区', '', '', '', '430602', '414000', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430603', '430600', '156-430000-430600-430603-', '0', '云溪区', '云溪区', '', '', '', '430603', '414000', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430611', '430600', '156-430000-430600-430611-', '0', '君山区', '君山区', '', '', '', '430611', '414000', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430621', '430600', '156-430000-430600-430621-', '0', '岳阳县', '岳阳县', '', '', '', '430621', '414100', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430623', '430600', '156-430000-430600-430623-', '0', '华容县', '华容县', '', '', '', '430623', '414200', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430624', '430600', '156-430000-430600-430624-', '0', '湘阴县', '湘阴县', '', '', '', '430624', '410500', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430626', '430600', '156-430000-430600-430626-', '0', '平江县', '平江县', '', '', '', '430626', '410400', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430681', '430600', '156-430000-430600-430681-', '0', '汨罗市', '汨罗市', '', '', '', '430681', '414400', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430682', '430600', '156-430000-430600-430682-', '0', '临湘市', '临湘市', '', '', '', '430682', '414300', '0730', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430700', '430000', '156-430000-430700-', '0', '常德', '常德市', '', '', '', '430700', '415000', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430701', '430700', '156-430000-430700-430701-', '0', '市辖区', '市辖区', '', '', '', '430701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430702', '430700', '156-430000-430700-430702-', '0', '武陵区', '武陵区', '', '', '', '430702', '415000', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430703', '430700', '156-430000-430700-430703-', '0', '鼎城区', '鼎城区', '', '', '', '430703', '415100', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430721', '430700', '156-430000-430700-430721-', '0', '安乡县', '安乡县', '', '', '', '430721', '415600', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430722', '430700', '156-430000-430700-430722-', '0', '汉寿县', '汉寿县', '', '', '', '430722', '415900', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430723', '430700', '156-430000-430700-430723-', '0', '澧县', '澧县', '', '', '', '430723', '415500', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430724', '430700', '156-430000-430700-430724-', '0', '临澧县', '临澧县', '', '', '', '430724', '415200', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430725', '430700', '156-430000-430700-430725-', '0', '桃源县', '桃源县', '', '', '', '430725', '415700', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430726', '430700', '156-430000-430700-430726-', '0', '石门县', '石门县', '', '', '', '430726', '415300', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430781', '430700', '156-430000-430700-430781-', '0', '津市市', '津市市', '', '', '', '430781', '415400', '0736', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430800', '430000', '156-430000-430800-', '0', '张家界', '张家界市', '', '', '', '430800', '427000', '0744', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430801', '430800', '156-430000-430800-430801-', '0', '市辖区', '市辖区', '', '', '', '430801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430802', '430800', '156-430000-430800-430802-', '0', '永定区', '永定区', '', '', '', '430802', '427000', '0744', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430811', '430800', '156-430000-430800-430811-', '0', '武陵源区', '武陵源区', '', '', '', '430811', '427400', '0744', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430821', '430800', '156-430000-430800-430821-', '0', '慈利县', '慈利县', '', '', '', '430821', '427200', '0744', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430822', '430800', '156-430000-430800-430822-', '0', '桑植县', '桑植县', '', '', '', '430822', '427100', '0744', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430900', '430000', '156-430000-430900-', '0', '益阳', '益阳市', '', '', '', '430900', '413000', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430901', '430900', '156-430000-430900-430901-', '0', '市辖区', '市辖区', '', '', '', '430901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430902', '430900', '156-430000-430900-430902-', '0', '资阳区', '资阳区', '', '', '', '430902', '413000', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430903', '430900', '156-430000-430900-430903-', '0', '赫山区', '赫山区', '', '', '', '430903', '413000', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430921', '430900', '156-430000-430900-430921-', '0', '南县', '南县', '', '', '', '430921', '413200', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430922', '430900', '156-430000-430900-430922-', '0', '桃江县', '桃江县', '', '', '', '430922', '413400', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430923', '430900', '156-430000-430900-430923-', '0', '安化县', '安化县', '', '', '', '430923', '413500', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('430981', '430900', '156-430000-430900-430981-', '0', '沅江市', '沅江市', '', '', '', '430981', '413100', '0737', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431000', '430000', '156-430000-431000-', '0', '郴州', '郴州市', '', '', '', '431000', '423000', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431001', '431000', '156-430000-431000-431001-', '0', '市辖区', '市辖区', '', '', '', '431001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431002', '431000', '156-430000-431000-431002-', '0', '北湖区', '北湖区', '', '', '', '431002', '423000', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431003', '431000', '156-430000-431000-431003-', '0', '苏仙区', '苏仙区', '', '', '', '431003', '423000', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431021', '431000', '156-430000-431000-431021-', '0', '桂阳县', '桂阳县', '', '', '', '431021', '424400', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431022', '431000', '156-430000-431000-431022-', '0', '宜章县', '宜章县', '', '', '', '431022', '424200', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431023', '431000', '156-430000-431000-431023-', '0', '永兴县', '永兴县', '', '', '', '431023', '423300', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431024', '431000', '156-430000-431000-431024-', '0', '嘉禾县', '嘉禾县', '', '', '', '431024', '424500', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431025', '431000', '156-430000-431000-431025-', '0', '临武县', '临武县', '', '', '', '431025', '424300', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431026', '431000', '156-430000-431000-431026-', '0', '汝城县', '汝城县', '', '', '', '431026', '424100', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431027', '431000', '156-430000-431000-431027-', '0', '桂东县', '桂东县', '', '', '', '431027', '423500', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431028', '431000', '156-430000-431000-431028-', '0', '安仁县', '安仁县', '', '', '', '431028', '423600', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431081', '431000', '156-430000-431000-431081-', '0', '资兴市', '资兴市', '', '', '', '431081', '423400', '0735', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431100', '430000', '156-430000-431100-', '0', '永州', '永州市', '', '', '', '431100', '425000', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431101', '431100', '156-430000-431100-431101-', '0', '市辖区', '市辖区', '', '', '', '431101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431102', '431100', '156-430000-431100-431102-', '0', '零陵区', '零陵区', '', '', '', '431102', '425000', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431103', '431100', '156-430000-431100-431103-', '0', '冷水滩区', '冷水滩区', '', '', '', '431103', '425000', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431121', '431100', '156-430000-431100-431121-', '0', '祁阳县', '祁阳县', '', '', '', '431121', '426100', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431122', '431100', '156-430000-431100-431122-', '0', '东安县', '东安县', '', '', '', '431122', '425900', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431123', '431100', '156-430000-431100-431123-', '0', '双牌县', '双牌县', '', '', '', '431123', '425200', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431124', '431100', '156-430000-431100-431124-', '0', '道县', '道县', '', '', '', '431124', '425300', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431125', '431100', '156-430000-431100-431125-', '0', '江永县', '江永县', '', '', '', '431125', '425400', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431126', '431100', '156-430000-431100-431126-', '0', '宁远县', '宁远县', '', '', '', '431126', '425600', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431127', '431100', '156-430000-431100-431127-', '0', '蓝山县', '蓝山县', '', '', '', '431127', '425800', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431128', '431100', '156-430000-431100-431128-', '0', '新田县', '新田县', '', '', '', '431128', '425700', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431129', '431100', '156-430000-431100-431129-', '0', '江华瑶族自治县', '江华瑶族自治县', '', '', '', '431129', '425500', '0746', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431200', '430000', '156-430000-431200-', '0', '怀化', '怀化市', '', '', '', '431200', '418000', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431201', '431200', '156-430000-431200-431201-', '0', '市辖区', '市辖区', '', '', '', '431201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431202', '431200', '156-430000-431200-431202-', '0', '鹤城区', '鹤城区', '', '', '', '431202', '418000', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431221', '431200', '156-430000-431200-431221-', '0', '中方县', '中方县', '', '', '', '431221', '418000', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431222', '431200', '156-430000-431200-431222-', '0', '沅陵县', '沅陵县', '', '', '', '431222', '419600', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431223', '431200', '156-430000-431200-431223-', '0', '辰溪县', '辰溪县', '', '', '', '431223', '419500', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431224', '431200', '156-430000-431200-431224-', '0', '溆浦县', '溆浦县', '', '', '', '431224', '419300', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431225', '431200', '156-430000-431200-431225-', '0', '会同县', '会同县', '', '', '', '431225', '418300', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431226', '431200', '156-430000-431200-431226-', '0', '麻阳苗族自治县', '麻阳苗族自治县', '', '', '', '431226', '419400', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431227', '431200', '156-430000-431200-431227-', '0', '新晃侗族自治县', '新晃侗族自治县', '', '', '', '431227', '419200', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431228', '431200', '156-430000-431200-431228-', '0', '芷江侗族自治县', '芷江侗族自治县', '', '', '', '431228', '419100', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431229', '431200', '156-430000-431200-431229-', '0', '靖州苗族侗族自治县', '靖州苗族侗族自治县', '', '', '', '431229', '418400', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431230', '431200', '156-430000-431200-431230-', '0', '通道侗族自治县', '通道侗族自治县', '', '', '', '431230', '418500', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431281', '431200', '156-430000-431200-431281-', '0', '洪江市', '洪江市', '', '', '', '431281', '418200', '0745', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431300', '430000', '156-430000-431300-', '0', '娄底', '娄底市', '', '', '', '431300', '417000', '0738', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431301', '431300', '156-430000-431300-431301-', '0', '市辖区', '市辖区', '', '', '', '431301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431302', '431300', '156-430000-431300-431302-', '0', '娄星区', '娄星区', '', '', '', '431302', '417000', '0738', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431321', '431300', '156-430000-431300-431321-', '0', '双峰县', '双峰县', '', '', '', '431321', '417700', '0738', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431322', '431300', '156-430000-431300-431322-', '0', '新化县', '新化县', '', '', '', '431322', '417600', '0738', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431381', '431300', '156-430000-431300-431381-', '0', '冷水江市', '冷水江市', '', '', '', '431381', '417500', '0738', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('431382', '431300', '156-430000-431300-431382-', '0', '涟源市', '涟源市', '', '', '', '431382', '417100', '0738', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433100', '430000', '156-430000-433100-', '0', '湘西', '湘西土家族苗族自治州', '', '', '', '433100', '416000', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433101', '433100', '156-430000-433100-433101-', '0', '吉首市', '吉首市', '', '', '', '433101', '416000', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433122', '433100', '156-430000-433100-433122-', '0', '泸溪县', '泸溪县', '', '', '', '433122', '416100', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433123', '433100', '156-430000-433100-433123-', '0', '凤凰县', '凤凰县', '', '', '', '433123', '416200', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433124', '433100', '156-430000-433100-433124-', '0', '花垣县', '花垣县', '', '', '', '433124', '416400', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433125', '433100', '156-430000-433100-433125-', '0', '保靖县', '保靖县', '', '', '', '433125', '416500', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433126', '433100', '156-430000-433100-433126-', '0', '古丈县', '古丈县', '', '', '', '433126', '416300', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433127', '433100', '156-430000-433100-433127-', '0', '永顺县', '永顺县', '', '', '', '433127', '416700', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('433130', '433100', '156-430000-433100-433130-', '0', '龙山县', '龙山县', '', '', '', '433130', '416800', '0743', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440000', '156', '156-440000-', '0', '广东', '广东省', 'GuangDong', 'GuangDong', 'GD', '440000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440100', '440000', '156-440000-440100-', '0', '广州', '广州市', '', '', '', '440100', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440101', '440100', '156-440000-440100-440101-', '0', '市辖区', '市辖区', '', '', '', '440101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440103', '440100', '156-440000-440100-440103-', '0', '荔湾区', '荔湾区', '', '', '', '440103', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440104', '440100', '156-440000-440100-440104-', '0', '越秀区', '越秀区', '', '', '', '440104', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440105', '440100', '156-440000-440100-440105-', '0', '海珠区', '海珠区', '', '', '', '440105', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440106', '440100', '156-440000-440100-440106-', '0', '天河区', '天河区', '', '', '', '440106', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440111', '440100', '156-440000-440100-440111-', '0', '白云区', '白云区', '', '', '', '440111', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440112', '440100', '156-440000-440100-440112-', '0', '黄埔区', '黄埔区', '', '', '', '440112', '510700', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440113', '440100', '156-440000-440100-440113-', '0', '番禺区', '番禺区', '', '', '', '440113', '511400', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440114', '440100', '156-440000-440100-440114-', '0', '花都区', '花都区', '', '', '', '440114', '510800', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440115', '440100', '156-440000-440100-440115-', '0', '南沙区', '南沙区', '', '', '', '440115', '511400', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440116', '440100', '156-440000-440100-440116-', '0', '萝岗区', '萝岗区', '', '', '', '440116', '510000', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440183', '440100', '156-440000-440100-440183-', '0', '增城市', '增城市', '', '', '', '440183', '511300', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440184', '440100', '156-440000-440100-440184-', '0', '从化市', '从化市', '', '', '', '440184', '510900', '020', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440200', '440000', '156-440000-440200-', '0', '韶关', '韶关市', '', '', '', '440200', '512000', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440201', '440200', '156-440000-440200-440201-', '0', '市辖区', '市辖区', '', '', '', '440201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440203', '440200', '156-440000-440200-440203-', '0', '武江区', '武江区', '', '', '', '440203', '512000', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440204', '440200', '156-440000-440200-440204-', '0', '浈江区', '浈江区', '', '', '', '440204', '512000', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440205', '440200', '156-440000-440200-440205-', '0', '曲江区', '曲江区', '', '', '', '440205', '512100', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440222', '440200', '156-440000-440200-440222-', '0', '始兴县', '始兴县', '', '', '', '440222', '512500', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440224', '440200', '156-440000-440200-440224-', '0', '仁化县', '仁化县', '', '', '', '440224', '512300', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440229', '440200', '156-440000-440200-440229-', '0', '翁源县', '翁源县', '', '', '', '440229', '512600', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440232', '440200', '156-440000-440200-440232-', '0', '乳源瑶族自治县', '乳源瑶族自治县', '', '', '', '440232', '512600', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440233', '440200', '156-440000-440200-440233-', '0', '新丰县', '新丰县', '', '', '', '440233', '511100', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440281', '440200', '156-440000-440200-440281-', '0', '乐昌市', '乐昌市', '', '', '', '440281', '512200', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440282', '440200', '156-440000-440200-440282-', '0', '南雄市', '南雄市', '', '', '', '440282', '512400', '0751', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440300', '440000', '156-440000-440300-', '0', '深圳', '深圳市', '', '', '', '440300', '518000', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440301', '440300', '156-440000-440300-440301-', '0', '市辖区', '市辖区', '', '', '', '440301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440303', '440300', '156-440000-440300-440303-', '0', '罗湖区', '罗湖区', '', '', '', '440303', '518000', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440304', '440300', '156-440000-440300-440304-', '0', '福田区', '福田区', '', '', '', '440304', '518000', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440305', '440300', '156-440000-440300-440305-', '0', '南山区', '南山区', '', '', '', '440305', '518000', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440306', '440300', '156-440000-440300-440306-', '0', '宝安区', '宝安区', '', '', '', '440306', '518100', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440307', '440300', '156-440000-440300-440307-', '0', '龙岗区', '龙岗区', '', '', '', '440307', '518100', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440308', '440300', '156-440000-440300-440308-', '0', '盐田区', '盐田区', '', '', '', '440308', '518000', '0755', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440400', '440000', '156-440000-440400-', '0', '珠海', '珠海市', '', '', '', '440400', '519000', '0756', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440401', '440400', '156-440000-440400-440401-', '0', '市辖区', '市辖区', '', '', '', '440401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440402', '440400', '156-440000-440400-440402-', '0', '香洲区', '香洲区', '', '', '', '440402', '519000', '0756', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440403', '440400', '156-440000-440400-440403-', '0', '斗门区', '斗门区', '', '', '', '440403', '519100', '0756', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440404', '440400', '156-440000-440400-440404-', '0', '金湾区', '金湾区', '', '', '', '440404', '519090', '0756', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440500', '440000', '156-440000-440500-', '0', '汕头', '汕头市', '', '', '', '440500', '515000', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440501', '440500', '156-440000-440500-440501-', '0', '市辖区', '市辖区', '', '', '', '440501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440507', '440500', '156-440000-440500-440507-', '0', '龙湖区', '龙湖区', '', '', '', '440507', '515000', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440511', '440500', '156-440000-440500-440511-', '0', '金平区', '金平区', '', '', '', '440511', '515000', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440512', '440500', '156-440000-440500-440512-', '0', '濠江区', '濠江区', '', '', '', '440512', '515000', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440513', '440500', '156-440000-440500-440513-', '0', '潮阳区', '潮阳区', '', '', '', '440513', '515100', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440514', '440500', '156-440000-440500-440514-', '0', '潮南区', '潮南区', '', '', '', '440514', '515100', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440515', '440500', '156-440000-440500-440515-', '0', '澄海区', '澄海区', '', '', '', '440515', '515800', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440523', '440500', '156-440000-440500-440523-', '0', '南澳县', '南澳县', '', '', '', '440523', '515900', '0754', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440600', '440000', '156-440000-440600-', '0', '佛山', '佛山市', '', '', '', '440600', '528000', '0757', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440601', '440600', '156-440000-440600-440601-', '0', '市辖区', '市辖区', '', '', '', '440601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440604', '440600', '156-440000-440600-440604-', '0', '禅城区', '禅城区', '', '', '', '440604', '528000', '0757', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440605', '440600', '156-440000-440600-440605-', '0', '南海区', '南海区', '', '', '', '440605', '528200', '0757', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440606', '440600', '156-440000-440600-440606-', '0', '顺德区', '顺德区', '', '', '', '440606', '528000', '0757', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440607', '440600', '156-440000-440600-440607-', '0', '三水区', '三水区', '', '', '', '440607', '528100', '0757', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440608', '440600', '156-440000-440600-440608-', '0', '高明区', '高明区', '', '', '', '440608', '528500', '0757', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440700', '440000', '156-440000-440700-', '0', '江门', '江门市', '', '', '', '440700', '529000', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440701', '440700', '156-440000-440700-440701-', '0', '市辖区', '市辖区', '', '', '', '440701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440703', '440700', '156-440000-440700-440703-', '0', '蓬江区', '蓬江区', '', '', '', '440703', '529000', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440704', '440700', '156-440000-440700-440704-', '0', '江海区', '江海区', '', '', '', '440704', '529000', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440705', '440700', '156-440000-440700-440705-', '0', '新会区', '新会区', '', '', '', '440705', '529100', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440781', '440700', '156-440000-440700-440781-', '0', '台山市', '台山市', '', '', '', '440781', '529200', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440783', '440700', '156-440000-440700-440783-', '0', '开平市', '开平市', '', '', '', '440783', '529300', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440784', '440700', '156-440000-440700-440784-', '0', '鹤山市', '鹤山市', '', '', '', '440784', '529700', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440785', '440700', '156-440000-440700-440785-', '0', '恩平市', '恩平市', '', '', '', '440785', '529400', '0750', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440800', '440000', '156-440000-440800-', '0', '湛江', '湛江市', '', '', '', '440800', '524000', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440801', '440800', '156-440000-440800-440801-', '0', '市辖区', '市辖区', '', '', '', '440801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440802', '440800', '156-440000-440800-440802-', '0', '赤坎区', '赤坎区', '', '', '', '440802', '524000', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440803', '440800', '156-440000-440800-440803-', '0', '霞山区', '霞山区', '', '', '', '440803', '524000', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440804', '440800', '156-440000-440800-440804-', '0', '坡头区', '坡头区', '', '', '', '440804', '524000', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440811', '440800', '156-440000-440800-440811-', '0', '麻章区', '麻章区', '', '', '', '440811', '524000', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440823', '440800', '156-440000-440800-440823-', '0', '遂溪县', '遂溪县', '', '', '', '440823', '524300', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440825', '440800', '156-440000-440800-440825-', '0', '徐闻县', '徐闻县', '', '', '', '440825', '524100', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440881', '440800', '156-440000-440800-440881-', '0', '廉江市', '廉江市', '', '', '', '440881', '524400', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440882', '440800', '156-440000-440800-440882-', '0', '雷州市', '雷州市', '', '', '', '440882', '524200', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440883', '440800', '156-440000-440800-440883-', '0', '吴川市', '吴川市', '', '', '', '440883', '524500', '0759', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440900', '440000', '156-440000-440900-', '0', '茂名', '茂名市', '', '', '', '440900', '525000', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440901', '440900', '156-440000-440900-440901-', '0', '市辖区', '市辖区', '', '', '', '440901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440902', '440900', '156-440000-440900-440902-', '0', '茂南区', '茂南区', '', '', '', '440902', '525000', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440903', '440900', '156-440000-440900-440903-', '0', '茂港区', '茂港区', '', '', '', '440903', '525000', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440923', '440900', '156-440000-440900-440923-', '0', '电白县', '电白县', '', '', '', '440923', '525400', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440981', '440900', '156-440000-440900-440981-', '0', '高州市', '高州市', '', '', '', '440981', '525200', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440982', '440900', '156-440000-440900-440982-', '0', '化州市', '化州市', '', '', '', '440982', '525100', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('440983', '440900', '156-440000-440900-440983-', '0', '信宜市', '信宜市', '', '', '', '440983', '525300', '0668', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441200', '440000', '156-440000-441200-', '0', '肇庆', '肇庆市', '', '', '', '441200', '526000', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441201', '441200', '156-440000-441200-441201-', '0', '市辖区', '市辖区', '', '', '', '441201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441202', '441200', '156-440000-441200-441202-', '0', '端州区', '端州区', '', '', '', '441202', '526000', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441203', '441200', '156-440000-441200-441203-', '0', '鼎湖区', '鼎湖区', '', '', '', '441203', '526000', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441223', '441200', '156-440000-441200-441223-', '0', '广宁县', '广宁县', '', '', '', '441223', '526300', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441224', '441200', '156-440000-441200-441224-', '0', '怀集县', '怀集县', '', '', '', '441224', '526400', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441225', '441200', '156-440000-441200-441225-', '0', '封开县', '封开县', '', '', '', '441225', '526500', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441226', '441200', '156-440000-441200-441226-', '0', '德庆县', '德庆县', '', '', '', '441226', '526600', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441283', '441200', '156-440000-441200-441283-', '0', '高要市', '高要市', '', '', '', '441283', '526100', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441284', '441200', '156-440000-441200-441284-', '0', '四会市', '四会市', '', '', '', '441284', '526200', '0758', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441300', '440000', '156-440000-441300-', '0', '惠州', '惠州市', '', '', '', '441300', '516000', '0752', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441301', '441300', '156-440000-441300-441301-', '0', '市辖区', '市辖区', '', '', '', '441301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441302', '441300', '156-440000-441300-441302-', '0', '惠城区', '惠城区', '', '', '', '441302', '516000', '0752', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441303', '441300', '156-440000-441300-441303-', '0', '惠阳区', '惠阳区', '', '', '', '441303', '516200', '0752', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441322', '441300', '156-440000-441300-441322-', '0', '博罗县', '博罗县', '', '', '', '441322', '516100', '0752', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441323', '441300', '156-440000-441300-441323-', '0', '惠东县', '惠东县', '', '', '', '441323', '516300', '0752', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441324', '441300', '156-440000-441300-441324-', '0', '龙门县', '龙门县', '', '', '', '441324', '516800', '0752', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441400', '440000', '156-440000-441400-', '0', '梅州', '梅州市', '', '', '', '441400', '514000', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441401', '441400', '156-440000-441400-441401-', '0', '市辖区', '市辖区', '', '', '', '441401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441402', '441400', '156-440000-441400-441402-', '0', '梅江区', '梅江区', '', '', '', '441402', '514000', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441421', '441400', '156-440000-441400-441421-', '0', '梅县', '梅县', '', '', '', '441421', '514700', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441422', '441400', '156-440000-441400-441422-', '0', '大埔县', '大埔县', '', '', '', '441422', '514200', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441423', '441400', '156-440000-441400-441423-', '0', '丰顺县', '丰顺县', '', '', '', '441423', '514300', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441424', '441400', '156-440000-441400-441424-', '0', '五华县', '五华县', '', '', '', '441424', '514400', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441426', '441400', '156-440000-441400-441426-', '0', '平远县', '平远县', '', '', '', '441426', '514600', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441427', '441400', '156-440000-441400-441427-', '0', '蕉岭县', '蕉岭县', '', '', '', '441427', '514100', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441481', '441400', '156-440000-441400-441481-', '0', '兴宁市', '兴宁市', '', '', '', '441481', '514500', '0753', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441500', '440000', '156-440000-441500-', '0', '汕尾', '汕尾市', '', '', '', '441500', '516600', '0660', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441501', '441500', '156-440000-441500-441501-', '0', '市辖区', '市辖区', '', '', '', '441501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441502', '441500', '156-440000-441500-441502-', '0', '城区', '城区', '', '', '', '441502', '516600', '0660', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441521', '441500', '156-440000-441500-441521-', '0', '海丰县', '海丰县', '', '', '', '441521', '516400', '0660', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441523', '441500', '156-440000-441500-441523-', '0', '陆河县', '陆河县', '', '', '', '441523', '516700', '0660', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441581', '441500', '156-440000-441500-441581-', '0', '陆丰市', '陆丰市', '', '', '', '441581', '516500', '0660', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441600', '440000', '156-440000-441600-', '0', '河源', '河源市', '', '', '', '441600', '517000', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441601', '441600', '156-440000-441600-441601-', '0', '市辖区', '市辖区', '', '', '', '441601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441602', '441600', '156-440000-441600-441602-', '0', '源城区', '源城区', '', '', '', '441602', '517000', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441621', '441600', '156-440000-441600-441621-', '0', '紫金县', '紫金县', '', '', '', '441621', '517400', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441622', '441600', '156-440000-441600-441622-', '0', '龙川县', '龙川县', '', '', '', '441622', '517300', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441623', '441600', '156-440000-441600-441623-', '0', '连平县', '连平县', '', '', '', '441623', '517100', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441624', '441600', '156-440000-441600-441624-', '0', '和平县', '和平县', '', '', '', '441624', '517200', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441625', '441600', '156-440000-441600-441625-', '0', '东源县', '东源县', '', '', '', '441625', '517500', '0762', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441700', '440000', '156-440000-441700-', '0', '阳江', '阳江市', '', '', '', '441700', '529500', '0662', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441701', '441700', '156-440000-441700-441701-', '0', '市辖区', '市辖区', '', '', '', '441701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441702', '441700', '156-440000-441700-441702-', '0', '江城区', '江城区', '', '', '', '441702', '529500', '0662', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441721', '441700', '156-440000-441700-441721-', '0', '阳西县', '阳西县', '', '', '', '441721', '529800', '0662', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441723', '441700', '156-440000-441700-441723-', '0', '阳东县', '阳东县', '', '', '', '441723', '529900', '0662', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441781', '441700', '156-440000-441700-441781-', '0', '阳春市', '阳春市', '', '', '', '441781', '529600', '0662', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441800', '440000', '156-440000-441800-', '0', '清远', '清远市', '', '', '', '441800', '511500', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441801', '441800', '156-440000-441800-441801-', '0', '市辖区', '市辖区', '', '', '', '441801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441802', '441800', '156-440000-441800-441802-', '0', '清城区', '清城区', '', '', '', '441802', '511500', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441821', '441800', '156-440000-441800-441821-', '0', '佛冈县', '佛冈县', '', '', '', '441821', '511600', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441823', '441800', '156-440000-441800-441823-', '0', '阳山县', '阳山县', '', '', '', '441823', '513100', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441825', '441800', '156-440000-441800-441825-', '0', '连山壮族瑶族自治县', '连山壮族瑶族自治县', '', '', '', '441825', '513200', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441826', '441800', '156-440000-441800-441826-', '0', '连南瑶族自治县', '连南瑶族自治县', '', '', '', '441826', '513300', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441827', '441800', '156-440000-441800-441827-', '0', '清新县', '清新县', '', '', '', '441827', '511800', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441881', '441800', '156-440000-441800-441881-', '0', '英德市', '英德市', '', '', '', '441881', '513000', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441882', '441800', '156-440000-441800-441882-', '0', '连州市', '连州市', '', '', '', '441882', '513400', '0763', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('441900', '440000', '156-440000-441900-', '0', '东莞', '东莞市', '', '', '', '441900', '523000', '0769', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('442000', '440000', '156-440000-442000-', '0', '中山', '中山市', '', '', '', '442000', '528400', '0760', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445100', '440000', '156-440000-445100-', '0', '潮州', '潮州市', '', '', '', '445100', '521000', '0768', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445101', '445100', '156-440000-445100-445101-', '0', '市辖区', '市辖区', '', '', '', '445101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445102', '445100', '156-440000-445100-445102-', '0', '湘桥区', '湘桥区', '', '', '', '445102', '521000', '0768', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445121', '445100', '156-440000-445100-445121-', '0', '潮安县', '潮安县', '', '', '', '445121', '515600', '0768', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445122', '445100', '156-440000-445100-445122-', '0', '饶平县', '饶平县', '', '', '', '445122', '515700', '0768', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445200', '440000', '156-440000-445200-', '0', '揭阳', '揭阳市', '', '', '', '445200', '522000', '0663', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445201', '445200', '156-440000-445200-445201-', '0', '市辖区', '市辖区', '', '', '', '445201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445202', '445200', '156-440000-445200-445202-', '0', '榕城区', '榕城区', '', '', '', '445202', '522000', '0663', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445221', '445200', '156-440000-445200-445221-', '0', '揭东县', '揭东县', '', '', '', '445221', '515500', '0663', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445222', '445200', '156-440000-445200-445222-', '0', '揭西县', '揭西县', '', '', '', '445222', '515400', '0663', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445224', '445200', '156-440000-445200-445224-', '0', '惠来县', '惠来县', '', '', '', '445224', '515200', '0663', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445281', '445200', '156-440000-445200-445281-', '0', '普宁市', '普宁市', '', '', '', '445281', '515300', '0663', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445300', '440000', '156-440000-445300-', '0', '云浮', '云浮市', '', '', '', '445300', '527300', '0766', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445301', '445300', '156-440000-445300-445301-', '0', '市辖区', '市辖区', '', '', '', '445301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445302', '445300', '156-440000-445300-445302-', '0', '云城区', '云城区', '', '', '', '445302', '527300', '0766', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445321', '445300', '156-440000-445300-445321-', '0', '新兴县', '新兴县', '', '', '', '445321', '527400', '0766', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445322', '445300', '156-440000-445300-445322-', '0', '郁南县', '郁南县', '', '', '', '445322', '527100', '0766', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445323', '445300', '156-440000-445300-445323-', '0', '云安县', '云安县', '', '', '', '445323', '527500', '0766', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('445381', '445300', '156-440000-445300-445381-', '0', '罗定市', '罗定市', '', '', '', '445381', '527200', '0766', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450000', '156', '156-450000-', '0', '广西', '广西壮族自治区', 'GuangXi', 'GuangXi', 'GX', '450000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450100', '450000', '156-450000-450100-', '0', '南宁', '南宁市', '', '', '', '450100', '530000', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450101', '450100', '156-450000-450100-450101-', '0', '市辖区', '市辖区', '', '', '', '450101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450102', '450100', '156-450000-450100-450102-', '0', '兴宁区', '兴宁区', '', '', '', '450102', '530000', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450103', '450100', '156-450000-450100-450103-', '0', '青秀区', '青秀区', '', '', '', '450103', '530000', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450105', '450100', '156-450000-450100-450105-', '0', '江南区', '江南区', '', '', '', '450105', '530000', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450107', '450100', '156-450000-450100-450107-', '0', '西乡塘区', '西乡塘区', '', '', '', '450107', '530000', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450108', '450100', '156-450000-450100-450108-', '0', '良庆区', '良庆区', '', '', '', '450108', '530200', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450109', '450100', '156-450000-450100-450109-', '0', '邕宁区', '邕宁区', '', '', '', '450109', '530200', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450122', '450100', '156-450000-450100-450122-', '0', '武鸣县', '武鸣县', '', '', '', '450122', '530100', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450123', '450100', '156-450000-450100-450123-', '0', '隆安县', '隆安县', '', '', '', '450123', '532700', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450124', '450100', '156-450000-450100-450124-', '0', '马山县', '马山县', '', '', '', '450124', '530600', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450125', '450100', '156-450000-450100-450125-', '0', '上林县', '上林县', '', '', '', '450125', '530500', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450126', '450100', '156-450000-450100-450126-', '0', '宾阳县', '宾阳县', '', '', '', '450126', '530400', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450127', '450100', '156-450000-450100-450127-', '0', '横县', '横县', '', '', '', '450127', '530300', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450200', '450000', '156-450000-450200-', '0', '柳州', '柳州市', '', '', '', '450200', '545000', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450201', '450200', '156-450000-450200-450201-', '0', '市辖区', '市辖区', '', '', '', '450201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450202', '450200', '156-450000-450200-450202-', '0', '城中区', '城中区', '', '', '', '450202', '545000', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450203', '450200', '156-450000-450200-450203-', '0', '鱼峰区', '鱼峰区', '', '', '', '450203', '545000', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450204', '450200', '156-450000-450200-450204-', '0', '柳南区', '柳南区', '', '', '', '450204', '545000', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450205', '450200', '156-450000-450200-450205-', '0', '柳北区', '柳北区', '', '', '', '450205', '545000', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450221', '450200', '156-450000-450200-450221-', '0', '柳江县', '柳江县', '', '', '', '450221', '545100', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450222', '450200', '156-450000-450200-450222-', '0', '柳城县', '柳城县', '', '', '', '450222', '545200', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450223', '450200', '156-450000-450200-450223-', '0', '鹿寨县', '鹿寨县', '', '', '', '450223', '545600', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450224', '450200', '156-450000-450200-450224-', '0', '融安县', '融安县', '', '', '', '450224', '545400', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450225', '450200', '156-450000-450200-450225-', '0', '融水苗族自治县', '融水苗族自治县', '', '', '', '450225', '545300', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450226', '450200', '156-450000-450200-450226-', '0', '三江侗族自治县', '三江侗族自治县', '', '', '', '450226', '545500', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450300', '450000', '156-450000-450300-', '0', '桂林', '桂林市', '', '', '', '450300', '541000', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450301', '450300', '156-450000-450300-450301-', '0', '市辖区', '市辖区', '', '', '', '450301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450302', '450300', '156-450000-450300-450302-', '0', '秀峰区', '秀峰区', '', '', '', '450302', '541000', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450303', '450300', '156-450000-450300-450303-', '0', '叠彩区', '叠彩区', '', '', '', '450303', '541000', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450304', '450300', '156-450000-450300-450304-', '0', '象山区', '象山区', '', '', '', '450304', '541000', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450305', '450300', '156-450000-450300-450305-', '0', '七星区', '七星区', '', '', '', '450305', '541000', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450311', '450300', '156-450000-450300-450311-', '0', '雁山区', '雁山区', '', '', '', '450311', '541000', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450321', '450300', '156-450000-450300-450321-', '0', '阳朔县', '阳朔县', '', '', '', '450321', '541900', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450322', '450300', '156-450000-450300-450322-', '0', '临桂县', '临桂县', '', '', '', '450322', '541100', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450323', '450300', '156-450000-450300-450323-', '0', '灵川县', '灵川县', '', '', '', '450323', '541200', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450324', '450300', '156-450000-450300-450324-', '0', '全州县', '全州县', '', '', '', '450324', '541500', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450325', '450300', '156-450000-450300-450325-', '0', '兴安县', '兴安县', '', '', '', '450325', '541300', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450326', '450300', '156-450000-450300-450326-', '0', '永福县', '永福县', '', '', '', '450326', '541800', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450327', '450300', '156-450000-450300-450327-', '0', '灌阳县', '灌阳县', '', '', '', '450327', '541600', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450328', '450300', '156-450000-450300-450328-', '0', '龙胜各族自治县', '龙胜各族自治县', '', '', '', '450328', '541700', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450329', '450300', '156-450000-450300-450329-', '0', '资源县', '资源县', '', '', '', '450329', '541400', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450330', '450300', '156-450000-450300-450330-', '0', '平乐县', '平乐县', '', '', '', '450330', '542400', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450331', '450300', '156-450000-450300-450331-', '0', '荔浦县', '荔浦县', '', '', '', '450331', '546600', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450332', '450300', '156-450000-450300-450332-', '0', '恭城瑶族自治县', '恭城瑶族自治县', '', '', '', '450332', '542500', '0773', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450400', '450000', '156-450000-450400-', '0', '梧州', '梧州市', '', '', '', '450400', '543000', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450401', '450400', '156-450000-450400-450401-', '0', '市辖区', '市辖区', '', '', '', '450401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450403', '450400', '156-450000-450400-450403-', '0', '万秀区', '万秀区', '', '', '', '450403', '543000', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450404', '450400', '156-450000-450400-450404-', '0', '蝶山区', '蝶山区', '', '', '', '450404', '543000', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450405', '450400', '156-450000-450400-450405-', '0', '长洲区', '长洲区', '', '', '', '450405', '543000', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450421', '450400', '156-450000-450400-450421-', '0', '苍梧县', '苍梧县', '', '', '', '450421', '543100', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450422', '450400', '156-450000-450400-450422-', '0', '藤县', '藤县', '', '', '', '450422', '543300', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450423', '450400', '156-450000-450400-450423-', '0', '蒙山县', '蒙山县', '', '', '', '450423', '546700', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450481', '450400', '156-450000-450400-450481-', '0', '岑溪市', '岑溪市', '', '', '', '450481', '543200', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450500', '450000', '156-450000-450500-', '0', '北海', '北海市', '', '', '', '450500', '536000', '0779', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450501', '450500', '156-450000-450500-450501-', '0', '市辖区', '市辖区', '', '', '', '450501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450502', '450500', '156-450000-450500-450502-', '0', '海城区', '海城区', '', '', '', '450502', '536000', '0779', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450503', '450500', '156-450000-450500-450503-', '0', '银海区', '银海区', '', '', '', '450503', '536000', '0779', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450512', '450500', '156-450000-450500-450512-', '0', '铁山港区', '铁山港区', '', '', '', '450512', '536000', '0779', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450521', '450500', '156-450000-450500-450521-', '0', '合浦县', '合浦县', '', '', '', '450521', '536100', '0779', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450600', '450000', '156-450000-450600-', '0', '防城港', '防城港市', '', '', '', '450600', '538000', '0770', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450601', '450600', '156-450000-450600-450601-', '0', '市辖区', '市辖区', '', '', '', '450601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450602', '450600', '156-450000-450600-450602-', '0', '港口区', '港口区', '', '', '', '450602', '538000', '0770', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450603', '450600', '156-450000-450600-450603-', '0', '防城区', '防城区', '', '', '', '450603', '538000', '0770', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450621', '450600', '156-450000-450600-450621-', '0', '上思县', '上思县', '', '', '', '450621', '535500', '0770', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450681', '450600', '156-450000-450600-450681-', '0', '东兴市', '东兴市', '', '', '', '450681', '538100', '0770', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450700', '450000', '156-450000-450700-', '0', '钦州', '钦州市', '', '', '', '450700', '535000', '0777', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450701', '450700', '156-450000-450700-450701-', '0', '市辖区', '市辖区', '', '', '', '450701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450702', '450700', '156-450000-450700-450702-', '0', '钦南区', '钦南区', '', '', '', '450702', '535000', '0777', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450703', '450700', '156-450000-450700-450703-', '0', '钦北区', '钦北区', '', '', '', '450703', '535000', '0777', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450721', '450700', '156-450000-450700-450721-', '0', '灵山县', '灵山县', '', '', '', '450721', '535400', '0777', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450722', '450700', '156-450000-450700-450722-', '0', '浦北县', '浦北县', '', '', '', '450722', '535300', '0777', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450800', '450000', '156-450000-450800-', '0', '贵港', '贵港市', '', '', '', '450800', '537000', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450801', '450800', '156-450000-450800-450801-', '0', '市辖区', '市辖区', '', '', '', '450801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450802', '450800', '156-450000-450800-450802-', '0', '港北区', '港北区', '', '', '', '450802', '537100', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450803', '450800', '156-450000-450800-450803-', '0', '港南区', '港南区', '', '', '', '450803', '537100', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450804', '450800', '156-450000-450800-450804-', '0', '覃塘区', '覃塘区', '', '', '', '450804', '537100', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450821', '450800', '156-450000-450800-450821-', '0', '平南县', '平南县', '', '', '', '450821', '537300', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450881', '450800', '156-450000-450800-450881-', '0', '桂平市', '桂平市', '', '', '', '450881', '537200', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450900', '450000', '156-450000-450900-', '0', '玉林', '玉林市', '', '', '', '450900', '537000', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450901', '450900', '156-450000-450900-450901-', '0', '市辖区', '市辖区', '', '', '', '450901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450902', '450900', '156-450000-450900-450902-', '0', '玉州区', '玉州区', '', '', '', '450902', '537000', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450921', '450900', '156-450000-450900-450921-', '0', '容县', '容县', '', '', '', '450921', '537500', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450922', '450900', '156-450000-450900-450922-', '0', '陆川县', '陆川县', '', '', '', '450922', '537700', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450923', '450900', '156-450000-450900-450923-', '0', '博白县', '博白县', '', '', '', '450923', '537600', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450924', '450900', '156-450000-450900-450924-', '0', '兴业县', '兴业县', '', '', '', '450924', '537800', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('450981', '450900', '156-450000-450900-450981-', '0', '北流市', '北流市', '', '', '', '450981', '537400', '0775', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451000', '450000', '156-450000-451000-', '0', '百色', '百色市', '', '', '', '451000', '533000', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451001', '451000', '156-450000-451000-451001-', '0', '市辖区', '市辖区', '', '', '', '451001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451002', '451000', '156-450000-451000-451002-', '0', '右江区', '右江区', '', '', '', '451002', '533000', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451021', '451000', '156-450000-451000-451021-', '0', '田阳县', '田阳县', '', '', '', '451021', '533600', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451022', '451000', '156-450000-451000-451022-', '0', '田东县', '田东县', '', '', '', '451022', '531500', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451023', '451000', '156-450000-451000-451023-', '0', '平果县', '平果县', '', '', '', '451023', '531400', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451024', '451000', '156-450000-451000-451024-', '0', '德保县', '德保县', '', '', '', '451024', '533700', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451025', '451000', '156-450000-451000-451025-', '0', '靖西县', '靖西县', '', '', '', '451025', '533800', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451026', '451000', '156-450000-451000-451026-', '0', '那坡县', '那坡县', '', '', '', '451026', '533900', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451027', '451000', '156-450000-451000-451027-', '0', '凌云县', '凌云县', '', '', '', '451027', '533100', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451028', '451000', '156-450000-451000-451028-', '0', '乐业县', '乐业县', '', '', '', '451028', '533200', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451029', '451000', '156-450000-451000-451029-', '0', '田林县', '田林县', '', '', '', '451029', '533300', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451030', '451000', '156-450000-451000-451030-', '0', '西林县', '西林县', '', '', '', '451030', '533500', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451031', '451000', '156-450000-451000-451031-', '0', '隆林各族自治县', '隆林各族自治县', '', '', '', '451031', '533400', '0776', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451100', '450000', '156-450000-451100-', '0', '贺州', '贺州市', '', '', '', '451100', '542800', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451101', '451100', '156-450000-451100-451101-', '0', '市辖区', '市辖区', '', '', '', '451101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451102', '451100', '156-450000-451100-451102-', '0', '八步区', '八步区', '', '', '', '451102', '542800', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451121', '451100', '156-450000-451100-451121-', '0', '昭平县', '昭平县', '', '', '', '451121', '546800', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451122', '451100', '156-450000-451100-451122-', '0', '钟山县', '钟山县', '', '', '', '451122', '542600', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451123', '451100', '156-450000-451100-451123-', '0', '富川瑶族自治县', '富川瑶族自治县', '', '', '', '451123', '542700', '0774', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451200', '450000', '156-450000-451200-', '0', '河池', '河池市', '', '', '', '451200', '547000', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451201', '451200', '156-450000-451200-451201-', '0', '市辖区', '市辖区', '', '', '', '451201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451202', '451200', '156-450000-451200-451202-', '0', '金城江区', '金城江区', '', '', '', '451202', '547000', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451221', '451200', '156-450000-451200-451221-', '0', '南丹县', '南丹县', '', '', '', '451221', '547200', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451222', '451200', '156-450000-451200-451222-', '0', '天峨县', '天峨县', '', '', '', '451222', '547300', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451223', '451200', '156-450000-451200-451223-', '0', '凤山县', '凤山县', '', '', '', '451223', '547600', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451224', '451200', '156-450000-451200-451224-', '0', '东兰县', '东兰县', '', '', '', '451224', '547400', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451225', '451200', '156-450000-451200-451225-', '0', '罗城仫佬族自治县', '罗城仫佬族自治县', '', '', '', '451225', '546400', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451226', '451200', '156-450000-451200-451226-', '0', '环江毛南族自治县', '环江毛南族自治县', '', '', '', '451226', '547100', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451227', '451200', '156-450000-451200-451227-', '0', '巴马瑶族自治县', '巴马瑶族自治县', '', '', '', '451227', '547500', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451228', '451200', '156-450000-451200-451228-', '0', '都安瑶族自治县', '都安瑶族自治县', '', '', '', '451228', '530700', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451229', '451200', '156-450000-451200-451229-', '0', '大化瑶族自治县', '大化瑶族自治县', '', '', '', '451229', '530800', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451281', '451200', '156-450000-451200-451281-', '0', '宜州市', '宜州市', '', '', '', '451281', '546300', '0778', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451300', '450000', '156-450000-451300-', '0', '来宾', '来宾市', '', '', '', '451300', '546100', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451301', '451300', '156-450000-451300-451301-', '0', '市辖区', '市辖区', '', '', '', '451301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451302', '451300', '156-450000-451300-451302-', '0', '兴宾区', '兴宾区', '', '', '', '451302', '546100', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451321', '451300', '156-450000-451300-451321-', '0', '忻城县', '忻城县', '', '', '', '451321', '546200', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451322', '451300', '156-450000-451300-451322-', '0', '象州县', '象州县', '', '', '', '451322', '545800', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451323', '451300', '156-450000-451300-451323-', '0', '武宣县', '武宣县', '', '', '', '451323', '545900', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451324', '451300', '156-450000-451300-451324-', '0', '金秀瑶族自治县', '金秀瑶族自治县', '', '', '', '451324', '545700', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451381', '451300', '156-450000-451300-451381-', '0', '合山市', '合山市', '', '', '', '451381', '546500', '0772', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451400', '450000', '156-450000-451400-', '0', '崇左', '崇左市', '', '', '', '451400', '532200', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451401', '451400', '156-450000-451400-451401-', '0', '市辖区', '市辖区', '', '', '', '451401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451402', '451400', '156-450000-451400-451402-', '0', '江洲区', '江洲区', '', '', '', '451402', '532200', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451421', '451400', '156-450000-451400-451421-', '0', '扶绥县', '扶绥县', '', '', '', '451421', '532100', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451422', '451400', '156-450000-451400-451422-', '0', '宁明县', '宁明县', '', '', '', '451422', '532500', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451423', '451400', '156-450000-451400-451423-', '0', '龙州县', '龙州县', '', '', '', '451423', '532400', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451424', '451400', '156-450000-451400-451424-', '0', '大新县', '大新县', '', '', '', '451424', '532300', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451425', '451400', '156-450000-451400-451425-', '0', '天等县', '天等县', '', '', '', '451425', '532800', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('451481', '451400', '156-450000-451400-451481-', '0', '凭祥市', '凭祥市', '', '', '', '451481', '532600', '0771', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460000', '156', '156-460000-', '0', '海南', '海南省', 'HaiNan', 'HaiNan', 'HI', '460000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460100', '460000', '156-460000-460100-', '0', '海口', '海口市', '', '', '', '460100', '570100', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460101', '460100', '156-460000-460100-460101-', '0', '市辖区', '市辖区', '', '', '', '460101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460105', '460100', '156-460000-460100-460105-', '0', '秀英区', '秀英区', '', '', '', '460105', '570100', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460106', '460100', '156-460000-460100-460106-', '0', '龙华区', '龙华区', '', '', '', '460106', '570100', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460107', '460100', '156-460000-460100-460107-', '0', '琼山区', '琼山区', '', '', '', '460107', '571100', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460108', '460100', '156-460000-460100-460108-', '0', '美兰区', '美兰区', '', '', '', '460108', '570100', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460200', '460000', '156-460000-460200-', '0', '三亚', '三亚市', '', '', '', '460200', '572000', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460201', '460200', '156-460000-460200-460201-', '0', '市辖区', '市辖区', '', '', '', '460201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460300', '460000', '156-460000-460300-', '0', '三沙', '三沙市', '', '', '', '460300', '573199', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460321', '460300', '156-460000-460300-460321-', '0', '西沙群岛', '西沙群岛', '', '', '', '460321', '572000', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460322', '460300', '156-460000-460300-460322-', '0', '南沙群岛', '南沙群岛', '', '', '', '460322', '572000', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('460323', '460300', '156-460000-460300-460323-', '0', '中沙群岛', '中沙群岛的岛礁及其海域', '', '', '', '460323', '572000', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469000', '460000', '156-460000-469000-', '0', '省直辖县', '省直辖县级行政区划', '', '', '', '469000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469001', '469000', '156-460000-469000-469001-', '0', '五指山市', '五指山市', '', '', '', '469001', '572200', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469002', '469000', '156-460000-469000-469002-', '0', '琼海市', '琼海市', '', '', '', '469002', '571400', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469003', '469000', '156-460000-469000-469003-', '0', '儋州市', '儋州市', '', '', '', '469003', '571700', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469005', '469000', '156-460000-469000-469005-', '0', '文昌市', '文昌市', '', '', '', '469005', '571300', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469006', '469000', '156-460000-469000-469006-', '0', '万宁市', '万宁市', '', '', '', '469006', '571500', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469007', '469000', '156-460000-469000-469007-', '0', '东方市', '东方市', '', '', '', '469007', '572600', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469021', '469000', '156-460000-469000-469021-', '0', '定安县', '定安县', '', '', '', '469021', '571200', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469022', '469000', '156-460000-469000-469022-', '0', '屯昌县', '屯昌县', '', '', '', '469022', '571600', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469023', '469000', '156-460000-469000-469023-', '0', '澄迈县', '澄迈县', '', '', '', '469023', '571900', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469024', '469000', '156-460000-469000-469024-', '0', '临高县', '临高县', '', '', '', '469024', '571800', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469025', '469000', '156-460000-469000-469025-', '0', '白沙县', '白沙黎族自治县', '', '', '', '469025', '572800', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469026', '469000', '156-460000-469000-469026-', '0', '昌江县', '昌江黎族自治县', '', '', '', '469026', '572700', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469027', '469000', '156-460000-469000-469027-', '0', '乐东县', '乐东黎族自治县', '', '', '', '469027', '572500', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469028', '469000', '156-460000-469000-469028-', '0', '陵水县', '陵水黎族自治县', '', '', '', '469028', '572400', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469029', '469000', '156-460000-469000-469029-', '0', '保亭县', '保亭黎族苗族自治县', '', '', '', '469029', '572300', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('469030', '469000', '156-460000-469000-469030-', '0', '琼中县', '琼中黎族苗族自治县', '', '', '', '469030', '572900', '0898', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500000', '156', '156-500000-', '0', '重庆', '重庆市', 'ChongQing', 'ChongQing', 'CQ', '500000', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500100', '500000', '156-500000-500100-', '0', '市辖区', '市辖区', '', '', '', '500100', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500101', '500100', '156-500000-500100-500101-', '0', '万州区', '万州区', '', '', '', '500101', '404100', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500102', '500100', '156-500000-500100-500102-', '0', '涪陵区', '涪陵区', '', '', '', '500102', '408000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500103', '500100', '156-500000-500100-500103-', '0', '渝中区', '渝中区', '', '', '', '500103', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500104', '500100', '156-500000-500100-500104-', '0', '大渡口区', '大渡口区', '', '', '', '500104', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500105', '500100', '156-500000-500100-500105-', '0', '江北区', '江北区', '', '', '', '500105', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500106', '500100', '156-500000-500100-500106-', '0', '沙坪坝区', '沙坪坝区', '', '', '', '500106', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500107', '500100', '156-500000-500100-500107-', '0', '九龙坡区', '九龙坡区', '', '', '', '500107', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500108', '500100', '156-500000-500100-500108-', '0', '南岸区', '南岸区', '', '', '', '500108', '400000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500109', '500100', '156-500000-500100-500109-', '0', '北碚区', '北碚区', '', '', '', '500109', '400700', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500110', '500100', '156-500000-500100-500110-', '0', '綦江区', '綦江区', '', '', '', '500110', '401420', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500111', '500100', '156-500000-500100-500111-', '0', '大足区', '大足区', '', '', '', '500111', '402360', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500112', '500100', '156-500000-500100-500112-', '0', '渝北区', '渝北区', '', '', '', '500112', '401120', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500113', '500100', '156-500000-500100-500113-', '0', '巴南区', '巴南区', '', '', '', '500113', '401320', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500114', '500100', '156-500000-500100-500114-', '0', '黔江区', '黔江区', '', '', '', '500114', '409000', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500115', '500100', '156-500000-500100-500115-', '0', '长寿区', '长寿区', '', '', '', '500115', '401220', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500116', '500100', '156-500000-500100-500116-', '0', '江津区', '江津区', '', '', '', '500116', '402260', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500117', '500100', '156-500000-500100-500117-', '0', '合川区', '合川区', '', '', '', '500117', '401520', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500118', '500100', '156-500000-500100-500118-', '0', '永川区', '永川区', '', '', '', '500118', '402160', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500119', '500100', '156-500000-500100-500119-', '0', '南川区', '南川区', '', '', '', '500119', '408400', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500200', '500000', '156-500000-500200-', '0', '县', '县', '', '', '', '500200', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500223', '500200', '156-500000-500200-500223-', '0', '潼南县', '潼南县', '', '', '', '500223', '402660', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500224', '500200', '156-500000-500200-500224-', '0', '铜梁县', '铜梁县', '', '', '', '500224', '402560', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500226', '500200', '156-500000-500200-500226-', '0', '荣昌县', '荣昌县', '', '', '', '500226', '402460', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500227', '500200', '156-500000-500200-500227-', '0', '璧山县', '璧山县', '', '', '', '500227', '402760', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500228', '500200', '156-500000-500200-500228-', '0', '梁平县', '梁平县', '', '', '', '500228', '405200', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500229', '500200', '156-500000-500200-500229-', '0', '城口县', '城口县', '', '', '', '500229', '405900', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500230', '500200', '156-500000-500200-500230-', '0', '丰都县', '丰都县', '', '', '', '500230', '408200', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500231', '500200', '156-500000-500200-500231-', '0', '垫江县', '垫江县', '', '', '', '500231', '408300', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500232', '500200', '156-500000-500200-500232-', '0', '武隆县', '武隆县', '', '', '', '500232', '408500', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500233', '500200', '156-500000-500200-500233-', '0', '忠县', '忠县', '', '', '', '500233', '404300', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500234', '500200', '156-500000-500200-500234-', '0', '开县', '开县', '', '', '', '500234', '405400', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500235', '500200', '156-500000-500200-500235-', '0', '云阳县', '云阳县', '', '', '', '500235', '404500', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500236', '500200', '156-500000-500200-500236-', '0', '奉节县', '奉节县', '', '', '', '500236', '404600', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500237', '500200', '156-500000-500200-500237-', '0', '巫山县', '巫山县', '', '', '', '500237', '404700', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500238', '500200', '156-500000-500200-500238-', '0', '巫溪县', '巫溪县', '', '', '', '500238', '405800', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500240', '500200', '156-500000-500200-500240-', '0', '石柱土家族自治县', '石柱土家族自治县', '', '', '', '500240', '409100', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500241', '500200', '156-500000-500200-500241-', '0', '秀山土家族苗族自治县', '秀山土家族苗族自治县', '', '', '', '500241', '409900', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500242', '500200', '156-500000-500200-500242-', '0', '酉阳土家族苗族自治县', '酉阳土家族苗族自治县', '', '', '', '500242', '409800', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('500243', '500200', '156-500000-500200-500243-', '0', '彭水苗族土家族自治县', '彭水苗族土家族自治县', '', '', '', '500243', '409600', '023', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510000', '156', '156-510000-', '0', '四川', '四川省', 'SiChuan', 'SiChuan', 'SC', '510000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510100', '510000', '156-510000-510100-', '0', '成都', '成都市', '', '', '', '510100', '610000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510101', '510100', '156-510000-510100-510101-', '0', '市辖区', '市辖区', '', '', '', '510101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510104', '510100', '156-510000-510100-510104-', '0', '锦江区', '锦江区', '', '', '', '510104', '610000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510105', '510100', '156-510000-510100-510105-', '0', '青羊区', '青羊区', '', '', '', '510105', '610000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510106', '510100', '156-510000-510100-510106-', '0', '金牛区', '金牛区', '', '', '', '510106', '610000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510107', '510100', '156-510000-510100-510107-', '0', '武侯区', '武侯区', '', '', '', '510107', '610000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510108', '510100', '156-510000-510100-510108-', '0', '成华区', '成华区', '', '', '', '510108', '610000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510112', '510100', '156-510000-510100-510112-', '0', '龙泉驿区', '龙泉驿区', '', '', '', '510112', '610100', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510113', '510100', '156-510000-510100-510113-', '0', '青白江区', '青白江区', '', '', '', '510113', '610300', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510114', '510100', '156-510000-510100-510114-', '0', '新都区', '新都区', '', '', '', '510114', '610500', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510115', '510100', '156-510000-510100-510115-', '0', '温江区', '温江区', '', '', '', '510115', '611100', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510121', '510100', '156-510000-510100-510121-', '0', '金堂县', '金堂县', '', '', '', '510121', '610400', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510122', '510100', '156-510000-510100-510122-', '0', '双流县', '双流县', '', '', '', '510122', '610200', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510124', '510100', '156-510000-510100-510124-', '0', '郫县', '郫县', '', '', '', '510124', '611700', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510129', '510100', '156-510000-510100-510129-', '0', '大邑县', '大邑县', '', '', '', '510129', '611300', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510131', '510100', '156-510000-510100-510131-', '0', '蒲江县', '蒲江县', '', '', '', '510131', '611600', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510132', '510100', '156-510000-510100-510132-', '0', '新津县', '新津县', '', '', '', '510132', '611400', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510181', '510100', '156-510000-510100-510181-', '0', '都江堰市', '都江堰市', '', '', '', '510181', '611800', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510182', '510100', '156-510000-510100-510182-', '0', '彭州市', '彭州市', '', '', '', '510182', '611900', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510183', '510100', '156-510000-510100-510183-', '0', '邛崃市', '邛崃市', '', '', '', '510183', '611500', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510184', '510100', '156-510000-510100-510184-', '0', '崇州市', '崇州市', '', '', '', '510184', '611200', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510300', '510000', '156-510000-510300-', '0', '自贡', '自贡市', '', '', '', '510300', '643000', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510301', '510300', '156-510000-510300-510301-', '0', '市辖区', '市辖区', '', '', '', '510301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510302', '510300', '156-510000-510300-510302-', '0', '自流井区', '自流井区', '', '', '', '510302', '643000', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510303', '510300', '156-510000-510300-510303-', '0', '贡井区', '贡井区', '', '', '', '510303', '643020', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510304', '510300', '156-510000-510300-510304-', '0', '大安区', '大安区', '', '', '', '510304', '643010', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510311', '510300', '156-510000-510300-510311-', '0', '沿滩区', '沿滩区', '', '', '', '510311', '643030', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510321', '510300', '156-510000-510300-510321-', '0', '荣县', '荣县', '', '', '', '510321', '643100', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510322', '510300', '156-510000-510300-510322-', '0', '富顺县', '富顺县', '', '', '', '510322', '643200', '0813', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510400', '510000', '156-510000-510400-', '0', '攀枝花', '攀枝花市', '', '', '', '510400', '617000', '0812', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510401', '510400', '156-510000-510400-510401-', '0', '市辖区', '市辖区', '', '', '', '510401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510402', '510400', '156-510000-510400-510402-', '0', '东区', '东区', '', '', '', '510402', '617000', '0812', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510403', '510400', '156-510000-510400-510403-', '0', '西区', '西区', '', '', '', '510403', '617000', '0812', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510411', '510400', '156-510000-510400-510411-', '0', '仁和区', '仁和区', '', '', '', '510411', '617000', '0812', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510421', '510400', '156-510000-510400-510421-', '0', '米易县', '米易县', '', '', '', '510421', '617200', '0812', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510422', '510400', '156-510000-510400-510422-', '0', '盐边县', '盐边县', '', '', '', '510422', '617100', '0812', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510500', '510000', '156-510000-510500-', '0', '泸州', '泸州市', '', '', '', '510500', '646000', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510501', '510500', '156-510000-510500-510501-', '0', '市辖区', '市辖区', '', '', '', '510501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510502', '510500', '156-510000-510500-510502-', '0', '江阳区', '江阳区', '', '', '', '510502', '646000', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510503', '510500', '156-510000-510500-510503-', '0', '纳溪区', '纳溪区', '', '', '', '510503', '646300', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510504', '510500', '156-510000-510500-510504-', '0', '龙马潭区', '龙马潭区', '', '', '', '510504', '646000', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510521', '510500', '156-510000-510500-510521-', '0', '泸县', '泸县', '', '', '', '510521', '646100', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510522', '510500', '156-510000-510500-510522-', '0', '合江县', '合江县', '', '', '', '510522', '646200', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510524', '510500', '156-510000-510500-510524-', '0', '叙永县', '叙永县', '', '', '', '510524', '646400', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510525', '510500', '156-510000-510500-510525-', '0', '古蔺县', '古蔺县', '', '', '', '510525', '646500', '0830', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510600', '510000', '156-510000-510600-', '0', '德阳', '德阳市', '', '', '', '510600', '618000', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510601', '510600', '156-510000-510600-510601-', '0', '市辖区', '市辖区', '', '', '', '510601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510603', '510600', '156-510000-510600-510603-', '0', '旌阳区', '旌阳区', '', '', '', '510603', '618000', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510623', '510600', '156-510000-510600-510623-', '0', '中江县', '中江县', '', '', '', '510623', '618100', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510626', '510600', '156-510000-510600-510626-', '0', '罗江县', '罗江县', '', '', '', '510626', '618500', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510681', '510600', '156-510000-510600-510681-', '0', '广汉市', '广汉市', '', '', '', '510681', '618300', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510682', '510600', '156-510000-510600-510682-', '0', '什邡市', '什邡市', '', '', '', '510682', '618400', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510683', '510600', '156-510000-510600-510683-', '0', '绵竹市', '绵竹市', '', '', '', '510683', '618200', '0838', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510700', '510000', '156-510000-510700-', '0', '绵阳', '绵阳市', '', '', '', '510700', '621000', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510701', '510700', '156-510000-510700-510701-', '0', '市辖区', '市辖区', '', '', '', '510701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510703', '510700', '156-510000-510700-510703-', '0', '涪城区', '涪城区', '', '', '', '510703', '621000', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510704', '510700', '156-510000-510700-510704-', '0', '游仙区', '游仙区', '', '', '', '510704', '621000', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510722', '510700', '156-510000-510700-510722-', '0', '三台县', '三台县', '', '', '', '510722', '621100', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510723', '510700', '156-510000-510700-510723-', '0', '盐亭县', '盐亭县', '', '', '', '510723', '621600', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510724', '510700', '156-510000-510700-510724-', '0', '安县', '安县', '', '', '', '510724', '622650', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510725', '510700', '156-510000-510700-510725-', '0', '梓潼县', '梓潼县', '', '', '', '510725', '622150', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510726', '510700', '156-510000-510700-510726-', '0', '北川羌族自治县', '北川羌族自治县', '', '', '', '510726', '622750', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510727', '510700', '156-510000-510700-510727-', '0', '平武县', '平武县', '', '', '', '510727', '622550', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510781', '510700', '156-510000-510700-510781-', '0', '江油市', '江油市', '', '', '', '510781', '621700', '0816', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510800', '510000', '156-510000-510800-', '0', '广元', '广元市', '', '', '', '510800', '628000', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510801', '510800', '156-510000-510800-510801-', '0', '市辖区', '市辖区', '', '', '', '510801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510802', '510800', '156-510000-510800-510802-', '0', '利州区', '利州区', '', '', '', '510802', '628000', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510811', '510800', '156-510000-510800-510811-', '0', '元坝区', '元坝区', '', '', '', '510811', '628000', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510812', '510800', '156-510000-510800-510812-', '0', '朝天区', '朝天区', '', '', '', '510812', '628000', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510821', '510800', '156-510000-510800-510821-', '0', '旺苍县', '旺苍县', '', '', '', '510821', '628200', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510822', '510800', '156-510000-510800-510822-', '0', '青川县', '青川县', '', '', '', '510822', '628100', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510823', '510800', '156-510000-510800-510823-', '0', '剑阁县', '剑阁县', '', '', '', '510823', '628300', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510824', '510800', '156-510000-510800-510824-', '0', '苍溪县', '苍溪县', '', '', '', '510824', '628400', '0839', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510900', '510000', '156-510000-510900-', '0', '遂宁', '遂宁市', '', '', '', '510900', '629000', '0825', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510901', '510900', '156-510000-510900-510901-', '0', '市辖区', '市辖区', '', '', '', '510901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510903', '510900', '156-510000-510900-510903-', '0', '船山区', '船山区', '', '', '', '510903', '629000', '0825', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510904', '510900', '156-510000-510900-510904-', '0', '安居区', '安居区', '', '', '', '510904', '629000', '0825', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510921', '510900', '156-510000-510900-510921-', '0', '蓬溪县', '蓬溪县', '', '', '', '510921', '629100', '0825', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510922', '510900', '156-510000-510900-510922-', '0', '射洪县', '射洪县', '', '', '', '510922', '629200', '0825', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('510923', '510900', '156-510000-510900-510923-', '0', '大英县', '大英县', '', '', '', '510923', '629300', '0825', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511000', '510000', '156-510000-511000-', '0', '内江', '内江市', '', '', '', '511000', '641000', '0832', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511001', '511000', '156-510000-511000-511001-', '0', '市辖区', '市辖区', '', '', '', '511001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511002', '511000', '156-510000-511000-511002-', '0', '市中区', '市中区', '', '', '', '511002', '641000', '0832', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511011', '511000', '156-510000-511000-511011-', '0', '东兴区', '东兴区', '', '', '', '511011', '641100', '0832', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511024', '511000', '156-510000-511000-511024-', '0', '威远县', '威远县', '', '', '', '511024', '642450', '0832', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511025', '511000', '156-510000-511000-511025-', '0', '资中县', '资中县', '', '', '', '511025', '641200', '0832', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511028', '511000', '156-510000-511000-511028-', '0', '隆昌县', '隆昌县', '', '', '', '511028', '642150', '0832', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511100', '510000', '156-510000-511100-', '0', '乐山', '乐山市', '', '', '', '511100', '614000', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511101', '511100', '156-510000-511100-511101-', '0', '市辖区', '市辖区', '', '', '', '511101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511102', '511100', '156-510000-511100-511102-', '0', '市中区', '市中区', '', '', '', '511102', '614000', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511111', '511100', '156-510000-511100-511111-', '0', '沙湾区', '沙湾区', '', '', '', '511111', '614900', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511112', '511100', '156-510000-511100-511112-', '0', '五通桥区', '五通桥区', '', '', '', '511112', '614800', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511113', '511100', '156-510000-511100-511113-', '0', '金口河区', '金口河区', '', '', '', '511113', '614700', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511123', '511100', '156-510000-511100-511123-', '0', '犍为县', '犍为县', '', '', '', '511123', '614400', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511124', '511100', '156-510000-511100-511124-', '0', '井研县', '井研县', '', '', '', '511124', '613100', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511126', '511100', '156-510000-511100-511126-', '0', '夹江县', '夹江县', '', '', '', '511126', '614100', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511129', '511100', '156-510000-511100-511129-', '0', '沐川县', '沐川县', '', '', '', '511129', '614500', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511132', '511100', '156-510000-511100-511132-', '0', '峨边彝族自治县', '峨边彝族自治县', '', '', '', '511132', '614300', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511133', '511100', '156-510000-511100-511133-', '0', '马边彝族自治县', '马边彝族自治县', '', '', '', '511133', '614600', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511181', '511100', '156-510000-511100-511181-', '0', '峨眉山市', '峨眉山市', '', '', '', '511181', '614200', '0833', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511300', '510000', '156-510000-511300-', '0', '南充', '南充市', '', '', '', '511300', '637000', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511301', '511300', '156-510000-511300-511301-', '0', '市辖区', '市辖区', '', '', '', '511301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511302', '511300', '156-510000-511300-511302-', '0', '顺庆区', '顺庆区', '', '', '', '511302', '637000', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511303', '511300', '156-510000-511300-511303-', '0', '高坪区', '高坪区', '', '', '', '511303', '637100', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511304', '511300', '156-510000-511300-511304-', '0', '嘉陵区', '嘉陵区', '', '', '', '511304', '637500', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511321', '511300', '156-510000-511300-511321-', '0', '南部县', '南部县', '', '', '', '511321', '637300', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511322', '511300', '156-510000-511300-511322-', '0', '营山县', '营山县', '', '', '', '511322', '637700', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511323', '511300', '156-510000-511300-511323-', '0', '蓬安县', '蓬安县', '', '', '', '511323', '637800', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511324', '511300', '156-510000-511300-511324-', '0', '仪陇县', '仪陇县', '', '', '', '511324', '637600', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511325', '511300', '156-510000-511300-511325-', '0', '西充县', '西充县', '', '', '', '511325', '637200', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511381', '511300', '156-510000-511300-511381-', '0', '阆中市', '阆中市', '', '', '', '511381', '637400', '0817', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511400', '510000', '156-510000-511400-', '0', '眉山', '眉山市', '', '', '', '511400', '620000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511401', '511400', '156-510000-511400-511401-', '0', '市辖区', '市辖区', '', '', '', '511401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511402', '511400', '156-510000-511400-511402-', '0', '东坡区', '东坡区', '', '', '', '511402', '620000', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511421', '511400', '156-510000-511400-511421-', '0', '仁寿县', '仁寿县', '', '', '', '511421', '620500', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511422', '511400', '156-510000-511400-511422-', '0', '彭山县', '彭山县', '', '', '', '511422', '620800', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511423', '511400', '156-510000-511400-511423-', '0', '洪雅县', '洪雅县', '', '', '', '511423', '620300', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511424', '511400', '156-510000-511400-511424-', '0', '丹棱县', '丹棱县', '', '', '', '511424', '620200', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511425', '511400', '156-510000-511400-511425-', '0', '青神县', '青神县', '', '', '', '511425', '620400', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511500', '510000', '156-510000-511500-', '0', '宜宾', '宜宾市', '', '', '', '511500', '644000', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511501', '511500', '156-510000-511500-511501-', '0', '市辖区', '市辖区', '', '', '', '511501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511502', '511500', '156-510000-511500-511502-', '0', '翠屏区', '翠屏区', '', '', '', '511502', '644000', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511503', '511500', '156-510000-511500-511503-', '0', '南溪区', '南溪区', '', '', '', '511503', '644100', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511521', '511500', '156-510000-511500-511521-', '0', '宜宾县', '宜宾县', '', '', '', '511521', '644600', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511523', '511500', '156-510000-511500-511523-', '0', '江安县', '江安县', '', '', '', '511523', '644200', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511524', '511500', '156-510000-511500-511524-', '0', '长宁县', '长宁县', '', '', '', '511524', '644300', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511525', '511500', '156-510000-511500-511525-', '0', '高县', '高县', '', '', '', '511525', '645150', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511526', '511500', '156-510000-511500-511526-', '0', '珙县', '珙县', '', '', '', '511526', '644500', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511527', '511500', '156-510000-511500-511527-', '0', '筠连县', '筠连县', '', '', '', '511527', '645250', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511528', '511500', '156-510000-511500-511528-', '0', '兴文县', '兴文县', '', '', '', '511528', '644400', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511529', '511500', '156-510000-511500-511529-', '0', '屏山县', '屏山县', '', '', '', '511529', '645350', '0831', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511600', '510000', '156-510000-511600-', '0', '广安', '广安市', '', '', '', '511600', '638500', '0826', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511601', '511600', '156-510000-511600-511601-', '0', '市辖区', '市辖区', '', '', '', '511601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511602', '511600', '156-510000-511600-511602-', '0', '广安区', '广安区', '', '', '', '511602', '638550', '0826', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511621', '511600', '156-510000-511600-511621-', '0', '岳池县', '岳池县', '', '', '', '511621', '638300', '0826', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511622', '511600', '156-510000-511600-511622-', '0', '武胜县', '武胜县', '', '', '', '511622', '638400', '0826', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511623', '511600', '156-510000-511600-511623-', '0', '邻水县', '邻水县', '', '', '', '511623', '638500', '0826', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511681', '511600', '156-510000-511600-511681-', '0', '华蓥市', '华蓥市', '', '', '', '511681', '638600', '0826', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511700', '510000', '156-510000-511700-', '0', '达州', '达州市', '', '', '', '511700', '635000', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511701', '511700', '156-510000-511700-511701-', '0', '市辖区', '市辖区', '', '', '', '511701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511702', '511700', '156-510000-511700-511702-', '0', '通川区', '通川区', '', '', '', '511702', '635000', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511721', '511700', '156-510000-511700-511721-', '0', '达县', '达县', '', '', '', '511721', '635000', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511722', '511700', '156-510000-511700-511722-', '0', '宣汉县', '宣汉县', '', '', '', '511722', '636150', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511723', '511700', '156-510000-511700-511723-', '0', '开江县', '开江县', '', '', '', '511723', '636250', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511724', '511700', '156-510000-511700-511724-', '0', '大竹县', '大竹县', '', '', '', '511724', '635100', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511725', '511700', '156-510000-511700-511725-', '0', '渠县', '渠县', '', '', '', '511725', '635200', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511781', '511700', '156-510000-511700-511781-', '0', '万源市', '万源市', '', '', '', '511781', '636350', '0818', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511800', '510000', '156-510000-511800-', '0', '雅安', '雅安市', '', '', '', '511800', '625000', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511801', '511800', '156-510000-511800-511801-', '0', '市辖区', '市辖区', '', '', '', '511801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511802', '511800', '156-510000-511800-511802-', '0', '雨城区', '雨城区', '', '', '', '511802', '625000', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511803', '511800', '156-510000-511800-511803-', '0', '名山区', '名山区', '', '', '', '511803', '625100', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511822', '511800', '156-510000-511800-511822-', '0', '荥经县', '荥经县', '', '', '', '511822', '625200', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511823', '511800', '156-510000-511800-511823-', '0', '汉源县', '汉源县', '', '', '', '511823', '625300', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511824', '511800', '156-510000-511800-511824-', '0', '石棉县', '石棉县', '', '', '', '511824', '625400', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511825', '511800', '156-510000-511800-511825-', '0', '天全县', '天全县', '', '', '', '511825', '625500', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511826', '511800', '156-510000-511800-511826-', '0', '芦山县', '芦山县', '', '', '', '511826', '625600', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511827', '511800', '156-510000-511800-511827-', '0', '宝兴县', '宝兴县', '', '', '', '511827', '625700', '0835', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511900', '510000', '156-510000-511900-', '0', '巴中', '巴中市', '', '', '', '511900', '636600', '0827', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511901', '511900', '156-510000-511900-511901-', '0', '市辖区', '市辖区', '', '', '', '511901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511902', '511900', '156-510000-511900-511902-', '0', '巴州区', '巴州区', '', '', '', '511902', '636600', '0827', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511921', '511900', '156-510000-511900-511921-', '0', '通江县', '通江县', '', '', '', '511921', '636700', '0827', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511922', '511900', '156-510000-511900-511922-', '0', '南江县', '南江县', '', '', '', '511922', '635600', '0827', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('511923', '511900', '156-510000-511900-511923-', '0', '平昌县', '平昌县', '', '', '', '511923', '636400', '0827', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512000', '510000', '156-510000-512000-', '0', '资阳', '资阳市', '', '', '', '512000', '641300', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512001', '512000', '156-510000-512000-512001-', '0', '市辖区', '市辖区', '', '', '', '512001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512002', '512000', '156-510000-512000-512002-', '0', '雁江区', '雁江区', '', '', '', '512002', '641300', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512021', '512000', '156-510000-512000-512021-', '0', '安岳县', '安岳县', '', '', '', '512021', '642350', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512022', '512000', '156-510000-512000-512022-', '0', '乐至县', '乐至县', '', '', '', '512022', '641500', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('512081', '512000', '156-510000-512000-512081-', '0', '简阳市', '简阳市', '', '', '', '512081', '641400', '028', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513200', '510000', '156-510000-513200-', '0', '阿坝州', '阿坝藏族羌族自治州', '', '', '', '513200', '624000', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513221', '513200', '156-510000-513200-513221-', '0', '汶川县', '汶川县', '', '', '', '513221', '623000', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513222', '513200', '156-510000-513200-513222-', '0', '理县', '理县', '', '', '', '513222', '623100', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513223', '513200', '156-510000-513200-513223-', '0', '茂县', '茂县', '', '', '', '513223', '623200', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513224', '513200', '156-510000-513200-513224-', '0', '松潘县', '松潘县', '', '', '', '513224', '623300', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513225', '513200', '156-510000-513200-513225-', '0', '九寨沟县', '九寨沟县', '', '', '', '513225', '623400', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513226', '513200', '156-510000-513200-513226-', '0', '金川县', '金川县', '', '', '', '513226', '624100', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513227', '513200', '156-510000-513200-513227-', '0', '小金县', '小金县', '', '', '', '513227', '624200', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513228', '513200', '156-510000-513200-513228-', '0', '黑水县', '黑水县', '', '', '', '513228', '623500', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513229', '513200', '156-510000-513200-513229-', '0', '马尔康县', '马尔康县', '', '', '', '513229', '624000', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513230', '513200', '156-510000-513200-513230-', '0', '壤塘县', '壤塘县', '', '', '', '513230', '624300', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513231', '513200', '156-510000-513200-513231-', '0', '阿坝县', '阿坝县', '', '', '', '513231', '624600', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513232', '513200', '156-510000-513200-513232-', '0', '若尔盖县', '若尔盖县', '', '', '', '513232', '624500', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513233', '513200', '156-510000-513200-513233-', '0', '红原县', '红原县', '', '', '', '513233', '624400', '0837', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513300', '510000', '156-510000-513300-', '0', '甘孜州', '甘孜藏族自治州', '', '', '', '513300', '626000', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513321', '513300', '156-510000-513300-513321-', '0', '康定县', '康定县', '', '', '', '513321', '626000', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513322', '513300', '156-510000-513300-513322-', '0', '泸定县', '泸定县', '', '', '', '513322', '626100', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513323', '513300', '156-510000-513300-513323-', '0', '丹巴县', '丹巴县', '', '', '', '513323', '626300', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513324', '513300', '156-510000-513300-513324-', '0', '九龙县', '九龙县', '', '', '', '513324', '616200', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513325', '513300', '156-510000-513300-513325-', '0', '雅江县', '雅江县', '', '', '', '513325', '627450', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513326', '513300', '156-510000-513300-513326-', '0', '道孚县', '道孚县', '', '', '', '513326', '626400', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513327', '513300', '156-510000-513300-513327-', '0', '炉霍县', '炉霍县', '', '', '', '513327', '626500', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513328', '513300', '156-510000-513300-513328-', '0', '甘孜县', '甘孜县', '', '', '', '513328', '626700', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513329', '513300', '156-510000-513300-513329-', '0', '新龙县', '新龙县', '', '', '', '513329', '626800', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513330', '513300', '156-510000-513300-513330-', '0', '德格县', '德格县', '', '', '', '513330', '627250', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513331', '513300', '156-510000-513300-513331-', '0', '白玉县', '白玉县', '', '', '', '513331', '627150', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513332', '513300', '156-510000-513300-513332-', '0', '石渠县', '石渠县', '', '', '', '513332', '627350', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513333', '513300', '156-510000-513300-513333-', '0', '色达县', '色达县', '', '', '', '513333', '626600', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513334', '513300', '156-510000-513300-513334-', '0', '理塘县', '理塘县', '', '', '', '513334', '624300', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513335', '513300', '156-510000-513300-513335-', '0', '巴塘县', '巴塘县', '', '', '', '513335', '627650', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513336', '513300', '156-510000-513300-513336-', '0', '乡城县', '乡城县', '', '', '', '513336', '627850', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513337', '513300', '156-510000-513300-513337-', '0', '稻城县', '稻城县', '', '', '', '513337', '627750', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513338', '513300', '156-510000-513300-513338-', '0', '得荣县', '得荣县', '', '', '', '513338', '627950', '0836', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513400', '510000', '156-510000-513400-', '0', '凉山州', '凉山彝族自治州', '', '', '', '513400', '615000', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513401', '513400', '156-510000-513400-513401-', '0', '西昌市', '西昌市', '', '', '', '513401', '615000', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513422', '513400', '156-510000-513400-513422-', '0', '木里藏族自治县', '木里藏族自治县', '', '', '', '513422', '615800', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513423', '513400', '156-510000-513400-513423-', '0', '盐源县', '盐源县', '', '', '', '513423', '615700', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513424', '513400', '156-510000-513400-513424-', '0', '德昌县', '德昌县', '', '', '', '513424', '615500', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513425', '513400', '156-510000-513400-513425-', '0', '会理县', '会理县', '', '', '', '513425', '615100', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513426', '513400', '156-510000-513400-513426-', '0', '会东县', '会东县', '', '', '', '513426', '615200', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513427', '513400', '156-510000-513400-513427-', '0', '宁南县', '宁南县', '', '', '', '513427', '615400', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513428', '513400', '156-510000-513400-513428-', '0', '普格县', '普格县', '', '', '', '513428', '615300', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513429', '513400', '156-510000-513400-513429-', '0', '布拖县', '布拖县', '', '', '', '513429', '615350', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513430', '513400', '156-510000-513400-513430-', '0', '金阳县', '金阳县', '', '', '', '513430', '616250', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513431', '513400', '156-510000-513400-513431-', '0', '昭觉县', '昭觉县', '', '', '', '513431', '616150', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513432', '513400', '156-510000-513400-513432-', '0', '喜德县', '喜德县', '', '', '', '513432', '616750', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513433', '513400', '156-510000-513400-513433-', '0', '冕宁县', '冕宁县', '', '', '', '513433', '615600', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513434', '513400', '156-510000-513400-513434-', '0', '越西县', '越西县', '', '', '', '513434', '616650', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513435', '513400', '156-510000-513400-513435-', '0', '甘洛县', '甘洛县', '', '', '', '513435', '616850', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513436', '513400', '156-510000-513400-513436-', '0', '美姑县', '美姑县', '', '', '', '513436', '616450', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('513437', '513400', '156-510000-513400-513437-', '0', '雷波县', '雷波县', '', '', '', '513437', '616550', '0834', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520000', '156', '156-520000-', '0', '贵州', '贵州省', 'GuiZhou', 'GuiZhou', 'FZ', '520000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520100', '520000', '156-520000-520100-', '0', '贵阳', '贵阳市', '', '', '', '520100', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520101', '520100', '156-520000-520100-520101-', '0', '市辖区', '市辖区', '', '', '', '520101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520102', '520100', '156-520000-520100-520102-', '0', '南明区', '南明区', '', '', '', '520102', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520103', '520100', '156-520000-520100-520103-', '0', '云岩区', '云岩区', '', '', '', '520103', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520111', '520100', '156-520000-520100-520111-', '0', '花溪区', '花溪区', '', '', '', '520111', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520112', '520100', '156-520000-520100-520112-', '0', '乌当区', '乌当区', '', '', '', '520112', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520113', '520100', '156-520000-520100-520113-', '0', '白云区', '白云区', '', '', '', '520113', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520114', '520100', '156-520000-520100-520114-', '0', '小河区', '小河区', '', '', '', '520114', '550000', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520121', '520100', '156-520000-520100-520121-', '0', '开阳县', '开阳县', '', '', '', '520121', '550300', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520122', '520100', '156-520000-520100-520122-', '0', '息烽县', '息烽县', '', '', '', '520122', '551100', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520123', '520100', '156-520000-520100-520123-', '0', '修文县', '修文县', '', '', '', '520123', '550200', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520181', '520100', '156-520000-520100-520181-', '0', '清镇市', '清镇市', '', '', '', '520181', '551400', '0851', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520200', '520000', '156-520000-520200-', '0', '六盘水', '六盘水市', '', '', '', '520200', '553000', '0858', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520201', '520200', '156-520000-520200-520201-', '0', '钟山区', '钟山区', '', '', '', '520201', '553000', '0858', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520203', '520200', '156-520000-520200-520203-', '0', '六枝特区', '六枝特区', '', '', '', '520203', '553400', '0858', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520221', '520200', '156-520000-520200-520221-', '0', '水城县', '水城县', '', '', '', '520221', '553600', '0858', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520222', '520200', '156-520000-520200-520222-', '0', '盘县', '盘县', '', '', '', '520222', '553500', '0858', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520300', '520000', '156-520000-520300-', '0', '遵义', '遵义市', '', '', '', '520300', '563000', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520301', '520300', '156-520000-520300-520301-', '0', '市辖区', '市辖区', '', '', '', '520301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520302', '520300', '156-520000-520300-520302-', '0', '红花岗区', '红花岗区', '', '', '', '520302', '563000', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520303', '520300', '156-520000-520300-520303-', '0', '汇川区', '汇川区', '', '', '', '520303', '563000', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520321', '520300', '156-520000-520300-520321-', '0', '遵义县', '遵义县', '', '', '', '520321', '563100', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520322', '520300', '156-520000-520300-520322-', '0', '桐梓县', '桐梓县', '', '', '', '520322', '563200', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520323', '520300', '156-520000-520300-520323-', '0', '绥阳县', '绥阳县', '', '', '', '520323', '563300', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520324', '520300', '156-520000-520300-520324-', '0', '正安县', '正安县', '', '', '', '520324', '563400', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520325', '520300', '156-520000-520300-520325-', '0', '道真仡佬族苗族自治县', '道真仡佬族苗族自治县', '', '', '', '520325', '563500', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520326', '520300', '156-520000-520300-520326-', '0', '务川仡佬族苗族自治县', '务川仡佬族苗族自治县', '', '', '', '520326', '564300', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520327', '520300', '156-520000-520300-520327-', '0', '凤冈县', '凤冈县', '', '', '', '520327', '564200', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520328', '520300', '156-520000-520300-520328-', '0', '湄潭县', '湄潭县', '', '', '', '520328', '564100', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520329', '520300', '156-520000-520300-520329-', '0', '余庆县', '余庆县', '', '', '', '520329', '564400', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520330', '520300', '156-520000-520300-520330-', '0', '习水县', '习水县', '', '', '', '520330', '564600', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520381', '520300', '156-520000-520300-520381-', '0', '赤水市', '赤水市', '', '', '', '520381', '564700', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520382', '520300', '156-520000-520300-520382-', '0', '仁怀市', '仁怀市', '', '', '', '520382', '564500', '0852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520400', '520000', '156-520000-520400-', '0', '安顺', '安顺市', '', '', '', '520400', '561000', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520401', '520400', '156-520000-520400-520401-', '0', '市辖区', '市辖区', '', '', '', '520401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520402', '520400', '156-520000-520400-520402-', '0', '西秀区', '西秀区', '', '', '', '520402', '561000', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520421', '520400', '156-520000-520400-520421-', '0', '平坝县', '平坝县', '', '', '', '520421', '561100', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520422', '520400', '156-520000-520400-520422-', '0', '普定县', '普定县', '', '', '', '520422', '562100', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520423', '520400', '156-520000-520400-520423-', '0', '镇宁布依族苗族自治县', '镇宁布依族苗族自治县', '', '', '', '520423', '561200', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520424', '520400', '156-520000-520400-520424-', '0', '关岭布依族苗族自治县', '关岭布依族苗族自治县', '', '', '', '520424', '561300', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520425', '520400', '156-520000-520400-520425-', '0', '紫云苗族布依族自治县', '紫云苗族布依族自治县', '', '', '', '520425', '550800', '0853', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520500', '520000', '156-520000-520500-', '0', '毕节', '毕节市', '', '', '', '520500', '551700', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520502', '520500', '156-520000-520500-520502-', '0', '七星关区', '七星关区', '', '', '', '520502', '0', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520521', '520500', '156-520000-520500-520521-', '0', '大方县', '大方县', '', '', '', '520521', '551600', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520522', '520500', '156-520000-520500-520522-', '0', '黔西县', '黔西县', '', '', '', '520522', '551500', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520523', '520500', '156-520000-520500-520523-', '0', '金沙县', '金沙县', '', '', '', '520523', '551800', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520524', '520500', '156-520000-520500-520524-', '0', '织金县', '织金县', '', '', '', '520524', '552100', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520525', '520500', '156-520000-520500-520525-', '0', '纳雍县', '纳雍县', '', '', '', '520525', '553300', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520526', '520500', '156-520000-520500-520526-', '0', '威宁县', '威宁彝族回族苗族自治县', '', '', '', '520526', '553100', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520527', '520500', '156-520000-520500-520527-', '0', '赫章县', '赫章县', '', '', '', '520527', '553200', '0857', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520600', '520000', '156-520000-520600-', '0', '铜仁', '铜仁市', '', '', '', '520600', '554300', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520602', '520600', '156-520000-520600-520602-', '0', '碧江区', '碧江区', '', '', '', '520602', '554300', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520603', '520600', '156-520000-520600-520603-', '0', '万山区', '万山区', '', '', '', '520603', '554200', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520621', '520600', '156-520000-520600-520621-', '0', '江口县', '江口县', '', '', '', '520621', '554400', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520622', '520600', '156-520000-520600-520622-', '0', '玉屏县', '玉屏侗族自治县', '', '', '', '520622', '554000', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520623', '520600', '156-520000-520600-520623-', '0', '石阡县', '石阡县', '', '', '', '520623', '555100', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520624', '520600', '156-520000-520600-520624-', '0', '思南县', '思南县', '', '', '', '520624', '565100', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520625', '520600', '156-520000-520600-520625-', '0', '印江县', '印江土家族苗族自治县', '', '', '', '520625', '555200', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520626', '520600', '156-520000-520600-520626-', '0', '德江县', '德江县', '', '', '', '520626', '565200', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520627', '520600', '156-520000-520600-520627-', '0', '沿河县', '沿河土家族自治县', '', '', '', '520627', '565300', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('520628', '520600', '156-520000-520600-520628-', '0', '松桃县', '松桃苗族自治县', '', '', '', '520628', '554100', '0856', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522300', '520000', '156-520000-522300-', '0', '黔西南', '黔西南布依族苗族自治州', '', '', '', '522300', '562400', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522301', '522300', '156-520000-522300-522301-', '0', '兴义市', '兴义市', '', '', '', '522301', '562400', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522322', '522300', '156-520000-522300-522322-', '0', '兴仁县', '兴仁县', '', '', '', '522322', '562300', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522323', '522300', '156-520000-522300-522323-', '0', '普安县', '普安县', '', '', '', '522323', '561500', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522324', '522300', '156-520000-522300-522324-', '0', '晴隆县', '晴隆县', '', '', '', '522324', '561400', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522325', '522300', '156-520000-522300-522325-', '0', '贞丰县', '贞丰县', '', '', '', '522325', '562200', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522326', '522300', '156-520000-522300-522326-', '0', '望谟县', '望谟县', '', '', '', '522326', '552300', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522327', '522300', '156-520000-522300-522327-', '0', '册亨县', '册亨县', '', '', '', '522327', '552200', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522328', '522300', '156-520000-522300-522328-', '0', '安龙县', '安龙县', '', '', '', '522328', '552400', '0859', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522600', '520000', '156-520000-522600-', '0', '黔东南', '黔东南苗族侗族自治州', '', '', '', '522600', '556000', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522601', '522600', '156-520000-522600-522601-', '0', '凯里市', '凯里市', '', '', '', '522601', '556000', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522622', '522600', '156-520000-522600-522622-', '0', '黄平县', '黄平县', '', '', '', '522622', '556100', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522623', '522600', '156-520000-522600-522623-', '0', '施秉县', '施秉县', '', '', '', '522623', '556200', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522624', '522600', '156-520000-522600-522624-', '0', '三穗县', '三穗县', '', '', '', '522624', '556500', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522625', '522600', '156-520000-522600-522625-', '0', '镇远县', '镇远县', '', '', '', '522625', '557700', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522626', '522600', '156-520000-522600-522626-', '0', '岑巩县', '岑巩县', '', '', '', '522626', '557800', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522627', '522600', '156-520000-522600-522627-', '0', '天柱县', '天柱县', '', '', '', '522627', '556600', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522628', '522600', '156-520000-522600-522628-', '0', '锦屏县', '锦屏县', '', '', '', '522628', '556700', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522629', '522600', '156-520000-522600-522629-', '0', '剑河县', '剑河县', '', '', '', '522629', '556400', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522630', '522600', '156-520000-522600-522630-', '0', '台江县', '台江县', '', '', '', '522630', '556300', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522631', '522600', '156-520000-522600-522631-', '0', '黎平县', '黎平县', '', '', '', '522631', '557300', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522632', '522600', '156-520000-522600-522632-', '0', '榕江县', '榕江县', '', '', '', '522632', '557200', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522633', '522600', '156-520000-522600-522633-', '0', '从江县', '从江县', '', '', '', '522633', '557400', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522634', '522600', '156-520000-522600-522634-', '0', '雷山县', '雷山县', '', '', '', '522634', '557100', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522635', '522600', '156-520000-522600-522635-', '0', '麻江县', '麻江县', '', '', '', '522635', '557600', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522636', '522600', '156-520000-522600-522636-', '0', '丹寨县', '丹寨县', '', '', '', '522636', '557500', '0855', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522700', '520000', '156-520000-522700-', '0', '黔南', '黔南布依族苗族自治州', '', '', '', '522700', '558000', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522701', '522700', '156-520000-522700-522701-', '0', '都匀市', '都匀市', '', '', '', '522701', '558000', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522702', '522700', '156-520000-522700-522702-', '0', '福泉市', '福泉市', '', '', '', '522702', '550500', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522722', '522700', '156-520000-522700-522722-', '0', '荔波县', '荔波县', '', '', '', '522722', '558400', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522723', '522700', '156-520000-522700-522723-', '0', '贵定县', '贵定县', '', '', '', '522723', '551300', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522725', '522700', '156-520000-522700-522725-', '0', '瓮安县', '瓮安县', '', '', '', '522725', '550400', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522726', '522700', '156-520000-522700-522726-', '0', '独山县', '独山县', '', '', '', '522726', '558200', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522727', '522700', '156-520000-522700-522727-', '0', '平塘县', '平塘县', '', '', '', '522727', '558300', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522728', '522700', '156-520000-522700-522728-', '0', '罗甸县', '罗甸县', '', '', '', '522728', '550100', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522729', '522700', '156-520000-522700-522729-', '0', '长顺县', '长顺县', '', '', '', '522729', '550700', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522730', '522700', '156-520000-522700-522730-', '0', '龙里县', '龙里县', '', '', '', '522730', '551200', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522731', '522700', '156-520000-522700-522731-', '0', '惠水县', '惠水县', '', '', '', '522731', '550600', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('522732', '522700', '156-520000-522700-522732-', '0', '三都水族自治县', '三都水族自治县', '', '', '', '522732', '558100', '0854', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530000', '156', '156-530000-', '0', '云南', '云南省', 'YunNan', 'YunNan', 'YN', '530000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530100', '530000', '156-530000-530100-', '0', '昆明', '昆明市', '', '', '', '530100', '650000', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530101', '530100', '156-530000-530100-530101-', '0', '市辖区', '市辖区', '', '', '', '530101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530102', '530100', '156-530000-530100-530102-', '0', '五华区', '五华区', '', '', '', '530102', '650000', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530103', '530100', '156-530000-530100-530103-', '0', '盘龙区', '盘龙区', '', '', '', '530103', '650000', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530111', '530100', '156-530000-530100-530111-', '0', '官渡区', '官渡区', '', '', '', '530111', '650200', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530112', '530100', '156-530000-530100-530112-', '0', '西山区', '西山区', '', '', '', '530112', '650100', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530113', '530100', '156-530000-530100-530113-', '0', '东川区', '东川区', '', '', '', '530113', '654100', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530114', '530100', '156-530000-530100-530114-', '0', '呈贡区', '呈贡区', '', '', '', '530114', '650500', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530122', '530100', '156-530000-530100-530122-', '0', '晋宁县', '晋宁县', '', '', '', '530122', '650600', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530124', '530100', '156-530000-530100-530124-', '0', '富民县', '富民县', '', '', '', '530124', '650400', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530125', '530100', '156-530000-530100-530125-', '0', '宜良县', '宜良县', '', '', '', '530125', '652100', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530126', '530100', '156-530000-530100-530126-', '0', '石林彝族自治县', '石林彝族自治县', '', '', '', '530126', '652200', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530127', '530100', '156-530000-530100-530127-', '0', '嵩明县', '嵩明县', '', '', '', '530127', '651700', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530128', '530100', '156-530000-530100-530128-', '0', '禄劝彝族苗族自治县', '禄劝彝族苗族自治县', '', '', '', '530128', '651500', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530129', '530100', '156-530000-530100-530129-', '0', '寻甸回族彝族自治县', '寻甸回族彝族自治县', '', '', '', '530129', '655200', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530181', '530100', '156-530000-530100-530181-', '0', '安宁市', '安宁市', '', '', '', '530181', '650300', '0871', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530300', '530000', '156-530000-530300-', '0', '曲靖', '曲靖市', '', '', '', '530300', '655000', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530301', '530300', '156-530000-530300-530301-', '0', '市辖区', '市辖区', '', '', '', '530301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530302', '530300', '156-530000-530300-530302-', '0', '麒麟区', '麒麟区', '', '', '', '530302', '655000', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530321', '530300', '156-530000-530300-530321-', '0', '马龙县', '马龙县', '', '', '', '530321', '655100', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530322', '530300', '156-530000-530300-530322-', '0', '陆良县', '陆良县', '', '', '', '530322', '655600', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530323', '530300', '156-530000-530300-530323-', '0', '师宗县', '师宗县', '', '', '', '530323', '655700', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530324', '530300', '156-530000-530300-530324-', '0', '罗平县', '罗平县', '', '', '', '530324', '655800', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530325', '530300', '156-530000-530300-530325-', '0', '富源县', '富源县', '', '', '', '530325', '655500', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530326', '530300', '156-530000-530300-530326-', '0', '会泽县', '会泽县', '', '', '', '530326', '654200', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530328', '530300', '156-530000-530300-530328-', '0', '沾益县', '沾益县', '', '', '', '530328', '655500', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530381', '530300', '156-530000-530300-530381-', '0', '宣威市', '宣威市', '', '', '', '530381', '655400', '0874', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530400', '530000', '156-530000-530400-', '0', '玉溪', '玉溪市', '', '', '', '530400', '653100', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530402', '530400', '156-530000-530400-530402-', '0', '红塔区', '红塔区', '', '', '', '530402', '653100', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530421', '530400', '156-530000-530400-530421-', '0', '江川县', '江川县', '', '', '', '530421', '652600', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530422', '530400', '156-530000-530400-530422-', '0', '澄江县', '澄江县', '', '', '', '530422', '652500', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530423', '530400', '156-530000-530400-530423-', '0', '通海县', '通海县', '', '', '', '530423', '652700', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530424', '530400', '156-530000-530400-530424-', '0', '华宁县', '华宁县', '', '', '', '530424', '652800', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530425', '530400', '156-530000-530400-530425-', '0', '易门县', '易门县', '', '', '', '530425', '651100', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530426', '530400', '156-530000-530400-530426-', '0', '峨山彝族自治县', '峨山彝族自治县', '', '', '', '530426', '653200', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530427', '530400', '156-530000-530400-530427-', '0', '新平彝族傣族自治县', '新平彝族傣族自治县', '', '', '', '530427', '653400', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530428', '530400', '156-530000-530400-530428-', '0', '元江哈尼族彝族傣族自治县', '元江哈尼族彝族傣族自治县', '', '', '', '530428', '653300', '0877', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530500', '530000', '156-530000-530500-', '0', '保山', '保山市', '', '', '', '530500', '678000', '0875', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530501', '530500', '156-530000-530500-530501-', '0', '市辖区', '市辖区', '', '', '', '530501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530502', '530500', '156-530000-530500-530502-', '0', '隆阳区', '隆阳区', '', '', '', '530502', '678000', '0875', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530521', '530500', '156-530000-530500-530521-', '0', '施甸县', '施甸县', '', '', '', '530521', '678200', '0875', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530522', '530500', '156-530000-530500-530522-', '0', '腾冲县', '腾冲县', '', '', '', '530522', '679100', '0875', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530523', '530500', '156-530000-530500-530523-', '0', '龙陵县', '龙陵县', '', '', '', '530523', '678300', '0875', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530524', '530500', '156-530000-530500-530524-', '0', '昌宁县', '昌宁县', '', '', '', '530524', '678100', '0875', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530600', '530000', '156-530000-530600-', '0', '昭通', '昭通市', '', '', '', '530600', '657000', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530601', '530600', '156-530000-530600-530601-', '0', '市辖区', '市辖区', '', '', '', '530601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530602', '530600', '156-530000-530600-530602-', '0', '昭阳区', '昭阳区', '', '', '', '530602', '657000', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530621', '530600', '156-530000-530600-530621-', '0', '鲁甸县', '鲁甸县', '', '', '', '530621', '657100', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530622', '530600', '156-530000-530600-530622-', '0', '巧家县', '巧家县', '', '', '', '530622', '654600', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530623', '530600', '156-530000-530600-530623-', '0', '盐津县', '盐津县', '', '', '', '530623', '657500', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530624', '530600', '156-530000-530600-530624-', '0', '大关县', '大关县', '', '', '', '530624', '657400', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530625', '530600', '156-530000-530600-530625-', '0', '永善县', '永善县', '', '', '', '530625', '657300', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530626', '530600', '156-530000-530600-530626-', '0', '绥江县', '绥江县', '', '', '', '530626', '657700', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530627', '530600', '156-530000-530600-530627-', '0', '镇雄县', '镇雄县', '', '', '', '530627', '657200', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530628', '530600', '156-530000-530600-530628-', '0', '彝良县', '彝良县', '', '', '', '530628', '657600', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530629', '530600', '156-530000-530600-530629-', '0', '威信县', '威信县', '', '', '', '530629', '657900', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530630', '530600', '156-530000-530600-530630-', '0', '水富县', '水富县', '', '', '', '530630', '657800', '0870', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530700', '530000', '156-530000-530700-', '0', '丽江', '丽江市', '', '', '', '530700', '674100', '0888', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530701', '530700', '156-530000-530700-530701-', '0', '市辖区', '市辖区', '', '', '', '530701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530702', '530700', '156-530000-530700-530702-', '0', '古城区', '古城区', '', '', '', '530702', '674100', '0888', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530721', '530700', '156-530000-530700-530721-', '0', '玉龙纳西族自治县', '玉龙纳西族自治县', '', '', '', '530721', '674100', '0888', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530722', '530700', '156-530000-530700-530722-', '0', '永胜县', '永胜县', '', '', '', '530722', '674200', '0888', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530723', '530700', '156-530000-530700-530723-', '0', '华坪县', '华坪县', '', '', '', '530723', '674800', '0888', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530724', '530700', '156-530000-530700-530724-', '0', '宁蒗彝族自治县', '宁蒗彝族自治县', '', '', '', '530724', '674300', '0888', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530800', '530000', '156-530000-530800-', '0', '普洱', '普洱市', '', '', '', '530800', '665000', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530801', '530800', '156-530000-530800-530801-', '0', '市辖区', '市辖区', '', '', '', '530801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530802', '530800', '156-530000-530800-530802-', '0', '思茅区', '思茅区', '', '', '', '530802', '665000', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530821', '530800', '156-530000-530800-530821-', '0', '宁洱县', '宁洱哈尼族彝族自治县', '', '', '', '530821', '665000', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530822', '530800', '156-530000-530800-530822-', '0', '墨江哈尼族自治县', '墨江哈尼族自治县', '', '', '', '530822', '654800', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530823', '530800', '156-530000-530800-530823-', '0', '景东彝族自治县', '景东彝族自治县', '', '', '', '530823', '676200', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530824', '530800', '156-530000-530800-530824-', '0', '景谷傣族彝族自治县', '景谷傣族彝族自治县', '', '', '', '530824', '666400', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530825', '530800', '156-530000-530800-530825-', '0', '镇沅彝族哈尼族拉祜族自治县', '镇沅彝族哈尼族拉祜族自治县', '', '', '', '530825', '666500', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530826', '530800', '156-530000-530800-530826-', '0', '江城哈尼族彝族自治县', '江城哈尼族彝族自治县', '', '', '', '530826', '665900', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530827', '530800', '156-530000-530800-530827-', '0', '孟连傣族拉祜族佤族自治县', '孟连傣族拉祜族佤族自治县', '', '', '', '530827', '665800', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530828', '530800', '156-530000-530800-530828-', '0', '澜沧拉祜族自治县', '澜沧拉祜族自治县', '', '', '', '530828', '665600', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530829', '530800', '156-530000-530800-530829-', '0', '西盟佤族自治县', '西盟佤族自治县', '', '', '', '530829', '665700', '0879', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530900', '530000', '156-530000-530900-', '0', '临沧', '临沧市', '', '', '', '530900', '677000', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530901', '530900', '156-530000-530900-530901-', '0', '市辖区', '市辖区', '', '', '', '530901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530902', '530900', '156-530000-530900-530902-', '0', '临翔区', '临翔区', '', '', '', '530902', '677000', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530921', '530900', '156-530000-530900-530921-', '0', '凤庆县', '凤庆县', '', '', '', '530921', '675900', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530922', '530900', '156-530000-530900-530922-', '0', '云县', '云县', '', '', '', '530922', '675800', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530923', '530900', '156-530000-530900-530923-', '0', '永德县', '永德县', '', '', '', '530923', '677600', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530924', '530900', '156-530000-530900-530924-', '0', '镇康县', '镇康县', '', '', '', '530924', '677700', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530925', '530900', '156-530000-530900-530925-', '0', '双江拉祜族佤族布朗族傣族自治县', '双江拉祜族佤族布朗族傣族自治县', '', '', '', '530925', '677300', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530926', '530900', '156-530000-530900-530926-', '0', '耿马傣族佤族自治县', '耿马傣族佤族自治县', '', '', '', '530926', '677500', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('530927', '530900', '156-530000-530900-530927-', '0', '沧源佤族自治县', '沧源佤族自治县', '', '', '', '530927', '677400', '0883', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532300', '530000', '156-530000-532300-', '0', '楚雄州', '楚雄彝族自治州', '', '', '', '532300', '675000', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532301', '532300', '156-530000-532300-532301-', '0', '楚雄市', '楚雄市', '', '', '', '532301', '675000', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532322', '532300', '156-530000-532300-532322-', '0', '双柏县', '双柏县', '', '', '', '532322', '675100', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532323', '532300', '156-530000-532300-532323-', '0', '牟定县', '牟定县', '', '', '', '532323', '675500', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532324', '532300', '156-530000-532300-532324-', '0', '南华县', '南华县', '', '', '', '532324', '675200', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532325', '532300', '156-530000-532300-532325-', '0', '姚安县', '姚安县', '', '', '', '532325', '675300', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532326', '532300', '156-530000-532300-532326-', '0', '大姚县', '大姚县', '', '', '', '532326', '675400', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532327', '532300', '156-530000-532300-532327-', '0', '永仁县', '永仁县', '', '', '', '532327', '651400', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532328', '532300', '156-530000-532300-532328-', '0', '元谋县', '元谋县', '', '', '', '532328', '651300', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532329', '532300', '156-530000-532300-532329-', '0', '武定县', '武定县', '', '', '', '532329', '651600', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532331', '532300', '156-530000-532300-532331-', '0', '禄丰县', '禄丰县', '', '', '', '532331', '651200', '0878', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532500', '530000', '156-530000-532500-', '0', '红河州', '红河哈尼族彝族自治州', '', '', '', '532500', '661400', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532501', '532500', '156-530000-532500-532501-', '0', '个旧市', '个旧市', '', '', '', '532501', '661000', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532502', '532500', '156-530000-532500-532502-', '0', '开远市', '开远市', '', '', '', '532502', '661600', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532503', '532500', '156-530000-532500-532503-', '0', '蒙自市', '蒙自市', '', '', '', '532503', '661100', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532523', '532500', '156-530000-532500-532523-', '0', '屏边苗族自治县', '屏边苗族自治县', '', '', '', '532523', '661200', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532524', '532500', '156-530000-532500-532524-', '0', '建水县', '建水县', '', '', '', '532524', '654300', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532525', '532500', '156-530000-532500-532525-', '0', '石屏县', '石屏县', '', '', '', '532525', '662200', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532526', '532500', '156-530000-532500-532526-', '0', '弥勒县', '弥勒县', '', '', '', '532526', '652300', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532527', '532500', '156-530000-532500-532527-', '0', '泸西县', '泸西县', '', '', '', '532527', '652400', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532528', '532500', '156-530000-532500-532528-', '0', '元阳县', '元阳县', '', '', '', '532528', '662400', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532529', '532500', '156-530000-532500-532529-', '0', '红河县', '红河县', '', '', '', '532529', '654400', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532530', '532500', '156-530000-532500-532530-', '0', '金平苗族瑶族傣族自治县', '金平苗族瑶族傣族自治县', '', '', '', '532530', '661500', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532531', '532500', '156-530000-532500-532531-', '0', '绿春县', '绿春县', '', '', '', '532531', '662500', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532532', '532500', '156-530000-532500-532532-', '0', '河口瑶族自治县', '河口瑶族自治县', '', '', '', '532532', '661300', '0873', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532600', '530000', '156-530000-532600-', '0', '文山州', '文山壮族苗族自治州', '', '', '', '532600', '663000', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532601', '532600', '156-530000-532600-532601-', '0', '文山市', '文山市', '', '', '', '532601', '663000', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532622', '532600', '156-530000-532600-532622-', '0', '砚山县', '砚山县', '', '', '', '532622', '663100', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532623', '532600', '156-530000-532600-532623-', '0', '西畴县', '西畴县', '', '', '', '532623', '663500', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532624', '532600', '156-530000-532600-532624-', '0', '麻栗坡县', '麻栗坡县', '', '', '', '532624', '663600', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532625', '532600', '156-530000-532600-532625-', '0', '马关县', '马关县', '', '', '', '532625', '663700', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532626', '532600', '156-530000-532600-532626-', '0', '丘北县', '丘北县', '', '', '', '532626', '663200', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532627', '532600', '156-530000-532600-532627-', '0', '广南县', '广南县', '', '', '', '532627', '663300', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532628', '532600', '156-530000-532600-532628-', '0', '富宁县', '富宁县', '', '', '', '532628', '663400', '0876', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532800', '530000', '156-530000-532800-', '0', '西双版纳州', '西双版纳傣族自治州', '', '', '', '532800', '666100', '0691', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532801', '532800', '156-530000-532800-532801-', '0', '景洪市', '景洪市', '', '', '', '532801', '666100', '0691', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532822', '532800', '156-530000-532800-532822-', '0', '勐海县', '勐海县', '', '', '', '532822', '666200', '0691', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532823', '532800', '156-530000-532800-532823-', '0', '勐腊县', '勐腊县', '', '', '', '532823', '666300', '0691', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532900', '530000', '156-530000-532900-', '0', '大理州', '大理白族自治州', '', '', '', '532900', '671000', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532901', '532900', '156-530000-532900-532901-', '0', '大理市', '大理市', '', '', '', '532901', '671000', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532922', '532900', '156-530000-532900-532922-', '0', '漾濞彝族自治县', '漾濞彝族自治县', '', '', '', '532922', '672500', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532923', '532900', '156-530000-532900-532923-', '0', '祥云县', '祥云县', '', '', '', '532923', '672100', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532924', '532900', '156-530000-532900-532924-', '0', '宾川县', '宾川县', '', '', '', '532924', '671600', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532925', '532900', '156-530000-532900-532925-', '0', '弥渡县', '弥渡县', '', '', '', '532925', '675600', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532926', '532900', '156-530000-532900-532926-', '0', '南涧彝族自治县', '南涧彝族自治县', '', '', '', '532926', '675700', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532927', '532900', '156-530000-532900-532927-', '0', '巍山彝族回族自治县', '巍山彝族回族自治县', '', '', '', '532927', '672400', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532928', '532900', '156-530000-532900-532928-', '0', '永平县', '永平县', '', '', '', '532928', '672600', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532929', '532900', '156-530000-532900-532929-', '0', '云龙县', '云龙县', '', '', '', '532929', '672700', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532930', '532900', '156-530000-532900-532930-', '0', '洱源县', '洱源县', '', '', '', '532930', '671200', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532931', '532900', '156-530000-532900-532931-', '0', '剑川县', '剑川县', '', '', '', '532931', '671300', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('532932', '532900', '156-530000-532900-532932-', '0', '鹤庆县', '鹤庆县', '', '', '', '532932', '671500', '0872', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533100', '530000', '156-530000-533100-', '0', '德宏州', '德宏傣族景颇族自治州', '', '', '', '533100', '678400', '0692', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533102', '533100', '156-530000-533100-533102-', '0', '瑞丽市', '瑞丽市', '', '', '', '533102', '678600', '0692', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533103', '533100', '156-530000-533100-533103-', '0', '芒市', '芒市', '', '', '', '533103', '0', '0692', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533122', '533100', '156-530000-533100-533122-', '0', '梁河县', '梁河县', '', '', '', '533122', '679200', '0692', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533123', '533100', '156-530000-533100-533123-', '0', '盈江县', '盈江县', '', '', '', '533123', '679300', '0692', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533124', '533100', '156-530000-533100-533124-', '0', '陇川县', '陇川县', '', '', '', '533124', '678700', '0692', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533300', '530000', '156-530000-533300-', '0', '怒江州', '怒江傈僳族自治州', '', '', '', '533300', '673100', '0886', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533321', '533300', '156-530000-533300-533321-', '0', '泸水县', '泸水县', '', '', '', '533321', '673200', '0886', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533323', '533300', '156-530000-533300-533323-', '0', '福贡县', '福贡县', '', '', '', '533323', '673400', '0886', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533324', '533300', '156-530000-533300-533324-', '0', '贡山独龙族怒族自治县', '贡山独龙族怒族自治县', '', '', '', '533324', '673500', '0886', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533325', '533300', '156-530000-533300-533325-', '0', '兰坪白族普米族自治县', '兰坪白族普米族自治县', '', '', '', '533325', '671400', '0886', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533400', '530000', '156-530000-533400-', '0', '迪庆州', '迪庆藏族自治州', '', '', '', '533400', '674400', '0887', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533421', '533400', '156-530000-533400-533421-', '0', '香格里拉县', '香格里拉县', '', '', '', '533421', '674400', '0887', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533422', '533400', '156-530000-533400-533422-', '0', '德钦县', '德钦县', '', '', '', '533422', '674500', '0887', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('533423', '533400', '156-530000-533400-533423-', '0', '维西傈僳族自治县', '维西傈僳族自治县', '', '', '', '533423', '674600', '0887', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540000', '156', '156-540000-', '0', '西藏', '西藏自治区', 'XiZang', 'XiZang', 'XZ', '540000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540100', '540000', '156-540000-540100-', '0', '拉萨', '拉萨市', '', '', '', '540100', '850000', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540101', '540100', '156-540000-540100-540101-', '0', '市辖区', '市辖区', '', '', '', '540101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540102', '540100', '156-540000-540100-540102-', '0', '城关区', '城关区', '', '', '', '540102', '850000', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540121', '540100', '156-540000-540100-540121-', '0', '林周县', '林周县', '', '', '', '540121', '851600', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540122', '540100', '156-540000-540100-540122-', '0', '当雄县', '当雄县', '', '', '', '540122', '851500', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540123', '540100', '156-540000-540100-540123-', '0', '尼木县', '尼木县', '', '', '', '540123', '851600', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540124', '540100', '156-540000-540100-540124-', '0', '曲水县', '曲水县', '', '', '', '540124', '850600', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540125', '540100', '156-540000-540100-540125-', '0', '堆龙德庆县', '堆龙德庆县', '', '', '', '540125', '851400', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540126', '540100', '156-540000-540100-540126-', '0', '达孜县', '达孜县', '', '', '', '540126', '850100', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('540127', '540100', '156-540000-540100-540127-', '0', '墨竹工卡县', '墨竹工卡县', '', '', '', '540127', '850200', '0891', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542100', '540000', '156-540000-542100-', '0', '昌都', '昌都地区', '', '', '', '542100', '854000', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542121', '542100', '156-540000-542100-542121-', '0', '昌都县', '昌都县', '', '', '', '542121', '854000', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542122', '542100', '156-540000-542100-542122-', '0', '江达县', '江达县', '', '', '', '542122', '854100', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542123', '542100', '156-540000-542100-542123-', '0', '贡觉县', '贡觉县', '', '', '', '542123', '854200', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542124', '542100', '156-540000-542100-542124-', '0', '类乌齐县', '类乌齐县', '', '', '', '542124', '855600', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542125', '542100', '156-540000-542100-542125-', '0', '丁青县', '丁青县', '', '', '', '542125', '855700', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542126', '542100', '156-540000-542100-542126-', '0', '察雅县', '察雅县', '', '', '', '542126', '854300', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542127', '542100', '156-540000-542100-542127-', '0', '八宿县', '八宿县', '', '', '', '542127', '854600', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542128', '542100', '156-540000-542100-542128-', '0', '左贡县', '左贡县', '', '', '', '542128', '854400', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542129', '542100', '156-540000-542100-542129-', '0', '芒康县', '芒康县', '', '', '', '542129', '854500', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542132', '542100', '156-540000-542100-542132-', '0', '洛隆县', '洛隆县', '', '', '', '542132', '855400', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542133', '542100', '156-540000-542100-542133-', '0', '边坝县', '边坝县', '', '', '', '542133', '855500', '0895', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542200', '540000', '156-540000-542200-', '0', '山南', '山南地区', '', '', '', '542200', '856000', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542221', '542200', '156-540000-542200-542221-', '0', '乃东县', '乃东县', '', '', '', '542221', '856100', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542222', '542200', '156-540000-542200-542222-', '0', '扎囊县', '扎囊县', '', '', '', '542222', '850800', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542223', '542200', '156-540000-542200-542223-', '0', '贡嘎县', '贡嘎县', '', '', '', '542223', '850700', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542224', '542200', '156-540000-542200-542224-', '0', '桑日县', '桑日县', '', '', '', '542224', '856200', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542225', '542200', '156-540000-542200-542225-', '0', '琼结县', '琼结县', '', '', '', '542225', '856800', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542226', '542200', '156-540000-542200-542226-', '0', '曲松县', '曲松县', '', '', '', '542226', '856300', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542227', '542200', '156-540000-542200-542227-', '0', '措美县', '措美县', '', '', '', '542227', '856900', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542228', '542200', '156-540000-542200-542228-', '0', '洛扎县', '洛扎县', '', '', '', '542228', '851200', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542229', '542200', '156-540000-542200-542229-', '0', '加查县', '加查县', '', '', '', '542229', '856400', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542231', '542200', '156-540000-542200-542231-', '0', '隆子县', '隆子县', '', '', '', '542231', '856600', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542232', '542200', '156-540000-542200-542232-', '0', '错那县', '错那县', '', '', '', '542232', '856700', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542233', '542200', '156-540000-542200-542233-', '0', '浪卡子县', '浪卡子县', '', '', '', '542233', '851100', '0893', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542300', '540000', '156-540000-542300-', '0', '日喀则', '日喀则地区', '', '', '', '542300', '857000', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542301', '542300', '156-540000-542300-542301-', '0', '日喀则市', '日喀则市', '', '', '', '542301', '857000', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542322', '542300', '156-540000-542300-542322-', '0', '南木林县', '南木林县', '', '', '', '542322', '857100', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542323', '542300', '156-540000-542300-542323-', '0', '江孜县', '江孜县', '', '', '', '542323', '857400', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542324', '542300', '156-540000-542300-542324-', '0', '定日县', '定日县', '', '', '', '542324', '858200', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542325', '542300', '156-540000-542300-542325-', '0', '萨迦县', '萨迦县', '', '', '', '542325', '857800', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542326', '542300', '156-540000-542300-542326-', '0', '拉孜县', '拉孜县', '', '', '', '542326', '858100', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542327', '542300', '156-540000-542300-542327-', '0', '昂仁县', '昂仁县', '', '', '', '542327', '858500', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542328', '542300', '156-540000-542300-542328-', '0', '谢通门县', '谢通门县', '', '', '', '542328', '858900', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542329', '542300', '156-540000-542300-542329-', '0', '白朗县', '白朗县', '', '', '', '542329', '857300', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542330', '542300', '156-540000-542300-542330-', '0', '仁布县', '仁布县', '', '', '', '542330', '857200', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542331', '542300', '156-540000-542300-542331-', '0', '康马县', '康马县', '', '', '', '542331', '857500', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542332', '542300', '156-540000-542300-542332-', '0', '定结县', '定结县', '', '', '', '542332', '857900', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542333', '542300', '156-540000-542300-542333-', '0', '仲巴县', '仲巴县', '', '', '', '542333', '858800', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542334', '542300', '156-540000-542300-542334-', '0', '亚东县', '亚东县', '', '', '', '542334', '857600', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542335', '542300', '156-540000-542300-542335-', '0', '吉隆县', '吉隆县', '', '', '', '542335', '858700', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542336', '542300', '156-540000-542300-542336-', '0', '聂拉木县', '聂拉木县', '', '', '', '542336', '858300', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542337', '542300', '156-540000-542300-542337-', '0', '萨嘎县', '萨嘎县', '', '', '', '542337', '858600', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542338', '542300', '156-540000-542300-542338-', '0', '岗巴县', '岗巴县', '', '', '', '542338', '857700', '0892', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542400', '540000', '156-540000-542400-', '0', '那曲', '那曲地区', '', '', '', '542400', '852000', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542421', '542400', '156-540000-542400-542421-', '0', '那曲县', '那曲县', '', '', '', '542421', '852000', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542422', '542400', '156-540000-542400-542422-', '0', '嘉黎县', '嘉黎县', '', '', '', '542422', '852400', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542423', '542400', '156-540000-542400-542423-', '0', '比如县', '比如县', '', '', '', '542423', '852300', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542424', '542400', '156-540000-542400-542424-', '0', '聂荣县', '聂荣县', '', '', '', '542424', '853500', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542425', '542400', '156-540000-542400-542425-', '0', '安多县', '安多县', '', '', '', '542425', '853400', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542426', '542400', '156-540000-542400-542426-', '0', '申扎县', '申扎县', '', '', '', '542426', '853100', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542427', '542400', '156-540000-542400-542427-', '0', '索县', '索县', '', '', '', '542427', '852200', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542428', '542400', '156-540000-542400-542428-', '0', '班戈县', '班戈县', '', '', '', '542428', '852500', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542429', '542400', '156-540000-542400-542429-', '0', '巴青县', '巴青县', '', '', '', '542429', '852100', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542430', '542400', '156-540000-542400-542430-', '0', '尼玛县', '尼玛县', '', '', '', '542430', '853200', '0896', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542500', '540000', '156-540000-542500-', '0', '阿里', '阿里地区', '', '', '', '542500', '859000', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542521', '542500', '156-540000-542500-542521-', '0', '普兰县', '普兰县', '', '', '', '542521', '859500', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542522', '542500', '156-540000-542500-542522-', '0', '札达县', '札达县', '', '', '', '542522', '859600', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542523', '542500', '156-540000-542500-542523-', '0', '噶尔县', '噶尔县', '', '', '', '542523', '859000', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542524', '542500', '156-540000-542500-542524-', '0', '日土县', '日土县', '', '', '', '542524', '859700', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542525', '542500', '156-540000-542500-542525-', '0', '革吉县', '革吉县', '', '', '', '542525', '859100', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542526', '542500', '156-540000-542500-542526-', '0', '改则县', '改则县', '', '', '', '542526', '859200', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542527', '542500', '156-540000-542500-542527-', '0', '措勤县', '措勤县', '', '', '', '542527', '859300', '0897', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542600', '540000', '156-540000-542600-', '0', '林芝', '林芝地区', '', '', '', '542600', '860000', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542621', '542600', '156-540000-542600-542621-', '0', '林芝县', '林芝县', '', '', '', '542621', '860100', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542622', '542600', '156-540000-542600-542622-', '0', '工布江达县', '工布江达县', '', '', '', '542622', '860200', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542623', '542600', '156-540000-542600-542623-', '0', '米林县', '米林县', '', '', '', '542623', '860500', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542624', '542600', '156-540000-542600-542624-', '0', '墨脱县', '墨脱县', '', '', '', '542624', '860700', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542625', '542600', '156-540000-542600-542625-', '0', '波密县', '波密县', '', '', '', '542625', '860300', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542626', '542600', '156-540000-542600-542626-', '0', '察隅县', '察隅县', '', '', '', '542626', '860600', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('542627', '542600', '156-540000-542600-542627-', '0', '朗县', '朗县', '', '', '', '542627', '860400', '0894', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610000', '156', '156-610000-', '0', '陕西', '陕西省', 'ShanXi', 'ShanXi', 'SN', '610000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610100', '610000', '156-610000-610100-', '0', '西安', '西安市', '', '', '', '610100', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610101', '610100', '156-610000-610100-610101-', '0', '市辖区', '市辖区', '', '', '', '610101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610102', '610100', '156-610000-610100-610102-', '0', '新城区', '新城区', '', '', '', '610102', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610103', '610100', '156-610000-610100-610103-', '0', '碑林区', '碑林区', '', '', '', '610103', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610104', '610100', '156-610000-610100-610104-', '0', '莲湖区', '莲湖区', '', '', '', '610104', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610111', '610100', '156-610000-610100-610111-', '0', '灞桥区', '灞桥区', '', '', '', '610111', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610112', '610100', '156-610000-610100-610112-', '0', '未央区', '未央区', '', '', '', '610112', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610113', '610100', '156-610000-610100-610113-', '0', '雁塔区', '雁塔区', '', '', '', '610113', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610114', '610100', '156-610000-610100-610114-', '0', '阎良区', '阎良区', '', '', '', '610114', '710000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610115', '610100', '156-610000-610100-610115-', '0', '临潼区', '临潼区', '', '', '', '610115', '710600', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610116', '610100', '156-610000-610100-610116-', '0', '长安区', '长安区', '', '', '', '610116', '710100', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610122', '610100', '156-610000-610100-610122-', '0', '蓝田县', '蓝田县', '', '', '', '610122', '710500', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610124', '610100', '156-610000-610100-610124-', '0', '周至县', '周至县', '', '', '', '610124', '710400', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610125', '610100', '156-610000-610100-610125-', '0', '户县', '户县', '', '', '', '610125', '710300', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610126', '610100', '156-610000-610100-610126-', '0', '高陵县', '高陵县', '', '', '', '610126', '710200', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610200', '610000', '156-610000-610200-', '0', '铜川', '铜川市', '', '', '', '610200', '727000', '0919', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610201', '610200', '156-610000-610200-610201-', '0', '市辖区', '市辖区', '', '', '', '610201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610202', '610200', '156-610000-610200-610202-', '0', '王益区', '王益区', '', '', '', '610202', '727000', '0919', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610203', '610200', '156-610000-610200-610203-', '0', '印台区', '印台区', '', '', '', '610203', '727007', '0919', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610204', '610200', '156-610000-610200-610204-', '0', '耀州区', '耀州区', '', '', '', '610204', '727100', '0919', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610222', '610200', '156-610000-610200-610222-', '0', '宜君县', '宜君县', '', '', '', '610222', '727200', '0919', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610300', '610000', '156-610000-610300-', '0', '宝鸡', '宝鸡市', '', '', '', '610300', '721000', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610301', '610300', '156-610000-610300-610301-', '0', '市辖区', '市辖区', '', '', '', '610301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610302', '610300', '156-610000-610300-610302-', '0', '渭滨区', '渭滨区', '', '', '', '610302', '721000', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610303', '610300', '156-610000-610300-610303-', '0', '金台区', '金台区', '', '', '', '610303', '721000', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610304', '610300', '156-610000-610300-610304-', '0', '陈仓区', '陈仓区', '', '', '', '610304', '721300', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610322', '610300', '156-610000-610300-610322-', '0', '凤翔县', '凤翔县', '', '', '', '610322', '721400', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610323', '610300', '156-610000-610300-610323-', '0', '岐山县', '岐山县', '', '', '', '610323', '722400', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610324', '610300', '156-610000-610300-610324-', '0', '扶风县', '扶风县', '', '', '', '610324', '722200', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610326', '610300', '156-610000-610300-610326-', '0', '眉县', '眉县', '', '', '', '610326', '722300', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610327', '610300', '156-610000-610300-610327-', '0', '陇县', '陇县', '', '', '', '610327', '721200', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610328', '610300', '156-610000-610300-610328-', '0', '千阳县', '千阳县', '', '', '', '610328', '721100', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610329', '610300', '156-610000-610300-610329-', '0', '麟游县', '麟游县', '', '', '', '610329', '721500', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610330', '610300', '156-610000-610300-610330-', '0', '凤县', '凤县', '', '', '', '610330', '721700', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610331', '610300', '156-610000-610300-610331-', '0', '太白县', '太白县', '', '', '', '610331', '721600', '0917', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610400', '610000', '156-610000-610400-', '0', '咸阳', '咸阳市', '', '', '', '610400', '712000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610401', '610400', '156-610000-610400-610401-', '0', '市辖区', '市辖区', '', '', '', '610401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610402', '610400', '156-610000-610400-610402-', '0', '秦都区', '秦都区', '', '', '', '610402', '712000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610403', '610400', '156-610000-610400-610403-', '0', '杨陵区', '杨陵区', '', '', '', '610403', '712100', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610404', '610400', '156-610000-610400-610404-', '0', '渭城区', '渭城区', '', '', '', '610404', '712000', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610422', '610400', '156-610000-610400-610422-', '0', '三原县', '三原县', '', '', '', '610422', '713800', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610423', '610400', '156-610000-610400-610423-', '0', '泾阳县', '泾阳县', '', '', '', '610423', '713700', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610424', '610400', '156-610000-610400-610424-', '0', '乾县', '乾县', '', '', '', '610424', '713300', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610425', '610400', '156-610000-610400-610425-', '0', '礼泉县', '礼泉县', '', '', '', '610425', '713200', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610426', '610400', '156-610000-610400-610426-', '0', '永寿县', '永寿县', '', '', '', '610426', '713400', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610427', '610400', '156-610000-610400-610427-', '0', '彬县', '彬县', '', '', '', '610427', '713500', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610428', '610400', '156-610000-610400-610428-', '0', '长武县', '长武县', '', '', '', '610428', '713600', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610429', '610400', '156-610000-610400-610429-', '0', '旬邑县', '旬邑县', '', '', '', '610429', '711300', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610430', '610400', '156-610000-610400-610430-', '0', '淳化县', '淳化县', '', '', '', '610430', '711200', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610431', '610400', '156-610000-610400-610431-', '0', '武功县', '武功县', '', '', '', '610431', '712200', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610481', '610400', '156-610000-610400-610481-', '0', '兴平市', '兴平市', '', '', '', '610481', '713100', '029', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610500', '610000', '156-610000-610500-', '0', '渭南', '渭南市', '', '', '', '610500', '714000', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610501', '610500', '156-610000-610500-610501-', '0', '市辖区', '市辖区', '', '', '', '610501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610502', '610500', '156-610000-610500-610502-', '0', '临渭区', '临渭区', '', '', '', '610502', '714000', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610521', '610500', '156-610000-610500-610521-', '0', '华县', '华县', '', '', '', '610521', '714100', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610522', '610500', '156-610000-610500-610522-', '0', '潼关县', '潼关县', '', '', '', '610522', '714300', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610523', '610500', '156-610000-610500-610523-', '0', '大荔县', '大荔县', '', '', '', '610523', '715100', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610524', '610500', '156-610000-610500-610524-', '0', '合阳县', '合阳县', '', '', '', '610524', '715300', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610525', '610500', '156-610000-610500-610525-', '0', '澄城县', '澄城县', '', '', '', '610525', '715200', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610526', '610500', '156-610000-610500-610526-', '0', '蒲城县', '蒲城县', '', '', '', '610526', '715500', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610527', '610500', '156-610000-610500-610527-', '0', '白水县', '白水县', '', '', '', '610527', '715600', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610528', '610500', '156-610000-610500-610528-', '0', '富平县', '富平县', '', '', '', '610528', '711700', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610581', '610500', '156-610000-610500-610581-', '0', '韩城市', '韩城市', '', '', '', '610581', '715400', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610582', '610500', '156-610000-610500-610582-', '0', '华阴市', '华阴市', '', '', '', '610582', '714200', '0913', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610600', '610000', '156-610000-610600-', '0', '延安', '延安市', '', '', '', '610600', '716000', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610601', '610600', '156-610000-610600-610601-', '0', '市辖区', '市辖区', '', '', '', '610601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610602', '610600', '156-610000-610600-610602-', '0', '宝塔区', '宝塔区', '', '', '', '610602', '716000', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610621', '610600', '156-610000-610600-610621-', '0', '延长县', '延长县', '', '', '', '610621', '717100', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610622', '610600', '156-610000-610600-610622-', '0', '延川县', '延川县', '', '', '', '610622', '717200', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610623', '610600', '156-610000-610600-610623-', '0', '子长县', '子长县', '', '', '', '610623', '717300', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610624', '610600', '156-610000-610600-610624-', '0', '安塞县', '安塞县', '', '', '', '610624', '717400', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610625', '610600', '156-610000-610600-610625-', '0', '志丹县', '志丹县', '', '', '', '610625', '717500', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610626', '610600', '156-610000-610600-610626-', '0', '吴起县', '吴起县', '', '', '', '610626', '717600', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610627', '610600', '156-610000-610600-610627-', '0', '甘泉县', '甘泉县', '', '', '', '610627', '716100', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610628', '610600', '156-610000-610600-610628-', '0', '富县', '富县', '', '', '', '610628', '727500', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610629', '610600', '156-610000-610600-610629-', '0', '洛川县', '洛川县', '', '', '', '610629', '727400', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610630', '610600', '156-610000-610600-610630-', '0', '宜川县', '宜川县', '', '', '', '610630', '716200', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610631', '610600', '156-610000-610600-610631-', '0', '黄龙县', '黄龙县', '', '', '', '610631', '715700', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610632', '610600', '156-610000-610600-610632-', '0', '黄陵县', '黄陵县', '', '', '', '610632', '727300', '0911', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610700', '610000', '156-610000-610700-', '0', '汉中', '汉中市', '', '', '', '610700', '723000', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610701', '610700', '156-610000-610700-610701-', '0', '市辖区', '市辖区', '', '', '', '610701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610702', '610700', '156-610000-610700-610702-', '0', '汉台区', '汉台区', '', '', '', '610702', '723000', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610721', '610700', '156-610000-610700-610721-', '0', '南郑县', '南郑县', '', '', '', '610721', '723100', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610722', '610700', '156-610000-610700-610722-', '0', '城固县', '城固县', '', '', '', '610722', '723200', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610723', '610700', '156-610000-610700-610723-', '0', '洋县', '洋县', '', '', '', '610723', '723300', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610724', '610700', '156-610000-610700-610724-', '0', '西乡县', '西乡县', '', '', '', '610724', '723500', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610725', '610700', '156-610000-610700-610725-', '0', '勉县', '勉县', '', '', '', '610725', '724200', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610726', '610700', '156-610000-610700-610726-', '0', '宁强县', '宁强县', '', '', '', '610726', '724400', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610727', '610700', '156-610000-610700-610727-', '0', '略阳县', '略阳县', '', '', '', '610727', '724300', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610728', '610700', '156-610000-610700-610728-', '0', '镇巴县', '镇巴县', '', '', '', '610728', '723600', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610729', '610700', '156-610000-610700-610729-', '0', '留坝县', '留坝县', '', '', '', '610729', '724100', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610730', '610700', '156-610000-610700-610730-', '0', '佛坪县', '佛坪县', '', '', '', '610730', '723400', '0916', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610800', '610000', '156-610000-610800-', '0', '榆林', '榆林市', '', '', '', '610800', '719000', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610801', '610800', '156-610000-610800-610801-', '0', '市辖区', '市辖区', '', '', '', '610801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610802', '610800', '156-610000-610800-610802-', '0', '榆阳区', '榆阳区', '', '', '', '610802', '719000', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610821', '610800', '156-610000-610800-610821-', '0', '神木县', '神木县', '', '', '', '610821', '719300', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610822', '610800', '156-610000-610800-610822-', '0', '府谷县', '府谷县', '', '', '', '610822', '719400', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610823', '610800', '156-610000-610800-610823-', '0', '横山县', '横山县', '', '', '', '610823', '719200', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610824', '610800', '156-610000-610800-610824-', '0', '靖边县', '靖边县', '', '', '', '610824', '718500', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610825', '610800', '156-610000-610800-610825-', '0', '定边县', '定边县', '', '', '', '610825', '718600', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610826', '610800', '156-610000-610800-610826-', '0', '绥德县', '绥德县', '', '', '', '610826', '718000', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610827', '610800', '156-610000-610800-610827-', '0', '米脂县', '米脂县', '', '', '', '610827', '718100', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610828', '610800', '156-610000-610800-610828-', '0', '佳县', '佳县', '', '', '', '610828', '719200', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610829', '610800', '156-610000-610800-610829-', '0', '吴堡县', '吴堡县', '', '', '', '610829', '718200', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610830', '610800', '156-610000-610800-610830-', '0', '清涧县', '清涧县', '', '', '', '610830', '718300', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610831', '610800', '156-610000-610800-610831-', '0', '子洲县', '子洲县', '', '', '', '610831', '718400', '0912', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610900', '610000', '156-610000-610900-', '0', '安康', '安康市', '', '', '', '610900', '725000', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610901', '610900', '156-610000-610900-610901-', '0', '市辖区', '市辖区', '', '', '', '610901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610902', '610900', '156-610000-610900-610902-', '0', '汉滨区', '汉滨区', '', '', '', '610902', '725000', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610921', '610900', '156-610000-610900-610921-', '0', '汉阴县', '汉阴县', '', '', '', '610921', '725100', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610922', '610900', '156-610000-610900-610922-', '0', '石泉县', '石泉县', '', '', '', '610922', '725200', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610923', '610900', '156-610000-610900-610923-', '0', '宁陕县', '宁陕县', '', '', '', '610923', '711600', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610924', '610900', '156-610000-610900-610924-', '0', '紫阳县', '紫阳县', '', '', '', '610924', '725300', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610925', '610900', '156-610000-610900-610925-', '0', '岚皋县', '岚皋县', '', '', '', '610925', '725400', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610926', '610900', '156-610000-610900-610926-', '0', '平利县', '平利县', '', '', '', '610926', '725500', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610927', '610900', '156-610000-610900-610927-', '0', '镇坪县', '镇坪县', '', '', '', '610927', '725600', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610928', '610900', '156-610000-610900-610928-', '0', '旬阳县', '旬阳县', '', '', '', '610928', '725700', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('610929', '610900', '156-610000-610900-610929-', '0', '白河县', '白河县', '', '', '', '610929', '725800', '0915', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611000', '610000', '156-610000-611000-', '0', '商洛', '商洛市', '', '', '', '611000', '726000', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611001', '611000', '156-610000-611000-611001-', '0', '市辖区', '市辖区', '', '', '', '611001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611002', '611000', '156-610000-611000-611002-', '0', '商州区', '商州区', '', '', '', '611002', '726000', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611021', '611000', '156-610000-611000-611021-', '0', '洛南县', '洛南县', '', '', '', '611021', '726100', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611022', '611000', '156-610000-611000-611022-', '0', '丹凤县', '丹凤县', '', '', '', '611022', '726200', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611023', '611000', '156-610000-611000-611023-', '0', '商南县', '商南县', '', '', '', '611023', '726300', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611024', '611000', '156-610000-611000-611024-', '0', '山阳县', '山阳县', '', '', '', '611024', '726400', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611025', '611000', '156-610000-611000-611025-', '0', '镇安县', '镇安县', '', '', '', '611025', '711500', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('611026', '611000', '156-610000-611000-611026-', '0', '柞水县', '柞水县', '', '', '', '611026', '711400', '0914', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620000', '156', '156-620000-', '0', '甘肃', '甘肃省', 'GanSu', 'GanSu', 'GS', '620000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620100', '620000', '156-620000-620100-', '0', '兰州', '兰州市', '', '', '', '620100', '730000', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620101', '620100', '156-620000-620100-620101-', '0', '市辖区', '市辖区', '', '', '', '620101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620102', '620100', '156-620000-620100-620102-', '0', '城关区', '城关区', '', '', '', '620102', '730030', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620103', '620100', '156-620000-620100-620103-', '0', '七里河区', '七里河区', '', '', '', '620103', '730050', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620104', '620100', '156-620000-620100-620104-', '0', '西固区', '西固区', '', '', '', '620104', '730060', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620105', '620100', '156-620000-620100-620105-', '0', '安宁区', '安宁区', '', '', '', '620105', '730070', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620111', '620100', '156-620000-620100-620111-', '0', '红古区', '红古区', '', '', '', '620111', '730080', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620121', '620100', '156-620000-620100-620121-', '0', '永登县', '永登县', '', '', '', '620121', '730300', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620122', '620100', '156-620000-620100-620122-', '0', '皋兰县', '皋兰县', '', '', '', '620122', '730200', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620123', '620100', '156-620000-620100-620123-', '0', '榆中县', '榆中县', '', '', '', '620123', '730100', '0931', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620200', '620000', '156-620000-620200-', '0', '嘉峪关', '嘉峪关市', '', '', '', '620200', '735100', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620201', '620200', '156-620000-620200-620201-', '0', '市辖区', '市辖区', '', '', '', '620201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620300', '620000', '156-620000-620300-', '0', '金昌', '金昌市', '', '', '', '620300', '737100', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620301', '620300', '156-620000-620300-620301-', '0', '市辖区', '市辖区', '', '', '', '620301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620302', '620300', '156-620000-620300-620302-', '0', '金川区', '金川区', '', '', '', '620302', '737100', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620321', '620300', '156-620000-620300-620321-', '0', '永昌县', '永昌县', '', '', '', '620321', '737200', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620400', '620000', '156-620000-620400-', '0', '白银', '白银市', '', '', '', '620400', '730900', '0943', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620401', '620400', '156-620000-620400-620401-', '0', '市辖区', '市辖区', '', '', '', '620401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620402', '620400', '156-620000-620400-620402-', '0', '白银区', '白银区', '', '', '', '620402', '730900', '0943', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620403', '620400', '156-620000-620400-620403-', '0', '平川区', '平川区', '', '', '', '620403', '730900', '0943', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620421', '620400', '156-620000-620400-620421-', '0', '靖远县', '靖远县', '', '', '', '620421', '730600', '0943', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620422', '620400', '156-620000-620400-620422-', '0', '会宁县', '会宁县', '', '', '', '620422', '730700', '0943', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620423', '620400', '156-620000-620400-620423-', '0', '景泰县', '景泰县', '', '', '', '620423', '730400', '0943', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620500', '620000', '156-620000-620500-', '0', '天水', '天水市', '', '', '', '620500', '741000', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620501', '620500', '156-620000-620500-620501-', '0', '市辖区', '市辖区', '', '', '', '620501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620502', '620500', '156-620000-620500-620502-', '0', '秦州区', '秦州区', '', '', '', '620502', '741000', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620503', '620500', '156-620000-620500-620503-', '0', '麦积区', '麦积区', '', '', '', '620503', '741020', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620521', '620500', '156-620000-620500-620521-', '0', '清水县', '清水县', '', '', '', '620521', '741400', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620522', '620500', '156-620000-620500-620522-', '0', '秦安县', '秦安县', '', '', '', '620522', '741600', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620523', '620500', '156-620000-620500-620523-', '0', '甘谷县', '甘谷县', '', '', '', '620523', '741200', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620524', '620500', '156-620000-620500-620524-', '0', '武山县', '武山县', '', '', '', '620524', '741300', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620525', '620500', '156-620000-620500-620525-', '0', '张家川回族自治县', '张家川回族自治县', '', '', '', '620525', '741500', '0938', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620600', '620000', '156-620000-620600-', '0', '武威', '武威市', '', '', '', '620600', '733000', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620601', '620600', '156-620000-620600-620601-', '0', '市辖区', '市辖区', '', '', '', '620601', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620602', '620600', '156-620000-620600-620602-', '0', '凉州区', '凉州区', '', '', '', '620602', '733000', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620621', '620600', '156-620000-620600-620621-', '0', '民勤县', '民勤县', '', '', '', '620621', '733300', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620622', '620600', '156-620000-620600-620622-', '0', '古浪县', '古浪县', '', '', '', '620622', '733100', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620623', '620600', '156-620000-620600-620623-', '0', '天祝藏族自治县', '天祝藏族自治县', '', '', '', '620623', '733200', '0935', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620700', '620000', '156-620000-620700-', '0', '张掖', '张掖市', '', '', '', '620700', '734000', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620701', '620700', '156-620000-620700-620701-', '0', '市辖区', '市辖区', '', '', '', '620701', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620702', '620700', '156-620000-620700-620702-', '0', '甘州区', '甘州区', '', '', '', '620702', '734000', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620721', '620700', '156-620000-620700-620721-', '0', '肃南裕固族自治县', '肃南裕固族自治县', '', '', '', '620721', '734400', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620722', '620700', '156-620000-620700-620722-', '0', '民乐县', '民乐县', '', '', '', '620722', '734500', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620723', '620700', '156-620000-620700-620723-', '0', '临泽县', '临泽县', '', '', '', '620723', '734200', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620724', '620700', '156-620000-620700-620724-', '0', '高台县', '高台县', '', '', '', '620724', '734300', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620725', '620700', '156-620000-620700-620725-', '0', '山丹县', '山丹县', '', '', '', '620725', '734100', '0936', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620800', '620000', '156-620000-620800-', '0', '平凉', '平凉市', '', '', '', '620800', '744000', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620801', '620800', '156-620000-620800-620801-', '0', '市辖区', '市辖区', '', '', '', '620801', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620802', '620800', '156-620000-620800-620802-', '0', '崆峒区', '崆峒区', '', '', '', '620802', '744000', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620821', '620800', '156-620000-620800-620821-', '0', '泾川县', '泾川县', '', '', '', '620821', '744300', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620822', '620800', '156-620000-620800-620822-', '0', '灵台县', '灵台县', '', '', '', '620822', '744400', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620823', '620800', '156-620000-620800-620823-', '0', '崇信县', '崇信县', '', '', '', '620823', '744200', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620824', '620800', '156-620000-620800-620824-', '0', '华亭县', '华亭县', '', '', '', '620824', '744100', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620825', '620800', '156-620000-620800-620825-', '0', '庄浪县', '庄浪县', '', '', '', '620825', '744600', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620826', '620800', '156-620000-620800-620826-', '0', '静宁县', '静宁县', '', '', '', '620826', '743400', '0933', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620900', '620000', '156-620000-620900-', '0', '酒泉', '酒泉市', '', '', '', '620900', '735000', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620901', '620900', '156-620000-620900-620901-', '0', '市辖区', '市辖区', '', '', '', '620901', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620902', '620900', '156-620000-620900-620902-', '0', '肃州区', '肃州区', '', '', '', '620902', '735000', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620921', '620900', '156-620000-620900-620921-', '0', '金塔县', '金塔县', '', '', '', '620921', '735300', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620922', '620900', '156-620000-620900-620922-', '0', '瓜州县', '瓜州县', '', '', '', '620922', '736100', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620923', '620900', '156-620000-620900-620923-', '0', '肃北蒙古族自治县', '肃北蒙古族自治县', '', '', '', '620923', '736300', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620924', '620900', '156-620000-620900-620924-', '0', '阿克塞哈萨克族自治县', '阿克塞哈萨克族自治县', '', '', '', '620924', '736400', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620981', '620900', '156-620000-620900-620981-', '0', '玉门市', '玉门市', '', '', '', '620981', '735200', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('620982', '620900', '156-620000-620900-620982-', '0', '敦煌市', '敦煌市', '', '', '', '620982', '736200', '0937', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621000', '620000', '156-620000-621000-', '0', '庆阳', '庆阳市', '', '', '', '621000', '745000', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621001', '621000', '156-620000-621000-621001-', '0', '市辖区', '市辖区', '', '', '', '621001', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621002', '621000', '156-620000-621000-621002-', '0', '西峰区', '西峰区', '', '', '', '621002', '745000', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621021', '621000', '156-620000-621000-621021-', '0', '庆城县', '庆城县', '', '', '', '621021', '745100', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621022', '621000', '156-620000-621000-621022-', '0', '环县', '环县', '', '', '', '621022', '745700', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621023', '621000', '156-620000-621000-621023-', '0', '华池县', '华池县', '', '', '', '621023', '745600', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621024', '621000', '156-620000-621000-621024-', '0', '合水县', '合水县', '', '', '', '621024', '745400', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621025', '621000', '156-620000-621000-621025-', '0', '正宁县', '正宁县', '', '', '', '621025', '745300', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621026', '621000', '156-620000-621000-621026-', '0', '宁县', '宁县', '', '', '', '621026', '745200', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621027', '621000', '156-620000-621000-621027-', '0', '镇原县', '镇原县', '', '', '', '621027', '744500', '0934', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621100', '620000', '156-620000-621100-', '0', '定西', '定西市', '', '', '', '621100', '743000', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621101', '621100', '156-620000-621100-621101-', '0', '市辖区', '市辖区', '', '', '', '621101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621102', '621100', '156-620000-621100-621102-', '0', '安定区', '安定区', '', '', '', '621102', '744300', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621121', '621100', '156-620000-621100-621121-', '0', '通渭县', '通渭县', '', '', '', '621121', '743300', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621122', '621100', '156-620000-621100-621122-', '0', '陇西县', '陇西县', '', '', '', '621122', '748100', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621123', '621100', '156-620000-621100-621123-', '0', '渭源县', '渭源县', '', '', '', '621123', '748200', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621124', '621100', '156-620000-621100-621124-', '0', '临洮县', '临洮县', '', '', '', '621124', '730500', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621125', '621100', '156-620000-621100-621125-', '0', '漳县', '漳县', '', '', '', '621125', '748300', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621126', '621100', '156-620000-621100-621126-', '0', '岷县', '岷县', '', '', '', '621126', '748400', '0932', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621200', '620000', '156-620000-621200-', '0', '陇南', '陇南市', '', '', '', '621200', '742500', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621201', '621200', '156-620000-621200-621201-', '0', '市辖区', '市辖区', '', '', '', '621201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621202', '621200', '156-620000-621200-621202-', '0', '武都区', '武都区', '', '', '', '621202', '746000', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621221', '621200', '156-620000-621200-621221-', '0', '成县', '成县', '', '', '', '621221', '742500', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621222', '621200', '156-620000-621200-621222-', '0', '文县', '文县', '', '', '', '621222', '746400', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621223', '621200', '156-620000-621200-621223-', '0', '宕昌县', '宕昌县', '', '', '', '621223', '748500', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621224', '621200', '156-620000-621200-621224-', '0', '康县', '康县', '', '', '', '621224', '746500', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621225', '621200', '156-620000-621200-621225-', '0', '西和县', '西和县', '', '', '', '621225', '742100', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621226', '621200', '156-620000-621200-621226-', '0', '礼县', '礼县', '', '', '', '621226', '742200', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621227', '621200', '156-620000-621200-621227-', '0', '徽县', '徽县', '', '', '', '621227', '742300', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('621228', '621200', '156-620000-621200-621228-', '0', '两当县', '两当县', '', '', '', '621228', '742400', '0939', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622900', '620000', '156-620000-622900-', '0', '临夏州', '临夏回族自治州', '', '', '', '622900', '731100', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622901', '622900', '156-620000-622900-622901-', '0', '临夏市', '临夏市', '', '', '', '622901', '731100', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622921', '622900', '156-620000-622900-622921-', '0', '临夏县', '临夏县', '', '', '', '622921', '731800', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622922', '622900', '156-620000-622900-622922-', '0', '康乐县', '康乐县', '', '', '', '622922', '731500', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622923', '622900', '156-620000-622900-622923-', '0', '永靖县', '永靖县', '', '', '', '622923', '731600', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622924', '622900', '156-620000-622900-622924-', '0', '广河县', '广河县', '', '', '', '622924', '731300', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622925', '622900', '156-620000-622900-622925-', '0', '和政县', '和政县', '', '', '', '622925', '731200', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622926', '622900', '156-620000-622900-622926-', '0', '东乡族自治县', '东乡族自治县', '', '', '', '622926', '731400', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('622927', '622900', '156-620000-622900-622927-', '0', '积石山保安族东乡族撒拉族自治县', '积石山保安族东乡族撒拉族自治县', '', '', '', '622927', '731700', '0930', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623000', '620000', '156-620000-623000-', '0', '甘南州', '甘南藏族自治州', '', '', '', '623000', '747000', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623001', '623000', '156-620000-623000-623001-', '0', '合作市', '合作市', '', '', '', '623001', '747000', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623021', '623000', '156-620000-623000-623021-', '0', '临潭县', '临潭县', '', '', '', '623021', '747500', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623022', '623000', '156-620000-623000-623022-', '0', '卓尼县', '卓尼县', '', '', '', '623022', '747600', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623023', '623000', '156-620000-623000-623023-', '0', '舟曲县', '舟曲县', '', '', '', '623023', '746300', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623024', '623000', '156-620000-623000-623024-', '0', '迭部县', '迭部县', '', '', '', '623024', '747400', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623025', '623000', '156-620000-623000-623025-', '0', '玛曲县', '玛曲县', '', '', '', '623025', '747300', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623026', '623000', '156-620000-623000-623026-', '0', '碌曲县', '碌曲县', '', '', '', '623026', '747200', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('623027', '623000', '156-620000-623000-623027-', '0', '夏河县', '夏河县', '', '', '', '623027', '747100', '0941', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630000', '156', '156-630000-', '0', '青海', '青海省', 'QingHai', 'QingHai', 'QH', '630000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630100', '630000', '156-630000-630100-', '0', '西宁', '西宁市', '', '', '', '630100', '810000', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630101', '630100', '156-630000-630100-630101-', '0', '市辖区', '市辖区', '', '', '', '630101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630102', '630100', '156-630000-630100-630102-', '0', '城东区', '城东区', '', '', '', '630102', '810000', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630103', '630100', '156-630000-630100-630103-', '0', '城中区', '城中区', '', '', '', '630103', '810000', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630104', '630100', '156-630000-630100-630104-', '0', '城西区', '城西区', '', '', '', '630104', '810000', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630105', '630100', '156-630000-630100-630105-', '0', '城北区', '城北区', '', '', '', '630105', '810000', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630121', '630100', '156-630000-630100-630121-', '0', '大通回族土族自治县', '大通回族土族自治县', '', '', '', '630121', '810100', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630122', '630100', '156-630000-630100-630122-', '0', '湟中县', '湟中县', '', '', '', '630122', '811600', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('630123', '630100', '156-630000-630100-630123-', '0', '湟源县', '湟源县', '', '', '', '630123', '812100', '0971', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632100', '630000', '156-630000-632100-', '0', '海东', '海东地区', '', '', '', '632100', '810600', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632121', '632100', '156-630000-632100-632121-', '0', '平安县', '平安县', '', '', '', '632121', '810600', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632122', '632100', '156-630000-632100-632122-', '0', '民和回族土族自治县', '民和回族土族自治县', '', '', '', '632122', '810800', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632123', '632100', '156-630000-632100-632123-', '0', '乐都县', '乐都县', '', '', '', '632123', '810700', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632126', '632100', '156-630000-632100-632126-', '0', '互助土族自治县', '互助土族自治县', '', '', '', '632126', '810500', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632127', '632100', '156-630000-632100-632127-', '0', '化隆回族自治县', '化隆回族自治县', '', '', '', '632127', '810900', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632128', '632100', '156-630000-632100-632128-', '0', '循化撒拉族自治县', '循化撒拉族自治县', '', '', '', '632128', '811100', '0972', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632200', '630000', '156-630000-632200-', '0', '海北州', '海北藏族自治州', '', '', '', '632200', '812200', '0970', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632221', '632200', '156-630000-632200-632221-', '0', '门源回族自治县', '门源回族自治县', '', '', '', '632221', '810300', '0970', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632222', '632200', '156-630000-632200-632222-', '0', '祁连县', '祁连县', '', '', '', '632222', '810400', '0970', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632223', '632200', '156-630000-632200-632223-', '0', '海晏县', '海晏县', '', '', '', '632223', '812200', '0970', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632224', '632200', '156-630000-632200-632224-', '0', '刚察县', '刚察县', '', '', '', '632224', '812300', '0970', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632300', '630000', '156-630000-632300-', '0', '黄南州', '黄南藏族自治州', '', '', '', '632300', '811300', '0973', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632321', '632300', '156-630000-632300-632321-', '0', '同仁县', '同仁县', '', '', '', '632321', '811300', '0973', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632322', '632300', '156-630000-632300-632322-', '0', '尖扎县', '尖扎县', '', '', '', '632322', '811200', '0973', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632323', '632300', '156-630000-632300-632323-', '0', '泽库县', '泽库县', '', '', '', '632323', '811400', '0973', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632324', '632300', '156-630000-632300-632324-', '0', '河南蒙古族自治县', '河南蒙古族自治县', '', '', '', '632324', '811500', '0973', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632500', '630000', '156-630000-632500-', '0', '海南州', '海南藏族自治州', '', '', '', '632500', '813000', '0974', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632521', '632500', '156-630000-632500-632521-', '0', '共和县', '共和县', '', '', '', '632521', '813000', '0974', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632522', '632500', '156-630000-632500-632522-', '0', '同德县', '同德县', '', '', '', '632522', '813200', '0974', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632523', '632500', '156-630000-632500-632523-', '0', '贵德县', '贵德县', '', '', '', '632523', '811700', '0974', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632524', '632500', '156-630000-632500-632524-', '0', '兴海县', '兴海县', '', '', '', '632524', '813300', '0974', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632525', '632500', '156-630000-632500-632525-', '0', '贵南县', '贵南县', '', '', '', '632525', '813100', '0974', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632600', '630000', '156-630000-632600-', '0', '果洛州', '果洛藏族自治州', '', '', '', '632600', '814000', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632621', '632600', '156-630000-632600-632621-', '0', '玛沁县', '玛沁县', '', '', '', '632621', '814000', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632622', '632600', '156-630000-632600-632622-', '0', '班玛县', '班玛县', '', '', '', '632622', '814300', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632623', '632600', '156-630000-632600-632623-', '0', '甘德县', '甘德县', '', '', '', '632623', '814100', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632624', '632600', '156-630000-632600-632624-', '0', '达日县', '达日县', '', '', '', '632624', '814200', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632625', '632600', '156-630000-632600-632625-', '0', '久治县', '久治县', '', '', '', '632625', '624700', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632626', '632600', '156-630000-632600-632626-', '0', '玛多县', '玛多县', '', '', '', '632626', '813500', '0975', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632700', '630000', '156-630000-632700-', '0', '玉树州', '玉树藏族自治州', '', '', '', '632700', '815000', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632721', '632700', '156-630000-632700-632721-', '0', '玉树县', '玉树县', '', '', '', '632721', '815000', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632722', '632700', '156-630000-632700-632722-', '0', '杂多县', '杂多县', '', '', '', '632722', '815300', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632723', '632700', '156-630000-632700-632723-', '0', '称多县', '称多县', '', '', '', '632723', '815100', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632724', '632700', '156-630000-632700-632724-', '0', '治多县', '治多县', '', '', '', '632724', '815400', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632725', '632700', '156-630000-632700-632725-', '0', '囊谦县', '囊谦县', '', '', '', '632725', '815200', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632726', '632700', '156-630000-632700-632726-', '0', '曲麻莱县', '曲麻莱县', '', '', '', '632726', '815500', '0976', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632800', '630000', '156-630000-632800-', '0', '海西州', '海西蒙古族藏族自治州', '', '', '', '632800', '817000', '0979', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632801', '632800', '156-630000-632800-632801-', '0', '格尔木市', '格尔木市', '', '', '', '632801', '816000', '0979', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632802', '632800', '156-630000-632800-632802-', '0', '德令哈市', '德令哈市', '', '', '', '632802', '817000', '0979', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632821', '632800', '156-630000-632800-632821-', '0', '乌兰县', '乌兰县', '', '', '', '632821', '817100', '0979', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632822', '632800', '156-630000-632800-632822-', '0', '都兰县', '都兰县', '', '', '', '632822', '816100', '0979', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('632823', '632800', '156-630000-632800-632823-', '0', '天峻县', '天峻县', '', '', '', '632823', '817200', '0979', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640000', '156', '156-640000-', '0', '宁夏', '宁夏回族自治区', 'NingXia', 'NingXia', 'NX', '640000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640100', '640000', '156-640000-640100-', '0', '银川', '银川市', '', '', '', '640100', '750000', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640101', '640100', '156-640000-640100-640101-', '0', '市辖区', '市辖区', '', '', '', '640101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640104', '640100', '156-640000-640100-640104-', '0', '兴庆区', '兴庆区', '', '', '', '640104', '750000', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640105', '640100', '156-640000-640100-640105-', '0', '西夏区', '西夏区', '', '', '', '640105', '750000', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640106', '640100', '156-640000-640100-640106-', '0', '金凤区', '金凤区', '', '', '', '640106', '750000', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640121', '640100', '156-640000-640100-640121-', '0', '永宁县', '永宁县', '', '', '', '640121', '750100', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640122', '640100', '156-640000-640100-640122-', '0', '贺兰县', '贺兰县', '', '', '', '640122', '750200', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640181', '640100', '156-640000-640100-640181-', '0', '灵武市', '灵武市', '', '', '', '640181', '751400', '0951', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640200', '640000', '156-640000-640200-', '0', '石嘴山', '石嘴山市', '', '', '', '640200', '753000', '0952', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640201', '640200', '156-640000-640200-640201-', '0', '市辖区', '市辖区', '', '', '', '640201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640202', '640200', '156-640000-640200-640202-', '0', '大武口区', '大武口区', '', '', '', '640202', '753000', '0952', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640205', '640200', '156-640000-640200-640205-', '0', '惠农区', '惠农区', '', '', '', '640205', '753600', '0952', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640221', '640200', '156-640000-640200-640221-', '0', '平罗县', '平罗县', '', '', '', '640221', '753400', '0952', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640300', '640000', '156-640000-640300-', '0', '吴忠', '吴忠市', '', '', '', '640300', '751100', '0953', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640301', '640300', '156-640000-640300-640301-', '0', '市辖区', '市辖区', '', '', '', '640301', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640302', '640300', '156-640000-640300-640302-', '0', '利通区', '利通区', '', '', '', '640302', '751100', '0953', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640303', '640300', '156-640000-640300-640303-', '0', '红寺堡区', '红寺堡区', '', '', '', '640303', '751100', '0953', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640323', '640300', '156-640000-640300-640323-', '0', '盐池县', '盐池县', '', '', '', '640323', '751500', '0953', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640324', '640300', '156-640000-640300-640324-', '0', '同心县', '同心县', '', '', '', '640324', '751300', '0953', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640381', '640300', '156-640000-640300-640381-', '0', '青铜峡市', '青铜峡市', '', '', '', '640381', '751600', '0953', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640400', '640000', '156-640000-640400-', '0', '固原', '固原市', '', '', '', '640400', '756000', '0954', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640401', '640400', '156-640000-640400-640401-', '0', '市辖区', '市辖区', '', '', '', '640401', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640402', '640400', '156-640000-640400-640402-', '0', '原州区', '原州区', '', '', '', '640402', '756000', '0954', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640422', '640400', '156-640000-640400-640422-', '0', '西吉县', '西吉县', '', '', '', '640422', '756200', '0954', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640423', '640400', '156-640000-640400-640423-', '0', '隆德县', '隆德县', '', '', '', '640423', '756300', '0954', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640424', '640400', '156-640000-640400-640424-', '0', '泾源县', '泾源县', '', '', '', '640424', '756400', '0954', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640425', '640400', '156-640000-640400-640425-', '0', '彭阳县', '彭阳县', '', '', '', '640425', '756500', '0954', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640500', '640000', '156-640000-640500-', '0', '中卫', '中卫市', '', '', '', '640500', '755000', '0955', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640501', '640500', '156-640000-640500-640501-', '0', '市辖区', '市辖区', '', '', '', '640501', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640502', '640500', '156-640000-640500-640502-', '0', '沙坡头区', '沙坡头区', '', '', '', '640502', '755000', '0955', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640521', '640500', '156-640000-640500-640521-', '0', '中宁县', '中宁县', '', '', '', '640521', '755100', '0955', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('640522', '640500', '156-640000-640500-640522-', '0', '海原县', '海原县', '', '', '', '640522', '755200', '0955', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650000', '156', '156-650000-', '0', '新疆', '新疆维吾尔自治区', 'XinJiang', 'XinJiang', 'XJ', '650000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650100', '650000', '156-650000-650100-', '0', '乌鲁木齐', '乌鲁木齐市', '', '', '', '650100', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650101', '650100', '156-650000-650100-650101-', '0', '市辖区', '市辖区', '', '', '', '650101', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650102', '650100', '156-650000-650100-650102-', '0', '天山区', '天山区', '', '', '', '650102', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650103', '650100', '156-650000-650100-650103-', '0', '沙依巴克区', '沙依巴克区', '', '', '', '650103', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650104', '650100', '156-650000-650100-650104-', '0', '新市区', '新市区', '', '', '', '650104', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650105', '650100', '156-650000-650100-650105-', '0', '水磨沟区', '水磨沟区', '', '', '', '650105', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650106', '650100', '156-650000-650100-650106-', '0', '头屯河区', '头屯河区', '', '', '', '650106', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650107', '650100', '156-650000-650100-650107-', '0', '达坂城区', '达坂城区', '', '', '', '650107', '830039', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650109', '650100', '156-650000-650100-650109-', '0', '米东区', '米东区', '', '', '', '650109', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650121', '650100', '156-650000-650100-650121-', '0', '乌鲁木齐县', '乌鲁木齐县', '', '', '', '650121', '830000', '0991', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650200', '650000', '156-650000-650200-', '0', '克拉玛依', '克拉玛依市', '', '', '', '650200', '834000', '0990', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650201', '650200', '156-650000-650200-650201-', '0', '市辖区', '市辖区', '', '', '', '650201', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650202', '650200', '156-650000-650200-650202-', '0', '独山子区', '独山子区', '', '', '', '650202', '833600', '0992', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650203', '650200', '156-650000-650200-650203-', '0', '克拉玛依区', '克拉玛依区', '', '', '', '650203', '834000', '0990', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650204', '650200', '156-650000-650200-650204-', '0', '白碱滩区', '白碱滩区', '', '', '', '650204', '834000', '0990', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('650205', '650200', '156-650000-650200-650205-', '0', '乌尔禾区', '乌尔禾区', '', '', '', '650205', '834000', '0990', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652100', '650000', '156-650000-652100-', '0', '吐鲁番', '吐鲁番地区', '', '', '', '652100', '838000', '0995', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652101', '652100', '156-650000-652100-652101-', '0', '吐鲁番市', '吐鲁番市', '', '', '', '652101', '838000', '0995', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652122', '652100', '156-650000-652100-652122-', '0', '鄯善县', '鄯善县', '', '', '', '652122', '838200', '0995', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652123', '652100', '156-650000-652100-652123-', '0', '托克逊县', '托克逊县', '', '', '', '652123', '838100', '0995', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652200', '650000', '156-650000-652200-', '0', '哈密', '哈密地区', '', '', '', '652200', '839000', '0902', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652201', '652200', '156-650000-652200-652201-', '0', '哈密市', '哈密市', '', '', '', '652201', '839000', '0902', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652222', '652200', '156-650000-652200-652222-', '0', '巴里坤哈萨克自治县', '巴里坤哈萨克自治县', '', '', '', '652222', '839200', '0902', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652223', '652200', '156-650000-652200-652223-', '0', '伊吾县', '伊吾县', '', '', '', '652223', '839300', '0902', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652300', '650000', '156-650000-652300-', '0', '昌吉', '昌吉回族自治州', '', '', '', '652300', '831100', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652301', '652300', '156-650000-652300-652301-', '0', '昌吉市', '昌吉市', '', '', '', '652301', '831100', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652302', '652300', '156-650000-652300-652302-', '0', '阜康市', '阜康市', '', '', '', '652302', '831500', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652323', '652300', '156-650000-652300-652323-', '0', '呼图壁县', '呼图壁县', '', '', '', '652323', '831200', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652324', '652300', '156-650000-652300-652324-', '0', '玛纳斯县', '玛纳斯县', '', '', '', '652324', '832200', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652325', '652300', '156-650000-652300-652325-', '0', '奇台县', '奇台县', '', '', '', '652325', '831800', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652327', '652300', '156-650000-652300-652327-', '0', '吉木萨尔县', '吉木萨尔县', '', '', '', '652327', '831700', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652328', '652300', '156-650000-652300-652328-', '0', '木垒哈萨克自治县', '木垒哈萨克自治县', '', '', '', '652328', '831900', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652700', '650000', '156-650000-652700-', '0', '博尔塔拉', '博尔塔拉蒙古自治州', '', '', '', '652700', '833400', '0909', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652701', '652700', '156-650000-652700-652701-', '0', '博乐市', '博乐市', '', '', '', '652701', '833400', '0909', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652722', '652700', '156-650000-652700-652722-', '0', '精河县', '精河县', '', '', '', '652722', '833300', '0909', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652723', '652700', '156-650000-652700-652723-', '0', '温泉县', '温泉县', '', '', '', '652723', '833500', '0909', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652800', '650000', '156-650000-652800-', '0', '巴音郭楞', '巴音郭楞蒙古自治州', '', '', '', '652800', '841000', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652801', '652800', '156-650000-652800-652801-', '0', '库尔勒市', '库尔勒市', '', '', '', '652801', '841000', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652822', '652800', '156-650000-652800-652822-', '0', '轮台县', '轮台县', '', '', '', '652822', '841600', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652823', '652800', '156-650000-652800-652823-', '0', '尉犁县', '尉犁县', '', '', '', '652823', '841500', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652824', '652800', '156-650000-652800-652824-', '0', '若羌县', '若羌县', '', '', '', '652824', '841800', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652825', '652800', '156-650000-652800-652825-', '0', '且末县', '且末县', '', '', '', '652825', '841900', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652826', '652800', '156-650000-652800-652826-', '0', '焉耆回族自治县', '焉耆回族自治县', '', '', '', '652826', '841100', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652827', '652800', '156-650000-652800-652827-', '0', '和静县', '和静县', '', '', '', '652827', '841300', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652828', '652800', '156-650000-652800-652828-', '0', '和硕县', '和硕县', '', '', '', '652828', '841200', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652829', '652800', '156-650000-652800-652829-', '0', '博湖县', '博湖县', '', '', '', '652829', '841400', '0996', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652900', '650000', '156-650000-652900-', '0', '阿克苏', '阿克苏地区', '', '', '', '652900', '843000', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652901', '652900', '156-650000-652900-652901-', '0', '阿克苏市', '阿克苏市', '', '', '', '652901', '843000', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652922', '652900', '156-650000-652900-652922-', '0', '温宿县', '温宿县', '', '', '', '652922', '843100', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652923', '652900', '156-650000-652900-652923-', '0', '库车县', '库车县', '', '', '', '652923', '842000', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652924', '652900', '156-650000-652900-652924-', '0', '沙雅县', '沙雅县', '', '', '', '652924', '842200', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652925', '652900', '156-650000-652900-652925-', '0', '新和县', '新和县', '', '', '', '652925', '842100', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652926', '652900', '156-650000-652900-652926-', '0', '拜城县', '拜城县', '', '', '', '652926', '842300', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652927', '652900', '156-650000-652900-652927-', '0', '乌什县', '乌什县', '', '', '', '652927', '843400', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652928', '652900', '156-650000-652900-652928-', '0', '阿瓦提县', '阿瓦提县', '', '', '', '652928', '843200', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('652929', '652900', '156-650000-652900-652929-', '0', '柯坪县', '柯坪县', '', '', '', '652929', '843600', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653000', '650000', '156-650000-653000-', '0', '克孜勒苏', '克孜勒苏柯尔克孜自治州', '', '', '', '653000', '845350', '0908', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653001', '653000', '156-650000-653000-653001-', '0', '阿图什市', '阿图什市', '', '', '', '653001', '845350', '0908', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653022', '653000', '156-650000-653000-653022-', '0', '阿克陶县', '阿克陶县', '', '', '', '653022', '845550', '0908', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653023', '653000', '156-650000-653000-653023-', '0', '阿合奇县', '阿合奇县', '', '', '', '653023', '843500', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653024', '653000', '156-650000-653000-653024-', '0', '乌恰县', '乌恰县', '', '', '', '653024', '845450', '0908', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653100', '650000', '156-650000-653100-', '0', '喀什', '喀什地区', '', '', '', '653100', '844000', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653101', '653100', '156-650000-653100-653101-', '0', '喀什市', '喀什市', '', '', '', '653101', '844000', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653121', '653100', '156-650000-653100-653121-', '0', '疏附县', '疏附县', '', '', '', '653121', '844100', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653122', '653100', '156-650000-653100-653122-', '0', '疏勒县', '疏勒县', '', '', '', '653122', '844200', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653123', '653100', '156-650000-653100-653123-', '0', '英吉沙县', '英吉沙县', '', '', '', '653123', '844500', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653124', '653100', '156-650000-653100-653124-', '0', '泽普县', '泽普县', '', '', '', '653124', '844800', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653125', '653100', '156-650000-653100-653125-', '0', '莎车县', '莎车县', '', '', '', '653125', '844700', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653126', '653100', '156-650000-653100-653126-', '0', '叶城县', '叶城县', '', '', '', '653126', '844900', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653127', '653100', '156-650000-653100-653127-', '0', '麦盖提县', '麦盖提县', '', '', '', '653127', '844600', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653128', '653100', '156-650000-653100-653128-', '0', '岳普湖县', '岳普湖县', '', '', '', '653128', '844400', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653129', '653100', '156-650000-653100-653129-', '0', '伽师县', '伽师县', '', '', '', '653129', '844300', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653130', '653100', '156-650000-653100-653130-', '0', '巴楚县', '巴楚县', '', '', '', '653130', '843800', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653131', '653100', '156-650000-653100-653131-', '0', '塔什库尔干塔吉克自治县', '塔什库尔干塔吉克自治县', '', '', '', '653131', '845250', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653200', '650000', '156-650000-653200-', '0', '和田', '和田地区', '', '', '', '653200', '848000', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653201', '653200', '156-650000-653200-653201-', '0', '和田市', '和田市', '', '', '', '653201', '848000', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653221', '653200', '156-650000-653200-653221-', '0', '和田县', '和田县', '', '', '', '653221', '848000', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653222', '653200', '156-650000-653200-653222-', '0', '墨玉县', '墨玉县', '', '', '', '653222', '848100', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653223', '653200', '156-650000-653200-653223-', '0', '皮山县', '皮山县', '', '', '', '653223', '845150', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653224', '653200', '156-650000-653200-653224-', '0', '洛浦县', '洛浦县', '', '', '', '653224', '848200', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653225', '653200', '156-650000-653200-653225-', '0', '策勒县', '策勒县', '', '', '', '653225', '848300', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653226', '653200', '156-650000-653200-653226-', '0', '于田县', '于田县', '', '', '', '653226', '848400', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('653227', '653200', '156-650000-653200-653227-', '0', '民丰县', '民丰县', '', '', '', '653227', '848500', '0903', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654000', '650000', '156-650000-654000-', '0', '伊犁', '伊犁哈萨克自治州', '', '', '', '654000', '835000', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654002', '654000', '156-650000-654000-654002-', '0', '伊宁市', '伊宁市', '', '', '', '654002', '835000', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654003', '654000', '156-650000-654000-654003-', '0', '奎屯市', '奎屯市', '', '', '', '654003', '833200', '0992', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654021', '654000', '156-650000-654000-654021-', '0', '伊宁县', '伊宁县', '', '', '', '654021', '835100', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654022', '654000', '156-650000-654000-654022-', '0', '察布查尔锡伯自治县', '察布查尔锡伯自治县', '', '', '', '654022', '835300', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654023', '654000', '156-650000-654000-654023-', '0', '霍城县', '霍城县', '', '', '', '654023', '835200', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654024', '654000', '156-650000-654000-654024-', '0', '巩留县', '巩留县', '', '', '', '654024', '835400', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654025', '654000', '156-650000-654000-654025-', '0', '新源县', '新源县', '', '', '', '654025', '835800', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654026', '654000', '156-650000-654000-654026-', '0', '昭苏县', '昭苏县', '', '', '', '654026', '835600', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654027', '654000', '156-650000-654000-654027-', '0', '特克斯县', '特克斯县', '', '', '', '654027', '835500', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654028', '654000', '156-650000-654000-654028-', '0', '尼勒克县', '尼勒克县', '', '', '', '654028', '835700', '0999', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654200', '650000', '156-650000-654200-', '0', '塔城', '塔城地区', '', '', '', '654200', '834700', '0901', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654201', '654200', '156-650000-654200-654201-', '0', '塔城市', '塔城市', '', '', '', '654201', '834300', '0901', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654202', '654200', '156-650000-654200-654202-', '0', '乌苏市', '乌苏市', '', '', '', '654202', '833300', '0992', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654221', '654200', '156-650000-654200-654221-', '0', '额敏县', '额敏县', '', '', '', '654221', '834600', '0901', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654223', '654200', '156-650000-654200-654223-', '0', '沙湾县', '沙湾县', '', '', '', '654223', '832100', '0993', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654224', '654200', '156-650000-654200-654224-', '0', '托里县', '托里县', '', '', '', '654224', '834500', '0901', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654225', '654200', '156-650000-654200-654225-', '0', '裕民县', '裕民县', '', '', '', '654225', '834800', '0901', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654226', '654200', '156-650000-654200-654226-', '0', '和布克赛尔蒙古自治县', '和布克赛尔蒙古自治县', '', '', '', '654226', '834400', '0990', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654300', '650000', '156-650000-654300-', '0', '阿勒泰', '阿勒泰地区', '', '', '', '654300', '836500', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654301', '654300', '156-650000-654300-654301-', '0', '阿勒泰市', '阿勒泰市', '', '', '', '654301', '836500', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654321', '654300', '156-650000-654300-654321-', '0', '布尔津县', '布尔津县', '', '', '', '654321', '836600', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654322', '654300', '156-650000-654300-654322-', '0', '富蕴县', '富蕴县', '', '', '', '654322', '836100', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654323', '654300', '156-650000-654300-654323-', '0', '福海县', '福海县', '', '', '', '654323', '836400', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654324', '654300', '156-650000-654300-654324-', '0', '哈巴河县', '哈巴河县', '', '', '', '654324', '836700', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654325', '654300', '156-650000-654300-654325-', '0', '青河县', '青河县', '', '', '', '654325', '836200', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('654326', '654300', '156-650000-654300-654326-', '0', '吉木乃县', '吉木乃县', '', '', '', '654326', '836800', '0906', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('659000', '650000', '156-650000-659000-', '0', '自治区', '自治区直辖县级行政区划', '', '', '', '659000', '0', '0', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('659001', '659000', '156-650000-659000-659001-', '0', '石河子市', '石河子市', '', '', '', '659001', '832000', '0993', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('659002', '659000', '156-650000-659000-659002-', '0', '阿拉尔市', '阿拉尔市', '', '', '', '659002', '843300', '0997', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('659003', '659000', '156-650000-659000-659003-', '0', '图木舒克市', '图木舒克市', '', '', '', '659003', '844000', '0998', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('659004', '659000', '156-650000-659000-659004-', '0', '五家渠市', '五家渠市', '', '', '', '659004', '831300', '0994', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('710000', '156', '156-710000-', '0', '台湾', '台湾省', 'Taiwan', 'Taiwan', 'TW', '710000', '0', '00886', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('810000', '156', '156-810000-', '0', '香港', '香港特别行政区', 'Hong Kong', 'Hong Kong', 'HK', '810000', '999077', '00852', '', '', '1');
INSERT INTO `admin_base_area` VALUES ('820000', '156', '156-820000-', '0', '澳门', '澳门特别行政区', 'Macau', 'Macau', 'MO', '820000', '999078', '00853', '', '', '1');

-- ----------------------------
-- Table structure for `admin_base_lang`
-- ----------------------------
DROP TABLE IF EXISTS `admin_base_lang`;
CREATE TABLE `admin_base_lang` (
  `blid` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `code` varchar(30) NOT NULL DEFAULT '' COMMENT '语言编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '语言名称',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`blid`),
  KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='语言管理';

-- ----------------------------
-- Records of admin_base_lang
-- ----------------------------
INSERT INTO `admin_base_lang` VALUES ('1', 'zh-cn', '中文简体', '1', '1', '2013-01-27 13:33:08', '2013-01-27 13:35:32');
INSERT INTO `admin_base_lang` VALUES ('2', 'en-us', '英文', '2', '1', '2013-01-27 13:35:42', '2013-01-27 13:35:42');
INSERT INTO `admin_base_lang` VALUES ('3', 'zh-tw', '中文繁体', '0', '0', '2013-01-27 13:35:57', '2013-01-27 13:35:57');

-- ----------------------------
-- Table structure for `admin_base_lang_translate`
-- ----------------------------
DROP TABLE IF EXISTS `admin_base_lang_translate`;
CREATE TABLE `admin_base_lang_translate` (
  `blfid` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `code` varchar(30) NOT NULL DEFAULT '' COMMENT '语言编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '语言名称',
  `type` tinyint(1) DEFAULT '0' COMMENT '语言类型：0为字符串，1为json数组',
  `zh-cn` varchar(500) DEFAULT '' COMMENT '中文简体',
  `en-us` varchar(500) DEFAULT '' COMMENT '英文',
  `zh-tw` varchar(500) DEFAULT '' COMMENT '中文繁体',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`blfid`),
  KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8 COMMENT='语言字段管理';

-- ----------------------------
-- Records of admin_base_lang_translate
-- ----------------------------
INSERT INTO `admin_base_lang_translate` VALUES ('1', 'SiteMap_index', '网站地图', '0', '网站地图', 'Site Map', '', '0', '1', '2013-04-23 21:08:11', '2013-12-03 21:20:19');
INSERT INTO `admin_base_lang_translate` VALUES ('2', 'WorkYear', '工作年限', '1', '[&quot;不限&quot;,&quot;在读学生&quot;,&quot;应届毕业生&quot;,&quot;一年以上&quot;,&quot;二年以上&quot;,&quot;三年以上&quot;,&quot;五年以上&quot;,&quot;八年以上&quot;,&quot;十年以上&quot;]', '', '', '0', '1', '2013-04-23 21:12:57', '2013-04-24 11:04:14');
INSERT INTO `admin_base_lang_translate` VALUES ('3', 'PeovideSalary', '月薪范围', '1', '[&quot;面议&quot;,&quot;1500以下&quot;,&quot;1500-2999&quot;,&quot;3000-4499&quot;,&quot;4500-5999&quot;,&quot;6000-7999&quot;,&quot;8000-9999&quot;,&quot;10000-14999&quot;,&quot;15000-19999&quot;,&quot;20000-29999&quot;,&quot;30000-49999&quot;,&quot;50000及以上&quot;]', '', '', '0', '1', '2013-04-23 21:14:55', '2013-04-24 15:30:51');
INSERT INTO `admin_base_lang_translate` VALUES ('4', 'DegreeFrom', '学历要求', '1', '[&quot;不限&quot;,&quot;初中&quot;,&quot;高中&quot;,&quot;中专&quot;,&quot;大专&quot;,&quot;本科&quot;,&quot;硕士&quot;,&quot;博士&quot;]', '', '', '0', '1', '2013-04-23 21:16:06', '2013-04-24 11:04:25');
INSERT INTO `admin_base_lang_translate` VALUES ('5', 'CycleType', '循环类型', '1', '[&quot;请选择&quot;,&quot;每分钟&quot;,&quot;每小时&quot;,&quot;每天&quot;,&quot;每周&quot;,&quot;每月&quot;,&quot;每年&quot;]', '', '', '0', '1', '2013-05-09 10:37:54', '2013-05-09 10:37:54');
INSERT INTO `admin_base_lang_translate` VALUES ('6', 'Base_index', '首页', '0', '首页', 'Home', '', '0', '1', '2013-12-03 21:22:00', '2013-12-03 21:22:00');

-- ----------------------------
-- Table structure for `admin_site_access`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_access`;
CREATE TABLE `admin_site_access` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `rid` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID，关联admin_site_role表rid字段',
  `nid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联admin_site_node表nid字段',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`) USING BTREE,
  KEY `nid` (`nid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=182 DEFAULT CHARSET=utf8 COMMENT='访问权限管理';

-- ----------------------------
-- Records of admin_site_access
-- ----------------------------
INSERT INTO `admin_site_access` VALUES ('1', '1', '1', '4', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('2', '1', '1', '32', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('3', '1', '1', '5', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('4', '1', '1', '47', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('5', '1', '1', '6', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('6', '1', '1', '48', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('7', '1', '1', '7', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('8', '1', '1', '14', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('9', '1', '1', '13', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('10', '1', '1', '12', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('11', '1', '1', '9', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('12', '1', '1', '8', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('13', '1', '1', '30', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('14', '1', '1', '31', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('15', '1', '1', '33', '1', '2013-03-08 15:28:45', '2013-03-08 15:28:45');
INSERT INTO `admin_site_access` VALUES ('17', '1', '1', '56', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('18', '1', '1', '85', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('19', '1', '1', '86', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('20', '1', '1', '87', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('21', '1', '1', '88', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('22', '1', '1', '89', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('23', '1', '1', '90', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('24', '1', '1', '91', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('25', '1', '1', '92', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('26', '1', '1', '93', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('27', '1', '1', '94', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('28', '1', '1', '95', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('29', '1', '1', '96', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('30', '1', '1', '97', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('31', '1', '1', '83', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('32', '1', '1', '84', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('48', '1', '1', '59', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('49', '1', '1', '111', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('50', '1', '1', '112', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('51', '1', '1', '113', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('52', '1', '1', '114', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('53', '1', '1', '115', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('54', '1', '1', '116', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('55', '1', '1', '117', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('56', '1', '1', '118', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('57', '1', '1', '119', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('58', '1', '1', '120', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('59', '1', '1', '121', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('60', '1', '1', '122', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('61', '1', '1', '60', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('62', '1', '1', '134', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('63', '1', '1', '133', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('64', '1', '1', '132', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('65', '1', '1', '131', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('66', '1', '1', '130', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('67', '1', '1', '129', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('68', '1', '1', '128', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('69', '1', '1', '127', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('70', '1', '1', '126', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('71', '1', '1', '125', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('72', '1', '1', '124', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('73', '1', '1', '123', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('74', '1', '1', '17', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('75', '1', '1', '15', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('76', '1', '1', '146', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('77', '1', '1', '145', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('78', '1', '1', '144', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('79', '1', '1', '143', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('80', '1', '1', '142', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('81', '1', '1', '141', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('82', '1', '1', '140', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('83', '1', '1', '139', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('84', '1', '1', '138', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('85', '1', '1', '137', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('86', '1', '1', '136', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('87', '1', '1', '135', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('88', '1', '1', '18', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('89', '1', '1', '19', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('90', '1', '1', '158', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('91', '1', '1', '157', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('92', '1', '1', '156', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('93', '1', '1', '155', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('94', '1', '1', '154', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('95', '1', '1', '153', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('96', '1', '1', '152', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('97', '1', '1', '151', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('98', '1', '1', '150', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('99', '1', '1', '149', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('100', '1', '1', '148', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('101', '1', '1', '147', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('102', '1', '1', '20', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('103', '1', '1', '170', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('104', '1', '1', '169', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('105', '1', '1', '168', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('106', '1', '1', '167', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('107', '1', '1', '166', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('108', '1', '1', '165', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('109', '1', '1', '164', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('110', '1', '1', '163', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('111', '1', '1', '162', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('112', '1', '1', '161', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('113', '1', '1', '160', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('114', '1', '1', '159', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('115', '1', '1', '73', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('116', '1', '1', '74', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('117', '1', '1', '180', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('118', '1', '1', '179', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('119', '1', '1', '178', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('120', '1', '1', '177', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('121', '1', '1', '176', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('122', '1', '1', '175', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('123', '1', '1', '174', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('124', '1', '1', '173', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('125', '1', '1', '172', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('126', '1', '1', '171', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('127', '1', '1', '69', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('142', '1', '1', '51', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('143', '1', '1', '205', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('144', '1', '1', '204', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('145', '1', '1', '203', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('146', '1', '1', '202', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('147', '1', '1', '201', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('148', '1', '1', '200', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('149', '1', '1', '199', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('150', '1', '1', '198', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('151', '1', '1', '197', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('152', '1', '1', '196', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('153', '1', '1', '195', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('154', '1', '1', '194', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('155', '1', '1', '63', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('156', '1', '1', '237', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('157', '1', '1', '236', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('158', '1', '1', '235', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('159', '1', '1', '234', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('160', '1', '1', '233', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('161', '1', '1', '232', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('162', '1', '1', '231', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('163', '1', '1', '230', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('164', '1', '1', '229', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('165', '1', '1', '228', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('166', '1', '1', '67', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('167', '1', '1', '269', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('168', '1', '1', '268', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('169', '1', '1', '267', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('170', '1', '1', '266', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('171', '1', '1', '265', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('172', '1', '1', '264', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('173', '1', '1', '263', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('174', '1', '1', '262', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('175', '1', '1', '261', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('176', '1', '1', '260', '1', '2014-03-12 16:12:41', '2014-03-12 16:12:41');
INSERT INTO `admin_site_access` VALUES ('177', '1', '1', '328', '1', '2014-03-12 19:00:35', '2014-03-12 19:00:35');
INSERT INTO `admin_site_access` VALUES ('178', '1', '1', '330', '1', '2014-03-12 19:00:35', '2014-03-12 19:00:35');
INSERT INTO `admin_site_access` VALUES ('179', '1', '1', '331', '1', '2014-03-12 19:39:57', '2014-03-12 19:39:57');
INSERT INTO `admin_site_access` VALUES ('180', '1', '1', '332', '1', '2014-03-12 19:39:57', '2014-03-12 19:39:57');
INSERT INTO `admin_site_access` VALUES ('181', '1', '1', '62', '1', '2014-03-18 00:57:29', '2014-03-18 00:57:29');

-- ----------------------------
-- Table structure for `admin_site_config`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_config`;
CREATE TABLE `admin_site_config` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sids` varchar(255) NOT NULL DEFAULT '1,2,3,4' COMMENT '网站ID，关联admin_site_web表sid字段',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '名称',
  `key` varchar(20) NOT NULL DEFAULT '' COMMENT '键名',
  `value` varchar(200) DEFAULT '' COMMENT '键值',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `sid` (`sids`) USING BTREE,
  KEY `key` (`key`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8 COMMENT='配置管理';

-- ----------------------------
-- Records of admin_site_config
-- ----------------------------
INSERT INTO `admin_site_config` VALUES ('1', '', '后台记录用户登录', 'adminIsRecordUserLog', '', '1', '2013-02-02 21:00:26', '2013-05-02 14:18:21');
INSERT INTO `admin_site_config` VALUES ('2', '1,2', '启用博文', 'isEnableBlog', '', '1', '2013-03-09 21:36:23', '2013-05-02 10:42:20');
INSERT INTO `admin_site_config` VALUES ('3', '1,2', '启用广告js', 'isEnableAdJs', '', '1', '2013-03-17 19:08:05', '2013-05-02 14:10:52');
INSERT INTO `admin_site_config` VALUES ('4', '', '启用小说', 'isEnableNovel', '', '1', '2013-03-21 14:09:28', '2013-05-02 10:46:59');
INSERT INTO `admin_site_config` VALUES ('5', '1,2', '启用商品', 'isEnableProduct', '', '1', '2013-05-02 15:57:39', '2013-05-02 16:00:58');
INSERT INTO `admin_site_config` VALUES ('6', '', '启用地区国家选择', 'isEnableAreaCountry', '', '1', '2013-05-23 10:42:17', '2013-05-23 13:41:42');
INSERT INTO `admin_site_config` VALUES ('7', '1', '启用多应用设备', 'isEnableAppDevice', '', '1', '2013-11-01 10:47:34', '2013-11-01 10:47:34');
INSERT INTO `admin_site_config` VALUES ('8', '1', '启用博文菜单', 'isEnableBlogMenu', '', '1', '2013-12-02 16:34:17', '2013-12-02 16:34:17');
INSERT INTO `admin_site_config` VALUES ('9', '', '启用小说菜单', 'isEnableNovelMenu', '', '1', '2013-12-03 16:16:41', '2013-12-03 16:16:41');
INSERT INTO `admin_site_config` VALUES ('10', '1,7', '启用商品菜单', 'isEnableProductMenu', '', '1', '2013-12-03 16:17:28', '2014-03-13 00:15:03');
INSERT INTO `admin_site_config` VALUES ('11', '1,2,6,7', '不启用用户表sid', 'isNotEnableUserSid', '', '1', '2013-12-03 20:37:58', '2014-03-11 09:48:16');

-- ----------------------------
-- Table structure for `admin_site_cron`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_cron`;
CREATE TABLE `admin_site_cron` (
  `scid` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `name` varchar(60) NOT NULL DEFAULT '' COMMENT '名称',
  `key` varchar(60) NOT NULL DEFAULT '' COMMENT '键名',
  `value` text COMMENT '键值',
  `cycle_type` tinyint(5) DEFAULT '1' COMMENT '循环类型：1为每分钟，2为每小时，3为每天，4为每周，5为每月，6为每年',
  `cycle` tinyint(5) DEFAULT '0' COMMENT '循环周期',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`scid`),
  KEY `sid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='计划任务管理';

-- ----------------------------
-- Records of admin_site_cron
-- ----------------------------
INSERT INTO `admin_site_cron` VALUES ('1', '1', '地区行政代码采集', 'Collect/Area/administrative', '', '1', '1', '0', '1', '2013-05-09 10:46:49', '2013-11-12 18:28:04');

-- ----------------------------
-- Table structure for `admin_site_database`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_database`;
CREATE TABLE `admin_site_database` (
  `sdid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `parent_id` int(6) NOT NULL DEFAULT '0' COMMENT '字段父级ID',
  `sids` varchar(255) NOT NULL DEFAULT '1,2,3,4' COMMENT '网站ID，关联admin_site_web表sid字段',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '字段编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '字段名称',
  `crumb` varchar(100) NOT NULL DEFAULT '' COMMENT '面包屑，用横杠分割',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`sdid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='数据库字段管理';

-- ----------------------------
-- Records of admin_site_database
-- ----------------------------
INSERT INTO `admin_site_database` VALUES ('1', '0', '1,2,3,4', 'site_web', '站点管理', '1-', '0', '1', '2013-04-23 10:19:24', '2013-04-23 15:02:11');
INSERT INTO `admin_site_database` VALUES ('2', '1', '1,2', 'record_no', '网站备案号', '1-2-', '0', '1', '2013-04-23 10:57:31', '2013-10-29 21:37:09');

-- ----------------------------
-- Table structure for `admin_site_node`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_node`;
CREATE TABLE `admin_site_node` (
  `nid` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `parent_id` int(6) NOT NULL DEFAULT '0' COMMENT '节点父级ID',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '节点编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '节点名称',
  `crumb` varchar(100) NOT NULL DEFAULT '' COMMENT '面包屑，用横杠分割',
  `type` tinyint(1) DEFAULT '1' COMMENT '节点类型：1为引导栏目(不能发布内容,只作显示)，2为列表制',
  `menu_show` tinyint(1) DEFAULT '1' COMMENT '导航中是否显示: 0为不显示，1为显示',
  `table_name` varchar(30) DEFAULT '' COMMENT '数据库名_表名',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`nid`),
  KEY `parent_id` (`parent_id`) USING BTREE,
  KEY `code` (`code`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=334 DEFAULT CHARSET=utf8 COMMENT='节点管理';

-- ----------------------------
-- Records of admin_site_node
-- ----------------------------
INSERT INTO `admin_site_node` VALUES ('1', '0', 'Admin', '配置管理', '1-', '1', '1', '', '6', '1', '2012-12-20 21:02:04', '2014-01-17 00:16:07');
INSERT INTO `admin_site_node` VALUES ('2', '34', 'Content', '内容管理', '34-2-', '1', '1', '', '1', '1', '2012-12-20 21:02:04', '2013-04-28 22:24:48');
INSERT INTO `admin_site_node` VALUES ('3', '23', 'SiteNode', '节点管理', '1-16-23-3-', '2', '1', '', '1', '1', '2012-12-20 21:02:04', '2013-03-27 13:58:58');
INSERT INTO `admin_site_node` VALUES ('4', '2', 'Web', '站点管理', '34-2-4-', '1', '1', '', '1', '1', '2012-12-20 21:02:04', '2013-03-27 13:53:04');
INSERT INTO `admin_site_node` VALUES ('5', '32', 'index', '列表', '34-2-4-32-5-', '1', '0', '', '1', '1', '2012-12-20 21:02:04', '2013-03-27 13:56:44');
INSERT INTO `admin_site_node` VALUES ('6', '32', 'insert', '添加', '34-2-4-32-6-', '1', '0', '', '3', '1', '2012-12-20 21:02:04', '2014-03-11 21:00:42');
INSERT INTO `admin_site_node` VALUES ('7', '32', 'update', '更新', '34-2-4-32-7-', '1', '0', '', '5', '1', '2012-12-20 21:02:04', '2012-12-20 21:02:04');
INSERT INTO `admin_site_node` VALUES ('8', '32', 'delete', '删除', '34-2-4-32-8-', '1', '0', '', '10', '1', '2012-12-20 21:02:04', '2013-03-04 17:29:34');
INSERT INTO `admin_site_node` VALUES ('9', '32', 'recycle', '还原', '34-2-4-32-9-', '1', '0', '', '9', '1', '2012-12-29 17:25:52', '2013-03-04 17:28:15');
INSERT INTO `admin_site_node` VALUES ('10', '44', 'SiteWeb', '站点管理', '1-16-44-10-', '2', '1', '', '1', '1', '2012-12-30 21:02:51', '2013-03-27 13:58:05');
INSERT INTO `admin_site_node` VALUES ('11', '10', 'index', '列表', '1-16-44-10-11-', '1', '0', '', '0', '1', '2013-01-01 21:08:51', '2013-03-27 13:58:13');
INSERT INTO `admin_site_node` VALUES ('12', '32', 'forbid', '禁止', '34-2-4-32-12-', '1', '0', '', '8', '1', '2013-01-02 12:52:20', '2013-03-04 17:29:47');
INSERT INTO `admin_site_node` VALUES ('13', '32', 'checkPass', '批准', '34-2-4-32-13-', '1', '0', '', '7', '1', '2013-01-02 12:52:52', '2013-03-04 17:29:18');
INSERT INTO `admin_site_node` VALUES ('14', '32', 'resume', '恢复', '34-2-4-32-14-', '1', '0', '', '6', '1', '2013-01-02 13:02:19', '2013-03-04 16:55:45');
INSERT INTO `admin_site_node` VALUES ('15', '17', 'ArticleInfo', '文章管理', '34-2-17-15-', '2', '1', '', '1', '1', '2013-01-03 22:02:04', '2013-03-27 14:08:56');
INSERT INTO `admin_site_node` VALUES ('16', '1', 'Site', '设置管理', '1-16-', '1', '1', '', '1', '1', '2013-01-21 16:50:50', '2013-03-27 13:57:12');
INSERT INTO `admin_site_node` VALUES ('17', '2', 'Article', '文章管理', '34-2-17-', '1', '1', '', '3', '1', '2013-01-21 16:53:09', '2013-03-27 14:08:49');
INSERT INTO `admin_site_node` VALUES ('18', '2', 'Picture', '图片管理', '34-2-18-', '1', '1', '', '4', '1', '2013-01-23 21:37:46', '2013-03-27 14:09:03');
INSERT INTO `admin_site_node` VALUES ('19', '18', 'ArticleAlbum', '相册管理', '34-2-18-19-', '2', '1', '', '1', '1', '2013-01-23 21:39:45', '2013-03-27 14:09:10');
INSERT INTO `admin_site_node` VALUES ('20', '18', 'ArticleAlbumPhoto', '相片管理', '34-2-18-20-', '2', '1', '', '2', '1', '2013-01-23 21:40:33', '2013-03-27 14:09:17');
INSERT INTO `admin_site_node` VALUES ('21', '16', 'Base', '数据管理', '1-16-21-', '1', '1', '', '4', '1', '2013-01-27 13:17:31', '2013-03-27 13:58:48');
INSERT INTO `admin_site_node` VALUES ('22', '21', 'BaseLang', '语言管理', '1-16-21-22-', '2', '1', '', '1', '1', '2013-01-27 13:24:12', '2013-03-27 13:58:53');
INSERT INTO `admin_site_node` VALUES ('23', '16', 'Competence', '权限管理', '1-16-23-', '1', '1', '', '2', '1', '2013-01-29 16:46:00', '2013-03-27 13:58:42');
INSERT INTO `admin_site_node` VALUES ('24', '23', 'SiteRole', '角色管理', '1-16-23-24-', '2', '1', '', '2', '1', '2013-01-29 16:47:36', '2013-03-27 13:59:04');
INSERT INTO `admin_site_node` VALUES ('25', '23', 'SiteRoleUser', '角色用户管理', '1-16-23-25-', '2', '0', '', '3', '1', '2013-01-29 16:51:59', '2013-03-27 13:59:10');
INSERT INTO `admin_site_node` VALUES ('26', '23', 'SiteAccess', '访问管理', '1-16-23-26-', '2', '0', '', '4', '1', '2013-01-29 16:55:56', '2013-03-27 13:59:17');
INSERT INTO `admin_site_node` VALUES ('27', '44', 'SiteConfig', '配置管理', '1-16-44-27-', '2', '1', '', '2', '1', '2013-01-30 21:21:28', '2013-03-27 13:57:58');
INSERT INTO `admin_site_node` VALUES ('28', '0', 'UserAdmin', '用户管理', '28-', '1', '1', '', '4', '1', '2013-02-04 17:00:51', '2014-01-07 21:10:55');
INSERT INTO `admin_site_node` VALUES ('29', '45', 'UserBase', '基础管理', '28-65-45-29-', '2', '1', '', '1', '1', '2013-02-04 17:05:09', '2013-03-27 14:03:02');
INSERT INTO `admin_site_node` VALUES ('30', '69', 'Index', '后台管理', '34-2-69-30-', '1', '1', '', '1', '1', '2013-02-04 17:05:09', '2013-03-27 15:01:54');
INSERT INTO `admin_site_node` VALUES ('31', '30', 'Index', '列表', '34-2-69-30-31-', '1', '0', '', '1', '1', '2013-02-04 17:05:09', '2013-03-27 15:02:08');
INSERT INTO `admin_site_node` VALUES ('32', '4', 'SiteMenu', '菜单管理', '34-2-4-32-', '2', '1', '', '2', '1', '2013-02-22 15:48:06', '2013-03-27 13:53:58');
INSERT INTO `admin_site_node` VALUES ('33', '30', 'leftMenu', '左侧导航', '34-2-69-30-33-', '1', '0', '', '2', '1', '2013-03-02 19:07:22', '2013-03-27 15:02:17');
INSERT INTO `admin_site_node` VALUES ('34', '0', 'BaseAdmin', '基础管理', '34-', '1', '1', '', '1', '1', '2013-03-02 19:18:14', '2014-01-07 21:26:03');
INSERT INTO `admin_site_node` VALUES ('35', '0', 'BlogAdmin', '博文管理', '35-', '1', '1', '', '3', '1', '2013-03-02 19:21:26', '2014-01-07 20:55:58');
INSERT INTO `admin_site_node` VALUES ('36', '35', 'BlogContent', '内容管理', '35-36-', '1', '1', '', '1', '1', '2013-03-02 19:25:23', '2013-03-27 14:03:18');
INSERT INTO `admin_site_node` VALUES ('37', '36', 'BlogPicture', '图片管理', '35-36-37-', '1', '1', '', '2', '1', '2013-03-02 19:29:59', '2013-03-27 14:03:41');
INSERT INTO `admin_site_node` VALUES ('38', '37', 'BlogAlbum', '相册管理', '35-36-37-38-', '2', '1', '', '1', '1', '2013-03-02 19:33:03', '2013-03-27 14:03:47');
INSERT INTO `admin_site_node` VALUES ('39', '37', 'BlogAlbumPhoto', '相片管理', '35-36-37-39-', '2', '1', '', '2', '1', '2013-03-02 19:35:40', '2013-03-27 14:03:53');
INSERT INTO `admin_site_node` VALUES ('40', '36', 'Blog', '博文管理', '35-36-40-', '1', '1', '', '1', '1', '2013-03-02 19:39:20', '2013-03-27 14:03:23');
INSERT INTO `admin_site_node` VALUES ('41', '40', 'BlogInfo', '博文管理', '35-36-40-41-', '2', '1', '', '1', '1', '2013-03-02 19:40:14', '2013-03-27 14:03:28');
INSERT INTO `admin_site_node` VALUES ('42', '46', 'ProductContent', '内容管理', '46-42-', '2', '1', '', '1', '1', '2013-03-02 19:41:58', '2013-03-27 14:04:22');
INSERT INTO `admin_site_node` VALUES ('43', '40', 'BlogTag', '标签管理', '35-36-40-43-', '2', '1', '', '2', '1', '2013-03-02 19:43:06', '2013-03-27 14:03:35');
INSERT INTO `admin_site_node` VALUES ('44', '16', 'SiteBase', '基础管理', '1-16-44-', '1', '1', '', '1', '1', '2013-03-03 13:31:44', '2013-03-27 13:57:38');
INSERT INTO `admin_site_node` VALUES ('45', '65', 'User', '用户管理', '28-65-45-', '1', '1', '', '1', '1', '2013-03-03 16:12:26', '2013-03-27 14:02:41');
INSERT INTO `admin_site_node` VALUES ('46', '0', 'ProductAdmin', '产品管理', '46-', '1', '1', '', '2', '1', '2013-03-03 18:07:12', '2014-01-07 21:02:24');
INSERT INTO `admin_site_node` VALUES ('47', '32', 'add', '新增', '34-2-4-32-47-', '1', '0', '', '2', '1', '2013-03-04 16:49:02', '2013-03-27 14:09:58');
INSERT INTO `admin_site_node` VALUES ('48', '32', 'edit', '修改', '34-2-4-32-48-', '1', '0', '', '4', '1', '2013-03-04 16:49:42', '2013-03-27 14:10:36');
INSERT INTO `admin_site_node` VALUES ('49', '34', 'AdAdmin', '广告管理', '34-49-', '1', '1', '', '2', '1', '2013-03-08 21:16:01', '2014-01-08 14:55:57');
INSERT INTO `admin_site_node` VALUES ('50', '49', 'Ad', '广告管理', '34-49-50-', '1', '1', '', '1', '1', '2013-03-08 21:17:14', '2014-03-11 23:28:49');
INSERT INTO `admin_site_node` VALUES ('51', '50', 'AdInfo', '广告管理', '34-49-50-51-', '2', '1', '', '2', '1', '2013-03-08 21:19:02', '2013-03-27 14:05:26');
INSERT INTO `admin_site_node` VALUES ('52', '50', 'AdPosition', '广告位管理', '34-49-50-52-', '2', '1', '', '1', '1', '2013-03-08 21:19:49', '2013-03-27 14:05:18');
INSERT INTO `admin_site_node` VALUES ('53', '50', 'AdSchedule', '排期管理', '34-49-50-53-', '2', '1', '', '3', '1', '2013-03-08 21:20:26', '2013-03-27 14:05:33');
INSERT INTO `admin_site_node` VALUES ('54', '55', 'AdFunction', '方法管理', '34-49-55-54-', '2', '1', '', '1', '1', '2013-03-08 21:21:11', '2013-03-27 14:05:46');
INSERT INTO `admin_site_node` VALUES ('55', '49', 'AdSite', '广告配置', '34-49-55-', '1', '1', '', '2', '1', '2013-03-09 19:11:17', '2014-03-11 23:29:20');
INSERT INTO `admin_site_node` VALUES ('56', '4', 'SiteWeb', '站点管理', '34-2-4-56-', '2', '1', '', '1', '1', '2013-03-12 18:01:26', '2013-10-30 21:21:34');
INSERT INTO `admin_site_node` VALUES ('57', '2', 'Plate', '面板管理', '34-2-57-', '1', '1', '', '2', '1', '2013-03-24 14:30:17', '2013-03-27 14:07:56');
INSERT INTO `admin_site_node` VALUES ('58', '57', 'SitePlateGroup', '面板分组管理', '34-2-57-58-', '2', '1', '', '1', '1', '2013-03-24 14:32:44', '2013-03-27 14:08:13');
INSERT INTO `admin_site_node` VALUES ('59', '57', 'SitePlate', '面板管理', '34-2-57-59-', '2', '1', '', '2', '1', '2013-03-24 14:33:09', '2013-03-27 14:08:20');
INSERT INTO `admin_site_node` VALUES ('60', '57', 'SitePlateContent', '面板内容管理', '34-2-57-60-', '2', '0', '', '3', '1', '2013-03-24 14:33:34', '2014-03-11 23:02:50');
INSERT INTO `admin_site_node` VALUES ('61', '42', 'Product', '商品管理', '46-42-61-', '1', '1', '', '1', '1', '2013-03-27 13:32:47', '2013-03-27 14:04:27');
INSERT INTO `admin_site_node` VALUES ('62', '42', 'ProductPicture', '图片管理', '46-42-62-', '1', '1', '', '2', '1', '2013-03-27 13:36:25', '2013-03-27 14:04:33');
INSERT INTO `admin_site_node` VALUES ('63', '61', 'ProductGoods', '商品管理', '46-42-61-63-', '2', '1', '', '1', '1', '2013-03-27 13:37:20', '2013-03-27 14:04:45');
INSERT INTO `admin_site_node` VALUES ('64', '61', 'ProductChannel', '渠道管理', '46-42-61-64-', '2', '1', '', '2', '1', '2013-03-27 13:39:10', '2013-04-11 11:00:37');
INSERT INTO `admin_site_node` VALUES ('65', '28', 'Users', '基础管理', '28-65-', '1', '1', '', '1', '1', '2013-03-27 14:01:06', '2013-03-27 14:01:06');
INSERT INTO `admin_site_node` VALUES ('66', '21', 'BaseProductAttribute', '商品属性管理', '1-16-21-66-', '2', '1', '', '7', '1', '2013-03-27 14:24:21', '2014-03-13 00:04:27');
INSERT INTO `admin_site_node` VALUES ('67', '62', 'ProductAlbumPhoto', '相片管理', '46-42-62-67-', '2', '1', '', '1', '1', '2013-03-27 14:32:41', '2013-03-27 14:32:41');
INSERT INTO `admin_site_node` VALUES ('68', '70', 'ProductDescriptionCategory', '描述分类管理', '46-42-70-68-', '2', '1', '', '1', '1', '2013-03-27 14:52:52', '2013-03-27 15:03:34');
INSERT INTO `admin_site_node` VALUES ('69', '2', 'WebSite', '站点配置', '34-2-69-', '1', '0', '', '6', '1', '2013-03-27 14:57:36', '2013-04-22 14:42:32');
INSERT INTO `admin_site_node` VALUES ('70', '42', 'ProductSite', '商品配置', '46-42-70-', '1', '1', '', '3', '1', '2013-03-27 15:02:58', '2013-03-27 15:02:58');
INSERT INTO `admin_site_node` VALUES ('71', '61', 'ProductChannelGoods', '渠道商品管理', '46-42-61-71-', '2', '1', '', '3', '1', '2013-04-11 11:02:29', '2013-04-11 11:02:29');
INSERT INTO `admin_site_node` VALUES ('72', '21', 'BaseArea', '地区管理', '1-16-21-72-', '2', '1', '', '4', '1', '2013-04-17 21:13:15', '2013-04-17 21:13:15');
INSERT INTO `admin_site_node` VALUES ('73', '2', 'Job', '招聘管理', '34-2-73-', '1', '1', '', '5', '1', '2013-04-22 15:07:33', '2013-04-22 15:07:33');
INSERT INTO `admin_site_node` VALUES ('74', '73', 'JobInfo', '招聘管理', '34-2-73-74-', '2', '1', '', '1', '1', '2013-04-22 15:10:07', '2013-04-22 15:10:07');
INSERT INTO `admin_site_node` VALUES ('75', '16', 'Database', '字段管理', '1-16-75-', '1', '1', '', '3', '1', '2013-04-22 22:25:18', '2013-04-22 22:25:18');
INSERT INTO `admin_site_node` VALUES ('76', '75', 'SiteDatabase', '字段管理', '1-16-75-76-', '2', '1', '', '1', '1', '2013-04-22 22:26:18', '2013-04-22 22:26:18');
INSERT INTO `admin_site_node` VALUES ('77', '21', 'BaseLangTranslate', '语言翻译', '1-16-21-77-', '2', '1', '', '2', '1', '2013-04-23 17:44:28', '2014-01-08 14:40:49');
INSERT INTO `admin_site_node` VALUES ('78', '21', 'BaseBrand', '品牌管理', '1-16-21-78-', '2', '1', '', '5', '1', '2013-05-04 13:57:37', '2013-05-04 13:59:56');
INSERT INTO `admin_site_node` VALUES ('79', '44', 'SiteCron', '任务管理', '1-16-44-79-', '2', '1', '', '3', '1', '2013-05-09 09:53:08', '2013-05-09 09:53:08');
INSERT INTO `admin_site_node` VALUES ('80', '21', 'BaseProductCategory', '商品分类管理', '1-16-21-80-', '2', '1', '', '6', '1', '2013-05-22 17:04:49', '2013-05-22 17:04:49');
INSERT INTO `admin_site_node` VALUES ('81', '21', 'BaseAppDevice', '应用设备管理', '1-16-21-81-', '2', '1', '', '3', '1', '2013-10-31 20:30:28', '2013-10-31 20:30:28');
INSERT INTO `admin_site_node` VALUES ('82', '0', 'SystemAdmin', '系统管理', '82-', '1', '1', '', '5', '1', '2014-01-06 23:07:23', '2014-01-08 14:53:08');
INSERT INTO `admin_site_node` VALUES ('83', '32', 'sort', '排序', '34-2-4-32-83-', '1', '0', '', '11', '1', '2014-03-11 15:11:14', '2014-03-11 15:11:14');
INSERT INTO `admin_site_node` VALUES ('84', '32', 'saveSort', '保存排序', '34-2-4-32-84-', '1', '0', '', '12', '1', '2014-03-11 15:12:52', '2014-03-11 15:12:52');
INSERT INTO `admin_site_node` VALUES ('85', '56', 'index', '列表', '34-2-4-56-85-', '1', '0', '', '1', '1', '2014-03-11 21:46:54', '2014-03-11 21:46:54');
INSERT INTO `admin_site_node` VALUES ('86', '56', 'add', '新增', '34-2-4-56-86-', '1', '0', '', '2', '1', '2014-03-11 21:49:20', '2014-03-11 21:49:20');
INSERT INTO `admin_site_node` VALUES ('87', '56', 'insert', '添加', '34-2-4-56-87-', '1', '0', '', '3', '1', '2014-03-11 21:49:50', '2014-03-11 21:49:50');
INSERT INTO `admin_site_node` VALUES ('88', '56', 'edit', '修改', '34-2-4-56-88-', '1', '0', '', '4', '1', '2014-03-11 21:50:34', '2014-03-11 21:50:34');
INSERT INTO `admin_site_node` VALUES ('89', '56', 'update', '更新', '34-2-4-56-89-', '1', '0', '', '5', '1', '2014-03-11 21:59:10', '2014-03-11 21:59:10');
INSERT INTO `admin_site_node` VALUES ('90', '56', 'resume', '恢复', '34-2-4-56-90-', '1', '0', '', '6', '1', '2014-03-11 22:04:33', '2014-03-11 22:04:33');
INSERT INTO `admin_site_node` VALUES ('91', '56', 'checkPass', '批准', '34-2-4-56-91-', '1', '0', '', '7', '1', '2014-03-11 22:04:59', '2014-03-11 22:04:59');
INSERT INTO `admin_site_node` VALUES ('92', '56', 'forbid', '禁止', '34-2-4-56-92-', '1', '0', '', '8', '1', '2014-03-11 22:05:38', '2014-03-11 22:05:38');
INSERT INTO `admin_site_node` VALUES ('93', '56', 'recycle', '还原', '34-2-4-56-93-', '1', '0', '', '9', '1', '2014-03-11 22:05:57', '2014-03-11 22:05:57');
INSERT INTO `admin_site_node` VALUES ('94', '56', 'delete', '删除', '34-2-4-56-94-', '1', '0', '', '10', '1', '2014-03-11 22:06:26', '2014-03-11 22:06:26');
INSERT INTO `admin_site_node` VALUES ('95', '56', 'sort', '排序', '34-2-4-56-95-', '1', '0', '', '11', '1', '2014-03-11 22:06:47', '2014-03-11 22:06:47');
INSERT INTO `admin_site_node` VALUES ('96', '56', 'saveSort', '保存排序', '34-2-4-56-96-', '1', '0', '', '12', '1', '2014-03-11 22:07:09', '2014-03-11 22:07:09');
INSERT INTO `admin_site_node` VALUES ('97', '56', 'clearCache', '清楚缓存', '34-2-4-56-97-', '1', '0', '', '13', '1', '2014-03-11 22:11:19', '2014-03-11 22:11:19');
INSERT INTO `admin_site_node` VALUES ('98', '58', 'index', '列表', '34-2-57-58-98-', '1', '0', '', '1', '1', '2014-03-11 22:27:12', '2014-03-11 22:27:12');
INSERT INTO `admin_site_node` VALUES ('99', '58', 'add', '新增', '34-2-57-58-99-', '1', '0', '', '2', '1', '2014-03-11 22:27:59', '2014-03-11 22:27:59');
INSERT INTO `admin_site_node` VALUES ('100', '58', 'insert', '添加', '34-2-57-58-100-', '1', '0', '', '3', '1', '2014-03-11 22:28:26', '2014-03-11 22:28:26');
INSERT INTO `admin_site_node` VALUES ('101', '58', 'edit', '修改', '34-2-57-58-101-', '1', '0', '', '4', '1', '2014-03-11 22:28:43', '2014-03-11 22:28:43');
INSERT INTO `admin_site_node` VALUES ('102', '58', 'update', '更新', '34-2-57-58-102-', '1', '0', '', '5', '1', '2014-03-11 22:29:07', '2014-03-11 22:29:07');
INSERT INTO `admin_site_node` VALUES ('103', '58', 'resume', '恢复', '34-2-57-58-103-', '1', '0', '', '6', '1', '2014-03-11 22:29:42', '2014-03-11 22:29:42');
INSERT INTO `admin_site_node` VALUES ('104', '58', 'checkPass', '批准', '34-2-57-58-104-', '1', '0', '', '7', '1', '2014-03-11 22:31:24', '2014-03-11 22:31:24');
INSERT INTO `admin_site_node` VALUES ('105', '58', 'forbid', '禁止', '34-2-57-58-105-', '1', '0', '', '8', '1', '2014-03-11 22:31:57', '2014-03-11 22:31:57');
INSERT INTO `admin_site_node` VALUES ('106', '58', 'recycle', '还原', '34-2-57-58-106-', '1', '0', '', '9', '1', '2014-03-11 22:32:36', '2014-03-11 22:33:35');
INSERT INTO `admin_site_node` VALUES ('107', '58', 'delete', '删除', '34-2-57-58-107-', '1', '0', '', '10', '1', '2014-03-11 22:32:50', '2014-03-11 22:32:50');
INSERT INTO `admin_site_node` VALUES ('108', '58', 'sort', '排序', '34-2-57-58-108-', '1', '0', '', '11', '1', '2014-03-11 22:33:11', '2014-03-11 22:33:11');
INSERT INTO `admin_site_node` VALUES ('109', '58', 'saveSort', '保存排序', '34-2-57-58-109-', '1', '0', '', '13', '1', '2014-03-11 22:33:48', '2014-03-11 22:33:48');
INSERT INTO `admin_site_node` VALUES ('110', '58', 'clearCache', '清楚缓存', '34-2-57-58-110-', '1', '0', '', '12', '1', '2014-03-11 22:34:11', '2014-03-11 22:34:11');
INSERT INTO `admin_site_node` VALUES ('111', '59', 'index', '列表', '34-2-57-59-111-', '1', '0', '', '1', '1', '2014-03-11 22:35:43', '2014-03-11 22:35:43');
INSERT INTO `admin_site_node` VALUES ('112', '59', 'add', '新增', '34-2-57-59-112-', '1', '0', '', '2', '1', '2014-03-11 22:36:06', '2014-03-11 22:36:06');
INSERT INTO `admin_site_node` VALUES ('113', '59', 'insert', '添加', '34-2-57-59-113-', '1', '0', '', '3', '1', '2014-03-11 22:36:25', '2014-03-11 22:36:25');
INSERT INTO `admin_site_node` VALUES ('114', '59', 'edit', '修改', '34-2-57-59-114-', '1', '0', '', '4', '1', '2014-03-11 22:36:45', '2014-03-11 22:36:45');
INSERT INTO `admin_site_node` VALUES ('115', '59', 'update', '更新', '34-2-57-59-115-', '1', '0', '', '5', '1', '2014-03-11 22:37:11', '2014-03-11 22:37:11');
INSERT INTO `admin_site_node` VALUES ('116', '59', 'resume', '恢复', '34-2-57-59-116-', '1', '0', '', '6', '1', '2014-03-11 22:37:33', '2014-03-11 22:37:33');
INSERT INTO `admin_site_node` VALUES ('117', '59', 'checkPass', '批准', '34-2-57-59-117-', '1', '0', '', '7', '1', '2014-03-11 22:38:43', '2014-03-11 22:38:43');
INSERT INTO `admin_site_node` VALUES ('118', '59', 'forbid', '禁止', '34-2-57-59-118-', '1', '0', '', '8', '1', '2014-03-11 22:39:09', '2014-03-11 22:39:09');
INSERT INTO `admin_site_node` VALUES ('119', '59', 'recycle', '还原', '34-2-57-59-119-', '1', '0', '', '9', '1', '2014-03-11 22:44:00', '2014-03-11 22:44:00');
INSERT INTO `admin_site_node` VALUES ('120', '59', 'delete', '删除', '34-2-57-59-120-', '1', '0', '', '10', '1', '2014-03-11 22:44:28', '2014-03-11 22:44:28');
INSERT INTO `admin_site_node` VALUES ('121', '59', 'sort', '排序', '34-2-57-59-121-', '1', '0', '', '11', '1', '2014-03-11 22:44:42', '2014-03-11 22:44:42');
INSERT INTO `admin_site_node` VALUES ('122', '59', 'saveSort', '保存排序', '34-2-57-59-122-', '1', '0', '', '12', '1', '2014-03-11 22:45:05', '2014-03-11 22:45:05');
INSERT INTO `admin_site_node` VALUES ('123', '60', 'saveSort', '保存排序', '34-2-57-60-123-', '1', '0', '', '12', '1', '2014-03-11 22:58:45', '2014-03-11 22:58:45');
INSERT INTO `admin_site_node` VALUES ('124', '60', 'sort', '排序', '34-2-57-60-124-', '1', '0', '', '11', '1', '2014-03-11 22:59:55', '2014-03-11 22:59:55');
INSERT INTO `admin_site_node` VALUES ('125', '60', 'delete', '删除', '34-2-57-60-125-', '1', '0', '', '10', '1', '2014-03-11 23:00:12', '2014-03-11 23:00:12');
INSERT INTO `admin_site_node` VALUES ('126', '60', 'recycle', '还原', '34-2-57-60-126-', '1', '0', '', '9', '1', '2014-03-11 23:00:26', '2014-03-11 23:00:26');
INSERT INTO `admin_site_node` VALUES ('127', '60', 'forbid', '禁止', '34-2-57-60-127-', '1', '0', '', '8', '1', '2014-03-11 23:00:41', '2014-03-11 23:00:41');
INSERT INTO `admin_site_node` VALUES ('128', '60', 'checkPass', '批准', '34-2-57-60-128-', '1', '0', '', '7', '1', '2014-03-11 23:00:57', '2014-03-11 23:00:57');
INSERT INTO `admin_site_node` VALUES ('129', '60', 'resume', '恢复', '34-2-57-60-129-', '1', '0', '', '6', '1', '2014-03-11 23:01:10', '2014-03-11 23:01:10');
INSERT INTO `admin_site_node` VALUES ('130', '60', 'update', '更新', '34-2-57-60-130-', '1', '0', '', '5', '1', '2014-03-11 23:01:24', '2014-03-11 23:01:24');
INSERT INTO `admin_site_node` VALUES ('131', '60', 'edit', '修改', '34-2-57-60-131-', '1', '0', '', '4', '1', '2014-03-11 23:01:37', '2014-03-11 23:01:37');
INSERT INTO `admin_site_node` VALUES ('132', '60', 'insert', '添加', '34-2-57-60-132-', '1', '0', '', '3', '1', '2014-03-11 23:01:50', '2014-03-11 23:01:50');
INSERT INTO `admin_site_node` VALUES ('133', '60', 'add', '新增', '34-2-57-60-133-', '1', '0', '', '2', '1', '2014-03-11 23:02:06', '2014-03-11 23:02:06');
INSERT INTO `admin_site_node` VALUES ('134', '60', 'index', '列表', '34-2-57-60-134-', '1', '0', '', '1', '1', '2014-03-11 23:02:19', '2014-03-11 23:02:19');
INSERT INTO `admin_site_node` VALUES ('135', '15', 'saveSort', '保存排序', '34-2-17-15-135-', '1', '0', '', '12', '1', '2014-03-11 23:07:16', '2014-03-11 23:07:16');
INSERT INTO `admin_site_node` VALUES ('136', '15', 'sort', '排序', '34-2-17-15-136-', '1', '0', '', '11', '1', '2014-03-11 23:08:10', '2014-03-11 23:08:10');
INSERT INTO `admin_site_node` VALUES ('137', '15', 'delete', '删除', '34-2-17-15-137-', '1', '0', '', '10', '1', '2014-03-11 23:08:24', '2014-03-11 23:08:24');
INSERT INTO `admin_site_node` VALUES ('138', '15', 'recycle', '还原', '34-2-17-15-138-', '1', '0', '', '9', '1', '2014-03-11 23:08:38', '2014-03-11 23:08:38');
INSERT INTO `admin_site_node` VALUES ('139', '15', 'forbid', '禁止', '34-2-17-15-139-', '1', '0', '', '8', '1', '2014-03-11 23:09:01', '2014-03-11 23:09:01');
INSERT INTO `admin_site_node` VALUES ('140', '15', 'checkPass', '批准', '34-2-17-15-140-', '1', '0', '', '7', '1', '2014-03-11 23:09:14', '2014-03-11 23:09:14');
INSERT INTO `admin_site_node` VALUES ('141', '15', 'resume', '恢复', '34-2-17-15-141-', '1', '0', '', '6', '1', '2014-03-11 23:09:28', '2014-03-11 23:09:28');
INSERT INTO `admin_site_node` VALUES ('142', '15', 'update', '更新', '34-2-17-15-142-', '1', '0', '', '5', '1', '2014-03-11 23:09:45', '2014-03-11 23:09:45');
INSERT INTO `admin_site_node` VALUES ('143', '15', 'edit', '修改', '34-2-17-15-143-', '1', '0', '', '4', '1', '2014-03-11 23:09:59', '2014-03-11 23:09:59');
INSERT INTO `admin_site_node` VALUES ('144', '15', 'insert', '添加', '34-2-17-15-144-', '1', '0', '', '3', '1', '2014-03-11 23:11:11', '2014-03-11 23:11:11');
INSERT INTO `admin_site_node` VALUES ('145', '15', 'add', '新增', '34-2-17-15-145-', '1', '0', '', '2', '1', '2014-03-11 23:12:51', '2014-03-11 23:12:51');
INSERT INTO `admin_site_node` VALUES ('146', '15', 'index', '列表', '34-2-17-15-146-', '1', '0', '', '1', '1', '2014-03-11 23:13:06', '2014-03-11 23:13:06');
INSERT INTO `admin_site_node` VALUES ('147', '19', 'saveSort', '保存排序', '34-2-18-19-147-', '1', '0', '', '12', '1', '2014-03-11 23:13:50', '2014-03-11 23:13:50');
INSERT INTO `admin_site_node` VALUES ('148', '19', 'sort', '排序', '34-2-18-19-148-', '1', '0', '', '11', '1', '2014-03-11 23:16:19', '2014-03-11 23:16:19');
INSERT INTO `admin_site_node` VALUES ('149', '19', 'delete', '删除', '34-2-18-19-149-', '1', '0', '', '10', '1', '2014-03-11 23:16:32', '2014-03-11 23:16:32');
INSERT INTO `admin_site_node` VALUES ('150', '19', 'recycle', '还原', '34-2-18-19-150-', '1', '0', '', '9', '1', '2014-03-11 23:16:47', '2014-03-11 23:16:47');
INSERT INTO `admin_site_node` VALUES ('151', '19', 'forbid', '禁止', '34-2-18-19-151-', '1', '0', '', '8', '1', '2014-03-11 23:17:00', '2014-03-11 23:17:00');
INSERT INTO `admin_site_node` VALUES ('152', '19', 'checkPass', '批准', '34-2-18-19-152-', '1', '0', '', '7', '1', '2014-03-11 23:17:14', '2014-03-11 23:17:14');
INSERT INTO `admin_site_node` VALUES ('153', '19', 'resume', '恢复', '34-2-18-19-153-', '1', '0', '', '6', '1', '2014-03-11 23:17:28', '2014-03-11 23:17:28');
INSERT INTO `admin_site_node` VALUES ('154', '19', 'update', '更新', '34-2-18-19-154-', '1', '0', '', '5', '1', '2014-03-11 23:17:42', '2014-03-11 23:17:42');
INSERT INTO `admin_site_node` VALUES ('155', '19', 'edit', '修改', '34-2-18-19-155-', '1', '0', '', '4', '1', '2014-03-11 23:17:55', '2014-03-11 23:17:55');
INSERT INTO `admin_site_node` VALUES ('156', '19', 'insert', '添加', '34-2-18-19-156-', '1', '0', '', '3', '1', '2014-03-11 23:18:09', '2014-03-11 23:18:09');
INSERT INTO `admin_site_node` VALUES ('157', '19', 'add', '新增', '34-2-18-19-157-', '1', '0', '', '2', '1', '2014-03-11 23:18:22', '2014-03-11 23:18:22');
INSERT INTO `admin_site_node` VALUES ('158', '19', 'index', '列表', '34-2-18-19-158-', '1', '0', '', '1', '1', '2014-03-11 23:18:38', '2014-03-11 23:18:38');
INSERT INTO `admin_site_node` VALUES ('159', '20', 'saveSort', '保存排序', '34-2-18-20-159-', '1', '0', '', '12', '1', '2014-03-11 23:19:05', '2014-03-11 23:19:05');
INSERT INTO `admin_site_node` VALUES ('160', '20', 'sort', '排序', '34-2-18-20-160-', '1', '0', '', '11', '1', '2014-03-11 23:19:34', '2014-03-11 23:19:34');
INSERT INTO `admin_site_node` VALUES ('161', '20', 'delete', '删除', '34-2-18-20-161-', '1', '0', '', '10', '1', '2014-03-11 23:20:01', '2014-03-11 23:20:01');
INSERT INTO `admin_site_node` VALUES ('162', '20', 'recycle', '还原', '34-2-18-20-162-', '1', '0', '', '9', '1', '2014-03-11 23:20:14', '2014-03-11 23:20:14');
INSERT INTO `admin_site_node` VALUES ('163', '20', 'forbid', '禁止', '34-2-18-20-163-', '1', '0', '', '8', '1', '2014-03-11 23:20:27', '2014-03-11 23:20:27');
INSERT INTO `admin_site_node` VALUES ('164', '20', 'checkPass', '批准', '34-2-18-20-164-', '1', '0', '', '7', '1', '2014-03-11 23:20:41', '2014-03-11 23:20:41');
INSERT INTO `admin_site_node` VALUES ('165', '20', 'resume', '恢复', '34-2-18-20-165-', '1', '0', '', '6', '1', '2014-03-11 23:20:58', '2014-03-11 23:20:58');
INSERT INTO `admin_site_node` VALUES ('166', '20', 'update', '更新', '34-2-18-20-166-', '1', '0', '', '5', '1', '2014-03-11 23:21:16', '2014-03-11 23:21:16');
INSERT INTO `admin_site_node` VALUES ('167', '20', 'edit', '修改', '34-2-18-20-167-', '1', '0', '', '4', '1', '2014-03-11 23:21:30', '2014-03-11 23:21:30');
INSERT INTO `admin_site_node` VALUES ('168', '20', 'insert', '添加', '34-2-18-20-168-', '1', '0', '', '3', '1', '2014-03-11 23:21:44', '2014-03-11 23:21:44');
INSERT INTO `admin_site_node` VALUES ('169', '20', 'add', '新增', '34-2-18-20-169-', '1', '0', '', '2', '1', '2014-03-11 23:22:01', '2014-03-11 23:22:01');
INSERT INTO `admin_site_node` VALUES ('170', '20', 'index', '列表', '34-2-18-20-170-', '1', '0', '', '1', '1', '2014-03-11 23:22:15', '2014-03-11 23:22:15');
INSERT INTO `admin_site_node` VALUES ('171', '74', 'delete', '删除', '34-2-73-74-171-', '1', '0', '', '10', '1', '2014-03-11 23:22:42', '2014-03-11 23:22:42');
INSERT INTO `admin_site_node` VALUES ('172', '74', 'recycle', '还原', '34-2-73-74-172-', '1', '0', '', '9', '1', '2014-03-11 23:23:43', '2014-03-11 23:23:43');
INSERT INTO `admin_site_node` VALUES ('173', '74', 'forbid', '禁止', '34-2-73-74-173-', '1', '0', '', '8', '1', '2014-03-11 23:23:56', '2014-03-11 23:23:56');
INSERT INTO `admin_site_node` VALUES ('174', '74', 'checkPass', '批准', '34-2-73-74-174-', '1', '0', '', '7', '1', '2014-03-11 23:24:10', '2014-03-11 23:24:10');
INSERT INTO `admin_site_node` VALUES ('175', '74', 'resume', '恢复', '34-2-73-74-175-', '1', '0', '', '6', '1', '2014-03-11 23:24:23', '2014-03-11 23:24:23');
INSERT INTO `admin_site_node` VALUES ('176', '74', 'update', '更新', '34-2-73-74-176-', '1', '0', '', '5', '1', '2014-03-11 23:24:36', '2014-03-11 23:24:36');
INSERT INTO `admin_site_node` VALUES ('177', '74', 'edit', '修改', '34-2-73-74-177-', '1', '0', '', '4', '1', '2014-03-11 23:24:50', '2014-03-11 23:24:50');
INSERT INTO `admin_site_node` VALUES ('178', '74', 'insert', '添加', '34-2-73-74-178-', '1', '0', '', '3', '1', '2014-03-11 23:25:04', '2014-03-11 23:25:04');
INSERT INTO `admin_site_node` VALUES ('179', '74', 'add', '新增', '34-2-73-74-179-', '1', '0', '', '2', '1', '2014-03-11 23:25:18', '2014-03-11 23:25:18');
INSERT INTO `admin_site_node` VALUES ('180', '74', 'index', '列表', '34-2-73-74-180-', '1', '0', '', '1', '1', '2014-03-11 23:25:33', '2014-03-11 23:25:33');
INSERT INTO `admin_site_node` VALUES ('181', '52', 'clearCache', '清楚缓存', '34-49-50-52-181-', '1', '0', '', '13', '1', '2014-03-11 23:29:31', '2014-03-11 23:29:31');
INSERT INTO `admin_site_node` VALUES ('182', '52', 'saveSort', '保存排序', '34-49-50-52-182-', '1', '0', '', '12', '1', '2014-03-11 23:30:26', '2014-03-11 23:30:26');
INSERT INTO `admin_site_node` VALUES ('183', '52', 'sort', '排序', '34-49-50-52-183-', '1', '0', '', '11', '1', '2014-03-11 23:31:03', '2014-03-11 23:31:03');
INSERT INTO `admin_site_node` VALUES ('184', '52', 'delete', '删除', '34-49-50-52-184-', '1', '0', '', '10', '1', '2014-03-11 23:31:33', '2014-03-11 23:31:33');
INSERT INTO `admin_site_node` VALUES ('185', '52', 'recycle', '还原', '34-49-50-52-185-', '1', '0', '', '9', '1', '2014-03-11 23:31:47', '2014-03-11 23:31:47');
INSERT INTO `admin_site_node` VALUES ('186', '52', 'forbid', '禁止', '34-49-50-52-186-', '1', '0', '', '8', '1', '2014-03-11 23:32:04', '2014-03-11 23:32:04');
INSERT INTO `admin_site_node` VALUES ('187', '52', 'checkPass', '批准', '34-49-50-52-187-', '1', '0', '', '7', '1', '2014-03-11 23:32:18', '2014-03-11 23:32:18');
INSERT INTO `admin_site_node` VALUES ('188', '52', 'resume', '恢复', '34-49-50-52-188-', '1', '0', '', '6', '1', '2014-03-11 23:32:38', '2014-03-11 23:32:38');
INSERT INTO `admin_site_node` VALUES ('189', '52', 'update', '更新', '34-49-50-52-189-', '1', '0', '', '5', '1', '2014-03-11 23:32:59', '2014-03-11 23:32:59');
INSERT INTO `admin_site_node` VALUES ('190', '52', 'edit', '修改', '34-49-50-52-190-', '1', '0', '', '4', '1', '2014-03-11 23:33:12', '2014-03-11 23:33:12');
INSERT INTO `admin_site_node` VALUES ('191', '52', 'insert', '添加', '34-49-50-52-191-', '1', '0', '', '3', '1', '2014-03-11 23:33:27', '2014-03-11 23:33:27');
INSERT INTO `admin_site_node` VALUES ('192', '52', 'add', '新增', '34-49-50-52-192-', '1', '0', '', '2', '1', '2014-03-11 23:33:41', '2014-03-11 23:33:41');
INSERT INTO `admin_site_node` VALUES ('193', '52', 'index', '列表', '34-49-50-52-193-', '1', '0', '', '1', '1', '2014-03-11 23:33:56', '2014-03-11 23:33:56');
INSERT INTO `admin_site_node` VALUES ('194', '51', 'saveSort', '保存排序', '34-49-50-51-194-', '1', '0', '', '12', '1', '2014-03-11 23:34:35', '2014-03-11 23:34:35');
INSERT INTO `admin_site_node` VALUES ('195', '51', 'sort', '排序', '34-49-50-51-195-', '1', '0', '', '11', '1', '2014-03-11 23:35:18', '2014-03-11 23:35:18');
INSERT INTO `admin_site_node` VALUES ('196', '51', 'delete', '删除', '34-49-50-51-196-', '1', '0', '', '10', '1', '2014-03-11 23:35:33', '2014-03-11 23:35:33');
INSERT INTO `admin_site_node` VALUES ('197', '51', 'recycle', '还原', '34-49-50-51-197-', '1', '0', '', '9', '1', '2014-03-11 23:35:53', '2014-03-11 23:35:53');
INSERT INTO `admin_site_node` VALUES ('198', '51', 'forbid', '禁止', '34-49-50-51-198-', '1', '0', '', '8', '1', '2014-03-11 23:36:10', '2014-03-11 23:36:10');
INSERT INTO `admin_site_node` VALUES ('199', '51', 'checkPass', '批准', '34-49-50-51-199-', '1', '0', '', '7', '1', '2014-03-11 23:36:26', '2014-03-11 23:36:26');
INSERT INTO `admin_site_node` VALUES ('200', '51', 'resume', '恢复', '34-49-50-51-200-', '1', '0', '', '6', '1', '2014-03-11 23:36:40', '2014-03-11 23:36:40');
INSERT INTO `admin_site_node` VALUES ('201', '51', 'update', '更新', '34-49-50-51-201-', '1', '0', '', '5', '1', '2014-03-11 23:36:57', '2014-03-11 23:36:57');
INSERT INTO `admin_site_node` VALUES ('202', '51', 'edit', '修改', '34-49-50-51-202-', '1', '0', '', '4', '1', '2014-03-11 23:37:12', '2014-03-11 23:37:12');
INSERT INTO `admin_site_node` VALUES ('203', '51', 'insert', '添加', '34-49-50-51-203-', '1', '0', '', '3', '1', '2014-03-11 23:37:29', '2014-03-11 23:37:29');
INSERT INTO `admin_site_node` VALUES ('204', '51', 'add', '新增', '34-49-50-51-204-', '1', '0', '', '2', '1', '2014-03-11 23:37:43', '2014-03-11 23:37:43');
INSERT INTO `admin_site_node` VALUES ('205', '51', 'index', '列表', '34-49-50-51-205-', '1', '0', '', '1', '1', '2014-03-11 23:37:57', '2014-03-11 23:37:57');
INSERT INTO `admin_site_node` VALUES ('206', '53', 'delete', '删除', '34-49-50-53-206-', '1', '0', '', '10', '1', '2014-03-11 23:39:09', '2014-03-11 23:39:09');
INSERT INTO `admin_site_node` VALUES ('207', '53', 'recycle', '还原', '34-49-50-53-207-', '1', '0', '', '9', '1', '2014-03-11 23:39:34', '2014-03-11 23:39:34');
INSERT INTO `admin_site_node` VALUES ('208', '53', 'forbid', '禁止', '34-49-50-53-208-', '1', '0', '', '8', '1', '2014-03-11 23:39:52', '2014-03-11 23:39:52');
INSERT INTO `admin_site_node` VALUES ('209', '53', 'checkPass', '批准', '34-49-50-53-209-', '1', '0', '', '7', '1', '2014-03-11 23:40:07', '2014-03-11 23:40:07');
INSERT INTO `admin_site_node` VALUES ('210', '53', 'resume', '恢复', '34-49-50-53-210-', '1', '0', '', '6', '1', '2014-03-11 23:40:22', '2014-03-11 23:40:22');
INSERT INTO `admin_site_node` VALUES ('211', '53', 'update', '更新', '34-49-50-53-211-', '1', '0', '', '5', '1', '2014-03-11 23:40:42', '2014-03-11 23:40:42');
INSERT INTO `admin_site_node` VALUES ('212', '53', 'edit', '修改', '34-49-50-53-212-', '1', '0', '', '4', '1', '2014-03-11 23:40:57', '2014-03-11 23:40:57');
INSERT INTO `admin_site_node` VALUES ('213', '53', 'insert', '添加', '34-49-50-53-213-', '1', '0', '', '3', '1', '2014-03-11 23:41:12', '2014-03-11 23:41:12');
INSERT INTO `admin_site_node` VALUES ('214', '53', 'add', '新增', '34-49-50-53-214-', '1', '0', '', '2', '1', '2014-03-11 23:41:26', '2014-03-11 23:41:26');
INSERT INTO `admin_site_node` VALUES ('215', '53', 'index', '列表', '34-49-50-53-215-', '1', '0', '', '1', '1', '2014-03-11 23:41:40', '2014-03-11 23:41:40');
INSERT INTO `admin_site_node` VALUES ('216', '54', 'saveSort', '保存排序', '34-49-55-54-216-', '1', '0', '', '12', '1', '2014-03-11 23:42:05', '2014-03-11 23:42:05');
INSERT INTO `admin_site_node` VALUES ('217', '54', 'sort', '排序', '34-49-55-54-217-', '1', '0', '', '11', '1', '2014-03-11 23:42:27', '2014-03-11 23:42:27');
INSERT INTO `admin_site_node` VALUES ('218', '54', 'delete', '删除', '34-49-55-54-218-', '1', '0', '', '10', '1', '2014-03-11 23:42:49', '2014-03-11 23:42:49');
INSERT INTO `admin_site_node` VALUES ('219', '54', 'recycle', '还原', '34-49-55-54-219-', '1', '0', '', '9', '1', '2014-03-11 23:43:03', '2014-03-11 23:43:03');
INSERT INTO `admin_site_node` VALUES ('220', '54', 'forbid', '禁止', '34-49-55-54-220-', '1', '0', '', '8', '1', '2014-03-11 23:43:18', '2014-03-11 23:43:18');
INSERT INTO `admin_site_node` VALUES ('221', '54', 'checkPass', '批准', '34-49-55-54-221-', '1', '0', '', '7', '1', '2014-03-11 23:43:33', '2014-03-11 23:43:33');
INSERT INTO `admin_site_node` VALUES ('222', '54', 'resume', '恢复', '34-49-55-54-222-', '1', '0', '', '6', '1', '2014-03-11 23:43:47', '2014-03-11 23:43:47');
INSERT INTO `admin_site_node` VALUES ('223', '54', 'update', '更新', '34-49-55-54-223-', '1', '0', '', '5', '1', '2014-03-11 23:44:02', '2014-03-11 23:44:02');
INSERT INTO `admin_site_node` VALUES ('224', '54', 'edit', '修改', '34-49-55-54-224-', '1', '0', '', '4', '1', '2014-03-11 23:44:16', '2014-03-11 23:44:16');
INSERT INTO `admin_site_node` VALUES ('225', '54', 'insert', '添加', '34-49-55-54-225-', '1', '0', '', '3', '1', '2014-03-11 23:44:32', '2014-03-11 23:44:32');
INSERT INTO `admin_site_node` VALUES ('226', '54', 'add', '新增', '34-49-55-54-226-', '1', '0', '', '2', '1', '2014-03-11 23:44:53', '2014-03-11 23:44:53');
INSERT INTO `admin_site_node` VALUES ('227', '54', 'index', '列表', '34-49-55-54-227-', '1', '0', '', '1', '1', '2014-03-11 23:45:05', '2014-03-11 23:45:05');
INSERT INTO `admin_site_node` VALUES ('228', '63', 'delete', '删除', '46-42-61-63-228-', '1', '0', '', '10', '1', '2014-03-12 00:12:09', '2014-03-12 00:12:09');
INSERT INTO `admin_site_node` VALUES ('229', '63', 'recycle', '还原', '46-42-61-63-229-', '1', '0', '', '9', '1', '2014-03-12 00:12:33', '2014-03-12 00:12:33');
INSERT INTO `admin_site_node` VALUES ('230', '63', 'forbid', '禁止', '46-42-61-63-230-', '1', '0', '', '8', '1', '2014-03-12 00:12:48', '2014-03-12 00:12:48');
INSERT INTO `admin_site_node` VALUES ('231', '63', 'checkPass', '批准', '46-42-61-63-231-', '1', '0', '', '7', '1', '2014-03-12 00:13:04', '2014-03-12 00:13:04');
INSERT INTO `admin_site_node` VALUES ('232', '63', 'resume', '恢复', '46-42-61-63-232-', '1', '0', '', '6', '1', '2014-03-12 00:13:18', '2014-03-12 00:13:18');
INSERT INTO `admin_site_node` VALUES ('233', '63', 'update', '更新', '46-42-61-63-233-', '1', '0', '', '5', '1', '2014-03-12 00:13:36', '2014-03-12 00:13:36');
INSERT INTO `admin_site_node` VALUES ('234', '63', 'edit', '修改', '46-42-61-63-234-', '1', '0', '', '4', '1', '2014-03-12 00:14:27', '2014-03-12 00:14:27');
INSERT INTO `admin_site_node` VALUES ('235', '63', 'insert', '添加', '46-42-61-63-235-', '1', '0', '', '3', '1', '2014-03-12 00:14:46', '2014-03-12 00:14:46');
INSERT INTO `admin_site_node` VALUES ('236', '63', 'add', '新增', '46-42-61-63-236-', '1', '0', '', '2', '1', '2014-03-12 00:15:06', '2014-03-12 00:15:06');
INSERT INTO `admin_site_node` VALUES ('237', '63', 'index', '列表', '46-42-61-63-237-', '1', '0', '', '1', '1', '2014-03-12 00:15:21', '2014-03-12 00:15:21');
INSERT INTO `admin_site_node` VALUES ('238', '64', 'saveSort', '保存排序', '46-42-61-64-238-', '1', '0', '', '12', '1', '2014-03-12 00:15:50', '2014-03-12 00:15:50');
INSERT INTO `admin_site_node` VALUES ('239', '64', 'sort', '排序', '46-42-61-64-239-', '1', '0', '', '11', '1', '2014-03-12 00:16:19', '2014-03-12 00:16:19');
INSERT INTO `admin_site_node` VALUES ('240', '64', 'delete', '删除', '46-42-61-64-240-', '1', '0', '', '10', '1', '2014-03-12 00:16:43', '2014-03-12 00:16:43');
INSERT INTO `admin_site_node` VALUES ('241', '64', 'recycle', '还原', '46-42-61-64-241-', '1', '0', '', '9', '1', '2014-03-12 00:17:02', '2014-03-12 00:17:02');
INSERT INTO `admin_site_node` VALUES ('242', '64', 'forbid', '禁止', '46-42-61-64-242-', '1', '0', '', '8', '1', '2014-03-12 00:17:20', '2014-03-12 00:17:20');
INSERT INTO `admin_site_node` VALUES ('243', '64', 'checkPass', '批准', '46-42-61-64-243-', '1', '0', '', '7', '1', '2014-03-12 00:17:36', '2014-03-12 00:17:36');
INSERT INTO `admin_site_node` VALUES ('244', '64', 'resume', '恢复', '46-42-61-64-244-', '1', '0', '', '6', '1', '2014-03-12 00:17:53', '2014-03-12 00:17:53');
INSERT INTO `admin_site_node` VALUES ('245', '64', 'update', '更新', '46-42-61-64-245-', '1', '0', '', '5', '1', '2014-03-12 00:18:05', '2014-03-12 00:18:05');
INSERT INTO `admin_site_node` VALUES ('246', '64', 'edit', '修改', '46-42-61-64-246-', '1', '0', '', '4', '1', '2014-03-12 00:18:21', '2014-03-12 00:18:21');
INSERT INTO `admin_site_node` VALUES ('247', '64', 'insert', '添加', '46-42-61-64-247-', '1', '0', '', '3', '1', '2014-03-12 00:18:38', '2014-03-12 00:18:38');
INSERT INTO `admin_site_node` VALUES ('248', '64', 'add', '新增', '46-42-61-64-248-', '1', '0', '', '2', '1', '2014-03-12 00:19:09', '2014-03-12 00:19:09');
INSERT INTO `admin_site_node` VALUES ('249', '64', 'index', '列表', '46-42-61-64-249-', '1', '0', '', '1', '1', '2014-03-12 00:19:22', '2014-03-12 00:19:22');
INSERT INTO `admin_site_node` VALUES ('250', '71', 'delete', '删除', '46-42-61-71-250-', '1', '0', '', '10', '1', '2014-03-12 00:20:25', '2014-03-12 00:20:25');
INSERT INTO `admin_site_node` VALUES ('251', '71', 'recycle', '还原', '46-42-61-71-251-', '1', '0', '', '9', '1', '2014-03-12 00:20:44', '2014-03-12 00:20:44');
INSERT INTO `admin_site_node` VALUES ('252', '71', 'forbid', '禁止', '46-42-61-71-252-', '1', '0', '', '8', '1', '2014-03-12 00:20:57', '2014-03-12 00:20:57');
INSERT INTO `admin_site_node` VALUES ('253', '71', 'checkPass', '批准', '46-42-61-71-253-', '1', '0', '', '7', '1', '2014-03-12 00:21:12', '2014-03-12 00:21:12');
INSERT INTO `admin_site_node` VALUES ('254', '71', 'resume', '恢复', '46-42-61-71-254-', '1', '0', '', '6', '1', '2014-03-12 00:21:26', '2014-03-12 00:21:26');
INSERT INTO `admin_site_node` VALUES ('255', '71', 'update', '更新', '46-42-61-71-255-', '1', '0', '', '5', '1', '2014-03-12 00:21:41', '2014-03-12 00:21:41');
INSERT INTO `admin_site_node` VALUES ('256', '71', 'edit', '修改', '46-42-61-71-256-', '1', '0', '', '4', '1', '2014-03-12 00:21:57', '2014-03-12 00:21:57');
INSERT INTO `admin_site_node` VALUES ('257', '71', 'insert', '添加', '46-42-61-71-257-', '1', '0', '', '3', '1', '2014-03-12 00:22:12', '2014-03-12 00:22:12');
INSERT INTO `admin_site_node` VALUES ('258', '71', 'add', '新增', '46-42-61-71-258-', '1', '0', '', '2', '1', '2014-03-12 00:22:25', '2014-03-12 00:22:25');
INSERT INTO `admin_site_node` VALUES ('259', '71', 'index', '列表', '46-42-61-71-259-', '1', '0', '', '1', '1', '2014-03-12 00:22:40', '2014-03-12 00:22:40');
INSERT INTO `admin_site_node` VALUES ('260', '67', 'delete', '删除', '46-42-62-67-260-', '1', '0', '', '10', '1', '2014-03-12 00:24:11', '2014-03-12 00:24:11');
INSERT INTO `admin_site_node` VALUES ('261', '67', 'recycle', '还原', '46-42-62-67-261-', '1', '0', '', '9', '1', '2014-03-12 00:24:39', '2014-03-12 00:24:39');
INSERT INTO `admin_site_node` VALUES ('262', '67', 'forbid', '禁止', '46-42-62-67-262-', '1', '0', '', '8', '1', '2014-03-12 00:24:55', '2014-03-12 00:24:55');
INSERT INTO `admin_site_node` VALUES ('263', '67', 'checkPass', '批准', '46-42-62-67-263-', '1', '0', '', '7', '1', '2014-03-12 00:25:09', '2014-03-12 00:25:09');
INSERT INTO `admin_site_node` VALUES ('264', '67', 'resume', '恢复', '46-42-62-67-264-', '1', '0', '', '6', '1', '2014-03-12 00:25:22', '2014-03-12 00:25:22');
INSERT INTO `admin_site_node` VALUES ('265', '67', 'update', '更新', '46-42-62-67-265-', '1', '0', '', '5', '1', '2014-03-12 00:25:37', '2014-03-12 00:25:37');
INSERT INTO `admin_site_node` VALUES ('266', '67', 'edit', '修改', '46-42-62-67-266-', '1', '0', '', '4', '1', '2014-03-12 00:25:51', '2014-03-12 00:25:51');
INSERT INTO `admin_site_node` VALUES ('267', '67', 'insert', '添加', '46-42-62-67-267-', '1', '0', '', '3', '1', '2014-03-12 00:26:05', '2014-03-12 00:26:05');
INSERT INTO `admin_site_node` VALUES ('268', '67', 'add', '新增', '46-42-62-67-268-', '1', '0', '', '2', '1', '2014-03-12 00:26:19', '2014-03-12 00:26:19');
INSERT INTO `admin_site_node` VALUES ('269', '67', 'index', '列表', '46-42-62-67-269-', '1', '0', '', '1', '1', '2014-03-12 00:26:38', '2014-03-12 00:26:38');
INSERT INTO `admin_site_node` VALUES ('270', '68', 'saveSort', '保存排序', '46-42-70-68-270-', '1', '0', '', '12', '1', '2014-03-12 00:27:02', '2014-03-12 00:27:02');
INSERT INTO `admin_site_node` VALUES ('271', '68', 'sort', '排序', '46-42-70-68-271-', '1', '0', '', '11', '1', '2014-03-12 00:27:37', '2014-03-12 00:27:37');
INSERT INTO `admin_site_node` VALUES ('272', '68', 'delete', '删除', '46-42-70-68-272-', '1', '0', '', '10', '1', '2014-03-12 00:27:54', '2014-03-12 00:27:54');
INSERT INTO `admin_site_node` VALUES ('273', '68', 'recycle', '还原', '46-42-70-68-273-', '1', '0', '', '9', '1', '2014-03-12 00:29:03', '2014-03-12 00:29:03');
INSERT INTO `admin_site_node` VALUES ('274', '68', 'forbid', '禁止', '46-42-70-68-274-', '1', '0', '', '8', '1', '2014-03-12 00:29:34', '2014-03-12 00:29:34');
INSERT INTO `admin_site_node` VALUES ('275', '68', 'checkPass', '批准', '46-42-70-68-275-', '1', '0', '', '7', '1', '2014-03-12 00:29:51', '2014-03-12 00:29:51');
INSERT INTO `admin_site_node` VALUES ('276', '68', 'resume', '恢复', '46-42-70-68-276-', '1', '0', '', '6', '1', '2014-03-12 00:30:08', '2014-03-12 00:30:08');
INSERT INTO `admin_site_node` VALUES ('277', '68', 'update', '更新', '46-42-70-68-277-', '1', '0', '', '5', '1', '2014-03-12 00:30:23', '2014-03-12 00:30:23');
INSERT INTO `admin_site_node` VALUES ('278', '68', 'edit', '修改', '46-42-70-68-278-', '1', '0', '', '4', '1', '2014-03-12 00:30:38', '2014-03-12 00:30:38');
INSERT INTO `admin_site_node` VALUES ('279', '68', 'insert', '添加', '46-42-70-68-279-', '1', '0', '', '3', '1', '2014-03-12 00:30:52', '2014-03-12 00:30:52');
INSERT INTO `admin_site_node` VALUES ('280', '68', 'add', '新增', '46-42-70-68-280-', '1', '0', '', '2', '1', '2014-03-12 00:31:09', '2014-03-12 00:31:09');
INSERT INTO `admin_site_node` VALUES ('281', '68', 'index', '列表', '46-42-70-68-281-', '1', '0', '', '1', '1', '2014-03-12 00:31:29', '2014-03-12 00:31:29');
INSERT INTO `admin_site_node` VALUES ('282', '41', 'saveSort', '保存排序', '35-36-40-41-282-', '1', '0', '', '12', '1', '2014-03-12 00:35:43', '2014-03-12 00:35:43');
INSERT INTO `admin_site_node` VALUES ('283', '41', 'sort', '排序', '35-36-40-41-283-', '1', '0', '', '11', '1', '2014-03-12 00:36:12', '2014-03-12 00:36:12');
INSERT INTO `admin_site_node` VALUES ('284', '41', 'delete', '删除', '35-36-40-41-284-', '1', '0', '', '10', '1', '2014-03-12 00:36:31', '2014-03-12 00:36:31');
INSERT INTO `admin_site_node` VALUES ('285', '41', 'recycle', '还原', '35-36-40-41-285-', '1', '0', '', '9', '1', '2014-03-12 00:36:47', '2014-03-12 00:36:47');
INSERT INTO `admin_site_node` VALUES ('286', '41', 'forbid', '禁止', '35-36-40-41-286-', '1', '0', '', '8', '1', '2014-03-12 00:37:04', '2014-03-12 00:37:04');
INSERT INTO `admin_site_node` VALUES ('287', '41', 'checkPass', '批准', '35-36-40-41-287-', '1', '0', '', '7', '1', '2014-03-12 00:37:18', '2014-03-12 00:37:18');
INSERT INTO `admin_site_node` VALUES ('288', '41', 'resume', '恢复', '35-36-40-41-288-', '1', '0', '', '6', '1', '2014-03-12 00:37:33', '2014-03-12 00:37:33');
INSERT INTO `admin_site_node` VALUES ('289', '41', 'update', '更新', '35-36-40-41-289-', '1', '0', '', '5', '1', '2014-03-12 00:37:46', '2014-03-12 00:37:46');
INSERT INTO `admin_site_node` VALUES ('290', '41', 'edit', '修改', '35-36-40-41-290-', '1', '0', '', '4', '1', '2014-03-12 00:38:05', '2014-03-12 00:38:05');
INSERT INTO `admin_site_node` VALUES ('291', '41', 'insert', '添加', '35-36-40-41-291-', '1', '0', '', '3', '1', '2014-03-12 00:38:18', '2014-03-12 00:38:18');
INSERT INTO `admin_site_node` VALUES ('292', '41', 'add', '新增', '35-36-40-41-292-', '1', '0', '', '2', '1', '2014-03-12 00:38:34', '2014-03-12 00:38:34');
INSERT INTO `admin_site_node` VALUES ('293', '41', 'index', '列表', '35-36-40-41-293-', '1', '0', '', '1', '1', '2014-03-12 00:38:49', '2014-03-12 00:38:49');
INSERT INTO `admin_site_node` VALUES ('294', '38', 'saveSort', '保存排序', '35-36-37-38-294-', '1', '0', '', '12', '1', '2014-03-12 00:39:26', '2014-03-12 00:39:26');
INSERT INTO `admin_site_node` VALUES ('295', '38', 'sort', '排序', '35-36-37-38-295-', '1', '0', '', '11', '1', '2014-03-12 00:39:42', '2014-03-12 00:39:42');
INSERT INTO `admin_site_node` VALUES ('296', '38', 'delete', '删除', '35-36-37-38-296-', '1', '0', '', '10', '1', '2014-03-12 00:40:09', '2014-03-12 00:40:09');
INSERT INTO `admin_site_node` VALUES ('297', '38', 'recycle', '还原', '35-36-37-38-297-', '1', '0', '', '9', '1', '2014-03-12 00:40:26', '2014-03-12 00:40:26');
INSERT INTO `admin_site_node` VALUES ('298', '38', 'forbid', '禁止', '35-36-37-38-298-', '1', '0', '', '8', '1', '2014-03-12 00:40:41', '2014-03-12 00:58:09');
INSERT INTO `admin_site_node` VALUES ('299', '38', 'checkPass', '批准', '35-36-37-38-299-', '1', '0', '', '7', '1', '2014-03-12 00:41:19', '2014-03-12 00:57:48');
INSERT INTO `admin_site_node` VALUES ('300', '38', 'resume', '恢复', '35-36-37-38-300-', '1', '0', '', '6', '1', '2014-03-12 00:41:35', '2014-03-12 00:41:35');
INSERT INTO `admin_site_node` VALUES ('301', '38', 'update', '更新', '35-36-37-38-301-', '1', '0', '', '5', '1', '2014-03-12 00:41:55', '2014-03-12 00:41:55');
INSERT INTO `admin_site_node` VALUES ('302', '38', 'edit', '修改', '35-36-37-38-302-', '1', '0', '', '4', '1', '2014-03-12 00:42:18', '2014-03-12 00:47:52');
INSERT INTO `admin_site_node` VALUES ('303', '38', 'insert', '添加', '35-36-37-38-303-', '1', '0', '', '3', '1', '2014-03-12 00:42:35', '2014-03-12 00:47:12');
INSERT INTO `admin_site_node` VALUES ('304', '38', 'add', '新增', '35-36-37-38-304-', '1', '0', '', '2', '1', '2014-03-12 00:42:58', '2014-03-12 00:44:25');
INSERT INTO `admin_site_node` VALUES ('305', '38', 'index', '列表', '35-36-37-38-305-', '1', '0', '', '1', '1', '2014-03-12 00:58:38', '2014-03-12 00:58:38');
INSERT INTO `admin_site_node` VALUES ('306', '39', 'saveSort', '保存排序', '35-36-37-39-306-', '1', '0', '', '12', '1', '2014-03-12 00:59:29', '2014-03-12 00:59:29');
INSERT INTO `admin_site_node` VALUES ('307', '39', 'sort', '排序', '35-36-37-39-307-', '1', '0', '', '11', '1', '2014-03-12 00:59:51', '2014-03-12 00:59:51');
INSERT INTO `admin_site_node` VALUES ('308', '39', 'delete', '删除', '35-36-37-39-308-', '1', '0', '', '10', '1', '2014-03-12 01:00:07', '2014-03-12 01:00:07');
INSERT INTO `admin_site_node` VALUES ('309', '39', 'recycle', '还原', '35-36-37-39-309-', '1', '0', '', '9', '1', '2014-03-12 01:00:35', '2014-03-12 01:00:35');
INSERT INTO `admin_site_node` VALUES ('310', '39', 'forbid', '禁止', '35-36-37-39-310-', '1', '0', '', '8', '1', '2014-03-12 01:00:50', '2014-03-12 01:00:50');
INSERT INTO `admin_site_node` VALUES ('311', '39', 'checkPass', '批准', '35-36-37-39-311-', '1', '0', '', '7', '1', '2014-03-12 01:01:53', '2014-03-12 01:01:53');
INSERT INTO `admin_site_node` VALUES ('312', '39', 'resume', '恢复', '35-36-37-39-312-', '1', '0', '', '6', '1', '2014-03-12 01:02:21', '2014-03-12 01:02:21');
INSERT INTO `admin_site_node` VALUES ('313', '39', 'update', '更新', '35-36-37-39-313-', '1', '0', '', '5', '1', '2014-03-12 01:02:36', '2014-03-12 01:02:36');
INSERT INTO `admin_site_node` VALUES ('314', '39', 'edit', '修改', '35-36-37-39-314-', '1', '0', '', '4', '1', '2014-03-12 01:02:53', '2014-03-12 01:02:53');
INSERT INTO `admin_site_node` VALUES ('315', '39', 'insert', '添加', '35-36-37-39-315-', '1', '0', '', '3', '1', '2014-03-12 01:03:10', '2014-03-12 01:03:10');
INSERT INTO `admin_site_node` VALUES ('316', '39', 'add', '新增', '35-36-37-39-316-', '1', '0', '', '2', '1', '2014-03-12 01:03:26', '2014-03-12 01:03:26');
INSERT INTO `admin_site_node` VALUES ('317', '39', 'index', '列表', '35-36-37-39-317-', '1', '0', '', '1', '1', '2014-03-12 01:03:41', '2014-03-12 01:03:41');
INSERT INTO `admin_site_node` VALUES ('318', '29', 'delete', '删除', '28-65-45-29-318-', '1', '0', '', '10', '1', '2014-03-12 01:05:01', '2014-03-12 01:05:01');
INSERT INTO `admin_site_node` VALUES ('319', '29', 'recycle', '还原', '28-65-45-29-319-', '1', '0', '', '9', '1', '2014-03-12 01:05:16', '2014-03-12 01:05:16');
INSERT INTO `admin_site_node` VALUES ('320', '29', 'forbid', '禁止', '28-65-45-29-320-', '1', '0', '', '8', '1', '2014-03-12 01:05:34', '2014-03-12 01:05:34');
INSERT INTO `admin_site_node` VALUES ('321', '29', 'checkPass', '批准', '28-65-45-29-321-', '1', '0', '', '7', '1', '2014-03-12 01:05:50', '2014-03-12 01:05:50');
INSERT INTO `admin_site_node` VALUES ('322', '29', 'resume', '恢复', '28-65-45-29-322-', '1', '0', '', '6', '1', '2014-03-12 01:06:05', '2014-03-12 01:06:05');
INSERT INTO `admin_site_node` VALUES ('323', '29', 'update', '更新', '28-65-45-29-323-', '1', '0', '', '5', '1', '2014-03-12 01:06:18', '2014-03-12 01:06:18');
INSERT INTO `admin_site_node` VALUES ('324', '29', 'edit', '修改', '28-65-45-29-324-', '1', '0', '', '4', '1', '2014-03-12 01:06:33', '2014-03-12 01:06:33');
INSERT INTO `admin_site_node` VALUES ('325', '29', 'insert', '添加', '28-65-45-29-325-', '1', '0', '', '3', '1', '2014-03-12 01:06:50', '2014-03-12 01:06:50');
INSERT INTO `admin_site_node` VALUES ('326', '29', 'add', '新增', '28-65-45-29-326-', '1', '0', '', '2', '1', '2014-03-12 01:07:05', '2014-03-12 01:07:05');
INSERT INTO `admin_site_node` VALUES ('327', '29', 'index', '列表', '28-65-45-29-327-', '1', '0', '', '1', '1', '2014-03-12 01:07:23', '2014-03-12 01:07:23');
INSERT INTO `admin_site_node` VALUES ('328', '20', 'imgManagerIndex', '图片在线', '34-2-18-20-328-', '1', '0', '', '14', '1', '2014-03-12 18:57:55', '2014-03-12 18:57:55');
INSERT INTO `admin_site_node` VALUES ('329', '39', 'imgManagerIndex', '图片在线', '35-36-37-39-329-', '1', '0', '', '14', '1', '2014-03-12 18:58:33', '2014-03-12 18:58:33');
INSERT INTO `admin_site_node` VALUES ('330', '67', 'imgManagerIndex', '图片在线', '46-42-62-67-330-', '1', '0', '', '12', '1', '2014-03-12 18:58:53', '2014-03-12 18:58:53');
INSERT INTO `admin_site_node` VALUES ('331', '20', 'imgUplode', '图片上传', '34-2-18-20-331-', '1', '0', '', '13', '1', '2014-03-12 19:38:23', '2014-03-12 19:38:23');
INSERT INTO `admin_site_node` VALUES ('332', '67', 'imgUplode', '图片上传', '46-42-62-67-332-', '1', '0', '', '11', '1', '2014-03-12 19:38:36', '2014-03-12 19:38:36');
INSERT INTO `admin_site_node` VALUES ('333', '39', 'imgUplode', '图片上传', '35-36-37-39-333-', '1', '0', '', '13', '1', '2014-03-12 19:38:51', '2014-03-12 19:38:51');

-- ----------------------------
-- Table structure for `admin_site_role`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_role`;
CREATE TABLE `admin_site_role` (
  `rid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '角色父级ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '角色名称',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`rid`),
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='设置角色表';

-- ----------------------------
-- Records of admin_site_role
-- ----------------------------
INSERT INTO `admin_site_role` VALUES ('1', '1', '0', '超级管理员', '1', '1', '2013-02-03 16:08:22', '2013-02-03 16:08:22');
INSERT INTO `admin_site_role` VALUES ('2', '1', '0', '管理员', '2', '1', '2013-02-03 16:25:25', '2013-11-12 18:34:59');

-- ----------------------------
-- Table structure for `admin_site_role_user`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_role_user`;
CREATE TABLE `admin_site_role_user` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `rid` int(11) NOT NULL DEFAULT '0' COMMENT '角色ID，关联admin_site_role表rid字段',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联user_base表uid字段',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `rid` (`rid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='设置角色关联用户表';

-- ----------------------------
-- Records of admin_site_role_user
-- ----------------------------
INSERT INTO `admin_site_role_user` VALUES ('1', '1', '1', '2', '1', '2013-02-07 14:58:48', '2013-02-07 14:58:48');

-- ----------------------------
-- Table structure for `admin_site_web`
-- ----------------------------
DROP TABLE IF EXISTS `admin_site_web`;
CREATE TABLE `admin_site_web` (
  `sid` int(6) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `blcode` varchar(30) NOT NULL DEFAULT 'zh-cn' COMMENT '语言编码，关联base_lang表code字段',
  `domain` varchar(30) NOT NULL DEFAULT '' COMMENT '网站域名',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '网站名称',
  `keywords` varchar(800) DEFAULT '' COMMENT '网站关键字',
  `description` varchar(800) DEFAULT '' COMMENT '网站描述',
  `template` varchar(30) DEFAULT 'default' COMMENT '网站模板名称',
  `record_no` varchar(30) DEFAULT '' COMMENT '网站备案号',
  `bottom_info` varchar(800) DEFAULT '' COMMENT '网站底部信息（包含统计代码）',
  `reg_info` varchar(255) DEFAULT '1' COMMENT '注册信息：1为用户名，2为手机号，3为邮箱，4为确认密码，5为性别，6为出生日期-年，7为出生日期-月，8为出生日期-日，9为居住地区-省，10为居住地区-市，11为居住地区-区',
  `is_ajax_reg` tinyint(1) DEFAULT '0' COMMENT '是否启用ajax注册: 0为不启用，1为启用',
  `is_ajax_login` tinyint(1) DEFAULT '0' COMMENT '是否启用ajax登陆: 0为不启用，1为启用',
  `login_type` varchar(255) DEFAULT '1' COMMENT '登陆方式: 1为用户名，2为手机号，3为邮箱，4为uid',
  `joint_login_show` varchar(255) DEFAULT '' COMMENT '联合登陆使用地方: 1为登陆页，2为注册页',
  `joint_login_type` varchar(255) DEFAULT '' COMMENT '联合登陆方式: qq为QQ，weixin为微信，tencent为腾讯微博，sina为新浪微博，t163为网易微博，sohu为搜狐微博，alipay为支付宝，taobao为淘宝网，renren为人人网，kaixin为开心网，x360为360，douban为豆瓣，github为Github，google为Google，msn为MSN，diandian为点点，baidu为百度',
  `enable_interface` varchar(255) DEFAULT '' COMMENT '启用接口调用: BaseService，BlogService，ProductService，SearchService，SystemService，UserService',
  `enable_interface_alone_domain` tinyint(1) DEFAULT '0' COMMENT '启用接口独立域名: 0为不启用，1为启用',
  `enable_two_domain` varchar(500) DEFAULT '' COMMENT '启用二级域名: admin，service，Admin，BaseAdmin，BaseService，Blog，BlogAdmin，BlogService，Product，ProductAdmin，ProductService，Search，SearchAdmin，SearchService，System，SystemAdmin，SystemService，User，UserService，UserAdmin',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`sid`),
  KEY `domain` (`domain`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='站点管理';

-- ----------------------------
-- Records of admin_site_web
-- ----------------------------
INSERT INTO `admin_site_web` VALUES ('1', 'zh-cn', 'yzxrkj', 'xiangrui网', 'xiangrui', 'xiangrui', 'default', '', '', '1,2,3,4,5,6,7,8,9,10,11', '0', '0', '1,2', '1,2', 'qq,sina,alipay', 'BaseService', '1', '', '1', '1', '2012-12-11 13:58:09', '2014-03-14 20:55:15');
INSERT INTO `admin_site_web` VALUES ('2', 'en-us', 'altila', 'altilaWeb', 'altila', 'altila', 'default', '', '', '1', '0', '0', '1', '', '', '', '0', '', '2', '0', '2012-12-11 13:58:09', '2013-04-28 21:40:12');
INSERT INTO `admin_site_web` VALUES ('3', 'en-us', 'altilacms', 'AltilaCms Web', '', '', 'default', '', '', '1', '0', '0', '1', '', '', '', '0', '', '0', '1', '2013-01-01 11:29:26', '2013-11-19 11:27:09');
INSERT INTO `admin_site_web` VALUES ('4', 'zh-cn', 'altilacms', 'AltilaCms网', '', '', 'default', '', '', '1', '0', '0', '1', '', '', 'BaseService', '0', 'service', '0', '1', '2013-01-04 16:20:42', '2014-01-17 14:45:50');
INSERT INTO `admin_site_web` VALUES ('5', 'zh-cn', 'zhuoao', 'zhuoao', '', '', 'default', '', null, '1', '0', '0', '1', '', '', '', '0', '', '0', '2', '2013-01-04 16:22:27', '2013-01-04 17:27:41');
INSERT INTO `admin_site_web` VALUES ('6', 'zh-cn', 'luckyli', 'luckyli', '', '', 'default', '', '', '1', '0', '0', '1', '', '', '', '0', '', '0', '1', '2014-03-05 23:28:04', '2014-03-05 23:28:04');
INSERT INTO `admin_site_web` VALUES ('7', 'zh-cn', 'altila', 'altila', '', '', 'default', '', '', '1', '0', '0', '1', '', '', '', '0', '', '0', '1', '2014-03-05 23:33:32', '2014-03-05 23:33:32');

-- ----------------------------
-- Table structure for `base_ad_function`
-- ----------------------------
DROP TABLE IF EXISTS `base_ad_function`;
CREATE TABLE `base_ad_function` (
  `afid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '广告方法编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '广告方法名称',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`afid`),
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='广告方法表';

-- ----------------------------
-- Records of base_ad_function
-- ----------------------------
INSERT INTO `base_ad_function` VALUES ('1', 'adOriginal', '无效果', '1', '1', '2013-03-08 22:35:21', '2013-03-08 22:35:21');
INSERT INTO `base_ad_function` VALUES ('2', 'adCarousel', '轮播', '2', '1', '2013-03-08 22:35:34', '2013-03-08 22:36:43');

-- ----------------------------
-- Table structure for `base_ad_info`
-- ----------------------------
DROP TABLE IF EXISTS `base_ad_info`;
CREATE TABLE `base_ad_info` (
  `adid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `apid` int(11) NOT NULL DEFAULT '0' COMMENT '广告位ID，关联base_ad_position表apid字段',
  `appdcode` int(6) DEFAULT '1' COMMENT '设备编码，关联admin_base_app_device表appdcode字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '广告名称',
  `style` varchar(100) DEFAULT '' COMMENT '广告样式',
  `type` tinyint(1) DEFAULT '0' COMMENT '广告类型: 0为图片，1为flash，2为html，3为魔方',
  `link` varchar(255) DEFAULT '' COMMENT '链接地址',
  `content` text COMMENT '广告内容: 图片地址，flash地址，html代码',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`adid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `apid` (`apid`) USING BTREE,
  KEY `type` (`type`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='广告信息表';

-- ----------------------------
-- Records of base_ad_info
-- ----------------------------
INSERT INTO `base_ad_info` VALUES ('1', '1', '1', '1', 'Logo', '', '0', '/', 'http://bcs.duapp.com/altila-uploads/Images/altila/logo/altila-logo.jpg', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-09 17:11:48', '2013-11-21 15:40:11');
INSERT INTO `base_ad_info` VALUES ('2', '1', '4', '1', '广告魔方', 'aaa', '3', '', '&lt;div class=&quot;magic_box&quot; style=&quot;height:392px&quot;&gt;&lt;input class=&quot;_sideLen&quot; name=&quot;_sideLen&quot; value=&quot;98&quot; type=&quot;hidden&quot;&gt;&lt;div class=&quot;magic_item&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://www.banggo.com/Theme/theme_MB-ZHUTI538.shtml&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down1.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;z-index:10;left:196px;top:0px;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_2_a_a_a_a_a_a_a_a_a_a_a_6-y-w35-ly-b6bm-f.shtml&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down2.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;z-index:10;left:196px;top:196px;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_2_a_a_a_a_a_a_a_a_a_a_a_5q-s-n54mp5a-sn5oi-y5-y-o15b-c4.shtml&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down3.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;z-index: 10; left: 392px; top: 0px;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_2_a_a_a_a_a_a_a_a_a_a_a_5r-w357u15a6d5a6d.shtml&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down4.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;z-index:10;left:588px;top:0px;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_2_a_a_a_a_a_a_a_a_a_a_a_576-o5b2x5-y6-c.shtml&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down5.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;z-index:10;left:588px;top:196px;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_a.shtml?clickType=1&amp;amp;word=kitty&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down6.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;z-index:10;left:784px;top:0px;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_a.shtml?clickType=1&amp;amp;word=CHICALOCA&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20121127/mbnew-1123-980-down7.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;div class=&quot;magic_item&quot; style=&quot;left:784px;top:196px;z-index:10;&quot;&gt;&lt;a target=&quot;_blank&quot; href=&quot;http://search.banggo.com/Search/a_a.shtml?clickType=1&amp;amp;word=阿拉蕾&amp;amp;t=metersbonwe&amp;amp;&quot;&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/cms/20130114/mbnew-0111-980nv-alalei.jpg&quot;&gt;&lt;/a&gt;&lt;/div&gt;&lt;/div&gt;', '6', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-09 20:22:06', '2013-03-16 16:56:36');
INSERT INTO `base_ad_info` VALUES ('3', '1', '3', '1', '底部通栏广告', '', '2', '', '&lt;p&gt;&lt;img src=&quot;http://img.mbanggo.com/sources/bgimages/bg/fotter_0217.jpg&quot; alt=&quot;14天退换货保障，139元起免费送货，100%正品保证！&quot; /&gt;&lt;/p&gt;', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-16 13:50:49', '2013-03-16 13:50:49');
INSERT INTO `base_ad_info` VALUES ('4', '1', '4', '1', 'flash', '', '1', '', 'http://img.mbanggo.com/sources/bgimages/20120517/loaderswf01.swf', '2', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-16 15:09:46', '2013-03-17 20:23:54');
INSERT INTO `base_ad_info` VALUES ('5', '1', '4', '1', '图片广告', '', '0', '', '__CSS_IMG__/ad/01.jpg', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 17:45:20', '2014-03-19 19:08:19');
INSERT INTO `base_ad_info` VALUES ('6', '1', '4', '1', '狂欢延续', '', '0', '', '__CSS_IMG__/ad/05.jpg', '5', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 17:54:07', '2014-03-19 19:10:29');
INSERT INTO `base_ad_info` VALUES ('7', '1', '4', '1', '温暖相逢', '', '0', '', '__CSS_IMG__/ad/04.jpg', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 17:55:33', '2014-03-19 19:10:18');
INSERT INTO `base_ad_info` VALUES ('8', '1', '4', '1', '毛衫&amp;牛仔', '', '0', '', '__CSS_IMG__/ad/03.jpg', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 17:56:08', '2014-03-19 19:10:09');
INSERT INTO `base_ad_info` VALUES ('9', '1', '4', '1', '聪明穿衣', '', '0', '', '__CSS_IMG__/ad/02.jpg', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 17:56:39', '2014-03-19 19:09:43');

-- ----------------------------
-- Table structure for `base_ad_position`
-- ----------------------------
DROP TABLE IF EXISTS `base_ad_position`;
CREATE TABLE `base_ad_position` (
  `apid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `afid` int(11) NOT NULL DEFAULT '1' COMMENT '广告方法ID，关联base_ad_function表afid字段',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '广告位名称',
  `position` int(3) DEFAULT '-1' COMMENT '广告位位置: 0为公共，-1为其他',
  `style` varchar(100) DEFAULT '' COMMENT '广告位样式',
  `width` int(5) DEFAULT '0' COMMENT '广告位宽度，单位为像素',
  `height` int(5) DEFAULT '0' COMMENT '广告位高度，单位为像素',
  `sum` tinyint(5) DEFAULT '1' COMMENT '广告位广告数',
  `row` tinyint(5) DEFAULT '1' COMMENT '广告位列数',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`apid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 COMMENT='广告位信息表';

-- ----------------------------
-- Records of base_ad_position
-- ----------------------------
INSERT INTO `base_ad_position` VALUES ('1', '1', '1', 'logo', 'Logo', '0', '', '250', '80', '1', '1', '1', '1', '2013-03-09 10:33:43', '2013-03-17 19:22:32');
INSERT INTO `base_ad_position` VALUES ('2', '1', '1', 'topAd', '头部通栏广告', '0', '', '980', '50', '1', '1', '2', '1', '2013-03-09 15:20:10', '2013-03-09 15:20:10');
INSERT INTO `base_ad_position` VALUES ('3', '1', '1', 'bottomAd', '底部通栏广告', '0', '', '980', '50', '1', '1', '4', '1', '2013-03-09 15:21:08', '2013-03-09 15:21:08');
INSERT INTO `base_ad_position` VALUES ('4', '1', '2', 'Base_Index_index', '首页广告', '-1', 'aa', '980', '400', '5', '1', '3', '1', '2013-03-09 21:30:13', '2014-01-16 23:17:08');
INSERT INTO `base_ad_position` VALUES ('5', '1', '1', 'Base_ArticleCategory_index', '文章分类页通栏广告', '-1', '', '980', '80', '1', '1', '0', '1', '2013-03-16 13:52:30', '2014-01-16 12:34:59');

-- ----------------------------
-- Table structure for `base_ad_schedule`
-- ----------------------------
DROP TABLE IF EXISTS `base_ad_schedule`;
CREATE TABLE `base_ad_schedule` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `adid` int(11) NOT NULL DEFAULT '0' COMMENT '广告ID，关联base_ad_info表adid字段',
  `apid` int(11) NOT NULL DEFAULT '0' COMMENT '广告位ID，关联base_ad_position表apid字段',
  `appdcode` int(6) DEFAULT '1' COMMENT '设备编码，关联admin_base_app_device表appdcode字段',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `apid` (`apid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='广告排期表';

-- ----------------------------
-- Records of base_ad_schedule
-- ----------------------------
INSERT INTO `base_ad_schedule` VALUES ('1', '1', '2', '4', '1', '1', '0', '2014-02-23 00:00:00', '2014-02-28 00:00:00', '2013-03-09 19:32:41', '2014-02-23 21:51:22');

-- ----------------------------
-- Table structure for `base_article_album`
-- ----------------------------
DROP TABLE IF EXISTS `base_article_album`;
CREATE TABLE `base_article_album` (
  `aaid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联user_base表uid字段',
  `name` varchar(100) DEFAULT '' COMMENT '相册名称',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`aaid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='文章相册表';

-- ----------------------------
-- Records of base_article_album
-- ----------------------------
INSERT INTO `base_article_album` VALUES ('1', '1', '1', '案例展示', '0', '1', '2013-01-27 11:25:02', '2013-01-27 19:03:48');
INSERT INTO `base_article_album` VALUES ('2', '2', '1', 'About Us', '0', '1', '2013-01-28 21:24:30', '2013-01-28 21:24:30');

-- ----------------------------
-- Table structure for `base_article_album_photo`
-- ----------------------------
DROP TABLE IF EXISTS `base_article_album_photo`;
CREATE TABLE `base_article_album_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联user_base表uid字段',
  `aaid` int(11) NOT NULL DEFAULT '0' COMMENT '相册ID，关联base_article_album表aaid字段；0为贴图相册',
  `name` varchar(250) DEFAULT '' COMMENT '相片名称',
  `url` varchar(250) DEFAULT '' COMMENT '相片地址',
  `size` int(11) DEFAULT '0' COMMENT '相片大小',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `aaid` (`aaid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='文章相片表';

-- ----------------------------
-- Records of base_article_album_photo
-- ----------------------------
INSERT INTO `base_article_album_photo` VALUES ('1', '1', '1', '0', 'large_clxm_62092h206091', '__UPLOAD__/Images/altilacms/ArticleAlbumPhoto/20130128/5105e07a69b07.jpg', '108211', '0', '1', '2013-01-28 10:20:42', '2013-01-28 10:20:42');
INSERT INTO `base_article_album_photo` VALUES ('2', '1', '1', '1', 'large_clxm_62092h206091', '__UPLOAD__/Images/altilacms/ArticleAlbumPhoto/20130128/5105e0fd2e36c.jpg', '108211', '0', '1', '2013-01-28 10:22:53', '2013-01-28 10:22:53');
INSERT INTO `base_article_album_photo` VALUES ('3', '2', '1', '2', 'large_jt4L_61682a206091', '__UPLOAD__/Images/altilacms/ArticleAlbumPhoto/20130128/51067f9c641d8.jpg', '104652', '0', '1', '2013-01-28 21:39:40', '2013-01-28 21:39:40');
INSERT INTO `base_article_album_photo` VALUES ('4', '1', '1', '0', '20090914081712350', '__UPLOAD__/Images/altilacms/ArticleAlbumPhoto/20130128/5142d1731ba56.jpg', '46697', '0', '1', '2013-01-28 22:39:40', '2013-01-28 22:39:40');
INSERT INTO `base_article_album_photo` VALUES ('5', '1', '1', '0', '中国矿产地图', '__UPLOAD__/Images/altilacms/ArticleAlbumPhoto/20130128/5142d17660c60.jpg', '180169', '0', '1', '2013-01-28 22:59:40', '2013-01-28 22:59:40');
INSERT INTO `base_article_album_photo` VALUES ('6', '1', '1', '0', 'a_2_1', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140319/53299f5e5a253.jpg', '50768', '0', '1', '2014-03-19 21:45:02', '2014-03-19 21:45:02');
INSERT INTO `base_article_album_photo` VALUES ('7', '1', '1', '0', 'a_1_1', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140319/53299fa9778b9.jpg', '69127', '0', '1', '2014-03-19 21:46:17', '2014-03-19 21:46:17');
INSERT INTO `base_article_album_photo` VALUES ('8', '1', '1', '0', 'a_1_1', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140320/5329c606d3612.jpg', '69127', '0', '1', '2014-03-20 00:29:58', '2014-03-20 00:29:58');
INSERT INTO `base_article_album_photo` VALUES ('9', '1', '1', '0', 'a_1_2', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140320/5329c607ed8c0.jpg', '15080', '0', '1', '2014-03-20 00:29:59', '2014-03-20 00:29:59');
INSERT INTO `base_article_album_photo` VALUES ('10', '1', '1', '0', 'a_1_1', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140320/5329c7c9df383.jpg', '69127', '0', '1', '2014-03-20 00:37:29', '2014-03-20 00:37:29');
INSERT INTO `base_article_album_photo` VALUES ('11', '1', '1', '0', 'a_2_1', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140320/5329d423e3eed.jpg', '50768', '0', '1', '2014-03-20 01:30:11', '2014-03-20 01:30:11');
INSERT INTO `base_article_album_photo` VALUES ('12', '1', '1', '0', 'sylb-0217-kgdj', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140321/532b199076774.jpg', '76730', '0', '1', '2014-03-21 00:38:40', '2014-03-21 00:38:40');
INSERT INTO `base_article_album_photo` VALUES ('13', '1', '1', '0', 'sylb-0217-kgdj', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140321/532b19d4075e2.jpg', '76730', '0', '1', '2014-03-21 00:39:48', '2014-03-21 00:39:48');

-- ----------------------------
-- Table structure for `base_article_info`
-- ----------------------------
DROP TABLE IF EXISTS `base_article_info`;
CREATE TABLE `base_article_info` (
  `aiid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联user_base表uid字段',
  `smid` int(11) NOT NULL DEFAULT '0' COMMENT '文章分类ID，关联base_site_menu表smid字段',
  `appdcode` int(6) DEFAULT '1' COMMENT '设备编码，关联admin_base_app_device表appdcode字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '文章名称',
  `class` varchar(100) DEFAULT '' COMMENT '标题样式',
  `tags_name` varchar(255) DEFAULT '' COMMENT '文章标签，用逗号分割',
  `description` varchar(255) DEFAULT '' COMMENT '文章简述',
  `content` text COMMENT '文章内容',
  `thumbnail` varchar(255) DEFAULT '' COMMENT '文章缩略图',
  `img_url` varchar(800) DEFAULT '' COMMENT '文章内图片，用逗号分割',
  `source_url` varchar(800) DEFAULT '' COMMENT '文章来源网址，用逗号分割',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`aiid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `smid` (`smid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=utf8 COMMENT='文章信息表';

-- ----------------------------
-- Records of base_article_info
-- ----------------------------
INSERT INTO `base_article_info` VALUES ('1', '1', '1', '23', '3', '公司介绍', '', '', '一个细胞可人工定向培养成完整的一个生物体\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;这就是 &nbsp;科学一个基因可在短期内变成数以万计的生物体\n &nbs...', '&lt;div class=&quot;container page_content&quot;&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;span6 text-center&quot;&gt;&lt;img src=&quot;/Public/yzxrkj/images/icon/i_a_1_1_1.png&quot; alt=&quot;&quot;/&gt;&lt;p&gt;一个细胞&lt;/p&gt;&lt;div class=&quot;line&quot;&gt;&lt;/div&gt;可人工定向培养成完整的一个生物体&lt;br/&gt;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;这就是 &amp;nbsp;&lt;span class=&quot;green&quot;&gt;科学&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;span6 text-center&quot;&gt;&lt;img src=&quot;/Public/yzxrkj/images/icon/i_a_1_1_2.png&quot; alt=&quot;&quot;/&gt;&lt;p&gt;一个基因&lt;/p&gt;&lt;div class=&quot;line&quot;&gt;&lt;/div&gt;可在短期内变成数以万计的生物体&lt;br/&gt;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;这就是 &amp;nbsp;&lt;span class=&quot;green&quot;&gt;技术&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;span6 offset3 text-center&quot;&gt;&lt;img src=&quot;/Public/yzxrkj/images/icon/i_a_1_1_3.png&quot; alt=&quot;&quot;/&gt;&lt;p&gt;一个公司&lt;/p&gt;&lt;div class=&quot;line&quot;&gt;&lt;/div&gt;可用细胞、基因技术，利用农林剩余物变废为宝&lt;br/&gt;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;化腐朽为神奇，呈现出万千世界&lt;br/&gt;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;这就是 &amp;nbsp;&lt;span class=&quot;green&quot;&gt;祥瑞科技&lt;/span&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;span10 offset1&quot;&gt;&lt;div class=&quot;line&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;span8 offset2&quot;&gt;湖南永州市祥瑞生物科技有限公司是一家集食用菌和农产品种植、加工、销售于一体的生态农业企业。公司依托现代高科技农业为基础，大力发展现代原生态农业产业链，是目前国内少有的现代农业综合型企业。公司坐落在风景秀丽的湖南省江永县绿色食品工业园，环境优美，布局和谐，生态人文，与自然环境浑然一体，展现出一种天人合一，和谐共处的景象。厂区面积345亩，建筑面积10万余平方米。年产各类食用菌鲜品6万吨以上，食用菌原汁酱油1.5万吨，食用菌加工产品2万吨及各类农产品加工等，年产值达10亿元以上。&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '&lt;p&gt;&lt;span id=&quot;_baidu_bookmark_start_0&quot; style=&quot;display: none; line-height: 0px;&quot;&gt;‍&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '/Public/yzxrkj/images/icon/i_a_1_1_1.png,/Public/yzxrkj/images/icon/i_a_1_1_2.png,/Public/yzxrkj/images/icon/i_a_1_1_3.png,', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-01-17 13:48:35', '2014-03-20 01:29:39');
INSERT INTO `base_article_info` VALUES ('2', '2', '1', '11', '1', 'about us', '', '', 'about us description', '&lt;p&gt;about us&lt;br /&gt;&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-01-21 20:37:20', '2013-01-21 21:57:41');
INSERT INTO `base_article_info` VALUES ('3', '1', '1', '5', '1', '发展历程', '', '', '20131月“姑奶奶”被评为优秀品牌 &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nb...', '&lt;div class=&quot;container&quot;&gt;&lt;div class=&quot;row&quot;&gt;&lt;div class=&quot;span12&quot;&gt;&lt;div class=&quot;milestone_wrap&quot;&gt;&lt;div class=&quot;milestone_items&quot;&gt;&lt;div class=&quot;m_item&quot;&gt;&lt;div class=&quot;m_i_1&quot;&gt;&lt;div class=&quot;div_dl&quot;&gt;&lt;div class=&quot;div_dt&quot;&gt;&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;&lt;span class=&quot;milestone_mark&quot;&gt;2013&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;1月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;“姑奶奶”被评为优秀品牌&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;或湖南省食用菌行业现金单位&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;江永县优秀企业&lt;br/&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;5月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;加入中国食用菌协会&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;6月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;2-4条生产线厂房竣工并开始安装设备&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;9月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获“中国绿色食品”&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;荣获质量兴市示范企业&lt;br/&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;11月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第二条生产线投产&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;12月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;确定为“民族贸易企业”&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;荣获湖南省农业产业龙头企业&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;m_i_2&quot;&gt;&lt;div class=&quot;div_dl&quot;&gt;&lt;div class=&quot;div_dt&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;&lt;span class=&quot;milestone_mark&quot;&gt;2012&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;1月19日&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第一批产品上市，日产金针菇15吨&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;3-5月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第2-4条生产线相继开工建设&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;10月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获永州市农业产业化龙头企业&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;11月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获中国中部（湖南）国际农博会金奖&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;m_item&quot;&gt;&lt;div class=&quot;m_i_1&quot;&gt;&lt;div class=&quot;div_dl&quot;&gt;&lt;div class=&quot;div_dt&quot;&gt;&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;&lt;span class=&quot;milestone_mark&quot;&gt;2011&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;1月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;“姑奶奶”被评为优秀品牌&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;或湖南省食用菌行业现金单位&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;江永县优秀企业&lt;br/&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;5月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;加入中国食用菌协会&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;6月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;2-4条生产线厂房竣工并开始安装设备&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;9月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获“中国绿色食品”&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;荣获质量兴市示范企业&lt;br/&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;11月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第二条生产线投产&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;12月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;确定为“民族贸易企业”&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;荣获湖南省农业产业龙头企业&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;m_i_2&quot;&gt;&lt;div class=&quot;div_dl&quot;&gt;&lt;div class=&quot;div_dt&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;&lt;span class=&quot;milestone_mark&quot;&gt;2010&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;1月19日&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第一批产品上市，日产金针菇15吨&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;3-5月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第2-4条生产线相继开工建设&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;10月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获永州市农业产业化龙头企业&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;11月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获中国中部（湖南）国际农博会金奖&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;m_item&quot;&gt;&lt;div class=&quot;m_i_1&quot;&gt;&lt;div class=&quot;div_dl&quot;&gt;&lt;div class=&quot;div_dt&quot;&gt;&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;&lt;span class=&quot;milestone_mark&quot;&gt;2009&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;1月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;“姑奶奶”被评为优秀品牌&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;或湖南省食用菌行业现金单位&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;江永县优秀企业&lt;br/&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;5月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;加入中国食用菌协会&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;6月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;2-4条生产线厂房竣工并开始安装设备&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;9月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获“中国绿色食品”&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;荣获质量兴市示范企业&lt;br/&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;11月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第二条生产线投产&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;12月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;确定为“民族贸易企业”&lt;br/&gt; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;荣获湖南省农业产业龙头企业&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;m_i_2&quot;&gt;&lt;div class=&quot;div_dl&quot;&gt;&lt;div class=&quot;div_dt&quot;&gt;&amp;nbsp;&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;&lt;span class=&quot;milestone_mark&quot;&gt;2008&lt;/span&gt;&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;1月19日&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第一批产品上市，日产金针菇15吨&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;3-5月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;第2-4条生产线相继开工建设&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;10月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获永州市农业产业化龙头企业&lt;/div&gt;&lt;div class=&quot;div_dt&quot;&gt;11月&lt;/div&gt;&lt;div class=&quot;div_dd&quot;&gt;荣获中国中部（湖南）国际农博会金奖&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-10 20:40:54', '2014-03-21 00:40:55');
INSERT INTO `base_article_info` VALUES ('4', '1', '1', '23', '2', '组织结构', '', '', '组织结构', '&lt;p&gt;组织结构&lt;/p&gt;', '&lt;p&gt;&lt;span id=&quot;_baidu_bookmark_start_0&quot; style=&quot;display: none; line-height: 0px;&quot;&gt;‍&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-10 20:41:48', '2014-03-20 01:29:55');
INSERT INTO `base_article_info` VALUES ('5', '1', '2', '20', '9', '社会招聘', '', '', '社会招聘', '&lt;p&gt;社会招聘&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-11 20:47:16', '2014-03-14 21:58:41');
INSERT INTO `base_article_info` VALUES ('6', '1', '2', '20', '1', '员工活动', '', '', '员工活动', '&lt;p&gt;员工活动&lt;/p&gt;', '', '', 'baidu', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 14:41:47', '2014-03-14 21:59:18');
INSERT INTO `base_article_info` VALUES ('7', '1', '2', '20', '1', '校园招聘', '', '', '校园招聘', '&lt;p&gt;校园招聘&lt;/p&gt;', '', '', 'baidu', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 14:47:48', '2014-03-14 21:56:29');
INSERT INTO `base_article_info` VALUES ('8', '1', '2', '20', '1', '人才战略', '', '', '人才战略', '&lt;p&gt;人才战略&lt;/p&gt;', 'http://politics.people.com.cn/NMediaFile/2013/1112/MAIN201311121014000549678066550.jpg', '', 'baidu', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 14:49:55', '2014-03-14 21:56:06');
INSERT INTO `base_article_info` VALUES ('9', '1', '2', '25', '1', '可追溯系统', '', '', '可追溯系统', '&lt;p&gt;可追溯系统&lt;/p&gt;', 'http://www.haiwainet.cn/HLMediaFile/20131121/88/9603890276699222872.jpg', '', 'baidu', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 17:50:16', '2014-03-14 21:50:52');
INSERT INTO `base_article_info` VALUES ('10', '1', '2', '42', '1', '健康产业链', '', '', '健康产业链', '&lt;p&gt;健康产业链&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 17:53:50', '2014-03-14 21:50:18');
INSERT INTO `base_article_info` VALUES ('11', '1', '2', '41', '1', '现代原生态理念', '', '', '现代原生态理念', '&lt;p&gt;现代原生态理念&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 17:57:16', '2014-03-14 21:49:49');
INSERT INTO `base_article_info` VALUES ('12', '1', '2', '21', '1', '科研合作', '', '', '科研合作', '&lt;p&gt;科研合作&lt;/p&gt;', '', '', 'baidu', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 17:57:39', '2014-03-14 21:47:15');
INSERT INTO `base_article_info` VALUES ('13', '1', '2', '21', '1', '工艺流程', '', '', '工艺流程', '&lt;p&gt;工艺流程&lt;/p&gt;', '', '', '', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 17:58:54', '2014-03-14 21:46:50');
INSERT INTO `base_article_info` VALUES ('14', '1', '2', '21', '1', '技术特点', '', '', '技术特点', '&lt;p&gt;技术特点&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 17:59:45', '2014-03-14 21:46:32');
INSERT INTO `base_article_info` VALUES ('15', '1', '2', '15', '1', '科研成果', '', '', '科研成果', '&lt;p&gt;科研成果&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 18:00:28', '2014-03-14 21:46:13');
INSERT INTO `base_article_info` VALUES ('16', '1', '2', '35', '1', '科研团队', '', '', '科研团队', '&lt;p&gt;科研团队&lt;/p&gt;', 'http://news.xinhuanet.com/fortune/2013-11/21/125739333_11n.jpg', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 18:01:16', '2014-03-14 21:45:12');
INSERT INTO `base_article_info` VALUES ('17', '1', '1', '35', '1', '省委书记徐守盛来厂考察', '', '', '省委书记徐守盛来厂考察', '&lt;p&gt;省委书记徐守盛来厂考察&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 18:01:54', '2014-03-17 23:04:24');
INSERT INTO `base_article_info` VALUES ('18', '1', '2', '21', '1', '行业动态1', '', '', '行业动态1', '&lt;p&gt;行业动态1&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 18:02:28', '2014-03-14 22:02:37');
INSERT INTO `base_article_info` VALUES ('19', '1', '2', '20', '1', '集体培训', '', '', '集体培训', '&lt;p&gt;集体培训&lt;/p&gt;', '', '', '', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 18:03:01', '2014-03-14 22:00:08');
INSERT INTO `base_article_info` VALUES ('20', '1', '2', '21', '1', '科研合作', '', '', '科研合作', '&lt;p&gt;科研合作&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-21 18:03:58', '2014-03-14 21:55:25');
INSERT INTO `base_article_info` VALUES ('21', '1', '2', '21', '1', '工艺流程', '', '', '工艺流程', '&lt;p&gt;工艺流程&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-22 14:40:03', '2014-03-14 21:55:05');
INSERT INTO `base_article_info` VALUES ('22', '1', '2', '21', '1', '最新招商信息', '', '', '最新招商信息', '&lt;p&gt;最新招商信息&lt;/p&gt;', 'http://himg2.huanqiu.com/attachment2010/2013/1122/20131122085351214.jpg', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-22 14:40:38', '2014-03-14 21:54:35');
INSERT INTO `base_article_info` VALUES ('23', '1', '2', '21', '1', '招商加盟', '', '', '招商加盟', '&lt;p&gt;招商加盟&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-22 14:41:16', '2014-03-14 21:54:10');
INSERT INTO `base_article_info` VALUES ('24', '1', '2', '21', '3', '营销网络', '', '', '营销网络', '&lt;p&gt;营销网络&lt;/p&gt;', 'http://news.xinhuanet.com/politics/2013-11/22/125743139_11n.jpg', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-22 14:42:04', '2014-03-14 21:53:41');
INSERT INTO `base_article_info` VALUES ('25', '1', '1', '45', '1', '祥瑞愿景', '', '', '祥瑞愿景', '&lt;p&gt;祥瑞愿景&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-14 15:13:12', '2014-03-21 00:41:26');
INSERT INTO `base_article_info` VALUES ('26', '1', '1', '46', '1', '2011年', '', '', '2011年', '&lt;p&gt;2011年&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-14 15:13:29', '2014-03-21 00:44:12');
INSERT INTO `base_article_info` VALUES ('27', '1', '1', '44', '1', '领导关怀', '', '', '领导关怀', '&lt;p&gt;领导关怀&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-14 15:13:44', '2014-03-14 15:13:44');
INSERT INTO `base_article_info` VALUES ('28', '1', '1', '4', '1', '社会责任', '', '', '社会责任', '&lt;p&gt;社会责任&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-14 15:14:29', '2014-03-14 15:14:29');
INSERT INTO `base_article_info` VALUES ('29', '1', '1', '0', '1', '现代原生态', '', '', '现代\n							原生态\n							原健康&nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp;\n							祥瑞生产基地四面环山，地处全国环境最美县城\n					...', '&lt;div class=&quot;gradient_border&quot;&gt;&lt;div class=&quot;div gradient_border_inner&quot;&gt;&lt;div class=&quot;box_sub_title&quot;&gt;现代&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							原生态&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							原健康&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;box_content show_mask&quot;&gt;&lt;img src=&quot;__CSS_IMG__/pic/p_1.jpg&quot; alt=&quot;&quot; class=&quot;box_cover&quot;/&gt;&lt;a href=&quot;&quot; class=&quot;icon_arrow_up&quot;&gt;&lt;/a&gt;&lt;div class=&quot;mask_text&quot;&gt;&lt;div class=&quot;mask_inner&quot;&gt;&amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp; &amp;nbsp;\n							祥瑞生产基地四面环山，地处全国环境最美县城&lt;br/&gt;\n							确保产品百分百绿色安全&lt;br/&gt;&lt;br/&gt;\n							\n							先进的生产技术，创造稳定的产品质量&lt;br/&gt;\n							雄厚的科研力量，保障人们的健康需求&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '/Public/yzxrkj/images/pic/p_1.jpg', '__CSS_IMG__/pic/p_1.jpg,', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 18:05:36', '2014-03-17 22:49:59');
INSERT INTO `base_article_info` VALUES ('30', '1', '1', '0', '1', '招商', '', '', '长沙\n							上海\n							\n							全面启动', '&lt;div class=&quot;gradient_border&quot;&gt;&lt;div class=&quot;div gradient_border_inner&quot;&gt;&lt;div class=&quot;box_sub_title&quot;&gt;&lt;img src=&quot;__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140321/532b19d4075e2.jpg&quot; title=&quot;sylb-0217-kgdj&quot;/&gt;长沙&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							上海\n							\n							全面启动&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;box_content show_mask&quot;&gt;&lt;img src=&quot;/Public/yzxrkj/images/pic/p_2.jpg&quot; alt=&quot;&quot; class=&quot;box_cover&quot;/&gt;&lt;a href=&quot;&quot; class=&quot;icon_arrow_up&quot;&gt;&lt;/a&gt;&lt;div class=&quot;mask_text&quot;&gt;&lt;div class=&quot;mask_inner&quot;&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '&lt;p&gt;&lt;span id=&quot;_baidu_bookmark_start_0&quot; style=&quot;display: none; line-height: 0px;&quot;&gt;‍&lt;/span&gt;&lt;br/&gt;&lt;/p&gt;', '__UPLOAD__/Images/yzxrkj/ArticleAlbumPhoto/20140321/532b19d4075e2.jpg,/Public/yzxrkj/images/pic/p_2.jpg,', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 18:10:40', '2014-03-21 00:38:57');
INSERT INTO `base_article_info` VALUES ('31', '1', '1', '0', '1', '产品', '', '', '\n							生鲜菌菇\n							食用菌酱油\n							调味品\n							有机肥料\n							保健品\n							休闲食品\n							江永特产', '&lt;div class=&quot;gradient_border&quot;&gt;&lt;div class=&quot;gradient_border_inner&quot;&gt;&lt;div class=&quot;box_sub_title&quot;&gt;\n							生鲜菌菇&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							食用菌酱油&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							调味品&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							有机肥料&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							保健品&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							休闲食品&lt;span class=&quot;icon_plus&quot;&gt;&lt;/span&gt;\n							江永特产&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;&lt;div class=&quot;box_content show_mask&quot;&gt;&lt;img src=&quot;__CSS_IMG__/pic/p_3.jpg&quot; alt=&quot;&quot; class=&quot;box_cover&quot;/&gt;&lt;a href=&quot;&quot; class=&quot;icon_arrow_up&quot;&gt;&lt;/a&gt;&lt;div class=&quot;mask_text&quot;&gt;&lt;div class=&quot;mask_inner&quot;&gt;&lt;img src=&quot;__CSS_IMG__/pic/p_text.png&quot; alt=&quot;&quot;/&gt;&lt;/div&gt;&lt;/div&gt;&lt;/div&gt;', '__CSS_IMG__/pic/p_3.jpg', '__CSS_IMG__/pic/p_3.jpg,__CSS_IMG__/pic/p_text.png,', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 22:50:56', '2014-03-17 22:50:56');
INSERT INTO `base_article_info` VALUES ('32', '1', '1', '35', '1', '副省长徐明华对公司菇的长势看好', '', '', '副省长徐明华对公司菇的长势看好', '&lt;p&gt;副省长徐明华对公司菇的长势看好&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 22:55:28', '2014-03-17 23:04:36');
INSERT INTO `base_article_info` VALUES ('33', '1', '1', '35', '1', '市委常委、市委秘书长朱映长来公司考察', '', '', '市委常委、市委秘书长朱映长来公司考察', '&lt;p&gt;市委常委、市委秘书长朱映长来公司考察&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 23:04:46', '2014-03-17 23:04:46');
INSERT INTO `base_article_info` VALUES ('34', '1', '1', '35', '1', '省政协主席胡彪来厂考察', '', '', '省政协主席胡彪来厂考察', '&lt;p&gt;省政协主席胡彪来厂考察&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 23:05:14', '2014-03-17 23:05:14');
INSERT INTO `base_article_info` VALUES ('35', '1', '1', '35', '1', '祥瑞公司2014年工作交流会在湖南农大', '', '', '祥瑞公司2014年工作交流会在湖南农大', '&lt;p&gt;祥瑞公司2014年工作交流会在湖南农大&lt;/p&gt;', '', '', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 23:05:22', '2014-03-17 23:05:22');
INSERT INTO `base_article_info` VALUES ('36', '1', '1', '0', '1', '首页商品列表', '', '', '\n    \n\n\n    \n        \n            \n        \n        \n            金针菇 300g\n        \n    \n    \n       ...', '&lt;div class=&quot;line_dot&quot;&gt;\n    &lt;div class=&quot;line_dot_inner&quot;&gt;&lt;/div&gt;\n&lt;/div&gt;\n&lt;ul class=&quot;goods_list list-paddingleft-2&quot;&gt;\n    &lt;li&gt;\n        &lt;p&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;__CSS_IMG__/goods/g_01.jpg&quot; alt=&quot;图片名称&quot; width=&quot;156&quot; height=&quot;150&quot;/&gt;&lt;/a&gt;\n        &lt;/p&gt;\n        &lt;h4&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;金针菇 300g&lt;/a&gt;\n        &lt;/h4&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n        &lt;p&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;__CSS_IMG__/goods/g_02.jpg&quot; alt=&quot;图片名称&quot; width=&quot;156&quot; height=&quot;150&quot;/&gt;&lt;/a&gt;\n        &lt;/p&gt;\n        &lt;h4&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;金针菇 300g&lt;/a&gt;\n        &lt;/h4&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n        &lt;p&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;__CSS_IMG__/goods/g_03.jpg&quot; alt=&quot;图片名称&quot; width=&quot;156&quot; height=&quot;150&quot;/&gt;&lt;/a&gt;\n        &lt;/p&gt;\n        &lt;h4&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;金针菇 300g&lt;/a&gt;\n        &lt;/h4&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n        &lt;p&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;__CSS_IMG__/goods/g_04.jpg&quot; alt=&quot;图片名称&quot; width=&quot;156&quot; height=&quot;150&quot;/&gt;&lt;/a&gt;\n        &lt;/p&gt;\n        &lt;h4&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;金针菇 300g&lt;/a&gt;\n        &lt;/h4&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n        &lt;p&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;__CSS_IMG__/goods/g_05.jpg&quot; alt=&quot;图片名称&quot; width=&quot;156&quot; height=&quot;150&quot;/&gt;&lt;/a&gt;\n        &lt;/p&gt;\n        &lt;h4&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;金针菇 300g&lt;/a&gt;\n        &lt;/h4&gt;\n    &lt;/li&gt;\n    &lt;li&gt;\n        &lt;p&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;&lt;img src=&quot;__CSS_IMG__/goods/g_06.jpg&quot; alt=&quot;图片名称&quot; width=&quot;156&quot; height=&quot;150&quot;/&gt;&lt;/a&gt;\n        &lt;/p&gt;\n        &lt;h4&gt;\n            &lt;a href=&quot;&quot; target=&quot;_blank&quot;&gt;金针菇 300g&lt;/a&gt;\n        &lt;/h4&gt;\n    &lt;/li&gt;\n&lt;/ul&gt;', '__CSS_IMG__/goods/g_01.jpg', '__CSS_IMG__/goods/g_01.jpg,__CSS_IMG__/goods/g_02.jpg,__CSS_IMG__/goods/g_03.jpg,__CSS_IMG__/goods/g_04.jpg,__CSS_IMG__/goods/g_05.jpg,__CSS_IMG__/goods/g_06.jpg,', '', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-18 00:41:38', '2014-03-18 00:41:38');
INSERT INTO `base_article_info` VALUES ('37', '1', '1', '5', '1', '发展战略', '', '', '发展战略', '&lt;p&gt;发展战略&lt;/p&gt;&lt;p&gt;&lt;br/&gt;&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:41:07', '2014-03-21 00:41:07');
INSERT INTO `base_article_info` VALUES ('38', '1', '1', '45', '1', '祥瑞使命', '', '', '祥瑞使命', '&lt;p&gt;祥瑞使命&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:41:41', '2014-03-21 00:41:41');
INSERT INTO `base_article_info` VALUES ('39', '1', '1', '45', '1', '祥瑞文化', '', '', '祥瑞文化', '&lt;p&gt;祥瑞文化&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:41:53', '2014-03-21 00:41:53');
INSERT INTO `base_article_info` VALUES ('40', '1', '1', '45', '1', '祥瑞理念', '', '', '祥瑞理念', '&lt;p&gt;祥瑞理念&lt;/p&gt;', '', '', '', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:42:27', '2014-03-21 00:42:27');
INSERT INTO `base_article_info` VALUES ('41', '1', '1', '45', '1', '7S管理5大素养', '', '', '7S管理5大素养', '&lt;p&gt;7S管理5大素养&lt;/p&gt;', '', '', '', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:43:07', '2014-03-21 00:43:07');
INSERT INTO `base_article_info` VALUES ('42', '1', '1', '46', '1', '2012年', '', '', '2012年', '&lt;p&gt;2012年&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:45:19', '2014-03-21 00:45:19');
INSERT INTO `base_article_info` VALUES ('43', '1', '1', '46', '1', '2013年', '', '', '2013年', '&lt;p&gt;2013年&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:45:29', '2014-03-21 00:45:29');
INSERT INTO `base_article_info` VALUES ('44', '1', '1', '42', '1', '健康产业前景', '', '', '健康产业前景', '&lt;p&gt;健康产业前景&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:46:36', '2014-03-21 00:46:36');
INSERT INTO `base_article_info` VALUES ('45', '1', '1', '42', '1', '祥瑞产业链特色', '', '', '祥瑞产业链特色', '&lt;p&gt;祥瑞产业链特色&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:46:53', '2014-03-21 00:46:53');
INSERT INTO `base_article_info` VALUES ('46', '1', '1', '42', '1', '祥瑞健康产业链', '', '', '祥瑞健康产业链', '&lt;p&gt;祥瑞健康产业链&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:47:10', '2014-03-21 00:47:10');
INSERT INTO `base_article_info` VALUES ('47', '1', '1', '42', '1', '祥瑞产业链产品', '', '', '祥瑞产业链产品', '&lt;p&gt;祥瑞产业链产品&lt;/p&gt;', '', '', '', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:47:26', '2014-03-21 00:47:26');
INSERT INTO `base_article_info` VALUES ('48', '1', '1', '24', '1', '高绩效的科研模式', '', '', '高绩效的科研模式', '&lt;p&gt;高绩效的科研模式&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:48:21', '2014-03-21 00:48:21');
INSERT INTO `base_article_info` VALUES ('49', '1', '1', '24', '1', '雄厚的科研力量', '', '', '雄厚的科研力量', '&lt;p&gt;雄厚的科研力量&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:48:37', '2014-03-21 00:48:37');
INSERT INTO `base_article_info` VALUES ('50', '1', '1', '24', '1', '高水平的科研平台', '', '', '高水平的科研平台', '&lt;p&gt;高水平的科研平台&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:48:49', '2014-03-21 00:48:49');
INSERT INTO `base_article_info` VALUES ('51', '1', '1', '39', '1', '生产设备', '', '', '生产设备', '&lt;p&gt;生产设备&lt;/p&gt;', '', '', '', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:49:17', '2014-03-21 00:49:17');
INSERT INTO `base_article_info` VALUES ('52', '1', '1', '39', '1', '液体菌种培养体系', '', '', '液体菌种培养体系', '&lt;p&gt;液体菌种培养体系&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:49:38', '2014-03-21 00:49:38');
INSERT INTO `base_article_info` VALUES ('53', '1', '1', '39', '1', '生物育种及品种创制体系', '', '', '生物育种及品种创制体系', '&lt;p&gt;生物育种及品种创制体系&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:49:54', '2014-03-21 00:49:54');
INSERT INTO `base_article_info` VALUES ('54', '1', '1', '39', '1', '3大现代化技术确保品质与新鲜', '', '', '3大现代化技术确保品质与新鲜', '&lt;p&gt;3大现代化技术确保品质与新鲜&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:50:19', '2014-03-21 00:50:19');
INSERT INTO `base_article_info` VALUES ('55', '1', '1', '7', '1', '工艺流程', '', '', '工艺流程', '&lt;p&gt;工艺流程&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:51:30', '2014-03-21 00:51:30');
INSERT INTO `base_article_info` VALUES ('56', '1', '1', '22', '1', '科研合作', '', '', '科研合作', '&lt;p&gt;科研合作&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:52:42', '2014-03-21 00:52:42');
INSERT INTO `base_article_info` VALUES ('57', '1', '1', '3', '1', '最新招商信息', '', '', '最新招商信息', '&lt;p&gt;最新招商信息&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:53:42', '2014-03-21 00:53:42');
INSERT INTO `base_article_info` VALUES ('58', '1', '1', '6', '1', '加盟流程', '', '', '加盟流程', '&lt;p&gt;加盟流程&lt;/p&gt;', '', '', '', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:54:04', '2014-03-21 00:54:04');
INSERT INTO `base_article_info` VALUES ('59', '1', '1', '6', '1', '加盟商义务', '', '', '加盟商义务', '&lt;p&gt;加盟商义务&lt;/p&gt;', '', '', '', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:54:20', '2014-03-21 00:54:20');
INSERT INTO `base_article_info` VALUES ('60', '1', '1', '6', '1', '加盟商条件要求', '', '', '加盟商条件要求', '&lt;p&gt;加盟商条件要求&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:54:32', '2014-03-21 00:54:32');
INSERT INTO `base_article_info` VALUES ('61', '1', '1', '30', '1', '营销网络', '', '', '营销网络', '&lt;p&gt;营销网络&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:54:48', '2014-03-21 00:54:48');
INSERT INTO `base_article_info` VALUES ('62', '1', '1', '43', '1', '科研成果', '', '', '科研成果', '&lt;p&gt;科研成果&lt;/p&gt;', '', '', '', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-21 00:55:22', '2014-03-21 00:55:22');

-- ----------------------------
-- Table structure for `base_job_info`
-- ----------------------------
DROP TABLE IF EXISTS `base_job_info`;
CREATE TABLE `base_job_info` (
  `jiid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '招聘名称',
  `num` varchar(10) DEFAULT '' COMMENT '招聘人数',
  `province` int(11) DEFAULT '0' COMMENT '招聘省市，关联admin_base_area表baid字段',
  `city` int(11) DEFAULT '0' COMMENT '招聘城市，关联admin_base_area表baid字段',
  `area` int(11) DEFAULT '0' COMMENT '招聘区县，关联admin_base_area表baid字段',
  `work_year` tinyint(5) DEFAULT '0' COMMENT '工作年限：0为不限，1为在读学生，2为应届毕业生，3为一年以上，4为二年以上，5为三年以上，6为五年以上，7为八年以上，\r8为十年以上',
  `provide_salary` tinyint(5) DEFAULT '0' COMMENT '月薪范围：0为面议，1为1500以下，2为1500-2999，3为3000-4499，4为4500-5999，5为6000-7999，6为8000-9999，7为10000-14999，8为15000-19999，9为20000-29999，10为30000-49999，11为50000及以上',
  `degree_from` tinyint(5) DEFAULT '0' COMMENT '学历要求：0为不限，1为初中，2为高中，3为中专，4为大专，5为本科，6为硕士，7为博士',
  `content` text COMMENT '招聘内容',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`jiid`),
  KEY `sid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='招聘信息表';

-- ----------------------------
-- Records of base_job_info
-- ----------------------------
INSERT INTO `base_job_info` VALUES ('1', '1', 'php招聘', '3', '310000', '310100', '310101', '3', '7', '4', '&lt;p&gt;sdfsf点时间啊发渐叟&lt;br /&gt;&lt;/p&gt;', '0', '1', '2013-04-01 00:00:00', '2016-04-01 00:00:00', '2013-04-22 16:24:04', '2013-04-22 21:32:41');

-- ----------------------------
-- Table structure for `base_site_menu`
-- ----------------------------
DROP TABLE IF EXISTS `base_site_menu`;
CREATE TABLE `base_site_menu` (
  `smid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `parent_id` int(11) NOT NULL DEFAULT '0' COMMENT '菜单父级ID',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '菜单名称',
  `crumb` varchar(100) NOT NULL DEFAULT '' COMMENT '面包屑，用横杠分割',
  `model` tinyint(1) DEFAULT '1' COMMENT '菜单模型：0为单篇内容，1为文章，2为图片集，3为产品，4为博文，5为小说，6为招聘',
  `type` tinyint(1) DEFAULT '0' COMMENT '单篇内容ID 或 菜单类型：0为列表制，1为引导栏目(不能发布内容,只作显示)，2为外部链接',
  `link` varchar(255) DEFAULT '' COMMENT '外部链接',
  `show_position` tinyint(3) DEFAULT '0' COMMENT '显示位置：1为顶部，2为中部，4为底部',
  `class` varchar(100) DEFAULT '' COMMENT '菜单样式',
  `template` varchar(30) DEFAULT 'index' COMMENT '模板名称',
  `is_highlight` tinyint(1) DEFAULT '0' COMMENT '是否高亮：0为否，1为是',
  `is_hide` tinyint(1) DEFAULT '0' COMMENT '是否隐藏：0为否，1为是',
  `is_open` tinyint(1) DEFAULT '0' COMMENT '是否新开页：0为否，1为是',
  `is_show_child` tinyint(1) DEFAULT '1' COMMENT '是否显示子集：0为否，1为是',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`smid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `parent_id` (`parent_id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=47 DEFAULT CHARSET=utf8 COMMENT='菜单管理';

-- ----------------------------
-- Records of base_site_menu
-- ----------------------------
INSERT INTO `base_site_menu` VALUES ('1', '1', '0', 'AboutUs', '关于祥瑞', '1-', '1', '1', '', '6', '', 'info', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:20:59', '2014-03-21 00:23:27');
INSERT INTO `base_site_menu` VALUES ('2', '1', '0', 'Blog', '博文', '2-', '4', '2', '/Blog', '2', '', 'index', '0', '0', '1', '1', '9', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:21:56', '2014-02-27 04:33:41');
INSERT INTO `base_site_menu` VALUES ('3', '1', '9', 'IT', '最新招商信息', '9-3-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:22:37', '2014-03-21 00:36:05');
INSERT INTO `base_site_menu` VALUES ('4', '1', '1', 'ManageFinances', '社会责任', '1-4-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '6', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:24:22', '2014-03-21 00:20:00');
INSERT INTO `base_site_menu` VALUES ('5', '1', '1', 'Web', '公司足迹', '1-5-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:26:44', '2014-03-21 00:18:45');
INSERT INTO `base_site_menu` VALUES ('6', '1', '9', 'Language', '招商加盟', '9-6-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:27:49', '2014-03-21 00:35:16');
INSERT INTO `base_site_menu` VALUES ('7', '1', '10', 'Database', '工艺流程', '10-7-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:28:14', '2014-03-21 00:33:48');
INSERT INTO `base_site_menu` VALUES ('8', '1', '0', 'Project', '新闻中心', '8-', '1', '1', '', '2', '', 'index', '0', '0', '0', '1', '6', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:30:36', '2014-03-17 22:53:58');
INSERT INTO `base_site_menu` VALUES ('9', '1', '0', 'EnterpriseSite', '经销商在线', '9-', '1', '1', '', '6', '', 'index', '0', '0', '0', '1', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:31:14', '2014-03-21 01:18:02');
INSERT INTO `base_site_menu` VALUES ('10', '1', '0', 'LargeSite', '科研中心', '10-', '1', '1', '', '2', '', 'index', '0', '0', '0', '1', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 14:32:27', '2014-03-21 01:18:09');
INSERT INTO `base_site_menu` VALUES ('11', '2', '0', 'AboutUs', 'About Us', '11-', '1', '0', '', '2', '', 'index', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-21 15:39:38', '2013-03-21 15:39:38');
INSERT INTO `base_site_menu` VALUES ('12', '1', '0', 'Product', '产品体验中心', '12-', '3', '1', '', '6', '', 'index', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-03 16:36:58', '2014-03-14 21:18:07');
INSERT INTO `base_site_menu` VALUES ('13', '1', '12', 'LightingProduct', '生鲜菌菇', '12-13-', '3', '1', '', '6', '', 'index', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-03 16:43:27', '2014-03-14 21:18:28');
INSERT INTO `base_site_menu` VALUES ('14', '1', '12', 'Spotlights', '调味品', '12-14-', '3', '0', '', '6', '', 'index', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-03 16:46:41', '2014-03-14 21:19:14');
INSERT INTO `base_site_menu` VALUES ('15', '1', '12', 'Downlight', '有机料', '12-15-', '3', '0', '', '6', '', 'index', '0', '0', '0', '1', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-03 16:47:22', '2014-03-14 21:19:40');
INSERT INTO `base_site_menu` VALUES ('16', '1', '12', 'ChemicalProducts', '食用菌酱油', '12-16-', '3', '1', '', '6', '', 'index', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-03 16:51:02', '2014-03-14 21:18:54');
INSERT INTO `base_site_menu` VALUES ('17', '1', '12', 'FadingAgent', '保健品', '12-17-', '3', '0', '', '6', '', 'index', '0', '0', '0', '1', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-03 16:52:04', '2014-03-14 21:20:10');
INSERT INTO `base_site_menu` VALUES ('18', '1', '12', 'BasicComputer', '食用菌休闲食品', '12-18-', '3', '1', '', '6', '', 'index', '0', '0', '0', '1', '6', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:19:08', '2014-03-14 21:21:21');
INSERT INTO `base_site_menu` VALUES ('19', '1', '0', 'DataStructure', '联系我们', '19-', '0', '0', '', '2', '', 'index', '0', '0', '0', '1', '8', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 13:54:02', '2014-03-17 21:31:11');
INSERT INTO `base_site_menu` VALUES ('20', '1', '0', 'Algorithm', '人力资源', '20-', '1', '0', '', '6', '', 'index', '0', '0', '0', '1', '7', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:07:29', '2014-03-14 21:15:55');
INSERT INTO `base_site_menu` VALUES ('21', '1', '8', 'PHP', '行业动态', '8-21-', '1', '0', '', '2', '', 'index', '0', '0', '0', '1', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:27:18', '2014-03-14 21:35:29');
INSERT INTO `base_site_menu` VALUES ('22', '1', '10', 'JAVA', '科研合作', '10-22-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:34:36', '2014-03-21 00:34:14');
INSERT INTO `base_site_menu` VALUES ('23', '1', '1', 'C', '公司介绍', '1-23-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:34:52', '2014-03-21 00:15:00');
INSERT INTO `base_site_menu` VALUES ('24', '1', '10', 'C++', '科研团队', '10-24-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:36:41', '2014-03-21 00:33:19');
INSERT INTO `base_site_menu` VALUES ('25', '1', '40', 'MySql', '可追溯系统', '40-25-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:42:17', '2014-03-21 00:31:50');
INSERT INTO `base_site_menu` VALUES ('26', '1', '13', 'HTML', '产品优点', '12-13-26-', '1', '0', '', '0', '', 'index', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:43:44', '2014-03-14 21:27:35');
INSERT INTO `base_site_menu` VALUES ('27', '1', '12', 'CSS', '江永特产', '12-27-', '3', '0', '', '6', '', 'index', '0', '0', '0', '1', '7', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:43:57', '2014-03-14 21:21:53');
INSERT INTO `base_site_menu` VALUES ('28', '1', '13', 'JavaScript', '杏鲍菇', '12-13-28-', '3', '0', '', '0', '', 'index', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:47:48', '2014-03-14 21:29:13');
INSERT INTO `base_site_menu` VALUES ('29', '1', '13', 'jQuery', '秀珍菇', '12-13-29-', '3', '0', '', '0', '', 'index', '0', '0', '0', '1', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 14:48:05', '2014-03-14 21:30:03');
INSERT INTO `base_site_menu` VALUES ('30', '1', '9', 'Ruby', '营销网络', '9-30-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:08:34', '2014-03-21 00:34:45');
INSERT INTO `base_site_menu` VALUES ('31', '1', '13', 'Python', '香菇', '12-13-31-', '3', '0', '', '0', '', 'index', '0', '0', '0', '1', '6', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:08:52', '2014-03-14 21:31:06');
INSERT INTO `base_site_menu` VALUES ('32', '1', '13', '.net', '双孢菇', '12-13-32-', '3', '0', '', '0', '', 'index', '0', '0', '0', '1', '7', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:09:07', '2014-03-14 21:31:29');
INSERT INTO `base_site_menu` VALUES ('33', '1', '8', 'iOS', '专题片', '8-33-', '1', '0', '', '2', '', 'index', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:13:48', '2014-03-14 21:34:12');
INSERT INTO `base_site_menu` VALUES ('34', '1', '8', 'Android', '媒体报道', '8-34-', '1', '0', '', '2', '', 'index', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:14:02', '2014-03-14 21:34:24');
INSERT INTO `base_site_menu` VALUES ('35', '1', '8', 'WindowsPhone', '公司动态', '8-35-', '1', '0', '', '2', '', 'index', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:14:49', '2014-03-14 21:34:59');
INSERT INTO `base_site_menu` VALUES ('36', '1', '13', 'EXT', '茶树菇', '12-13-36-', '3', '0', '', '0', '', 'index', '0', '0', '0', '1', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:16:47', '2014-03-14 21:30:18');
INSERT INTO `base_site_menu` VALUES ('37', '1', '13', 'HTML5', '金针菇', '12-13-37-', '3', '0', '', '0', '', 'index', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:17:02', '2014-03-14 21:28:45');
INSERT INTO `base_site_menu` VALUES ('38', '1', '12', 'CSS3', '美食生活', '12-38-', '3', '0', '', '6', '', 'index', '0', '0', '0', '1', '8', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-09 15:19:51', '2014-03-14 21:22:29');
INSERT INTO `base_site_menu` VALUES ('39', '1', '10', 'Mongo', '技术特点', '10-39-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-10 09:52:17', '2014-03-21 00:33:29');
INSERT INTO `base_site_menu` VALUES ('40', '1', '0', 'Job', '现代原生态', '40-', '1', '1', '', '6', '', 'info', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-22 15:01:04', '2014-03-21 01:18:17');
INSERT INTO `base_site_menu` VALUES ('41', '1', '40', 'Mobile', '现代原生态理念', '40-41-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-12-02 12:41:14', '2014-03-21 00:30:32');
INSERT INTO `base_site_menu` VALUES ('42', '1', '40', 'Oracle', '健康产业链', '40-42-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-12-02 12:45:38', '2014-03-21 00:31:24');
INSERT INTO `base_site_menu` VALUES ('43', '1', '10', 'SQLServer', '科技成果', '10-43-', '1', '0', '', '2', '', 'info', '0', '0', '0', '1', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-12-02 12:46:33', '2014-03-21 00:32:53');
INSERT INTO `base_site_menu` VALUES ('44', '1', '1', 'Securities', '领导关怀', '1-44-', '1', '0', '', '2', '', 'info', '0', '0', '0', '0', '5', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-12-03 00:39:46', '2014-03-21 00:19:41');
INSERT INTO `base_site_menu` VALUES ('45', '1', '1', 'Stock', '公司理念', '1-45-', '1', '0', '', '2', '', 'info', '0', '0', '0', '0', '3', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-12-03 00:54:18', '2014-03-21 00:18:57');
INSERT INTO `base_site_menu` VALUES ('46', '1', '1', 'Bonds', '公司荣誉', '1-46-', '1', '0', '', '2', '', 'info', '0', '0', '0', '0', '4', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-12-03 00:55:10', '2014-03-21 00:19:21');

-- ----------------------------
-- Table structure for `base_site_plate`
-- ----------------------------
DROP TABLE IF EXISTS `base_site_plate`;
CREATE TABLE `base_site_plate` (
  `spid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `spgid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联base_site_plate_group表spgid字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '面板名称',
  `row` tinyint(5) DEFAULT '1' COMMENT '面板列数',
  `class` varchar(100) DEFAULT '' COMMENT '面板样式',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`spid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8 COMMENT='面板管理';

-- ----------------------------
-- Records of base_site_plate
-- ----------------------------
INSERT INTO `base_site_plate` VALUES ('1', '1', '1', '现代原生态 招商', '2', 'span8 index_box,span4 index_box', '1', '1', '2013-03-24 15:51:46', '2014-03-17 23:09:23');
INSERT INTO `base_site_plate` VALUES ('2', '1', '2', '默认面板', '3', '', '0', '1', '2013-03-24 15:56:22', '2014-03-17 22:22:39');
INSERT INTO `base_site_plate` VALUES ('3', '1', '1', '产品 公司动态', '2', 'span8 index_box,span4 index_box', '3', '1', '2013-03-25 14:45:03', '2014-03-17 23:09:39');
INSERT INTO `base_site_plate` VALUES ('4', '1', '3', '新闻列表', '1', '', '2', '1', '2013-11-06 13:59:04', '2014-03-18 00:06:45');
INSERT INTO `base_site_plate` VALUES ('5', '1', '4', '默认面板', '2', 'span9,span3', '2', '1', '2013-11-06 14:52:45', '2013-11-07 16:29:15');
INSERT INTO `base_site_plate` VALUES ('6', '1', '3', '新闻中心分类', '1', 'span12', '1', '1', '2013-11-06 17:14:25', '2014-03-18 00:07:02');
INSERT INTO `base_site_plate` VALUES ('7', '1', '4', '面包屑', '1', 'span12', '1', '1', '2013-11-06 17:23:18', '2013-11-07 16:32:07');
INSERT INTO `base_site_plate` VALUES ('8', '1', '5', '面包屑', '1', '', '1', '1', '2013-11-06 20:23:01', '2014-03-20 15:23:56');
INSERT INTO `base_site_plate` VALUES ('9', '1', '5', '默认面板', '1', 'span10', '3', '1', '2013-11-06 20:23:44', '2014-03-20 15:25:29');
INSERT INTO `base_site_plate` VALUES ('10', '1', '6', '面包屑', '1', 'span12', '1', '1', '2013-11-06 20:24:12', '2013-11-07 16:50:43');
INSERT INTO `base_site_plate` VALUES ('11', '1', '6', '默认面板', '2', 'span9,span3', '2', '1', '2013-11-06 20:24:21', '2013-11-07 16:50:50');
INSERT INTO `base_site_plate` VALUES ('12', '1', '1', 'line', '1', 'span12', '2', '1', '2013-11-22 15:28:51', '2014-03-18 00:32:07');
INSERT INTO `base_site_plate` VALUES ('13', '1', '7', '默认面板', '1', '', '0', '1', '2014-03-13 00:11:38', '2014-03-13 00:11:38');
INSERT INTO `base_site_plate` VALUES ('14', '1', '8', '面包屑', '1', '', '1', '1', '2014-03-13 00:12:00', '2014-03-13 00:12:00');
INSERT INTO `base_site_plate` VALUES ('15', '1', '8', '默认面板', '2', '', '2', '1', '2014-03-13 00:12:24', '2014-03-13 00:12:24');
INSERT INTO `base_site_plate` VALUES ('16', '1', '9', '面包屑', '1', '', '1', '1', '2014-03-13 00:12:51', '2014-03-13 00:12:51');
INSERT INTO `base_site_plate` VALUES ('17', '1', '9', '默认面板', '2', '', '2', '1', '2014-03-13 00:13:01', '2014-03-13 00:13:01');
INSERT INTO `base_site_plate` VALUES ('18', '1', '1', 'line', '1', 'span12', '4', '0', '2014-03-18 00:34:24', '2014-03-18 00:34:24');
INSERT INTO `base_site_plate` VALUES ('19', '1', '1', '商品列表', '1', 'span12', '5', '1', '2014-03-18 00:36:14', '2014-03-18 00:36:37');
INSERT INTO `base_site_plate` VALUES ('20', '1', '5', '1', '1', '', '2', '1', '2014-03-20 13:26:14', '2014-03-20 13:26:14');

-- ----------------------------
-- Table structure for `base_site_plate_content`
-- ----------------------------
DROP TABLE IF EXISTS `base_site_plate_content`;
CREATE TABLE `base_site_plate_content` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `spid` int(11) NOT NULL DEFAULT '0' COMMENT '面板ID，关联base_site_plate表spid字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '面板内容名称',
  `class` varchar(100) DEFAULT '' COMMENT '面板内容样式',
  `row_position` tinyint(5) DEFAULT '1' COMMENT '面板内容列位置',
  `type` tinyint(1) DEFAULT '1' COMMENT '面板内容类型：1为列表，2为分类，3为单篇内容',
  `model` tinyint(1) DEFAULT '1' COMMENT '面板内容模型：0为广告，后同site_menu表model字段',
  `model_value` varchar(255) DEFAULT '' COMMENT '面板内容',
  `list_opt` int(11) DEFAULT '3' COMMENT '列表显示项：1为名称，2为添加时间，4为用户名，8为分页，16为更多，32为缩略图，64为简介，128为图片，256为标签，512为全文',
  `list_num` tinyint(3) DEFAULT '10' COMMENT '每页显示数量',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=utf8 COMMENT='面板内容管理';

-- ----------------------------
-- Records of base_site_plate_content
-- ----------------------------
INSERT INTO `base_site_plate_content` VALUES ('1', '1', '1', '公司简介', '', '1', '3', '1', '1', '67', '10', '0', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-24 20:41:15', '2014-03-03 19:12:34');
INSERT INTO `base_site_plate_content` VALUES ('2', '1', '1', '关于我们', '', '2', '1', '1', '1', '19', '10', '2', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-24 20:42:09', '2013-03-31 14:49:20');
INSERT INTO `base_site_plate_content` VALUES ('3', '1', '3', '广告', '', '1', '3', '0', '0', '3', '10', '0', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-25 14:45:20', '2013-11-12 14:56:38');
INSERT INTO `base_site_plate_content` VALUES ('4', '1', '1', '项目案例', '', '2', '1', '1', '8', '19', '10', '1', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-03-25 15:06:14', '2013-11-12 13:27:11');
INSERT INTO `base_site_plate_content` VALUES ('5', '1', '4', '新闻列表', '', '1', '1', '1', '0', '123', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 13:59:32', '2014-03-18 00:06:25');
INSERT INTO `base_site_plate_content` VALUES ('6', '1', '4', '侧栏导航', '', '2', '5', '1', '', '3', '10', '0', '-1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 14:10:59', '2013-11-06 18:05:48');
INSERT INTO `base_site_plate_content` VALUES ('7', '1', '5', '列表', '', '1', '1', '4', '0', '363', '10', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 14:53:13', '2013-11-06 17:06:05');
INSERT INTO `base_site_plate_content` VALUES ('8', '1', '5', '侧栏导航', '', '2', '5', '4', '', '3', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 17:06:19', '2013-11-06 18:05:34');
INSERT INTO `base_site_plate_content` VALUES ('9', '1', '6', '新闻中心分类', '', '1', '5', '1', '', '3', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 17:14:46', '2014-03-17 23:39:40');
INSERT INTO `base_site_plate_content` VALUES ('10', '1', '7', '面包屑', '', '1', '4', '4', '', '3', '10', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 17:51:32', '2013-11-06 20:53:52');
INSERT INTO `base_site_plate_content` VALUES ('11', '1', '8', '面包屑', '', '1', '4', '1', '', '3', '10', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 20:25:21', '2013-11-06 22:22:37');
INSERT INTO `base_site_plate_content` VALUES ('12', '1', '10', '面包屑', '', '1', '4', '4', '', '3', '10', '1', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-06 22:53:14', '2013-11-06 22:53:14');
INSERT INTO `base_site_plate_content` VALUES ('13', '1', '9', '列表', '', '1', '3', '1', '', '672', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-07 00:10:44', '2014-03-20 01:42:04');
INSERT INTO `base_site_plate_content` VALUES ('14', '1', '9', '侧栏列表', '', '2', '6', '1', '', '3', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-07 00:11:12', '2013-11-07 00:11:12');
INSERT INTO `base_site_plate_content` VALUES ('15', '1', '11', '列表', '', '1', '3', '4', '', '515', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-07 00:12:11', '2013-11-07 00:45:22');
INSERT INTO `base_site_plate_content` VALUES ('16', '1', '11', '侧栏列表', '', '2', '6', '4', '', '3', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-07 00:12:42', '2013-11-07 00:12:42');
INSERT INTO `base_site_plate_content` VALUES ('17', '1', '3', '产品', '', '1', '3', '1', '31', '513', '10', '2', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 13:37:46', '2014-03-17 23:00:50');
INSERT INTO `base_site_plate_content` VALUES ('18', '1', '3', '大型网站案例', 'span6', '1', '1', '1', '10', '19', '10', '1', '0', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-11-12 13:38:13', '2013-11-12 14:56:48');
INSERT INTO `base_site_plate_content` VALUES ('19', '1', '1', '现代原生态', '', '1', '3', '1', '29', '513', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-06 00:06:27', '2014-03-17 22:25:09');
INSERT INTO `base_site_plate_content` VALUES ('20', '1', '14', '面包屑', '', '1', '4', '3', '', '3', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-13 00:17:42', '2014-03-13 00:17:42');
INSERT INTO `base_site_plate_content` VALUES ('21', '1', '15', '列表', '', '1', '1', '3', '', '129', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-13 00:22:12', '2014-03-13 00:23:57');
INSERT INTO `base_site_plate_content` VALUES ('22', '1', '15', '侧栏导航', '', '2', '5', '3', '', '3', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-13 00:25:54', '2014-03-13 00:26:34');
INSERT INTO `base_site_plate_content` VALUES ('23', '1', '1', '招商', '', '2', '3', '1', '30', '513', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 18:11:15', '2014-03-17 22:46:41');
INSERT INTO `base_site_plate_content` VALUES ('24', '1', '3', '公司动态', '', '2', '1', '1', '35', '19', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-17 23:01:49', '2014-03-18 00:59:52');
INSERT INTO `base_site_plate_content` VALUES ('25', '1', '12', 'line', 'line', '1', '3', '1', '', '256', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-18 00:26:48', '2014-03-18 00:35:08');
INSERT INTO `base_site_plate_content` VALUES ('26', '1', '18', 'line', 'line', '1', '3', '1', '', '256', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-18 00:35:45', '2014-03-18 00:35:45');
INSERT INTO `base_site_plate_content` VALUES ('27', '1', '19', '商品列表', '', '1', '3', '1', '36', '512', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-18 00:37:17', '2014-03-18 00:43:08');
INSERT INTO `base_site_plate_content` VALUES ('28', '1', '20', '1', '', '1', '6', '1', '', '739', '10', '0', '1', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2014-03-20 13:26:39', '2014-03-20 22:32:50');

-- ----------------------------
-- Table structure for `base_site_plate_group`
-- ----------------------------
DROP TABLE IF EXISTS `base_site_plate_group`;
CREATE TABLE `base_site_plate_group` (
  `spgid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '面板分组编码,可作唯一标示',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '面板分组名称',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`spgid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `status` (`status`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=utf8 COMMENT='面板分组管理';

-- ----------------------------
-- Records of base_site_plate_group
-- ----------------------------
INSERT INTO `base_site_plate_group` VALUES ('1', '1', 'Base_Index_index', '首页', '1', '1', '2013-03-24 15:19:22', '2014-02-25 22:15:36');
INSERT INTO `base_site_plate_group` VALUES ('2', '1', 'Blog_Index_index', '博客首页', '4', '1', '2013-03-24 15:19:41', '2013-11-06 13:37:33');
INSERT INTO `base_site_plate_group` VALUES ('3', '1', 'Base_ArticleCategory_index', '文章分类页', '2', '1', '2013-11-06 13:34:12', '2014-02-25 22:15:47');
INSERT INTO `base_site_plate_group` VALUES ('4', '1', 'Blog_BlogCategory_index', '博文分类页', '5', '1', '2013-11-06 13:36:53', '2013-11-06 13:36:53');
INSERT INTO `base_site_plate_group` VALUES ('5', '1', 'Base_ArticleInfo_index', '文章详情页', '3', '1', '2013-11-06 13:37:39', '2014-02-25 22:15:59');
INSERT INTO `base_site_plate_group` VALUES ('6', '1', 'Blog_BlogInfo_index', '博文详情页', '6', '1', '2013-11-06 13:38:17', '2013-11-06 13:38:17');
INSERT INTO `base_site_plate_group` VALUES ('7', '1', 'Product_Index_index', '商品首页', '7', '1', '2014-03-13 00:07:09', '2014-03-13 00:07:33');
INSERT INTO `base_site_plate_group` VALUES ('8', '1', 'Product_ProductCategory_index', '商品分类页', '8', '1', '2014-03-13 00:08:12', '2014-03-13 00:08:12');
INSERT INTO `base_site_plate_group` VALUES ('9', '1', 'Product_ProductInfo_index', '商品详情页', '9', '1', '2014-03-13 00:08:47', '2014-03-13 00:08:47');

-- ----------------------------
-- Table structure for `product_album_photo`
-- ----------------------------
DROP TABLE IF EXISTS `product_album_photo`;
CREATE TABLE `product_album_photo` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `pgid` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID，关联product_goods表pgid字段',
  `name` varchar(250) DEFAULT '' COMMENT '相片名称',
  `type` tinyint(1) DEFAULT '4' COMMENT '图片类型: 1为主图，2为模特图，3为颜色图，4为细节图',
  `url` varchar(250) DEFAULT '' COMMENT '相片地址',
  `color_code` varchar(100) DEFAULT '' COMMENT '颜色编码',
  `size` int(11) DEFAULT '0' COMMENT '相片大小',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `pgid` (`pgid`) USING BTREE,
  KEY `type` (`type`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='商品相片表';

-- ----------------------------
-- Records of product_album_photo
-- ----------------------------

-- ----------------------------
-- Table structure for `product_channel`
-- ----------------------------
DROP TABLE IF EXISTS `product_channel`;
CREATE TABLE `product_channel` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `pcid` int(6) NOT NULL DEFAULT '0' COMMENT '渠道ID',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '渠道名称',
  `type` tinyint(1) DEFAULT '1' COMMENT '渠道类型：1为商城，2为手机商城，3为淘宝，4为拍拍，5为QQ团，6为易贝，7为一号店，8为京东',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='渠道信息表';

-- ----------------------------
-- Records of product_channel
-- ----------------------------
INSERT INTO `product_channel` VALUES ('1', '1', '1', '商城', '1', '1', '1', '2013-03-27 16:44:39', '2014-03-12 20:42:12');
INSERT INTO `product_channel` VALUES ('2', '1', '2', '手机商城', '2', '2', '1', '2014-03-12 20:51:55', '2014-03-12 20:51:55');
INSERT INTO `product_channel` VALUES ('3', '1', '4', '淘宝', '3', '3', '1', '2014-03-12 20:52:25', '2014-03-12 20:52:25');
INSERT INTO `product_channel` VALUES ('4', '1', '8', '拍拍', '4', '4', '1', '2014-03-12 20:52:47', '2014-03-12 20:52:47');
INSERT INTO `product_channel` VALUES ('5', '1', '16', 'QQ团', '5', '5', '1', '2014-03-12 20:53:15', '2014-03-12 20:53:15');
INSERT INTO `product_channel` VALUES ('6', '1', '32', '易贝', '6', '6', '1', '2014-03-12 20:53:37', '2014-03-12 20:53:37');
INSERT INTO `product_channel` VALUES ('7', '1', '64', '一号店', '7', '7', '1', '2014-03-12 20:53:55', '2014-03-12 20:53:55');
INSERT INTO `product_channel` VALUES ('8', '1', '128', '京东', '8', '8', '1', '2014-03-12 20:54:09', '2014-03-12 20:54:09');

-- ----------------------------
-- Table structure for `product_channel_goods`
-- ----------------------------
DROP TABLE IF EXISTS `product_channel_goods`;
CREATE TABLE `product_channel_goods` (
  `pcgid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `smid` int(11) NOT NULL DEFAULT '0' COMMENT '商品分类ID，关联base_site_menu表smid字段',
  `pcid` int(11) NOT NULL DEFAULT '0' COMMENT '渠道ID，关联product_channel表pcid字段',
  `pgid` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID，关联product_goods表pgid字段',
  `name_prefix` varchar(100) DEFAULT '' COMMENT '商品名称前缀',
  `name_suffix` varchar(100) DEFAULT '' COMMENT '商品名称后缀',
  `sale_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品销售价',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `start_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '开始时间',
  `end_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '结束时间',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`pcgid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `smid` (`smid`) USING BTREE,
  KEY `pcid` (`pcid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='渠道商品信息表';

-- ----------------------------
-- Records of product_channel_goods
-- ----------------------------
INSERT INTO `product_channel_goods` VALUES ('1', '1', '14', '1', '1', '前缀', '后缀', '0.00', '0', '2', '1970-01-01 08:00:00', '1970-01-01 08:00:00', '2013-04-12 16:56:07', '2013-04-12 16:56:07');

-- ----------------------------
-- Table structure for `product_description`
-- ----------------------------
DROP TABLE IF EXISTS `product_description`;
CREATE TABLE `product_description` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `pgid` int(11) NOT NULL DEFAULT '0' COMMENT '商品ID，关联product_goods表pgid字段',
  `pdcid` int(11) NOT NULL DEFAULT '0' COMMENT '商品描述分类ID，关联product_description_category表pdcid字段',
  `content` text COMMENT '商品描述',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='商品描述信息表';

-- ----------------------------
-- Records of product_description
-- ----------------------------
INSERT INTO `product_description` VALUES ('1', '1', '1', '1', '商品1', '2013-04-12 10:52:27', '2014-03-12 18:33:08');
INSERT INTO `product_description` VALUES ('2', '1', '1', '2', '商品1', '2013-04-12 10:52:27', '2013-04-12 10:52:27');

-- ----------------------------
-- Table structure for `product_description_category`
-- ----------------------------
DROP TABLE IF EXISTS `product_description_category`;
CREATE TABLE `product_description_category` (
  `pdcid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '描述分类名称',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '描述分类编码',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`pdcid`),
  KEY `sid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='商品描述分类表';

-- ----------------------------
-- Records of product_description_category
-- ----------------------------
INSERT INTO `product_description_category` VALUES ('1', '1', '现代原生态', 'xdyst', '1', '1', '2013-03-27 15:12:43', '2014-03-14 14:26:50');
INSERT INTO `product_description_category` VALUES ('2', '1', '健康美味贴士', 'jkmwts', '2', '1', '2013-03-27 15:13:34', '2014-03-14 14:27:10');
INSERT INTO `product_description_category` VALUES ('3', '1', '美味搭配', 'mwdp', '3', '1', '2014-03-14 14:27:33', '2014-03-14 14:27:33');

-- ----------------------------
-- Table structure for `product_goods`
-- ----------------------------
DROP TABLE IF EXISTS `product_goods`;
CREATE TABLE `product_goods` (
  `pgid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `smid` int(11) NOT NULL DEFAULT '0' COMMENT '商品分类ID，关联base_site_menu表smid字段',
  `appdcode` int(6) DEFAULT '1' COMMENT '设备编码，关联admin_base_app_device表appdcode字段',
  `pcid` int(6) DEFAULT '1' COMMENT '渠道ID，关联product_channel表pcid字段',
  `name` varchar(100) NOT NULL DEFAULT '' COMMENT '商品名称',
  `code` varchar(100) NOT NULL DEFAULT '' COMMENT '商品编码,可作唯一标示',
  `cost_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品成本价',
  `market_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品市场价',
  `protect_price` decimal(10,2) DEFAULT '0.00' COMMENT '商品保护价',
  `thumbnail` varchar(255) DEFAULT '' COMMENT '商品主图',
  `weight` varchar(100) DEFAULT '' COMMENT '净重',
  `storage` varchar(100) DEFAULT '' COMMENT '储藏方式',
  `refrigeration_datas` varchar(100) DEFAULT '' COMMENT '冷藏保存天数',
  `homoeothermy_datas` varchar(100) DEFAULT '' COMMENT '常温保存天数',
  `publisher` varchar(255) DEFAULT '' COMMENT '出品商',
  `manufacturers` varchar(255) DEFAULT '' COMMENT '生产商',
  `production` varchar(255) DEFAULT '' COMMENT '生产地',
  `sort` tinyint(5) DEFAULT '0' COMMENT '显示顺序',
  `status` tinyint(1) DEFAULT '2' COMMENT '状态: -1为删除，0为禁用，1为正常，2为待批',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`pgid`),
  KEY `sid` (`sid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='商品信息表';

-- ----------------------------
-- Records of product_goods
-- ----------------------------
INSERT INTO `product_goods` VALUES ('1', '1', '14', '3', '3', '商品1', '1', '0.00', '0.00', '0.00', 'http://img5.ibanggo.com/sources/images/goods/MB/213813/213813_00.jpg', '0', '', '', '', '', '', '', '0', '1', '2013-04-12 10:52:27', '2014-03-13 10:27:06');

-- ----------------------------
-- Table structure for `user_base`
-- ----------------------------
DROP TABLE IF EXISTS `user_base`;
CREATE TABLE `user_base` (
  `uid` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `user_id` varchar(60) NOT NULL DEFAULT '' COMMENT '用户登陆名称（唯一）',
  `password` varchar(100) DEFAULT '' COMMENT '用户密码',
  `mobile` varchar(20) DEFAULT '' COMMENT '用户手机',
  `email` varchar(100) DEFAULT '' COMMENT '用户邮箱',
  `check_mobile` smallint(1) DEFAULT '0' COMMENT '是否验证手机',
  `check_email` smallint(1) DEFAULT '0' COMMENT '是否验证邮箱',
  `source_code` varchar(100) DEFAULT '' COMMENT '用户来源',
  `user_type` int(4) DEFAULT '1' COMMENT '-- 用户类型',
  `level_id` int(4) DEFAULT '0' COMMENT '-- 用户等级',
  `level_expire` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '-- 等级过期时间',
  `reg_ip` varchar(16) DEFAULT '' COMMENT '注册IP',
  `status` smallint(1) DEFAULT '1' COMMENT '用户状态：0为未激活，1为已激活，2为不受欢迎，3为删除',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`uid`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `user_id` (`user_id`) USING BTREE,
  KEY `email` (`email`) USING BTREE,
  KEY `mobile` (`mobile`) USING BTREE,
  KEY `source_code` (`source_code`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户基础信息表';

-- ----------------------------
-- Records of user_base
-- ----------------------------
INSERT INTO `user_base` VALUES ('1', '0', 'altila', 'e10adc3949ba59abbe56e057f20f883e', '13917440725', '281012472@qq.com', '1', '1', '', '1', '0', '1970-01-01 08:00:00', '', '1', '2012-12-11 14:00:03', '2012-12-11 14:00:06');
INSERT INTO `user_base` VALUES ('2', '0', 'admin', 'e10adc3949ba59abbe56e057f20f883e', '', '', '0', '0', '', '1', '0', '1970-01-01 08:00:00', '', '1', '2012-12-11 14:00:03', '2013-04-28 15:11:40');

-- ----------------------------
-- Table structure for `user_info`
-- ----------------------------
DROP TABLE IF EXISTS `user_info`;
CREATE TABLE `user_info` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联user_base表uid字段',
  `real_name` varchar(60) DEFAULT '' COMMENT '用户真实姓名',
  `nick_name` varchar(60) DEFAULT '' COMMENT '用户昵称',
  `sex` smallint(1) DEFAULT '0' COMMENT '用户性别：0为保密，1为男，2为女',
  `birthday` date DEFAULT NULL COMMENT '出生日期',
  `reside_country` int(3) DEFAULT '0' COMMENT '现居国家，关联admin_base_area表baid字段',
  `reside_province` int(3) DEFAULT '0' COMMENT '现居省份，关联admin_base_area表baid字段',
  `reside_city` int(3) DEFAULT '0' COMMENT '现居城市，关联admin_base_area表baid字段',
  `reside_district` int(3) DEFAULT '0' COMMENT '现居区域，关联admin_base_area表baid字段',
  `birth_country` int(3) DEFAULT '0' COMMENT '出生国家，关联admin_base_area表baid字段',
  `birth_province` int(3) DEFAULT '0' COMMENT '出生省份，关联admin_base_area表baid字段',
  `birth_city` int(3) DEFAULT '0' COMMENT '出生城市，关联admin_base_area表baid字段',
  `birth_district` int(3) DEFAULT '0' COMMENT '出生区域，关联admin_base_area表baid字段',
  `qq` varchar(20) DEFAULT '' COMMENT '用户QQ号',
  `msn` varchar(60) DEFAULT '' COMMENT '用户MSN号',
  `website` varchar(255) DEFAULT '' COMMENT '用户个人网站',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `uid` (`uid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='用户扩展信息表';

-- ----------------------------
-- Records of user_info
-- ----------------------------
INSERT INTO `user_info` VALUES ('1', '0', '1', '陈强', '', '1', null, '0', '0', '0', '0', '0', '0', '0', '0', '281012472', '', 'http://www.altila.com', '2012-12-11 14:01:53', '2012-12-11 14:01:57');
INSERT INTO `user_info` VALUES ('2', '0', '2', '陈强', '', '1', null, '0', '0', '0', '0', '0', '0', '0', '0', '281012472', '', 'http://www.altila.com', '2012-12-11 14:01:53', '2012-12-11 14:01:57');

-- ----------------------------
-- Table structure for `user_log_stat`
-- ----------------------------
DROP TABLE IF EXISTS `user_log_stat`;
CREATE TABLE `user_log_stat` (
  `id` int(11) NOT NULL AUTO_INCREMENT COMMENT '主键,自增长',
  `sid` int(11) NOT NULL DEFAULT '0' COMMENT '网站ID，关联admin_site_web表sid字段',
  `uid` int(11) NOT NULL DEFAULT '0' COMMENT '用户ID，关联user_base表uid字段',
  `log_ip` varchar(16) DEFAULT '' COMMENT '用户登录IP',
  `add_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '添加时间',
  `update_time` datetime DEFAULT '1970-01-01 08:00:00' COMMENT '修改时间',
  PRIMARY KEY (`id`),
  KEY `sid` (`sid`) USING BTREE,
  KEY `uid` (`uid`) USING BTREE,
  KEY `log_ip` (`log_ip`) USING BTREE,
  KEY `add_time` (`add_time`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='用户登陆明细表';

-- ----------------------------
-- Records of user_log_stat
-- ----------------------------
INSERT INTO `user_log_stat` VALUES ('1', '1', '1', '127.0.0.1', '2013-02-02 22:39:00', '2013-02-02 22:39:00');
