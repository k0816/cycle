use cycle;

drop table if exists party_info;

create table party_info(
party_id int not null primary key auto_increment,
party_name nvarchar(50),
party_date date,
party_week int,
male_price int,
female_price int,
party_capacity int,
join_count int,
party_place nvarchar(100),
age_minimum int,
age_maximum int,
party_detail nvarchar(500),
image nvarchar(20),
insert_date datetime,
update_date datetime
);

INSERT INTO party_info(party_name, party_date, party_week, male_price, female_price, party_capacity, join_count, party_place, age_minimum, age_maximum, party_detail,image) VALUES
("12月A", 20180401, DAYOFWEEK(party_date), 5000, 4000, 70, 0, "shinjuku", 18, 40, "コメント", "./image/curtain.jpg"),
("7月B", 20180501, DAYOFWEEK(party_date), 3000, 2500, 50, 0, "shinjuku", 20, 40, "コメント", "./image/curtain.jpg"),
 ("5月C", 20180428, DAYOFWEEK(party_date), 5500, 4500, 40, 0, "shinjuku", 25, 40, "コメント", "./image/curtain.jpg"),
("12月C", 20180206, DAYOFWEEK(party_date), 2000, 2000, 20, 0, "shinjuku", 20, 30, "コメント", "./image/curtain.jpg"),
 ("3月C", 20180218, DAYOFWEEK(party_date), 7000, 3000, 30, 0, "shinjuku", 25, 40, "コメント", "./image/curtain.jpg"),
("12月D", 20180214, DAYOFWEEK(party_date), 7000, 4000, 30, 0, "ikebukuro", 20, 40, "コメント", "./image/curtain.jpg"),
("12月D", 20180204, DAYOFWEEK(party_date), 1500, 1000, 50, 0, "ikebukuro", 18, 30, "コメント", "./image/curtain.jpg"),
("11月D", 20180207, DAYOFWEEK(party_date), 5000, 5000, 60, 0, "ikebukuro", 25, 35, "コメント", "./image/curtain.jpg"),
("12月D", 20180305, DAYOFWEEK(party_date), 4000, 3500, 50, 0, "ikebukuro", 20, 40, "コメント", "./image/curtain.jpg"),
 ("4月E", 20180401, DAYOFWEEK(party_date), 3000, 2000, 30, 0, "ikebukuro", 20, 40, "コメント", "./image/curtain.jpg"),
("11月F", 20180411, DAYOFWEEK(party_date), 4500, 4000, 70, 0, "ueno", 20, 40, "コメント", "./image/curtain.jpg"),
 ("4月F", 20180416, DAYOFWEEK(party_date), 5000, 3500, 60, 0, "ueno", 20, 35, "コメント", "./image/curtain.jpg"),
 ("3月F", 20180312, DAYOFWEEK(party_date), 7000, 2000, 20, 0, "ueno", 30, 30, "コメント", "./image/curtain.jpg"),
 ("2月F", 20180202, DAYOFWEEK(party_date), 2000, 1500, 30, 0, "ueno", 20, 35, "コメント", "./image/curtain.jpg"),
 ("1月F", 20180304, DAYOFWEEK(party_date), 4000, 2500, 70, 0, "ueno", 20, 35, "コメント", "./image/curtain.jpg"),
("10月H", 20180321, DAYOFWEEK(party_date), 3000, 2000, 20, 0, "shibuya", 25, 40, "コメント", "./image/curtain.jpg"),
 ("8月H", 20180328, DAYOFWEEK(party_date), 4000, 4000, 60, 0, "shibuya", 25, 40, "コメント", "./image/curtain.jpg"),
 ("7月I", 20180310, DAYOFWEEK(party_date), 5500, 4000, 30, 0, "shibuya", 25, 35, "コメント", "./image/curtain.jpg"),
 ("6月H", 20180306, DAYOFWEEK(party_date), 7000, 5000, 80, 0, "shibuya", 25, 40, "コメント", "./image/curtain.jpg"),
 ("4月H", 20180417, DAYOFWEEK(party_date), 6000, 4000, 20, 0, "shibuya", 25, 40, "コメント", "./image/curtain.jpg"),
("11月J", 20180404, DAYOFWEEK(party_date), 2000, 2000, 20, 0, "shinagawa", 20, 30, "コメント", "./image/curtain.jpg"),
 ("3月J", 20180403, DAYOFWEEK(party_date), 2500, 2000, 60, 0, "shinagawa", 18, 35, "コメント", "./image/curtain.jpg"),
 ("2月J", 20180321, DAYOFWEEK(party_date), 4500, 3000, 40, 0, "shinagawa", 30, 45, "コメント", "./image/curtain.jpg"),
 ("1月J", 20180206, DAYOFWEEK(party_date), 6000, 3500, 50, 0, "shinagawa", 20, 30, "コメント", "./image/curtain.jpg"),
 ("5月J", 20180209, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "shinagawa", 20, 30, "コメント", "./image/curtain.jpg"),
("10月K",20180211, DAYOFWEEK(party_date),  6500, 5000, 40, 0, "roppongi", 25, 40, "コメント", "./image/curtain.jpg"),
 ("8月L", 20180207, DAYOFWEEK(party_date), 3500, 3000, 20, 0, "roppongi", 20, 40, "コメント", "./image/curtain.jpg"),
 ("7月L", 20180227, DAYOFWEEK(party_date), 4000, 2000, 50, 0, "roppongi", 30, 30, "コメント", "./image/curtain.jpg"),
("10月L", 20180221, DAYOFWEEK(party_date), 2000, 2000, 60, 0, "roppongi", 20, 40, "コメント", "./image/curtain.jpg"),
 ("4月L", 20180215, DAYOFWEEK(party_date), 3000, 3000, 50, 0, "roppongi", 20, 35, "コメント", "./image/curtain.jpg");

