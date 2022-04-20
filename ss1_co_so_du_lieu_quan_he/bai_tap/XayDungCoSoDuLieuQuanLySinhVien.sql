use `student-managerment`;
create table class(
id int not null,
`name` varchar(50),
primary key(id)
);
create table Teacher(
id int not null,
`name` varchar(50),
age int,
country varchar(50),
primary key(id)
);