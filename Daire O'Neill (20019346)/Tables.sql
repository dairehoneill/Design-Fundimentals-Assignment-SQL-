create database if not exists Ardkeen;


create table if not exists Shelfs (
shelfid tinyint auto_increment,
section varchar(20),
primary key (shelfid)
);


create table if not exists Products (
supplier varchar(30),
quantity tinyint(120),
productid bigint auto_increment not null,
shelfid tinyint not null,
primary key (productid),
constraint fk_Shelfs foreign key(shelfid) references Shelfs(shelfid)
on update cascade
on delete no action
);

create table if not exists Staff (
nameA varchar(20) not null,
phoneNo bigint,
staffid smallint  auto_increment,
primary key (staffid)
);

create table if not exists Customer (
customerid smallint auto_increment not null,
staffid smallint ,
primary key (customerid),
constraint fk_staff foreign key(staffid) references Staff(staffid)
on update cascade
on delete no action
);

create table if not exists Payments (
timeA time,
dateA date,
transactionid int auto_increment not null,
method char(10),
primary key (transactionid)
);





create table if not exists Roster (
times time,
nameB varchar(20) not null,
days varchar(9) not null,
staffid smallint,
dates date not null,
primary key (dates),
constraint fk_staffA foreign key(staffid) references Staff(staffid)
);
