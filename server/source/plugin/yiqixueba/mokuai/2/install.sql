-- ----------------------------
-- Mokuai yiqixueba_server Records
-- ----------------------------
INSERT INTO `pre_yiqixueba_mokuai` VALUES ('2', '1', '1', '�����', 'server', '', '', 'yiqixueba_server/', 'www.17xue8.cn', 'a:4:{i:0;a:10:{s:4:\"name\";s:5:\"index\";s:4:\"menu\";s:12:\"��̨��ҳ\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:0;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:1;a:10:{s:4:\"name\";s:9:\"sitegroup\";s:4:\"menu\";s:9:\"վ����\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:1;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:2;a:10:{s:4:\"name\";s:4:\"site\";s:4:\"menu\";s:12:\"վ������\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:2;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}i:3;a:10:{s:4:\"name\";s:6:\"mokuai\";s:4:\"menu\";s:12:\"ģ�����\";s:3:\"url\";s:0:\"\";s:4:\"type\";s:1:\"3\";s:7:\"adminid\";s:1:\"0\";s:12:\"displayorder\";i:3;s:8:\"navtitle\";s:0:\"\";s:7:\"navicon\";s:0:\"\";s:10:\"navsubname\";s:0:\"\";s:9:\"navsuburl\";s:0:\"\";}}', 'V2.0', 'a:0:{}', '0');



-- ----------------------------
-- Mokuai yiqixueba_server Tables
-- ----------------------------
-- ----------------------------
-- Table structure for `pre_yiqixueba_server_site`
-- ----------------------------
DROP TABLE IF EXISTS `pre_yiqixueba_server_site`;
CREATE TABLE `pre_yiqixueba_server_site` (
  `siteid` mediumint(8) unsigned NOT NULL auto_increment,
  `sitegroup` smallint(3) NOT NULL,
  `siteurl` char(40) NOT NULL,
  `sitekey` char(32) NOT NULL,
  `salt` char(6) NOT NULL,
  `charset` char(10) NOT NULL,
  `clientip` char(20) NOT NULL,
  `version` char(255) NOT NULL,
  `displayorder` mediumint(8) NOT NULL,
  `installtime` int(10) NOT NULL,
  `uninstalltime` int(10) NOT NULL,
  PRIMARY KEY  (`siteid`)
) ENGINE=MyISAM;

-- ----------------------------
-- Table structure for `pre_yiqixueba_server_pages`
-- ----------------------------
DROP TABLE IF EXISTS `pre_yiqixueba_server_pages`;
CREATE TABLE `pre_yiqixueba_server_pages` (
  `pageid` char(33) NOT NULL,
  `type` char(20) NOT NULL,
  `mod` char(20) NOT NULL,
  `submod` char(20) NOT NULL,
  PRIMARY KEY  (`pageid`)
) ENGINE=MyISAM;

-- ----------------------------
-- Table structure for `pre_yiqixueba_server_sitegroup`
-- ----------------------------
DROP TABLE IF EXISTS `pre_yiqixueba_server_sitegroup`;
CREATE TABLE `pre_yiqixueba_server_sitegroup` (
  `sitegroupid` smallint(3) unsigned NOT NULL auto_increment,
  `sitegroupname` char(20) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `mokuaitest` varchar(255) NOT NULL,
  PRIMARY KEY  (`sitegroupid`)
) ENGINE=MyISAM;

-- ----------------------------
-- Table structure for `pre_yiqixueba_server_mokuai`
-- ----------------------------
DROP TABLE IF EXISTS `pre_yiqixueba_server_mokuai`;
CREATE TABLE `pre_yiqixueba_server_mokuai` (
  `mokuaiid` smallint(6) unsigned NOT NULL auto_increment,
  `pluginid` smallint(6) NOT NULL,
  `available` tinyint(1) NOT NULL default '0',
  `adminid` tinyint(1) unsigned NOT NULL default '0',
  `name` varchar(40) NOT NULL default '',
  `identifier` varchar(40) NOT NULL default '',
  `description` varchar(255) NOT NULL default '',
  `datatables` varchar(255) NOT NULL default '',
  `directory` varchar(100) NOT NULL default '',
  `copyright` varchar(100) NOT NULL default '',
  `modules` text NOT NULL,
  `version` varchar(20) NOT NULL default '',
  `currentversion` tinyint(1) NOT NULL default '0',
  `setting` text NOT NULL,
  `displayorder` smallint(6) NOT NULL,
  `createtime` int(10) NOT NULL,
  `updatetime` int(10) NOT NULL,
  PRIMARY KEY  (`mokuaiid`)
) ENGINE=MyISAM;

-- ----------------------------
-- Records of pre_yiqixueba_server_mokuai
-- ----------------------------
INSERT INTO `pre_yiqixueba_server_mokuai` VALUES ('1', '0', '0', '0', '������', 'main', '���������������', '', '', '', '', 'V1.0', '0', '', '0', '0', '0');
INSERT INTO `pre_yiqixueba_server_mokuai` VALUES ('2', '0', '0', '0', '�����', 'server', '��������ķ���˳���', '', '', '', '', 'V1.0', '0', '', '0', '0', '0');

DROP TABLE IF EXISTS `pre_yiqixueba_server_pages`;
CREATE TABLE `pre_yiqixueba_server_pages` (
  `pageid` smallint(3) unsigned NOT NULL auto_increment,
  `mokuaiid` smallint(3) NOT NULL,
  `type` char(20) NOT NULL,
  `identifier` char(20) NOT NULL,
  `name` char(20) NOT NULL,
  `description` text NOT NULL,
  `displayorder` smallint(3) NOT NULL,
  PRIMARY KEY  (`pageid`)
) ENGINE=MyISAM;