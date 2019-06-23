create database student_examination_sys;

use student_examination_sys;

create table student (
    id varchar(4) PRIMARY KEY,
    name varchar(10),
    age int,
    sex char(2)
);

create table subject (
    id varchar(5) PRIMARY KEY,
    sucject varchar(10),
    teacher varchar(10),
    description varchar(30)
);

create table score (
    id varchar(5) PRIMARY KEY,
    student_id varchar(4),
    subject_id varchar(5),
    score DECIMAL(4,1),
    CONSTRAINT score_student_fore FOREIGN KEY (student_id) REFERENCES student (id),
    CONSTRAINT score_subject_fore FOREIGN KEY (subject_id) REFERENCES subject (id)
);

insert into student values 
('001','张三',18,'男'),
('002','李四',20,'女');

insert into subject values 
('1001','语文','王老师','本次考试比较简单'),
('1002','数学','刘老师','本次考试比较难');

insert into score values 
('1','001','1001',80),
('2','002','1002',60),
('3','001','1001',70),
('4','002','1002',60.5);