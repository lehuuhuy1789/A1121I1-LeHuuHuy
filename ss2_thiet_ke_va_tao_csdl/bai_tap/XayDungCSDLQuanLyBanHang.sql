create database XayDungCSDLQuanLyBanHang;
use XayDungCSDLQuanLyBanHang;
create table customer(
c_id int not null primary key auto_increment,
c_name varchar(50) not null,
c_age int not null
);

create table product(
p_id int not null primary key auto_increment,
p_name  varchar(50) not null,
p_price double not null
);

create table `order`(
o_id int not null primary key auto_increment,
c_id int not null,
o_date date not null,
o_total_price double not null,
foreign key(c_id) references customer(c_id)
);

create table order_detail(
o_id int not null,
p_id int not null,
odqty int not null,
primary key(o_id,p_id),
foreign key(o_id) references `order`(o_id),
foreign key(p_id) references product(p_id)
);