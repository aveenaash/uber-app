create schema uber_app;

create table drivers(
id int(10) not null auto_increment,
`name` varchar(100) not null,
email varchar(100) not null unique,
address varchar(100),
phone varchar(100) not null,
driver_license_no varchar(20) not null,
created_at datetime not null,
updated_at datetime not null,
primary key (`id`)
);

desc address;

create table vehicles(
id int not null auto_increment,
vin varchar(20) not null,
make varchar(20) not null,
model varchar(20) not null,
`year` int(10) not null ,
license_plate varchar(20) not null,
driver_id int(10) not null,
created_at datetime not null,
updated_at datetime not null,
primary key (id),
KEY `driver_id` (`driver_id`),
CONSTRAINT `driver_idfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
);

create table rides(
id int not null auto_increment,
driver_id int(10) not null,
pickup_location varchar(100) not null,
dropoff_location varchar(100) not null,
cost double not null,
created_at datetime not null,
updated_at datetime not null,
primary key (id),
KEY `driver_id` (`driver_id`),
CONSTRAINT `rides_driver_idfk_1` FOREIGN KEY (`driver_id`) REFERENCES `drivers` (`id`)
);

