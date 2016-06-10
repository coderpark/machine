

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
  `asset_code` varchar(100) DEFAULT NULL COMMENT '资产编号',
  `unit` varchar(100) DEFAULT NULL COMMENT '单位',
  `factory_typ` varchar(100) DEFAULT NULL COMMENT '厂牌型号',
  `buy_date` date DEFAULT NULL COMMENT '购买时间',
  `fix_date` date DEFAULT NULL COMMENT '保修时间',
  `amount` int(8) NOT NULL COMMENT '设备数量',
  `price` int(11) NOT NULL COMMENT '价格',
  `note` varchar(500) DEFAULT NULL COMMENT '备注',
  `deploy` varchar(500) DEFAULT NULL COMMENT '设备配置',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;

create table Role(
`id` int(11) not null primary key auto_increment,
`name` varchar(50) not null comment '角色名',
 `pid` int(11) NOT NULL DEFAULT '0' comment '0: 一级部门',
`created` timestamp default CURRENT_TIMESTAMP comment '创建时间'
);

create table Authority(
`id` int(11) not null primary key auto_increment,
`name` varchar(50) not null comment '权限名名',
`url` varchar(100) not null default '/main' comment '权限对应的url',
`created` timestamp default CURRENT_TIMESTAMP comment '创建时间'
);

create table UserRole(
`id` int(11) not null primary key auto_increment,
`user` int(11) not null comment '用户',
`role` int(11) not null comment '角色',
`created` timestamp default CURRENT_TIMESTAMP comment '创建时间'
);

create table RoleAuth(
`id` int(11) not null primary key auto_increment,
`role` int(11) not null comment '角色',
`auth` int(11) not null comment '权限',
`created` timestamp default CURRENT_TIMESTAMP comment '创建时间'
);

create table MachineMove(
`id` int(11) not null primary key auto_increment,
`machine` int(11) not null comment '设备',
`cur_user` int(11) not null comment '当前借用人',
`back_time` Date comment '归还日期',
`is_back` tinyint(1) default 0 comment '是否归还',
`created` timestamp default CURRENT_TIMESTAMP comment '创建时间'
);