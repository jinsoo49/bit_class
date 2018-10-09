--create table team(teamNo number, name varchar2());

create table bbs_user(
	memberNum number primary key, --unique && not null, 
	memberName varchar2(12) not null
--	teamNo number team(teamNo)
);

create table bbs(
	num number primary key, --unique && not null
	memberNum number references bbs_user(memberNum),
	nalja date default sysdate,
	subject varchar2(30) default '제목없음', 
	content varchar2(1024)
);

create sequence bbs_seq; -- 시퀀스 생성

insert into bbs_user values (1, 'user1');

insert into bbs values (bbs_seq.nextval, 1, sysdate, 'testsubject1', 'testcontent1');
insert into bbs values (bbs_seq.nextval, 1, sysdate, 'testsubject2', 'testcontent2');
insert into bbs values (bbs_seq.nextval, 1, sysdate, 'testsubject3', 'testcontent3');
select * from bbs;

select B.num, B.subject, B.nalja, A.MEMBERNAME from bbs_user A inner join bbs B on A.memberNum = B.memberNum order by num desc;
-- or
select num, subject, nalja, (select memberName from BBS_USER where memberNum = bbs.memberNum) as name from bbs;
-- or
select num, subject, nalja, name from bbs natural join bbs_user order by num desc;
-- order by num desc -->>> 역순

insert into bbs num, nalja, subject, content values (test, test, test, test);

select num, subject, (select memberName from bbs_user B where B.memberNum = A.memberNum) as memberName,nalja,content from bbs A where num ="+num;
					

