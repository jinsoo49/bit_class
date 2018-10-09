drop table student;

create table student(
	num number primary key,
	name varchar2(12) not null,
	kor number(3),
	eng number(3),
	math number(3)
);

insert into STUDENT values (1, 'test1', 80, 70, 60);
insert into STUDENT values (2, 'test2', 88, 77, 66);
insert into STUDENT values (3, 'test3', 58, 97, 65);
insert into STUDENT values (4, 'test4', 87, 91, 75);

select * from STUDENT;

UPDATE STUDENT SET KOR = 1, ENG = 5, MATH = 7, WHERE NUM=4;
update student set kor = 1, eng = 5, math = 7, where num = 4;