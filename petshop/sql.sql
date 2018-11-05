create database pet;
use pet;



-- 用户表
create table user(
userid	int primary key auto_increment,
username	varchar(10), -- 用户名
firstName	varchar(10), -- 名字
lastName	char(1), -- 姓
email		varchar(20),     -- 电子邮件
password	varchar(15),   -- 密码
phone	varchar(20)    -- 电话
);
 
insert into user values(null,"admin","三","张","98135721@qq.com","666666","13580012246");

select  * from user;

-- 订单
create table O_rder(
id	int primary key auto_increment,		
petid	int,foreign key (petid) references pet(pid), 
userid int,foreign key (userid) references user(userid), 
quantity int,  -- 数量
shipDate  varchar(30), -- 发货日期
status	varchar(8)   -- 状态
);


-- 种类表
create table category(
cid	int primary key auto_increment,
name varchar(10)
);

insert into category values
(null,"兔子"),
(null,"老鼠");
select * from category;


-- 宠物表
create table pet(
pid	int primary key auto_increment,
cid int ,foreign key(cid) references category(cid),
name 	varchar(20),    -- 名字
photoUrls varchar(10),  -- 相片
tags  varchar(50),  	-- 标签
status varchar(4)      -- 状态
);
delete from pet where pid=2; 
insert into pet values(null,2,"小白鼠","1.jpg","可爱、生命力较强、性格温和","上线");

select c.cid,p.pid,p.cid,p.name,p.photoUrls,p.tags,p.status from category c  join pet p on c.cid=p.cid;



-- 标签
create table tag(
tid int primary key,    -- id
name varchar(10) -- 名称
);


create table apiresponse(
code	int primary key auto_increment,
type	varchar(10), -- 类型
message	varchar(50)  -- 信息
);
