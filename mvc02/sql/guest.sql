drop table guest;

create table guest(
	sabun number primary key,
	name varchar2(30),
	nalja date,
	pay number
);
drop sequence guest_seq;
create sequence guest_seq;

insert into guest values (guest_seq.nextval, 'user1', sysdate, 1000);
insert into guest values (guest_seq.nextval, 'user2', sysdate, 2000);
insert into guest values (guest_seq.nextval, 'user3', sysdate, 3000);
insert into guest values (guest_seq.nextval, 'user4', sysdate, 4000);

select * from GUEST;