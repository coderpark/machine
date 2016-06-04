

create table User (
`id` int(11) not null primary key auto_increment,
`name` varchar(50) not null comment '姓名',
`email` varchar(100) not null comment '邮箱',
`password` varchar(100) not null comment '密码'
);

CREATE TABLE `Machine` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL COMMENT '设备名',
  `serial` varchar(100) DEFAULT NULL COMMENT '序列号',
  `assetCode` varchar(100) DEFAULT NULL COMMENT '资产编号',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `factoryTyp` varchar(100) DEFAULT NULL COMMENT '厂牌型号',
  `buyDate` timestamp NULL DEFAULT NULL COMMENT '购买时间',
  `fixDate` timestamp NULL DEFAULT NULL COMMENT '保修时间',
  `amount` int(8) NOT NULL COMMENT '设备数量',
  `price` int(11) NOT NULL COMMENT '价格',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `deploy` varchar(500) DEFAULT NULL COMMENT '设备配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;