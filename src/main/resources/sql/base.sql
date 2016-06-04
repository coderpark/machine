

create table User (
`id` int(11) not null primary key auto_increment,
`name` varchar(50) not null comment '姓名',
`email` varchar(100) not null comment '邮箱',
`password` varchar(100) not null comment '密码'
);