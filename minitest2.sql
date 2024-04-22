create database minitest1;

use minitest1;

create table Address (
id int primary key,
address varchar(255)
);

create table Classes (
id int primary key,
name varchar(255),
language varchar(255),
description varchar(255)
);

create table Students (
id int primary key,
fullname varchar(255),
address_id int,
age int,
phone varchar(255),
classes_id int
);

create table Course (
id int primary key,
name varchar(255),
description varchar(255)
);

create table Point (
id int primary key,
course_id int,
student_id int,
point double
);

insert into Address (id, address) values
(1, 'TanBinh'),
(2, 'PhuNhuan'),
(3, 'TanPhu'),
(4, 'Quan3'),
(5, 'ThuDuc');

insert into classes (id, name, language, description) values
(1, 'Lớp A', 'Tiếng Anh', 'Lớp học Tiếng Anh cơ bản.'),
  (2, 'Lớp B', 'Tiếng Pháp', 'Lớp học Tiếng Pháp cho người mới bắt đầu.'),
  (3, 'Lớp C', 'Tiếng Nhật', 'Lớp học Tiếng Nhật trình độ nâng cao.'),
  (4, 'Lớp D', 'Tiếng Tây Ban Nha', 'Lớp học Tiếng Tây Ban Nha giao tiếp.'),
  (5, 'Lớp E', 'Tiếng Đức', 'Lớp học Tiếng Đức cho người đi làm.');
  
insert into students (id, fullname, address_id, age, phone, classes_id) values
  (1, 'Nguyễn Thị F', 1, 22, '0473689234', 1),
  (2, 'Trần Văn G', 2, 21, '0498371634', 3),
  (3, 'Lê Thị H', 3, 20, '0957361548', 2),
  (4, 'Phạm Văn I', 4, 19, '0947352446', 1),
  (5, 'Hoàng Thị K', 5, 21, '0274638975', 3),
  (6, 'Trần Quốc L', 1, 22, '0746123537', 1),
  (7, 'Lê Thị M', 2, 20, '0593870154', 2),
  (8, 'Nguyễn Văn N', 3, 21, '0394756284', 3),
  (9, 'Phạm Thị P', 4, 19, '0849026170', 1),
  (10, 'Hoàng Văn Q', 5, 20, '0548715396', 2);

insert into course (id, name, description) values
  (1, 'Khóa học A', 'Mô tả về khóa học A.'),
  (2, 'Khóa học B', 'Mô tả về khóa học B.'),
  (3, 'Khóa học C', 'Mô tả về khóa học C.'),
  (4, 'Khóa học D', 'Mô tả về khóa học D.'),
  (5, 'Khóa học E', 'Mô tả về khóa học E.'),
  (6, 'Khóa học F', 'Mô tả về khóa học F.'),
  (7, 'Khóa học G', 'Mô tả về khóa học G.'),
  (8, 'Khóa học H', 'Mô tả về khóa học H.'),
  (9, 'Khóa học I', 'Mô tả về khóa học I.'),
  (10, 'Khóa học J', 'Mô tả về khóa học J.'),
  (11, 'Khóa học K', 'Mô tả về khóa học K.'),
  (12, 'Khóa học L', 'Mô tả về khóa học L.'),
  (13, 'Khóa học M', 'Mô tả về khóa học M.'),
  (14, 'Khóa học N', 'Mô tả về khóa học N.'),
  (15, 'Khóa học O', 'Mô tả về khóa học O.'),
  (16, 'Khóa học P', 'Mô tả về khóa học P.'),
  (17, 'Khóa học Q', 'Mô tả về khóa học Q.'),
  (18, 'Khóa học R', 'Mô tả về khóa học R.'),
  (19, 'Khóa học S', 'Mô tả về khóa học S.'),
  (20, 'Khóa học T', 'Mô tả về khóa học T.');
  
insert into Point (id, course_id, student_id, point) values
  (1, 1, 1, 8.5),
  (2, 1, 2, 7.9),
  (3, 1, 3, 9.2),
  (4, 2, 1, 6.7),
  (5, 2, 2, 8.1),
  (6, 2, 3, 7.5),
  (7, 3, 1, 9.8),
  (8, 3, 2, 8.9),
  (9, 3, 3, 9.5),
  (10, 4, 1, 7.2),
  (11, 4, 2, 6.5),
  (12, 4, 3, 8.3),
  (13, 5, 1, 9.1),
  (14, 5, 2, 7.8),
  (15, 5, 3, 8.7);
  
select * from students where fullname like 'Nguyen%';

select * from students where fullname like 'Anh5';

select * from students where age between 18 and 25;

select * from students where id in (12, 13);

select classes_id, COUNT(*) as student_count from Students
group by classes_id;

select a.province, COUNT(*) as student_count from Students s
join Address a on s.address_id = a.id
group by a.province;

select course_id, avg(point) as average_point from Point
group by course_id;

select course_id, avg(point) as average_point from Point
group by course_id
order by average_point desc
limit 1;