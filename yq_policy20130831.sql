# Host: localhost  (Version: 5.0.51a-community-nt)
# Date: 2013-08-31 12:44:29
# Generator: MySQL-Front 5.3  (Build 4.7)

/*!40101 SET NAMES utf8 */;

#
# Source for table "yq_aoto"
#

DROP TABLE IF EXISTS `yq_aoto`;
CREATE TABLE `yq_aoto` (
  `a_id` varchar(20) NOT NULL default '0',
  `a_number` varchar(10) default NULL,
  `a_vin` varchar(20) default NULL,
  `a_engine_no` varchar(20) default NULL,
  `a_model` varchar(10) default NULL,
  `a_limit` datetime default NULL,
  `a_isdeleted` int(1) default NULL,
  `a_time` datetime default NULL,
  `Column_7` double(10,0) default NULL,
  `Column_8` double(10,0) default NULL,
  `Column_9` varchar(10) default NULL,
  `Column_10` varchar(10) default NULL,
  PRIMARY KEY  (`a_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_aoto"
#

INSERT INTO `yq_aoto` VALUES ('AO_20130820_000',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_001',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_002',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_003',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_004',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_005',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_006',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_007',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_008',NULL,NULL,NULL,NULL,NULL,0,NULL,NULL,NULL,NULL,NULL),('AO_20130820_009','','','','','2013-09-05 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_010','','','','','2013-08-23 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_011','','','','','2013-08-14 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_012','','','','','2013-08-14 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_013','','','','','2013-07-31 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_014','','','','','2013-08-08 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_015','','','','','2013-08-07 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_016','','','','','2013-08-06 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_017','','','','','2013-08-14 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_018','','','','','2013-08-21 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_019','','','','','2013-08-15 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_020','','','','','2013-08-23 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_021','','','','','2013-08-06 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130820_022','ewe3333','2323232','34213','','2015-08-13 00:00:00',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL),('AO_20130821_000','辽A234234','234234','234234234','2342342','2013-08-16 00:00:00',0,'2013-08-21 00:00:00',NULL,NULL,NULL,NULL),('AO_20130822_000','','','','','2013-08-06 00:00:00',0,'2013-08-22 00:00:00',NULL,NULL,NULL,NULL),('AO_20130822_001','','','','','2013-08-21 00:00:00',0,'2013-08-22 00:00:00',NULL,NULL,NULL,NULL);

#
# Source for table "yq_channel"
#

DROP TABLE IF EXISTS `yq_channel`;
CREATE TABLE `yq_channel` (
  `ch_id` int(10) NOT NULL,
  `ch_name` varchar(20) default NULL,
  `ch_isdeleted` int(1) default NULL,
  `ch_time` datetime default NULL,
  `Column_5` double(10,0) default NULL,
  `Column_6` varchar(20) default NULL,
  PRIMARY KEY  (`ch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_channel"
#


#
# Source for table "yq_customer"
#

DROP TABLE IF EXISTS `yq_customer`;
CREATE TABLE `yq_customer` (
  `c_id` varchar(20) NOT NULL default '0',
  `c_name` varchar(10) default NULL,
  `c_phone` varchar(15) default NULL,
  `c_address` varchar(218) default NULL,
  `c_gender` varchar(10) default NULL,
  `c_birthday` date default NULL,
  `c_isdeleted` int(1) default NULL,
  `c_time` datetime default NULL,
  `Column_7` double(10,0) default NULL,
  `Column_8` double(10,0) default NULL,
  `Column_9` varchar(20) default NULL,
  `Column_10` varchar(20) default NULL,
  `Column_12` char(10) default NULL,
  PRIMARY KEY  (`c_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_customer"
#

INSERT INTO `yq_customer` VALUES ('CU_20130820_000','','','','0','2013-08-09',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_001','','','','0','2013-08-09',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_002','','','','0','2013-08-08',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_003','','','','','2013-08-08',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_004','','','','','2013-08-14',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_005','','','','','2013-08-22',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_006','','','','','2013-08-16',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_007','','','','','2013-08-16',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_008','','','','','2013-07-31',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130820_009','雷国瑞','12893829829','沈阳','男','2010-08-11',0,'2013-08-20 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130821_000','客户名','13898176737','客户住址','男','2013-08-19',0,'2013-08-21 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130822_000','阿斯蒂芬','阿斯蒂芬','阿斯蒂芬','斯蒂芬','2013-08-21',0,'2013-08-22 00:00:00',NULL,NULL,NULL,NULL,NULL),('CU_20130822_001','','','','','2013-08-14',0,'2013-08-22 00:00:00',NULL,NULL,NULL,NULL,NULL);

#
# Source for table "yq_insurance_comp"
#

DROP TABLE IF EXISTS `yq_insurance_comp`;
CREATE TABLE `yq_insurance_comp` (
  `i_id` int(10) NOT NULL,
  `i_name` varchar(20) default NULL,
  `i_isdeleted` int(1) default NULL,
  `i_time` datetime default NULL,
  `Column_3` double(10,0) default NULL,
  `Column_4` double(10,0) default NULL,
  `Column_5` varchar(20) default NULL,
  `Column_6` varchar(20) default NULL,
  PRIMARY KEY  (`i_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_insurance_comp"
#


#
# Source for table "yq_policy_day"
#

DROP TABLE IF EXISTS `yq_policy_day`;
CREATE TABLE `yq_policy_day` (
  `r_id` varchar(20) NOT NULL default '',
  `r_type` varchar(20) default '',
  `r_loan_years` int(1) default NULL,
  `r_jiaoqiangxian_no` varchar(20) default NULL,
  `r_shangyexian_no` varchar(20) default NULL,
  `r_insuer_comp` varchar(10) default NULL,
  `r_car_id` varchar(20) default NULL,
  `r_jiaoqiangxian_sum` double(10,0) default NULL,
  `r_shangyexian_sum` double(10,0) default NULL,
  `r_jiao_discount` double(2,0) default NULL,
  `r_shang_discount` double(2,0) default NULL,
  `r_shangbao_2` double(10,0) default NULL,
  `r_shangbao_3` double(10,0) default NULL,
  `r_shangbao_4` double(10,0) default NULL,
  `r_shangbao_5` double(10,0) default NULL,
  `r_shanglv_2` double(2,0) default NULL,
  `r_shanglv_3` double(2,0) default NULL,
  `r_shanglv_4` double(2,0) default NULL,
  `r_shanglv_5` double(2,0) default NULL,
  `r_from` varchar(20) default NULL,
  `r_to` varchar(20) default NULL,
  `r_years` int(1) default NULL,
  `r_present_sum` double(10,0) default NULL,
  `r_note` varchar(512) default NULL,
  `r_isdeleted` int(1) default NULL,
  `r_time` datetime default NULL,
  `r_channel` varchar(100) default '',
  `r_service` varchar(20) default NULL,
  `r_customer_id` varchar(20) default NULL,
  `r_saler_id` varchar(20) default NULL,
  `Column_24` varchar(10) default NULL,
  `Column_25` varchar(10) default NULL,
  PRIMARY KEY  (`r_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_policy_day"
#

INSERT INTO `yq_policy_day` VALUES ('BD_20130817_000','0',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('BD_20130819_000','0',0,NULL,'',NULL,'0',0,0,0,0,0,0,0,0,0,0,0,0,'',NULL,0,0,NULL,0,NULL,NULL,NULL,NULL,NULL,NULL,NULL),('BD_20130819_001','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,NULL,0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_002','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,NULL,0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_003','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,NULL,0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_004','新车销售',0,'111','222','平安','0',2333,444,0,1,0,0,0,0,0,0,0,0,'2013-08-12','2013-08-20',8,555,'会尽快',0,NULL,'奥迪,上年联保转入',NULL,NULL,NULL,NULL,NULL),('BD_20130819_005','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_006','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_007','续保',0,'','','中保','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,'奥迪,',NULL,NULL,NULL,NULL,NULL),('BD_20130819_008','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_009','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_010','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_011','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_012','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_013','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_014','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_015','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_016','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_017','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_018','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_019','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_020','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_021','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_022','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_023','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130819_024','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_000','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_001','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_002','',0,'','','','0',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_003','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_004','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_005','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_006','新车销售',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_007','续保',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_008','其他',0,'','','','AO_20130820_008',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_009','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,NULL,',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_010','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_011','',0,'','','','AO_20130820_009',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_012','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_013','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_014','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_015','',0,'','','',NULL,0,0,0,0,1,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_016','续保',0,'','','',NULL,0,0,0,0,1,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_017','新车销售',0,'','','',NULL,0,0,0,0,2,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_018','续保',0,'','','','AO_20130820_011',0,0,0,0,34,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_019','',0,'','','','AO_20130820_012',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_020','续保',0,'','','','AO_20130820_013',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_021','',0,'','','','AO_20130820_014',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130820_022','',0,'','','','AO_20130820_015',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,'CU_20130820_001',NULL,NULL,NULL),('BD_20130820_023','',0,'','','','AO_20130820_016',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,'CU_20130820_002',NULL,NULL,NULL),('BD_20130820_024','',0,'','','','AO_20130820_017',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,'CU_20130820_003',NULL,NULL,NULL),('BD_20130820_025','',0,'','','','AO_20130820_018',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,'CU_20130820_004',NULL,NULL,NULL),('BD_20130820_026','',0,'','','','AO_20130820_019',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,'CU_20130820_005',NULL,NULL,NULL),('BD_20130820_027','续保',0,'','','','AO_20130820_020',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-20 00:00:00',',',NULL,'CU_20130820_007',NULL,NULL,NULL),('BD_20130820_028','',0,'','','','AO_20130820_021',0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',1,'2013-08-20 00:00:00',',',NULL,'CU_20130820_008','SA_20130820_000',NULL,NULL),('BD_20130820_029','新车销售',0,'jqx1029','syx39823','太平洋','AO_20130820_022',0,0,0,0,0,0,0,0,0,0,0,0,'2013-08-14','2015-08-10',726,800,'',0,'2013-08-20 00:00:00','其他,奥迪,本年新销售',NULL,'CU_20130820_009','SA_20130820_001',NULL,NULL),('BD_20130821_000','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-21 00:00:00',',',NULL,NULL,NULL,NULL,NULL),('BD_20130821_001','',0,'','','',NULL,0,0,0,0,0,0,0,0,0,0,0,0,'','',0,0,'',0,'2013-08-21 00:00:00',',',NULL,NULL,'SA_20130821_002',NULL,NULL),('BD_20130821_002','其他',0,'1123','1233123','太平洋','AO_20130821_000',123123,23423,23,34,0,0,0,0,0,0,0,0,'2013-08-14','2013-08-16',2,345345,'523452',0,'2013-08-21 00:00:00','奥迪,,奥,奥迪,,奥,奥迪,,奥,奥迪,,奥',NULL,'CU_20130821_000','SA_20130821_003',NULL,NULL),('BD_20130822_000','新车销售',1,'','','太平洋','AO_20130822_000',0,0,0,0,0,0,0,0,0,0,0,0,'2013-08-19','2013-08-22',3,0,'12',0,'2013-08-22 00:00:00','本年集团拨入,销售',NULL,'CU_20130822_000','SA_20130822_000',NULL,NULL),('BD_20130822_001','新车销售',0,'','','平安','AO_20130822_001',0,0,0,0,0,0,0,0,0,0,0,0,'2013-07-29','2013-08-09',11,0,'',1,'2013-08-22 00:00:00','销售','本年外委拨入','CU_20130822_001','SA_20130822_001',NULL,NULL);

#
# Source for table "yq_region"
#

DROP TABLE IF EXISTS `yq_region`;
CREATE TABLE `yq_region` (
  `rg_id` int(10) NOT NULL,
  `rg_name` varchar(20) default NULL,
  `rg_isdeleted` int(1) default NULL,
  `rg_time` datetime default NULL,
  `Column_3` double(10,0) default NULL,
  `Column_4` double(10,0) default NULL,
  `Column_5` varchar(20) default NULL,
  `Column_6` varchar(20) default NULL,
  PRIMARY KEY  (`rg_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_region"
#


#
# Source for table "yq_saler"
#

DROP TABLE IF EXISTS `yq_saler`;
CREATE TABLE `yq_saler` (
  `sa_id` varchar(20) NOT NULL default '0',
  `sa_name` varchar(20) default NULL,
  `sa_account` varchar(20) default NULL,
  `sa_password` varchar(20) default NULL,
  `sa_isdeleted` int(1) default NULL,
  `sa_time` datetime default NULL,
  `Column_8` double(20,0) default NULL,
  `Column_9` varchar(20) default NULL,
  PRIMARY KEY  (`sa_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_saler"
#

INSERT INTO `yq_saler` VALUES ('SA_20130820_000','','','',0,'2013-08-20 00:00:00',NULL,NULL),('SA_20130820_001','','','',0,'2013-08-20 00:00:00',NULL,NULL),('SA_20130821_000','','','',0,'2013-08-21 00:00:00',NULL,NULL),('SA_20130821_001','','','',0,'2013-08-21 00:00:00',NULL,NULL),('SA_20130821_002','','','',0,'2013-08-21 00:00:00',NULL,NULL),('SA_20130821_003','雷国瑞','leiguorui','宝马',0,'2013-08-21 00:00:00',NULL,NULL),('SA_20130822_000','雷国瑞','asd','asd',0,'2013-08-22 00:00:00',NULL,NULL),('SA_20130822_001','','','',0,'2013-08-22 00:00:00',NULL,NULL);

#
# Source for table "yq_service"
#

DROP TABLE IF EXISTS `yq_service`;
CREATE TABLE `yq_service` (
  `se_id` int(10) NOT NULL,
  `se_name` varchar(20) default NULL,
  `se_fatcherid` int(10) default NULL,
  `se_grade` int(1) default NULL,
  `se_isdeleted` int(1) default NULL,
  `se_time` datetime default NULL,
  `Column_6` double(10,0) default NULL,
  `Column_7` varchar(20) default NULL,
  PRIMARY KEY  (`se_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_service"
#


#
# Source for table "yq_store"
#

DROP TABLE IF EXISTS `yq_store`;
CREATE TABLE `yq_store` (
  `s_id` int(10) NOT NULL,
  `s_name` varchar(20) default NULL,
  `s_isdeleted` int(1) default NULL,
  `s_time` datetime default NULL,
  `Column_5` double(10,0) default NULL,
  `Column_6` varchar(20) default NULL,
  PRIMARY KEY  (`s_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

#
# Data for table "yq_store"
#


#
# Source for table "yq_user"
#

DROP TABLE IF EXISTS `yq_user`;
CREATE TABLE `yq_user` (
  `u_id` int(10) NOT NULL auto_increment,
  `u_name` varchar(20) default NULL,
  `u_account` varchar(20) default NULL,
  `u_password` varchar(20) default NULL,
  `u_isdeleted` int(1) default NULL,
  `u_time` datetime default NULL,
  `Column_6` double(10,0) default NULL,
  `Column_7` double(10,0) default NULL,
  `Column_8` varchar(20) default NULL,
  `Column_9` varchar(20) default NULL,
  PRIMARY KEY  (`u_id`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8;

#
# Data for table "yq_user"
#

INSERT INTO `yq_user` VALUES (0,'管理员','admin','123456',NULL,NULL,NULL,NULL,NULL,NULL),(12,'123','123','123',NULL,NULL,NULL,NULL,NULL,NULL),(13,'1','123','1',NULL,NULL,NULL,NULL,NULL,NULL),(14,'1','123','1',NULL,NULL,NULL,NULL,NULL,NULL);
