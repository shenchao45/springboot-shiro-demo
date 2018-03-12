USE test;
-- 权限表
create table permission(
  pid int(11) not null auto_increment,
  pname VARCHAR (255) not NULL DEFAULT '',
  url VARCHAR (255) DEFAULT '',
  PRIMARY KEY (pid)
) engine=InnoDB DEFAULT charset utf8;
insert into permission VALUES (null,'add','');
insert into permission VALUES (null,'delete','');
insert into permission VALUES (null,'edit','');
insert into permission VALUES (null,'query','');

-- 用户表
create table user(
  uid int(11) not null auto_increment,
  username varchar(255) not null default '',
  password varchar(255) not NULL DEFAULT '',
  primary key (uid)
)engine=InnoDB DEFAULT charset utf8;
insert into user values(null,'admin','123');
insert into user values(null,'demo','123');

-- 角色表
create table role (
  rid int(11) not null auto_increment,
  rname varchar(255) not null DEFAULT '',
  PRIMARY key (rid)
)engine=InnoDB DEFAULT charset utf8;
INSERT INTO role VALUES (1,'user');
INSERT INTO role VALUES (2,'admin');
-- 权限角色关系表
create table permission_role (
  rid int(11) not null,
  pid int(11) not null,
  key idx_rid(rid),
  key idx_pid(pid)
)engine=InnoDB DEFAULT charset utf8;
insert into permission_role values (1,1);
insert into permission_role values (1,2);
insert into permission_role values (2,1);
insert into permission_role values (2,2);
insert into permission_role values (2,3);
insert into permission_role values (2,4);

-- 用户角色关系表
create table user_role (
  uid int(11) not null,
  pid int(11) not null,
  key idx_pid(pid),
  key idx_uid(uid)
)engine=InnoDB DEFAULT charset utf8;
INSERT into user_role values (1,1);
INSERT into user_role values (1,2);
