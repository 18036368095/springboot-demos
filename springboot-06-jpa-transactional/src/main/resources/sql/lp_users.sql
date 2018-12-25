/*
Navicat MySQL Data Transfer

Target Server Type    : MYSQL
Target Server Version : 50172
File Encoding         : 65001

Date: 2018-12-25 15:57:41
*/

SET FOREIGN_KEY_CHECKS=0;

-- ----------------------------
-- Table structure for `lp_users`
-- ----------------------------
DROP TABLE IF EXISTS `lp_users`;
CREATE TABLE `lp_users` (
  `ID` varchar(64) NOT NULL COMMENT 'Ψһ��ʶ',
  `ACCOUNT` varchar(50) NOT NULL COMMENT '��¼�˺�',
  `NAME` varchar(50) DEFAULT NULL COMMENT '�û���',
  `REMARKS` varchar(500) DEFAULT NULL COMMENT '˵��',
  `PASSWORD` varchar(150) DEFAULT NULL COMMENT '����',
  `IP` varchar(50) DEFAULT NULL COMMENT 'IP ��ַ ��IPʱ��Ч',
  `MAC` varchar(30) DEFAULT NULL COMMENT 'MAC��ַ ��macʱ��Ч',
  `ISAUTOEXPIRE` int(11) DEFAULT '0' COMMENT '�Ƿ��Զ�����  1[�Զ�����]',
  `ISBINDIP` int(11) NOT NULL DEFAULT '0' COMMENT '�Ƿ��IP',
  `ISBINDMAC` int(11) NOT NULL DEFAULT '0' COMMENT '�Ƿ��MAC',
  `LASTTIME` date DEFAULT NULL COMMENT '�ϴε�¼ʱ��',
  `LASTIP` varchar(50) DEFAULT NULL COMMENT '�ϴε�¼IP',
  `LASTMAC` varchar(30) DEFAULT NULL COMMENT '�ϴε�¼MAC',
  `LOGINCOUNT` int(11) DEFAULT '0' COMMENT '��½����',
  `CREATEDATE` timestamp NULL DEFAULT NULL COMMENT '�û���������',
  `UPDATETIME` timestamp NULL DEFAULT CURRENT_TIMESTAMP COMMENT '�û�����ʱ��',
  `STATE` int(11) DEFAULT NULL COMMENT '�û�״̬-1ɾ�� 0��� 1���� 2:����',
  `ICN` varchar(100) DEFAULT NULL COMMENT '���֤��',
  `UNITCODE` varchar(100) DEFAULT NULL COMMENT '��λ���롾�����������롿',
  `PHONE` varchar(100) DEFAULT NULL COMMENT '�û��ֻ�������ֻ����룺ռ�ã�',
  `UTYPE` int(11) DEFAULT '1' COMMENT '�˻����� ҵ��ϵͳ��ѯ1���ɡ� 0��ϵͳ�����û� 1��datacenter���û� 2������ 3�û��Զ��塿',
  `UVERSION` int(11) DEFAULT NULL COMMENT '�û���ǰ�汾�� 3.01�汾 ��Ϊ301 3.00�汾��Ϊ300 ',
  `KEYPATH` varchar(100) DEFAULT NULL COMMENT '��Կ·��',
  `EXPIREDATE` timestamp NULL DEFAULT NULL COMMENT '����ʱ��',
  `EMAIL` varchar(100) DEFAULT NULL COMMENT '�����ַ',
  `CONACCOUNT` varchar(100) DEFAULT NULL COMMENT '�����˺���Ϣ�����ڽ����ͬ�˺Ŷ�Ӧͬһʵ����������-������һ�˶��˺����⣩',
  `APPTYPE` varchar(100) DEFAULT NULL COMMENT '���ֲ�ͬϵͳ���û�',
  `RC1` varchar(64) DEFAULT NULL,
  `RC2` varchar(64) DEFAULT NULL COMMENT '��λ���ƣ��ֶ���������ƣ�',
  `RC3` int(11) DEFAULT NULL COMMENT '���ʽӿ��Ƿ����1 ����  0 ������',
  `OPTACCOUNT` varchar(64) DEFAULT '' COMMENT '�����˺�',
  `RC4` varchar(64) DEFAULT NULL COMMENT 'apikey(Ĭ��Ϊid+account������MD5��������)',
  `RC5` varchar(64) DEFAULT NULL,
  `RC6` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8;

-- ----------------------------
-- Records of lp_users
-- ----------------------------
INSERT INTO `lp_users` VALUES ('100', 'test', '�����û�', '�Խ�cas�ӿ�����', 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:53:29', '2018-11-13 16:54:15', '1', '', '1111', '21321321321', '1', null, '', '2018-03-12 00:00:00', '1121390867@qq.com', '', null, '001_01', '���Խ����', '0', null, null, null, null);
INSERT INTO `lp_users` VALUES ('200', 'meet', 'LPV2.0�����û�', '�����˺�', 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:53:47', '2018-11-13 16:54:35', '1', '', '13123213', '18703212354', '0', null, '/root/user/test', '2018-07-01 00:00:00', '861634943@qq.com', 'test', null, null, null, '0', null, null, null, null);
INSERT INTO `lp_users` VALUES ('3b4dcde9d23f434f9f7cae4ec48228fa', 'datacenter', '���ݽ���ƽ̨', '', 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:57', '2018-11-13 16:53:44', '1', '', '44444', '18709898987', '0', null, '', '2018-09-19 00:00:00', 'tesst@163.com', '', null, null, null, '1', null, null, null, null);
INSERT INTO `lp_users` VALUES ('1c2beefbb9724453a02722c09aafc001', 'test_perm', '�����˺�11111', '��', 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '1', '0', '0', null, null, null, '0', '2018-11-16 13:37:24', '2018-11-16 13:37:24', '-1', '', '0', '17731767408', '1', null, '', '2018-10-24 00:00:00', 'datacenter@gla.net.cn', '', null, null, null, '1', '', null, null, null);
INSERT INTO `lp_users` VALUES ('4a45c9b1784c4699927bc8bd79f5a733', 'test1', 'test1', '', 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '0', '0', '0', null, null, null, '0', '2018-11-15 10:12:58', '2018-11-15 10:12:58', '1', '', '0', '', '1', null, '', null, 'test1@163.com', '', null, null, null, '0', '', null, null, null);
INSERT INTO `lp_users` VALUES ('ca3cfe3c95dc45d38cd023778ffe6361', 'test2', 'test2', '', 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '0', '0', '0', null, null, null, '0', '2018-11-19 10:47:07', '2018-11-19 10:47:07', '1', '', '0', '', '1', null, '', null, 'test2@163.com', '', null, null, null, '0', '', 'testkey', null, null);
INSERT INTO `lp_users` VALUES ('c4c0d8a99c29411e942e2e69bf9df794', 'test3', 'test3', '', 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '0', '0', '0', null, null, null, '0', '2018-11-15 10:13:10', '2018-11-15 10:13:10', '1', '', '0', '', '1', null, '', null, 'test3@163.com', '', null, null, null, '0', '', null, null, null);
INSERT INTO `lp_users` VALUES ('4a7223cfda39400385733cf3411320e3', 'test4', 'test4', '', 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:53:11', '2018-11-13 16:53:58', '2', '', '0', '', '1', null, '', null, '', '', null, null, null, '0', '', null, null, null);
INSERT INTO `lp_users` VALUES ('aa1f9b2d2cf04e5eb997b9306eef0b04', 'test5', 'test5', '', 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:53:14', '2018-11-13 16:54:03', '1', '', '0', '', '1', null, '', null, '', '', null, null, null, '0', '', null, null, null);
INSERT INTO `lp_users` VALUES ('d9faa6186d4942deb959d94f0dddc536', 'A202', null, null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-19 09:17:07', '2018-11-19 09:17:59', '1', null, '1111', '', '1', null, null, null, '201676554@qq.com', null, null, null, '��������', null, '', '9393ba932dba6d936c2d08ba466d6993', null, null);
INSERT INTO `lp_users` VALUES ('4f096af242c441b386236f9b69c7e84c', 'M572', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:07', '2018-11-13 16:52:07', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('eb2b7711af774be58f9229efaabc4a14', 'U251', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:09', '2018-11-13 16:52:09', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('9d1dd68655e44901aaf4adbbc4ab6690', 'J977', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:12', '2018-11-13 16:52:12', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('c4bb9690284d495b8dac422e62b41229', 'B689', null, null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-16 13:33:48', '2018-11-16 13:34:37', '1', null, '1111', '1245784', '1', null, null, null, '@163.com', null, null, null, '��һ�ҵ�λ', null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('c52f98cba55141e2a0ea1c9048984108', 'V925', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:13', '2018-11-13 16:52:13', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('fa922a74fb0b4bf180f8e72d338ef50d', 'G520', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:17', '2018-11-13 16:52:17', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('2b5f182260dc40cbaa1fa442e1ea912d', 'K287', null, null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-19 11:26:43', '2018-11-19 11:26:43', '1', null, '0', '11', '1', null, null, null, '2016765854@qq.com', null, null, null, 'test', null, '', '7676a576aaa57b76c0aac1a5a77bf876', null, null);
INSERT INTO `lp_users` VALUES ('7a4b36f46917479ea5a099a340873de9', 'Q363', null, null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-19 13:55:58', '2018-11-19 13:56:50', '1', null, '1111', '15661567816', '1', null, null, null, '861634943@qq.com', null, null, null, '���ع�·��', null, '', 'b9b925b99d25b1b95d9d3625d7b151b9', null, null);
INSERT INTO `lp_users` VALUES ('c7c1758f14034af8a392e93db1e74131', 'M547', null, null, 'fcfc92fc7492b5fc7b74cf92b8b537fc', null, null, '0', '0', '0', null, null, null, '0', '2018-11-19 09:19:37', '2018-11-19 09:20:29', '1', null, '0', 'd', '1', null, null, null, '201676554', null, null, null, 'test', null, '', 'f3f39ff36e9ff3f3266ea99f0bf37bf3', null, null);
INSERT INTO `lp_users` VALUES ('21306716795c40aa8dd056e97552465a', 'H790', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:18', '2018-11-13 16:52:18', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('b0b67ed9cbc54ed5b90b5e11d693daa9', 'S350', 'wolf', null, 'e1e1dce149dc59e1be49e0dcf25988e1', null, null, '0', '0', '0', null, null, null, '0', '2018-11-13 16:52:22', '2018-11-13 16:52:22', '1', null, '7777', null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('7606bcb6fd104a62873cf3144d278a8b', 'Q273', null, null, 'd5d5d1d547d126d51447cbd1b2268ed5', null, null, '0', '0', '0', null, null, null, '0', '2018-11-19 11:29:44', '2018-11-19 11:29:44', '1', null, '1111', '18888886666', '1', null, null, null, '122131263@qq.com', null, null, null, '�����û�����3', null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('201', '201', null, null, null, null, null, null, '1', '1', null, null, null, '0', null, '2018-12-25 12:05:45', null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('202', '202', null, null, '123456', null, null, null, '1', '1', null, null, null, '0', null, '2018-12-25 10:25:51', null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('203', '201', null, null, null, null, null, null, '1', '1', null, null, null, '0', null, '2018-12-25 12:06:30', null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
INSERT INTO `lp_users` VALUES ('205', '201', null, null, null, null, null, null, '1', '1', null, null, null, '0', null, '2018-12-25 12:13:09', null, null, null, null, '1', null, null, null, null, null, null, null, null, null, '', null, null, null);
