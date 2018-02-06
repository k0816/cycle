use cycle;

drop table if exists party_info;

create table party_info(
party_id int not null primary key auto_increment,
party_name nvarchar(30),
party_date date,
party_week nchar(5),
male_price int,
female_price int,
party_capacity int,
join_count int,
party_place nvarchar(30),
age_minimum int,
age_maximum int,
party_detail nvarchar(300),
image nvarchar(20),
insert_date datetime,
update_date datetime
);

INSERT INTO party_info(party_name, party_date, party_week, male_price, female_price, party_capacity, join_count, party_place, age_minimum, age_maximum, party_detail,image)VALUES
("土曜日限定 男女100人 婚活PARTY", 20180203, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180210, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180217, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180224, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180303, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180310, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180317, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180324, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("土曜日限定 男女100人 婚活PARTY", 20180331, DAYOFWEEK(party_date), 5000, 4000, 100, 0, "新宿", 25, 35, "コメント", "./image/100.png"),
("ビジネスマンに出会いを", 20180202, DAYOFWEEK(party_date), 4000, 6000, 50, 0, "六本木", 30, 45, "コメント", "./image/business.png"),
("ビジネスマンに出会いを", 20180210, DAYOFWEEK(party_date), 4000, 6000, 50, 0, "六本木", 30, 45, "コメント", "./image/business.png"),
("ビジネスマンに出会いを", 20180216, DAYOFWEEK(party_date), 4000, 6000, 50, 0, "六本木", 30, 45, "コメント", "./image/business.png"),
("ビジネスマンに出会いを", 20180224, DAYOFWEEK(party_date), 4000, 6000, 50, 0, "六本木", 30, 45, "コメント", "./image/business.png"),
("異文化交流PARTY", 20180206, DAYOFWEEK(party_date), 3000, 2000, 40, 0, "池袋", 18, 25, "コメント", "./image/global.png"),
("異文化交流PARTY", 20180213, DAYOFWEEK(party_date), 3000, 2000, 40, 0, "池袋", 18, 25, "コメント", "./image/global.png"),
("異文化交流PARTY", 20180220, DAYOFWEEK(party_date), 3000, 2000, 40, 0, "池袋", 18, 25, "コメント", "./image/global.png"),
("異文化交流PARTY", 20180227, DAYOFWEEK(party_date), 3000, 2000, 40, 0, "池袋", 18, 25, "コメント", "./image/global.png"),
("素敵な出会いをあなたへ", 20180201, DAYOFWEEK(party_date), 4500, 3000, 40, 0, "上野", 28, 35, "コメント", "./image/heart.jpg"),
("素敵な出会いをあなたへ", 20180208, DAYOFWEEK(party_date), 4500, 3000, 40, 0, "上野", 28, 35, "コメント", "./image/heart.jpg"),
("素敵な出会いをあなたへ", 20180215, DAYOFWEEK(party_date), 4500, 3000, 40, 0, "上野", 28, 35, "コメント", "./image/heart.jpg"),
("素敵な出会いをあなたへ", 20180222, DAYOFWEEK(party_date), 4500, 3000, 40, 0, "上野", 28, 35, "コメント", "./image/heart.jpg"),
("平日夜限定！仕事帰りに素敵な出会いを！", 20180202, DAYOFWEEK(party_date), 7000, 3000, 30, 0, "品川", 30, 40, "コメント", "./image/night.png"),
("平日夜限定！仕事帰りに素敵な出会いを！", 20180209, DAYOFWEEK(party_date), 7000, 3000, 30, 0, "品川", 30, 40, "コメント", "./image/night.png"),
("平日夜限定！仕事帰りに素敵な出会いを！", 20180211, DAYOFWEEK(party_date), 7000, 3000, 30, 0, "品川", 30, 40, "コメント", "./image/night.png"),
("平日夜限定！仕事帰りに素敵な出会いを！", 20180218, DAYOFWEEK(party_date), 7000, 3000, 30, 0, "品川", 30, 40, "コメント", "./image/night.png"),
("20代限定！カジュアルパーティー", 20180205, DAYOFWEEK(party_date), 3000, 1500, 40, 0, "渋谷", 20, 29, "コメント", "./image/young.png"),
("20代限定！カジュアルパーティー", 20180213, DAYOFWEEK(party_date), 3000, 1500, 40, 0, "渋谷", 20, 29, "コメント", "./image/young.png"),
("20代限定！カジュアルパーティー", 20180219, DAYOFWEEK(party_date), 3000, 1500, 40, 0, "渋谷", 20, 29, "コメント", "./image/young.png"),
("20代限定！カジュアルパーティー", 20180227, DAYOFWEEK(party_date), 3000, 1500, 40, 0, "渋谷", 20, 29, "コメント", "./image/young.png"),
("真剣婚活！1対1 着席STYLE！", 20180305, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("真剣婚活！1対1 着席STYLE！", 20180313, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("真剣婚活！1対1 着席STYLE！", 20180321, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("真剣婚活！1対1 着席STYLE！", 20180329, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("真剣婚活！1対1 着席STYLE！", 20180303, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("真剣婚活！1対1 着席STYLE！", 20180311, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("真剣婚活！1対1 着席STYLE！", 20180324, DAYOFWEEK(party_date), 8000, 6000, 30, 0, "六本木", 30, 35, "コメント", "./image/lady.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180207, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180212, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180221, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180226, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180307, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180312, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180321, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png"),
("会員10万突破記念婚活パーティー！条件なし！", 20180326, DAYOFWEEK(party_date), 3000, 2000, 60, 0, "渋谷", 18, 50, "コメント", "./image/10man.png");
