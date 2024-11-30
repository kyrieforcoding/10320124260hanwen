DROP DATABASE IF EXISTS djangox7iot;

CREATE DATABASE djangox7iot default character set utf8mb4 collate utf8mb4_general_ci;

USE djangox7iot;

DROP TABLE IF EXISTS `yonghu`;

CREATE TABLE `yonghu` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`zhanghao` varchar(200) NOT NULL UNIQUE   COMMENT '账号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`xingming` varchar(200) NOT NULL   COMMENT '姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shouji` varchar(200)    COMMENT '手机',
	`zhaopian` varchar(200)    COMMENT '照片',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户';

INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,youxiang,shouji,zhaopian) VALUES(11,'用户1','123456','姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian1.jpg');
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,youxiang,shouji,zhaopian) VALUES(12,'用户2','123456','姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian2.jpg');
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,youxiang,shouji,zhaopian) VALUES(13,'用户3','123456','姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian3.jpg');
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,youxiang,shouji,zhaopian) VALUES(14,'用户4','123456','姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian4.jpg');
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,youxiang,shouji,zhaopian) VALUES(15,'用户5','123456','姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian5.jpg');
INSERT INTO yonghu(id,zhanghao,mima,xingming,xingbie,youxiang,shouji,zhaopian) VALUES(16,'用户6','123456','姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/djangox7iot/upload/yonghu_zhaopian6.jpg');

DROP TABLE IF EXISTS `yisheng`;

CREATE TABLE `yisheng` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`yishengzhanghao` varchar(200) NOT NULL UNIQUE   COMMENT '医生账号',
	`mima` varchar(200) NOT NULL   COMMENT '密码',
	`yishengxingming` varchar(200) NOT NULL   COMMENT '医生姓名',
	`xingbie` varchar(200)    COMMENT '性别',
	`youxiang` varchar(200)    COMMENT '邮箱',
	`shouji` varchar(200)    COMMENT '手机',
	`yishengtouxiang` varchar(200)    COMMENT '医生头像',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医生';

INSERT INTO yisheng(id,yishengzhanghao,mima,yishengxingming,xingbie,youxiang,shouji,yishengtouxiang) VALUES(21,'医生1','123456','医生姓名1','男','773890001@qq.com','13823888881','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang1.jpg');
INSERT INTO yisheng(id,yishengzhanghao,mima,yishengxingming,xingbie,youxiang,shouji,yishengtouxiang) VALUES(22,'医生2','123456','医生姓名2','男','773890002@qq.com','13823888882','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang2.jpg');
INSERT INTO yisheng(id,yishengzhanghao,mima,yishengxingming,xingbie,youxiang,shouji,yishengtouxiang) VALUES(23,'医生3','123456','医生姓名3','男','773890003@qq.com','13823888883','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang3.jpg');
INSERT INTO yisheng(id,yishengzhanghao,mima,yishengxingming,xingbie,youxiang,shouji,yishengtouxiang) VALUES(24,'医生4','123456','医生姓名4','男','773890004@qq.com','13823888884','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang4.jpg');
INSERT INTO yisheng(id,yishengzhanghao,mima,yishengxingming,xingbie,youxiang,shouji,yishengtouxiang) VALUES(25,'医生5','123456','医生姓名5','男','773890005@qq.com','13823888885','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang5.jpg');
INSERT INTO yisheng(id,yishengzhanghao,mima,yishengxingming,xingbie,youxiang,shouji,yishengtouxiang) VALUES(26,'医生6','123456','医生姓名6','男','773890006@qq.com','13823888886','http://localhost:8080/djangox7iot/upload/yisheng_yishengtouxiang6.jpg');

DROP TABLE IF EXISTS `dengdaijiuzhen`;

CREATE TABLE `dengdaijiuzhen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`keshijiuzhen` varchar(200)    COMMENT '科室就诊',
	`huanzhexingming` varchar(200)    COMMENT '患者姓名',
	`paiduishijian` datetime    COMMENT '排队时间',
	`jiuzhenzhuangtai` varchar(200)    COMMENT '就诊状态',
	`huanzhetouxiang` varchar(200)    COMMENT '患者头像',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='等待就诊';

INSERT INTO dengdaijiuzhen(id,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,huanzhetouxiang) VALUES(31,'科室就诊1','患者姓名1',CURRENT_TIMESTAMP,'普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang1.jpg');
INSERT INTO dengdaijiuzhen(id,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,huanzhetouxiang) VALUES(32,'科室就诊2','患者姓名2',CURRENT_TIMESTAMP,'普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang2.jpg');
INSERT INTO dengdaijiuzhen(id,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,huanzhetouxiang) VALUES(33,'科室就诊3','患者姓名3',CURRENT_TIMESTAMP,'普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang3.jpg');
INSERT INTO dengdaijiuzhen(id,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,huanzhetouxiang) VALUES(34,'科室就诊4','患者姓名4',CURRENT_TIMESTAMP,'普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang4.jpg');
INSERT INTO dengdaijiuzhen(id,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,huanzhetouxiang) VALUES(35,'科室就诊5','患者姓名5',CURRENT_TIMESTAMP,'普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang5.jpg');
INSERT INTO dengdaijiuzhen(id,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,huanzhetouxiang) VALUES(36,'科室就诊6','患者姓名6',CURRENT_TIMESTAMP,'普通','http://localhost:8080/djangox7iot/upload/dengdaijiuzhen_huanzhetouxiang6.jpg');

DROP TABLE IF EXISTS `zhengzaijiuzhen`;

CREATE TABLE `zhengzaijiuzhen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiuzhenbianhao` varchar(200)  UNIQUE   COMMENT '就诊编号',
	`keshijiuzhen` varchar(200)    COMMENT '科室就诊',
	`huanzhexingming` varchar(200)    COMMENT '患者姓名',
	`paiduishijian` varchar(200)    COMMENT '排队时间',
	`jiuzhenzhuangtai` varchar(200)    COMMENT '就诊状态',
	`yishengzhanghao` varchar(200)    COMMENT '医生账号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`huanzhetouxiang` varchar(200)    COMMENT '患者头像',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='正在就诊';

INSERT INTO zhengzaijiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang) VALUES(41,'就诊编号1','科室就诊1','患者姓名1','排队时间1','普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang1.jpg');
INSERT INTO zhengzaijiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang) VALUES(42,'就诊编号2','科室就诊2','患者姓名2','排队时间2','普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang2.jpg');
INSERT INTO zhengzaijiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang) VALUES(43,'就诊编号3','科室就诊3','患者姓名3','排队时间3','普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang3.jpg');
INSERT INTO zhengzaijiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang) VALUES(44,'就诊编号4','科室就诊4','患者姓名4','排队时间4','普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang4.jpg');
INSERT INTO zhengzaijiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang) VALUES(45,'就诊编号5','科室就诊5','患者姓名5','排队时间5','普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang5.jpg');
INSERT INTO zhengzaijiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang) VALUES(46,'就诊编号6','科室就诊6','患者姓名6','排队时间6','普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/zhengzaijiuzhen_huanzhetouxiang6.jpg');

DROP TABLE IF EXISTS `guohaojiuzhen`;

CREATE TABLE `guohaojiuzhen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiuzhenbianhao` varchar(200)    COMMENT '就诊编号',
	`keshijiuzhen` varchar(200)    COMMENT '科室就诊',
	`huanzhexingming` varchar(200)    COMMENT '患者姓名',
	`paiduishijian` datetime    COMMENT '排队时间',
	`jiuzhenzhuangtai` varchar(200)    COMMENT '就诊状态',
	`yishengzhanghao` varchar(200)    COMMENT '医生账号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`huanzhetouxiang` varchar(200)    COMMENT '患者头像',
	`guohaoshijian` date    COMMENT '过号时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='过号就诊';

INSERT INTO guohaojiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,guohaoshijian) VALUES(51,'就诊编号1','科室就诊1','患者姓名1',CURRENT_TIMESTAMP,'普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang1.jpg',CURRENT_TIMESTAMP);
INSERT INTO guohaojiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,guohaoshijian) VALUES(52,'就诊编号2','科室就诊2','患者姓名2',CURRENT_TIMESTAMP,'普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang2.jpg',CURRENT_TIMESTAMP);
INSERT INTO guohaojiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,guohaoshijian) VALUES(53,'就诊编号3','科室就诊3','患者姓名3',CURRENT_TIMESTAMP,'普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang3.jpg',CURRENT_TIMESTAMP);
INSERT INTO guohaojiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,guohaoshijian) VALUES(54,'就诊编号4','科室就诊4','患者姓名4',CURRENT_TIMESTAMP,'普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang4.jpg',CURRENT_TIMESTAMP);
INSERT INTO guohaojiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,guohaoshijian) VALUES(55,'就诊编号5','科室就诊5','患者姓名5',CURRENT_TIMESTAMP,'普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang5.jpg',CURRENT_TIMESTAMP);
INSERT INTO guohaojiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,guohaoshijian) VALUES(56,'就诊编号6','科室就诊6','患者姓名6',CURRENT_TIMESTAMP,'普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/guohaojiuzhen_huanzhetouxiang6.jpg',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `wanchengjiuzhen`;

CREATE TABLE `wanchengjiuzhen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiuzhenbianhao` varchar(200)    COMMENT '就诊编号',
	`keshijiuzhen` varchar(200)    COMMENT '科室就诊',
	`huanzhexingming` varchar(200)    COMMENT '患者姓名',
	`paiduishijian` varchar(200)    COMMENT '排队时间',
	`jiuzhenzhuangtai` varchar(200)    COMMENT '就诊状态',
	`yishengzhanghao` varchar(200)    COMMENT '医生账号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`huanzhetouxiang` varchar(200)    COMMENT '患者头像',
	`wanchengshijian` datetime    COMMENT '完成时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='完成就诊';

INSERT INTO wanchengjiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,wanchengshijian) VALUES(61,'就诊编号1','科室就诊1','患者姓名1','排队时间1','普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang1.jpg',CURRENT_TIMESTAMP);
INSERT INTO wanchengjiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,wanchengshijian) VALUES(62,'就诊编号2','科室就诊2','患者姓名2','排队时间2','普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang2.jpg',CURRENT_TIMESTAMP);
INSERT INTO wanchengjiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,wanchengshijian) VALUES(63,'就诊编号3','科室就诊3','患者姓名3','排队时间3','普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang3.jpg',CURRENT_TIMESTAMP);
INSERT INTO wanchengjiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,wanchengshijian) VALUES(64,'就诊编号4','科室就诊4','患者姓名4','排队时间4','普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang4.jpg',CURRENT_TIMESTAMP);
INSERT INTO wanchengjiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,wanchengshijian) VALUES(65,'就诊编号5','科室就诊5','患者姓名5','排队时间5','普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang5.jpg',CURRENT_TIMESTAMP);
INSERT INTO wanchengjiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,wanchengshijian) VALUES(66,'就诊编号6','科室就诊6','患者姓名6','排队时间6','普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/wanchengjiuzhen_huanzhetouxiang6.jpg',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `zhonghujiuzhen`;

CREATE TABLE `zhonghujiuzhen` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`jiuzhenbianhao` varchar(200)    COMMENT '就诊编号',
	`keshijiuzhen` varchar(200)    COMMENT '科室就诊',
	`huanzhexingming` varchar(200)    COMMENT '患者姓名',
	`paiduishijian` datetime    COMMENT '排队时间',
	`jiuzhenzhuangtai` varchar(200)    COMMENT '就诊状态',
	`yishengzhanghao` varchar(200)    COMMENT '医生账号',
	`yishengxingming` varchar(200)    COMMENT '医生姓名',
	`huanzhetouxiang` varchar(200)    COMMENT '患者头像',
	`zhonghushijian` datetime    COMMENT '重呼时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='重呼就诊';

INSERT INTO zhonghujiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,zhonghushijian) VALUES(71,'就诊编号1','科室就诊1','患者姓名1',CURRENT_TIMESTAMP,'普通','医生账号1','医生姓名1','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang1.jpg',CURRENT_TIMESTAMP);
INSERT INTO zhonghujiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,zhonghushijian) VALUES(72,'就诊编号2','科室就诊2','患者姓名2',CURRENT_TIMESTAMP,'普通','医生账号2','医生姓名2','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang2.jpg',CURRENT_TIMESTAMP);
INSERT INTO zhonghujiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,zhonghushijian) VALUES(73,'就诊编号3','科室就诊3','患者姓名3',CURRENT_TIMESTAMP,'普通','医生账号3','医生姓名3','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang3.jpg',CURRENT_TIMESTAMP);
INSERT INTO zhonghujiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,zhonghushijian) VALUES(74,'就诊编号4','科室就诊4','患者姓名4',CURRENT_TIMESTAMP,'普通','医生账号4','医生姓名4','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang4.jpg',CURRENT_TIMESTAMP);
INSERT INTO zhonghujiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,zhonghushijian) VALUES(75,'就诊编号5','科室就诊5','患者姓名5',CURRENT_TIMESTAMP,'普通','医生账号5','医生姓名5','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang5.jpg',CURRENT_TIMESTAMP);
INSERT INTO zhonghujiuzhen(id,jiuzhenbianhao,keshijiuzhen,huanzhexingming,paiduishijian,jiuzhenzhuangtai,yishengzhanghao,yishengxingming,huanzhetouxiang,zhonghushijian) VALUES(76,'就诊编号6','科室就诊6','患者姓名6',CURRENT_TIMESTAMP,'普通','医生账号6','医生姓名6','http://localhost:8080/djangox7iot/upload/zhonghujiuzhen_huanzhetouxiang6.jpg',CURRENT_TIMESTAMP);

DROP TABLE IF EXISTS `news`;

CREATE TABLE `news` (
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '创建时间',
	`title` varchar(200) NOT NULL   COMMENT '标题',
	`introduction` longtext    COMMENT '简介',
	`picture` varchar(200) NOT NULL   COMMENT '图片',
	`content` longtext NOT NULL   COMMENT '内容',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='医院新闻';

INSERT INTO news(id,title,introduction,picture,content) VALUES(81,'标题1','简介1','http://localhost:8080/djangox7iot/upload/news_picture1.jpg','内容1');
INSERT INTO news(id,title,introduction,picture,content) VALUES(82,'标题2','简介2','http://localhost:8080/djangox7iot/upload/news_picture2.jpg','内容2');
INSERT INTO news(id,title,introduction,picture,content) VALUES(83,'标题3','简介3','http://localhost:8080/djangox7iot/upload/news_picture3.jpg','内容3');
INSERT INTO news(id,title,introduction,picture,content) VALUES(84,'标题4','简介4','http://localhost:8080/djangox7iot/upload/news_picture4.jpg','内容4');
INSERT INTO news(id,title,introduction,picture,content) VALUES(85,'标题5','简介5','http://localhost:8080/djangox7iot/upload/news_picture5.jpg','内容5');
INSERT INTO news(id,title,introduction,picture,content) VALUES(86,'标题6','简介6','http://localhost:8080/djangox7iot/upload/news_picture6.jpg','内容6');


DROP TABLE IF EXISTS `config`;

CREATE TABLE `config`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`name` varchar(100) NOT NULL COMMENT '配置参数名称',
	`value` varchar(100) COMMENT '配置参数值',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='配置文件';

insert into config(id,name,value) values(1,'picture1','http://localhost:8080/djangox7iot/upload/picture1.jpg');
insert into config(id,name,value) values(2,'picture2','http://localhost:8080/djangox7iot/upload/picture2.jpg');
insert into config(id,name,value) values(3,'picture3','http://localhost:8080/djangox7iot/upload/picture3.jpg');
insert into config(id,name) values(6,'homepage');


DROP TABLE IF EXISTS `users`;

CREATE TABLE `users`(
	`id` bigint NOT NULL AUTO_INCREMENT COMMENT '主键',
	`username` varchar(100) NOT NULL COMMENT '用户名',
	`password` varchar(100) NOT NULL COMMENT '密码',
	`role` varchar(100) default '管理员' COMMENT '角色',
	`addtime` timestamp NOT NULL default CURRENT_TIMESTAMP COMMENT '新增时间',
	PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='用户表';

insert into users(id,username, password) values(1,'abo','abo');


