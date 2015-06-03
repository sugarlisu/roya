DROP TABLE IF EXISTS userinfo;
-- 用户信息表
create table userinfo(
	userId char(36) NOT NULL comment ' 用户ID ',         -- 用户ID
	userNickname varchar(50) NOT NULL comment '用户昵称',-- 用户昵称
	username varchar(20) NOT NULL comment '用户姓名',    -- 用户姓名
	sex char(1) NOT NULL comment '性别',   -- 用户性别
	userType char(2) NOT NULL comment '用户类型 01:admin',     -- 用户类型
	password varchar(255) NOT NULL comment '密码',   -- 密码
	cardNo varchar(18) NOT NULL comment '证件号',      -- 证件号
	cardType char(2) NOT NULL comment '证件类型',        -- 证件类型
	mobile varchar(11) NOT NULL comment '手机号码', -- 手机号码
	telephone varchar(18)  comment '电话号码',     -- 电话号码
	email varchar(255) comment '邮件地址',      -- 邮件地址
	address varchar(255) comment '住址',-- 住址
	status char(1) NOT NULL comment '状态',-- 状态
	remark varchar(2000) comment '个人简介',-- 个人简介
	company varchar(100) comment '公司',-- 公司
	createBy varchar(50) NOT NULL comment '创建人',     -- 创建人  
	createDate dateTime NOT NULL comment '创建时间',      -- 创建时间
	updateBy varchar(50) NOT NULL comment '修改人',     -- 修改人  
	updateDate dateTime NOT NULL comment '修改时间'       -- 修改时间
	)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;
	
alter table userinfo add primary key(userId);

create unique index userinfo_userNickName on userinfo(userNickname);

alter table userinfo comment='用户信息表';

-- 用户分组表
DROP TABLE IF EXISTS groupinfo;
create table groupinfo(
	groupid char(36)  NOT NULL comment '分组id',         -- 分组ID  
	groupName varchar(200)  NOT NULL comment '分组名',   -- 分组名  
	groupRemark varchar(1024) comment '组备注',-- 组备注  
	createBy varchar(50) NOT NULL comment '创建人',     -- 创建人  
	createDate dateTime NOT NULL comment '创建时间',      -- 创建时间
	updateBy varchar(50) NOT NULL comment '修改人',     -- 修改人  
	updateDate dateTime  NOT NULL comment '修改时间'       -- 修改时间
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

alter table groupinfo comment '用户组信息表';
alter table groupinfo add primary key(groupid);

create unique index groupinfo_groupName on groupinfo(groupName);

DROP TABLE IF EXISTS actioninfo;
create table actioninfo(
	actionid char(36) NOT NULL comment '接口ID',         -- 接口ID  
	actionName varchar(200) NOT NULL comment '接口名称',  -- 接口名称
	actionfunction varchar(1024) NOT NULL comment '接口路径',-- 接口备接口
	actionRemark varchar(1024) comment '接口备注',-- 接口备注  
	createBy varchar(50) NOT NULL comment '创建人',     -- 创建人  
	createDate dateTime NOT NULL comment '创建时间',      -- 创建时间
	updateBy varchar(50) NOT NULL comment '修改人',     -- 修改人  
	updateDate dateTime NOT NULL comment '修改时间'       -- 修改时间
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

alter table actioninfo comment '接口信息表';
alter table actioninfo add primary key(actionid);
create unique index actioninfo_actionName on actioninfo(actionName);

--  权限控制表
DROP TABLE IF EXISTS accessControl;
create table accessControl(
	groupid char(36) NOT NULL comment '分组id',         -- 分组ID  
	actionid char(36) NOT NULL comment '接口ID',         -- 接口ID  
	actionName varchar(200) NOT NULL comment '接口名称',  -- 接口名称
	enable char(1) NOT NULL  comment '权限开关', -- 权限开关
	createBy varchar(50) NOT NULL comment '创建人',     -- 创建人  
	createDate dateTime NOT NULL comment '创建时间',      -- 创建时间
	updateBy varchar(50) NOT NULL comment '修改人',     -- 修改人  
	updateDate dateTime NOT NULL comment '修改时间'       -- 修改时间
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

alter table accessControl comment '权限控制表';
alter table accessControl add primary key(groupid,actionid);

create index accessControl_actionname on accesscontrol(actionName);

DROP TABLE IF EXISTS userGroup;
create table userGroup(
	userId char(36) NOT NULL comment '用户id',   -- 用户ID  
	groupid char(36) NOT NULL comment '分组id',         -- 分组ID  
	groupRemark varchar(1024) comment '组备注',-- 组备注  
	createBy varchar(50) NOT NULL comment '创建人',     -- 创建人  
	createDate dateTime  NOT NULL comment '创建时间',      -- 创建时间
	updateBy varchar(50) NOT NULL comment '修改人',     -- 修改人  
	updateDate dateTime NOT NULL comment '修改时间'       -- 修改时间
)ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

alter table userGroup comment '用户组信息';
alter table userGroup add primary key(userId,groupId);
create index userGroup_userId on userGroup(userId);

DROP TABLE IF EXISTS fp_system_configure;
create table fp_system_configure(
   `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `S_USER_ID` varchar(255) DEFAULT NULL COMMENT '用户ID',
   `S_CONFIGURE_KEY` varchar(255) DEFAULT NULL COMMENT '配置key',
   `S_CONFIGURE_VALUE` varchar(255) DEFAULT NULL COMMENT '配置value',
   `S_CONFIGURE_STATUS` varchar(255) DEFAULT NULL COMMENT '配置状态',
   `S_CONFIGURE_STARTDATE` datetime DEFAULT NULL COMMENT '配置生效时间',
   `S_CONFIGURE_ENDDATE` datetime DEFAULT NULL COMMENT '配置失效时间',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除',
   PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统配置表';

DROP TABLE IF EXISTS fp_user_discuss;
create table fp_user_discuss(
   `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `U_ID` varchar(36) DEFAULT NULL COMMENT '用户ID',
   `U_product_ID` varchar(36) DEFAULT NULL COMMENT '产品ID',
   `U_DICUSS_TYPE` char(2) DEFAULT NULL COMMENT '评论类型   00:综合评论    01:给产品的评论    02:给PA的评论',
   `U_DISCUSS_CONTENT` varchar(255) DEFAULT NULL COMMENT '评论内容',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除',
   PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='评论表';

DROP TABLE IF EXISTS fp_information;
create table fp_information(
   `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
   `I_ID` varchar(36) DEFAULT NULL COMMENT '发布者ID',
   `I_INFORMATION_CONTENT` varchar(1024) DEFAULT NULL COMMENT '资讯内容',
   `I_PHOTO_PATH` varchar(255) DEFAULT NULL COMMENT '图片地址',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除',
   PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='资讯表';


/*Table structure for table `fp_client_project` */

DROP TABLE IF EXISTS `fp_client_project`;

CREATE TABLE `fp_client_project` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL COMMENT '1:正常，2：删除，3：注销',
  `CP_C_USER_ID` int(11) DEFAULT NULL COMMENT '拜访的客户ID',
  `CP_PROJECT_CODE` varchar(10) DEFAULT NULL COMMENT '购买的产品编号',
  `U_CODE` varchar(20) DEFAULT NULL COMMENT 'FA业务编码',
  `CP_SHARE` int(20) DEFAULT NULL COMMENT '购买份额',
  `CP_VALUE` decimal(10,0) DEFAULT NULL COMMENT '购买产品总价',
  `CP_GAIN` decimal(10,0) DEFAULT NULL COMMENT '总收益',
  `CP_PROJECT_STATUS` varchar(2) DEFAULT NULL COMMENT '客户产品状态：1成单，2促单，3推单',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8 COMMENT='客户购买产品关联表';

/*Data for the table `fp_client_project` */

insert  into `fp_client_project`(`ID`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`,`CP_C_USER_ID`,`CP_PROJECT_CODE`,`U_CODE`,`CP_SHARE`,`CP_VALUE`,`CP_GAIN`,`CP_PROJECT_STATUS`) values (1,'2014-07-17 23:37:11','sys','2014-07-17 23:37:17','2',1,1,'918','001',100,'1000000','100000','1'),(2,'2014-07-24 17:15:54','sys','2014-07-24 17:15:59','sys',1,2,'518','001',1000,'10000','10000000','2'),(3,'2014-07-24 17:16:42','sss','2014-07-24 17:16:45','sss',1,1,'999','001',666,'233','5443333','3'),(4,'2014-07-24 22:10:25','sys','2014-07-24 22:10:25','sys',1,1,'91897','001',999,'9999','99999','2'),(5,'2014-07-24 22:15:02','sys','2014-07-24 22:15:02','sys',1,2,'00983','001',8888,'888','888','3'),(6,'2014-07-24 22:22:55','sys','2014-07-24 22:22:55','sys',1,1,'2323','001',777,'7777','777','1'),(7,'2014-07-24 22:39:51','sys','2014-07-24 22:39:51','sys',1,1,'36653','001',666,'666','666','2'),(8,'2014-07-24 22:41:00','sys','2014-07-24 22:41:00','sys',1,1,'1111','001',5544,'333','2222','1');

/*Table structure for table `fp_client_user_asset` */

DROP TABLE IF EXISTS `fp_client_user_asset`;

CREATE TABLE `fp_client_user_asset` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `BASE_ID` int(11) DEFAULT NULL COMMENT '客户基础表ID',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除，3：注销',
  `ASSET_COUNT` decimal(10,0) DEFAULT NULL COMMENT '总资产',
  `IS_CAR` int(11) DEFAULT NULL COMMENT '是否有车，1:有，2：没有',
  `IS_HOUSE` int(11) DEFAULT NULL COMMENT '是否有房，1:有，2：没有',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='客户资产详细表';

/*Data for the table `fp_client_user_asset` */

insert  into `fp_client_user_asset`(`ID`,`BASE_ID`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`,`ASSET_COUNT`,`IS_CAR`,`IS_HOUSE`) values (1,1,'2014-07-17 23:28:58','sys','2014-07-17 23:29:11','sys',1,'30000000',1,1);

/*Table structure for table `fp_client_user_base` */

DROP TABLE IF EXISTS `fp_client_user_base`;

CREATE TABLE `fp_client_user_base` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL,
  `C_NAME` varchar(20) DEFAULT NULL COMMENT '姓名',
  `C_SEX` int(11) DEFAULT NULL COMMENT '性别',
  `C_AGE` int(11) DEFAULT NULL COMMENT '年龄',
  `C_NUMBER_TYPE` int(11) DEFAULT NULL COMMENT '证件类型',
  `C_NUMBER` varchar(50) DEFAULT NULL COMMENT '证件号码',
  `C_ASSET` decimal(10,0) DEFAULT NULL COMMENT '总资产',
  `C_LEVEL` int(11) DEFAULT NULL COMMENT '客户评级',
  `C_ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `C_TELEPHONE` varchar(18) DEFAULT NULL COMMENT '电话',
  `C_MOBILE` varchar(18) DEFAULT NULL COMMENT '手机',
  `C_EMAIL` varchar(50) DEFAULT NULL COMMENT '邮件',
  `C_REMARK` varchar(2000) DEFAULT NULL COMMENT '备注',
  `C_PA_CODE` varchar(20) DEFAULT NULL COMMENT 'FA的业务编码',
  `C_FA_ID` int(10) DEFAULT NULL COMMENT 'FA的ID',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 COMMENT='客户基础信息表';

/*Data for the table `fp_client_user_base` */

insert  into `fp_client_user_base`(`ID`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`,`C_NAME`,`C_SEX`,`C_AGE`,`C_NUMBER_TYPE`,`C_NUMBER`,`C_ASSET`,`C_LEVEL`,`C_ADDRESS`,`C_TELEPHONE`,`C_MOBILE`,`C_EMAIL`,`C_REMARK`,`C_PA_CODE`) values (1,'2014-07-17 23:26:44','sys','2014-07-29 00:51:15','sys',1,'测试',1,18,1,'22222','30000000',2,'测试地址','1234554','3333','4434@126.com','看啊看看','001'),(2,'2014-07-23 14:59:07','sys','2014-07-23 14:59:16','sys',1,'李四',2,55,1,'22223423','100000000',1,'上海市','987655','1345644335','test@163.com','remark','002'),(3,'2014-07-23 19:28:04','sys','2014-07-23 19:28:59','sys',1,'王五1',3,551,2,'555551','5555551',3,'55551','55551','13555551','5551@55.com','5555','001'),(4,'2014-07-24 17:52:48','sys','2014-07-24 17:52:48','sys',1,'赵六',1,66,1,'666666','6666666',1,'6666666','66666','6666666','6666','66666666','001');

/*Table structure for table `fp_client_visit` */

DROP TABLE IF EXISTS `fp_client_visit`;

CREATE TABLE `fp_client_visit` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除，3：注销',
  `CV_DATE` datetime DEFAULT NULL COMMENT '拜访时间',
  `CV_TYPE` int(11) DEFAULT NULL COMMENT '1:电话拜访，2：上门拜访，3:网络拜访，4：售后拜访',
  `U_CODE` varchar(20) DEFAULT NULL COMMENT 'FA业务编码',
  `CV_C_USER_ID` int(11) DEFAULT NULL COMMENT '拜访的客户ID',
  `CV_REMARK` varchar(500) DEFAULT NULL COMMENT '访问备注',
  `CV_P_CODE` varchar(10) DEFAULT NULL COMMENT '拜访涉及产品的编号，0表示此次拜访不涉及特定产品',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='客户拜访记录';

/*Data for the table `fp_client_visit` */

insert  into `fp_client_visit`(`ID`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`,`CV_DATE`,`CV_TYPE`,`U_CODE`,`CV_C_USER_ID`,`CV_REMARK`,`CV_P_CODE`) values (1,'2014-07-17 23:34:32','sys','2014-07-17 23:34:39','sys',1,'2014-07-17 23:34:45',1,'001',1,'第一次拜访','918'),(2,'2014-07-17 23:35:04','syso','2014-07-17 23:35:11','sys',1,'2014-07-18 23:35:17',2,'001',1,'第二次拜访','518'),(3,'2014-07-25 02:34:16','sys','2014-07-25 02:34:16','sys',1,'2014-08-09 00:00:00',3,'001',1,'测试拜访呢','918'),(4,'2014-07-25 02:35:30','sys','2014-07-25 02:35:30','sys',1,'2014-08-11 00:00:00',2,'001',1,'好好一次拜访','918'),(5,'2014-07-25 02:36:03','sys','2014-07-25 02:36:03','sys',1,'2014-08-31 00:00:00',4,'001',1,'搞定了的百分那个','918'),(6,'2014-07-25 02:37:51','sys','2014-07-25 02:37:51','sys',1,'2013-09-09 00:00:00',2,'001',1,'换产品了','518'),(7,'2014-07-25 13:48:41','sys','2014-07-25 13:48:41','sys',1,'2014-07-03 00:00:00',1,'001',1,'新事件控件','918'),(8,'2014-07-25 13:49:20','sys','2014-07-25 13:49:20','sys',1,'2014-08-01 00:00:00',4,'001',1,'还是测试','518'),(9,'2014-07-29 00:51:54','sys','2014-07-30 14:21:13','001',1,'2014-09-01 00:00:00',2,'001',1,'fdg99999d','098799'),(10,'2014-07-30 02:45:10','sys','2014-07-30 02:49:10','sys',1,'2014-10-02 00:00:00',3,'001',1,'9999000','99900'),(11,'2014-07-30 14:34:11','001','2014-07-30 14:34:11','001',1,'2014-09-30 00:00:00',2,'001',1,'58585858855','518'),(12,'2014-07-30 14:36:32','001','2014-07-30 14:36:32','001',1,'2014-09-29 00:00:00',2,'001',1,'9998889888','999'),(13,'2014-07-30 14:39:20','001','2014-07-30 19:05:18','001',1,'2014-11-07 00:00:00',4,'001',1,'00011132','00011123'),(14,'2014-07-30 19:05:31','001','2014-07-30 19:05:31','001',1,'2014-07-31 00:00:00',2,'001',1,'dddddd','918');

/*Table structure for table `fp_fa_user` */

DROP TABLE IF EXISTS `fp_fa_user`;

CREATE TABLE `fp_fa_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT COMMENT '系统自增ID',
  `U_NAME` varchar(10) DEFAULT NULL COMMENT '用户名称',
  `U_LOGIN_NAME` varchar(20) DEFAULT NULL COMMENT '登录名',
  `U_PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `U_NUMBER_TYPE` int(11) DEFAULT NULL COMMENT '证件类型:1:身份证，2：护照,3:驾照',
  `U_NUMBER` varchar(50) DEFAULT NULL COMMENT '证件号：身份证号码/护照号',
  `U_ROLE` varchar(10) DEFAULT NULL COMMENT '角色：资深FA、初级FA等',
  `U_TELEPHONE` varchar(18) DEFAULT NULL COMMENT '电话号码',
  `U_MOBILE` varchar(18) DEFAULT NULL COMMENT '移动电话',
  `U_CODE` varchar(20) DEFAULT NULL COMMENT 'FA的业务编码',
  `U_EMAIL` varchar(50) DEFAULT NULL COMMENT '电子邮件',
  `U_SEX` int(11) DEFAULT NULL COMMENT '1：男，2：女，3：隐私',
  `U_AGE` int(11) DEFAULT NULL COMMENT '年龄',
  `U_ADDRESS` varchar(100) DEFAULT NULL COMMENT '地址',
  `CREATE_DATE` datetime DEFAULT NULL COMMENT '创建时间',
  `CREATE_BY` varchar(20) DEFAULT NULL COMMENT '创建人',
  `UPDATE_DATE` datetime DEFAULT NULL COMMENT '修改时间',
  `UPDATE_BY` varchar(20) DEFAULT NULL COMMENT '修改人',
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除，3：注销',
  `U_REMARK` varchar(2000) DEFAULT NULL COMMENT '个人简介',
  `U_COMPANY` varchar(3) DEFAULT NULL COMMENT '所在公司：1：自由，2：诺亚',
  `U_IMAGE` varchar(1000) DEFAULT NULL COMMENT 'FA头像图片地址',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='FA人员信息表';

/*Data for the table `fp_fa_user` */

insert  into `fp_fa_user`(`ID`,`U_NAME`,`U_LOGIN_NAME`,`U_PASSWORD`,`U_NUMBER_TYPE`,`U_NUMBER`,`U_ROLE`,`U_TELEPHONE`,`U_MOBILE`,`U_CODE`,`U_EMAIL`,`U_SEX`,`U_AGE`,`U_ADDRESS`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`,`U_REMARK`,`U_COMPANY`,`U_IMAGE`) values (1,'test','test','123',1,'11','1','11','13678900987','001','test1@126.com',1,1,'1','2014-07-17 01:29:25','1','2014-07-17 01:29:32','1',1,'11','1','http://192.168.23.77:8080/financingProject/image/1.jpg'),(2,'test2','test2','123',1,'370687199010010001','2','222','18988887777','002','test2@126.com',2,22,'浦东新区老汉路69号','2014-07-28 00:18:25','2','2014-07-28 00:18:29','2',1,'222','2','http://192.168.23.77:8080/financingProject/image/1.jpg'),(3,'ÕÅ²âÊÔ','test111@126.com','123',1,'11111111111111111','1','65666555','13543452345','0103','test4@126.com',87,983,'武汉洪山区','2014-07-28 00:19:27','3','2014-07-30 15:02:48','3',1,'33','3',NULL);

/*Table structure for table `fp_project` */

DROP TABLE IF EXISTS `fp_project`;

CREATE TABLE `fp_project` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `P_CODE` varchar(10) DEFAULT NULL COMMENT '产品代码',
  `P_FULL_NAME` varchar(1000) NOT NULL COMMENT '产品全称',
  `P_NAME` varchar(100) DEFAULT NULL COMMENT '产品名称',
  `P_TYPE` varchar(2) DEFAULT NULL COMMENT '产品类型  01:基金、02:信托',
  `P_ISSUING_SCALE` decimal(20,2) NOT NULL COMMENT '发行规模',
  `P_MINIMUM_AMOUNT` decimal(20,0) DEFAULT NULL COMMENT '产品起购金额  每份金额',
  `P_DUE_TIME` int(11) DEFAULT NULL COMMENT '产品期限',
  `P_EXPECT_SUBSCRIPTION_AMOUNT` decimal(13,2) NOT NULL COMMENT '预期销售金额',
  `P_EXPECT_SUBSCRIPTION_SHARE` decimal(13,2) NOT NULL COMMENT '预期销售分额  预期份额=预期认购金额/每份金额',
  `P_REAL_SUBSCRIPTION_AMOUNT` decimal(13,2) NOT NULL COMMENT '实际销售金额',
  `P_REAL_SUBSCRIPTION_SHARE` decimal(13,2) NOT NULL COMMENT '实际销售分额 实际份额=实际认购金额/每份金额',
  `P_INVEST_TYPE` char(2) NOT NULL COMMENT '投资行业  01:房地产类  02:融资租赁 03:基础设施04:其他',
  `P_PROJECT_OWNER` varchar(255) NOT NULL COMMENT '募集金额的需求方',
  `P_INVEST_OWNER` varchar(255) NOT NULL COMMENT '发行机构',
  `P_SALE_STATUS` char(2) DEFAULT '01' COMMENT '销售状态01:未开始02:预售中，03:募集中 04:已售完',
  `P_SALE_TIME_START` datetime DEFAULT NULL COMMENT '开始正式销售的日期',
  `P_SALE_TIME_END` datetime DEFAULT NULL COMMENT '结束正式销售的日期',
  `P_ESTABLISHMENT_TIME` datetime DEFAULT NULL COMMENT '产品成立时间',
  `P_FREQUENCY_OPEN` varchar(100) DEFAULT NULL COMMENT '产品开放频率',
  `P_INSTRUCTIONS_WORK` varchar(255) COMMENT '对于起息方式和类型的说明',
  `P_PAYMENT_INTEREST_TYPE` char(2) NOT NULL COMMENT '付息方式  01:按月付息、02:按季付息、03:按半年付息、04:按年付息、05:到期还本付息',
  `P_SUMMARY` varchar(1000) DEFAULT NULL COMMENT '产品简介',
  `P_END_EARLY_IDENTIFICATION` char(1) DEFAULT '0' COMMENT '项目期限的提前结束  0:否  1:是',
  `P_PROGRESSIVE_AMOUNT` decimal(20,2) NOT NULL COMMENT '累进追加金额的最小单位',
  `STATUS` char(1) DEFAULT '1' COMMENT '1:未发布，2：发布中，3：发布成功',
  `P_PUBLIC_STATUS` char(1) DEFAULT '1' COMMENT '发布状态：1，未发布，2已发布,3下架',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品表';
DROP TABLE IF EXISTS `fp_project_annual_revenue`;
CREATE TABLE `fp_project_annual_revenue`(
	`ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`P_ID` int(10) NOT NULL COMMENT '产品ID' ,
	`P_ANNUAL_REVENUE_EXPECT` decimal(20,2) NOT NULL COMMENT '预期年化收益',
	`P_START_AMOUNT` decimal(20,2) NOT NULL COMMENT '起始金额',
	`P_END_AMOUNT` decimal(20,2) NOT NULL COMMENT '结束金额',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	 PRIMARY KEY (`ID`)
)ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品年化收益表'; 

select P_ANNUAL_REVENUE_EXPECT from fp_project_annual_revenue;

CREATE TABLE `fp_project_risk`(
	`ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`P_ID` int(10) NOT NULL COMMENT '产品ID' ,
	`P_RISK_RANK` char(2) NOT NULL COMMENT '风险等级  01:保守',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	 PRIMARY KEY (`ID`)
)ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品风险信息表'; 

CREATE TABLE `fp_project_comments`(
	`ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`P_ID` int(10) NOT NULL COMMENT '产品ID' ,
	`P_COMMENTS_TYPE` char(2) NOT NULL COMMENT '点评类型 01:平台',
	`P_COMMENTS_CONTENT` text NOT NULL COMMENT '点评内容',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	 PRIMARY KEY (`ID`)
)ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品点评表'; 

DROP TABLE IF EXISTS `fp_project_rabate`;
CREATE TABLE `fp_project_rabate`(
	`ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`P_ID` int(10) NOT NULL COMMENT '产品ID' ,
	`AR_ID` int(10) COMMENT '预期年化收益ID',
	`P_RABATE_TYPE` char(2) NOT NULL COMMENT '返佣类型 01:百分比 02:固定值',
	`P_RABATE_PROFIT` decimal(20,2) NOT NULL COMMENT '返佣额度',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	 PRIMARY KEY (`ID`)
)ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8 COMMENT='产品返佣信息表'; 


/*Table structure for table `fp_project_like` */

DROP TABLE IF EXISTS `fp_project_like`;

CREATE TABLE `fp_project_like` (
  `id` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `U_ID` int(10) DEFAULT NULL COMMENT 'fa的id',
  `P_ID` int(10) DEFAULT NULL COMMENT '产品id',
  `LIKE_TYPE` int(11) DEFAULT '1' COMMENT '类型1：收藏',
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT '1' COMMENT '1:正常，2：删除，3：注销',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='产品收藏关系';

CREATE TABLE `fp_switch`(
	`id` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`S_KEY` varchar(100) NOT NULL COMMENT '开关名称',
	`S_VALUE` char(1) NOT NULL COMMENT '开关值  0:关  1:开',
	`S_COMMENT` varchar(1000) NOT NULL COMMENT '开关备注',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8 COMMENT='功能开关表';

/*Data for the table `fp_project_like` */

insert  into `fp_project_like`(`id`,`U_ID`,`P_ID`,`LIKE_TYPE`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`) values (2,1,1,1,'2014-07-30 00:56:52','22','2014-07-30 00:57:03','3',1),(3,1,2,1,'2014-07-30 01:09:15','33','2014-07-30 01:09:17','33',1),(4,2,3,1,'2014-07-30 01:41:07','44','2014-07-30 01:41:07','33',1),(5,2,4,1,'2014-07-30 15:51:40','54','2014-07-30 15:51:40','33',1),(6,2,5,1,'2014-07-30 15:56:04','444','2014-07-30 15:56:04','33',1),(7,2,8,1,'2014-07-30 15:56:52',NULL,'2014-07-30 15:56:52',NULL,1);

/*Table structure for table `fp_sys_user` */

DROP TABLE IF EXISTS `fp_sys_user`;

CREATE TABLE `fp_sys_user` (
  `ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
  `CREATE_DATE` datetime DEFAULT NULL,
  `CREATE_BY` varchar(20) DEFAULT NULL,
  `UPDATE_DATE` datetime DEFAULT NULL,
  `UPDATE_BY` varchar(20) DEFAULT NULL,
  `STATUS` int(11) DEFAULT NULL COMMENT '1:正常，2：删除，3：注销',
  `S_LOGIN_NAME` varchar(20) DEFAULT NULL COMMENT '登录名',
  `S_PASSWORD` varchar(20) DEFAULT NULL COMMENT '密码',
  `S_ROLE` varchar(10) DEFAULT NULL COMMENT '角色:管理员，评审员等',
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='系统管理人员信息表';

/*Data for the table `fp_sys_user` */

insert  into `fp_sys_user`(`ID`,`CREATE_DATE`,`CREATE_BY`,`UPDATE_DATE`,`UPDATE_BY`,`STATUS`,`S_LOGIN_NAME`,`S_PASSWORD`,`S_ROLE`) values (1,'2014-07-17 23:36:13','sts','2014-07-17 23:36:18','syts',1,'admin','admin','1');

DROP TABLE IF EXISTS `fp_order`;
create table fp_order(
	`ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`O_CID` int(10) NOT NULL COMMENT '客户ID',
	`O_PROJECT_ID` int(10) NOT NULL COMMENT '产品ID',
	`O_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '订单金额',
	`O_STATUS` char(3) DEFAULT NULL COMMENT '订单状态',
	`O_REBATE_RATE` decimal(20,2) DEFAULT NULL COMMENT '返佣率',
	`O_REBATE_AMOUNT` decimal(20,2) DEFAULT NULL COMMENT '应得佣金',
	`O_REMARK` varchar(2000) DEFAULT NULL COMMENT '备注',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	PRIMARY KEY (`ID`)
)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单表';

alter table fp_order modify column O_STATUS int(3) DEFAULT NULL COMMENT '订单状态';

DROP TABLE IF EXISTS `fp_order_sign`;

DROP TABLE IF EXISTS `fp_order_rebate`;


DROP TABLE IF EXISTS `fp_order_contract`;
create table fp_order_contract(
	`ID` int(10) unsigned NOT NULL AUTO_INCREMENT,
	`C_OID` int(10) NOT NULL COMMENT '订单ID',
	`C_IMAGE_URL` varchar(1000) DEFAULT NULL COMMENT '订单合同路径',
	`CREATE_DATE` datetime DEFAULT NULL,
	`CREATE_BY` varchar(20) DEFAULT NULL,
	`UPDATE_DATE` datetime DEFAULT NULL,
	`UPDATE_BY` varchar(20) DEFAULT NULL,
	PRIMARY KEY (`ID`)
)ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='订单合同表';

CREATE TABLE `fp_product_recommend` (
  `ID` int(10) unsigned NOT NULL auto_increment COMMENT '主键',
  `FP_PROJECT_ID` int(10) NOT NULL COMMENT '产品ID',
  `FA_ID` int(10) NOT NULL COMMENT 'FA用户ID',
  `RECOMMEND_DATE` datetime default NULL COMMENT '推荐日期',
  `RECOMMEND_STATUS` char(3) default NULL COMMENT '推荐状态',
  `CREATE_DATE` datetime default NULL,
  `CREATE_BY` varchar(20) default NULL,
  `UPDATE_DATE` datetime default NULL,
  `UPDATE_BY` varchar(20) default NULL,
  PRIMARY KEY  (`ID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='精品推荐表';

ALTER TABLE fp_fa_user ADD ACCOUNT_BALANCE DECIMAL(10,2) COMMENT '帐号余额';

delete from userinfo;
insert into userinfo values('12121212121212121212121212121212','admin','admin','0','02','ISMvKXpXpadDiUoOSoAfww==','1212','1212','01','1212','1212','1212','0','1212','1212','1212','2014-08-02 00:00:00','sys','2014-08-02 00:00:00');
commit;
select * from userinfo;

select * from (fp_order o left join fp_fa_user fa on o.O_FA_ID = fa.id) left join fp_project project on(o.O_PROJECT_ID = project.id)

alter table fp_order add O_FA_ID int(10)  NOT NULL COMMENT 'FAID';
alter table fp_project_risk add P_RISK_RANK_COMTENT text NOT NULL COMMENT '风险控制说明';

select * from fp_project_rabate;

select * from fp_project p left join fp_project_rabate pr on p.ID = pr.P_ID left join fp_project_comments pc on p.ID=pc.p_id where pr.ID is not null
and p.status='3' and p.p_public_status='2'
and pc.id is not null;

select * from fp_project_comments where p_id='14';
select * from fp_project_risk where p_id='14';
select * from fp_project_rabate;
select * from fp_fa_auth a left join FP_FA_CERT b on a.fa_id=b.fa_id  where fa_id=141;

