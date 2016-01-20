	drop database if exists rakugo;
	create database rakugo;
	use rakugo;

	create table user(
	id int primary key not null auto_increment,
	email varchar(100) unique,
	password varchar(255),
	name varchar(50) not null,
	name_kana varchar(50),
	card_num int,
	token varchar(255),
	oauth_id varchar(50),
	oauth_name varchar(15),
	created_at datetime not null,
	updated_at datetime not null
	);

	create table event(
	id int primary key not null auto_increment,
	name varchar(100) not null,
	price float not null,
	detail varchar(255) not null,
	img_path varchar(100) not null,
	story_teller varchar(255) not null,
	start_date date not null,
	place varchar(100) not null,
	place_address varchar(100) not null,
	ticket int not null,
	earnings int not null,
	created_at datetime not null,
	updated_at datetime not null
	);

	create table order_history(
	id int primary key not null auto_increment,
	user_id int not null,
	event_id int not null,
	event_date date not null,
	number int not null,
	created_at datetime not null,
	foreign key(user_id) references user(id),
	foreign key(event_id) references event(id)
	);

	create table admin(
	id int primary key not null auto_increment,
	password varchar(255) not null,
	name varchar(32) unique not null,
	created_at datetime not null,
	updated_at datetime not null
	);

	insert into user value(
	1,"asd@docomo.ne.jp","rakugo6000","田中 仁","タナカ ヒトシ","015515161","TOKEN","","","2016-01-05 08:00:00","2016-01-05 08:00:00"
	);

	insert into user value(
	2,"asd@ezweb.ne.jp","rakugo5000","阿部 仁","アベ ヒトシ","015515162","TOKEN","","","2016-01-05 08:00:00","2016-01-05 08:00:00"
	);

	insert into event value(
	1,"新人大集合",50000,"今話題の新人が大集合","images/rakugo/rakugo1","田代帝,やらないか","2016-01-05",
	"東京ドーム","東京都文京区後楽１丁目３-６１",500,0,"2016-01-04 05:00:00","2016-01-04 05:00:00"
	);

	insert into event value(
	2,"ベテラン大集合",1000000,"今話題のベテランが大集合","images/rakugo/rakugo2","田代亭,阿部亭","2016-01-07",
	"大阪ドーム","大阪府大阪市西区千代崎３丁目中２-１ 京セラドーム大阪",5000,1500,"2016-01-05 12:00:00","2016-01-05 12:00:00"
	);

	insert into order_history value(
	1,1,1,"2016-01-05",1,"2016-01-05 08:00:00"
	);

	insert into order_history value(
	2,2,2,"2016-01-07",2,"2016-01-05 09:00:00"
	);

	insert into admin value(
	1,"admin01","user01","2016-05-01 06:00:00","2016-05-01 06:00:00"
	);

	insert into admin value(
	2,"admin02","user02","2016-05-01 06:00:00","2016-05-01 06:00:00"
	);

