select * from guest;
SELECT ROWNUM AS RN, SABUN, NAME, NALJA, PAY FROM GUEST;



select rownum, sabun, name from guest order by sabun desc;


-- p1, rownum 1~10
select rownum, sabun, name from (select * from guest order by sabun desc) where rownum >= 1 and rownum <= 10;
-- p2, rownum 11~20
select * from (select rownum as rn, sabun, name from (select * from guest order by sabun desc)) where rn >= 11 and rn <= 20;
-- p3, rownum 21~30
select * from (select rownum as rn, sabun, name from (select * from guest order by sabun desc)) where rn between 21 and 30;


select A.b from (select rownum as b from guest) A;


select page, rn, sabun, name, 