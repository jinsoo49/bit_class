select * from bbs;
select * from BBS_USER; -- memberNum, memberName
select count(*) from bbs
delete from bbs where num>4; 

drop sequence bbs_seq;

alter table bbs drop column memberNum;

create sequence bbs_seq start with 3;

select memberNum, subject, content, nalja from bbs where num = 3;

update bbs set subject = 'qqqqq', content = 'wwwwww' where num = 3;
SELECT * FROM USER_SEQUENCES WHERE SEQUENCE_NAME = UPPER('bbs_seq');
insert into bbs values (bbs_seq.nextval, 1, sysdate, 'sub', 'con', 0);

alter table bbs add(memberNum number);

update bbs set cnt = 0 where cnt is null;

alter table bbs modify(memberNum number);

update bbs set membernum = 1111;

select count(*) as cn from BBS_USER where memberNum = 1 and memberName = 'user1';