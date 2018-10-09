/* 회원 */
DROP TABLE member 
  CASCADE CONSTRAINTS;

/* 강 */
DROP TABLE lechure 
  CASCADE CONSTRAINTS;

/* 회원게시판 */
DROP TABLE bbsMem 
  CASCADE CONSTRAINTS;

/* 상담게시판 */
DROP TABLE bbsQna 
  CASCADE CONSTRAINTS;

/* 출석 */
DROP TABLE chk 
  CASCADE CONSTRAINTS;

/* 직원 */
DROP TABLE employee 
  CASCADE CONSTRAINTS;

/* 강사 */
DROP TABLE teacher 
  CASCADE CONSTRAINTS;

/* 강의 */
DROP TABLE class 
  CASCADE CONSTRAINTS;

/* 부서 */
DROP TABLE team 
  CASCADE CONSTRAINTS;

/* 성적 */
DROP TABLE grade 
  CASCADE CONSTRAINTS;

/* 사내게시판 */
DROP TABLE bbsTeam 
  CASCADE CONSTRAINTS;

/* 신청 */
DROP TABLE submit 
  CASCADE CONSTRAINTS;

/* 댓글 */
DROP TABLE cmt 
  CASCADE CONSTRAINTS;

/* 공지사항 */
DROP TABLE bbs 
  CASCADE CONSTRAINTS;

/* 회원 */
CREATE TABLE member (
  memId VARCHAR2(20) NOT NULL, /* 아이디 */
  memPw VARCHAR2(20) NOT NULL, /* 비밀번호 */
  memNo NUMBER NOT NULL, /* 회원번호 */
  lecNo NUMBER, /* 강의번호 */
  memName VARCHAR2(40) NOT NULL, /* 이름 */
  memGen VARCHAR2(4) NOT NULL, /* 성별 */
  memBrith DATE NOT NULL, /* 생년월일 */
  memMail VARCHAR2(40) NOT NULL, /* 이메일 */
  memPnum NUMBER(11,0) NOT NULL, /* 전화번호 */
  memIpD DATE, /* 입력일시 */
  memIpN VARCHAR2(40), /* 입력자 */
  memUdD DATE, /* 수정일시 */
  memUdN VARCHAR2(40) /* 수정자 */
);

CREATE UNIQUE INDEX PK_member
  ON member (
      memId ASC
  );

ALTER TABLE member
  ADD
      CONSTRAINT PK_member
      PRIMARY KEY (
        memId
      );

/* 강 */
CREATE TABLE lechure (
  lecNo NUMBER NOT NULL, /* 강의번호 */
  lecName VARCHAR2(100) NOT NULL, /* 강의이름 */
  lecStart DATE NOT NULL, /* 강의시작일 */
  lecEnd DATE NOT NULL, /* 강의종료일 */
  lecCon LONG, /* 강의설명 */
  teaId VARCHAR2(20) NOT NULL, /* 강사 */
  classNo NUMBER NOT NULL, /* 강의장 */
  classNum NUMBER, /* 수강인원 */
  lecIpD DATE NOT NULL, /* 입력일시 */
  lecIpN VARCHAR2(40) NOT NULL, /* 입력자 */
  lecUdD DATE, /* 수정일자 */
  lecUdN VARCHAR2(40) /* 수정자 */
);

CREATE UNIQUE INDEX PK_lechure
  ON lechure (
      lecNo ASC
  );

ALTER TABLE lechure
  ADD
      CONSTRAINT PK_lechure
      PRIMARY KEY (
        lecNo
      );

/* 회원게시판 */
CREATE TABLE bbsMem (
  bbsMemNo VARCHAR2(20) NOT NULL, /* 글번호 */
  bbsMemCate VARCHAR2(20) NOT NULL, /* 분류 */
  bbsMemName VARCHAR2(100) NOT NULL, /* 글제목 */
  bbsMemCon LONG, /* 글내용 */
  memId VARCHAR2(20) NOT NULL, /* 글쓴이 */
  bbsMemDate DATE NOT NULL, /* 날짜 */
  bbsMemView NUMBER, /* 조회수 */
  bbsMemUdD DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_bbsMem
  ON bbsMem (
      bbsMemNo ASC
  );

ALTER TABLE bbsMem
  ADD
      CONSTRAINT PK_bbsMem
      PRIMARY KEY (
        bbsMemNo
      );

/* 상담게시판 */
CREATE TABLE bbsQna (
  bbsQnaNo VARCHAR2(20) NOT NULL, /* 글번호 */
  bbsQnaPw VARCHAR2(20) NOT NULL, /* 비밀번호 */
  bbsQnaCate VARCHAR2(20) NOT NULL, /* 분류 */
  bbsQnaName VARCHAR2(100) NOT NULL, /* 글제목 */
  bbsQnaCon LONG, /* 글내용 */
  bbsQnaW VARCHAR2(20) NOT NULL, /* 글쓴이 */
  bbsQnaIpD DATE NOT NULL, /* 날짜 */
  bbsQnaView NUMBER, /* 조회수 */
  bbsQnaUdD DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_bbsQna
  ON bbsQna (
      bbsQnaNo ASC
  );

ALTER TABLE bbsQna
  ADD
      CONSTRAINT PK_bbsQna
      PRIMARY KEY (
        bbsQnaNo
      );

/* 출석 */
CREATE TABLE chk (
  memId VARCHAR2(20) NOT NULL, /* 아이디 */
  chkIpD DATE NOT NULL, /* 입력일시 */
  chkUdD DATE, /* 수정일시 */
  teaId VARCHAR2(20) /* 강사수정 */
);

CREATE UNIQUE INDEX PK_chk
  ON chk (
      memId ASC
  );

ALTER TABLE chk
  ADD
      CONSTRAINT PK_chk
      PRIMARY KEY (
        memId
      );

/* 직원 */
CREATE TABLE employee (
  empId VARCHAR2(20) NOT NULL, /* 직원아이디 */
  empPw VARCHAR2(20) NOT NULL, /* 직원비밀번호 */
  empName VARCHAR2(40) NOT NULL, /* 직원이름 */
  teamNo NUMBER NOT NULL /* 부서번호 */
);

CREATE UNIQUE INDEX PK_employee
  ON employee (
      empId ASC
  );

ALTER TABLE employee
  ADD
      CONSTRAINT PK_employee
      PRIMARY KEY (
        empId
      );

/* 강사 */
CREATE TABLE teacher (
  teaId VARCHAR2(20) NOT NULL, /* 강사아이디 */
  teaPw VARCHAR2(20) NOT NULL, /* 강사비밀번호 */
  teaName VARCHAR2(40) NOT NULL, /* 강사이름 */
  teamNo NUMBER NOT NULL, /* 부서번호 */
  teaIpD DATE NOT NULL, /* 입력일시 */
  teaIpN VARCHAR2(40) NOT NULL, /* 입력자 */
  teaUdD DATE, /* 수정일시 */
  teaUdN VARCHAR2(40) /* 수정자 */
);

CREATE UNIQUE INDEX PK_teacher
  ON teacher (
      teaId ASC
  );

ALTER TABLE teacher
  ADD
      CONSTRAINT PK_teacher
      PRIMARY KEY (
        teaId
      );

/* 강의 */
CREATE TABLE class (
  classNo NUMBER NOT NULL, /* 강의장번호 */
  className VARCHAR2(40) NOT NULL, /* 강의장명 */
  classAddress VARCHAR2(20), /* 강의장위치 */
  classIpD DATE NOT NULL, /* 입력일시 */
  classIpN VARCHAR2(20) NOT NULL, /* 입력자 */
  classUdD DATE, /* 수정일시 */
  classUdN VARCHAR2(40) /* 수정자 */
);

CREATE UNIQUE INDEX PK_class
  ON class (
      classNo ASC
  );

ALTER TABLE class
  ADD
      CONSTRAINT PK_class
      PRIMARY KEY (
        classNo
      );

/* 부서 */
CREATE TABLE team (
  teamNo NUMBER NOT NULL, /* 부서번호 */
  teamName VARCHAR2(40) NOT NULL /* 부서명 */
);

CREATE UNIQUE INDEX PK_team
  ON team (
      teamNo ASC
  );

ALTER TABLE team
  ADD
      CONSTRAINT PK_team
      PRIMARY KEY (
        teamNo
      );

/* 성적 */
CREATE TABLE grade (
  memId VARCHAR2(20) NOT NULL, /* 아이디 */
  graName VARCHAR2(40), /* 회원이름 */
  graJava NUMBER(3,0), /* JAVA */
  graWeb NUMBER(3,0), /* WEB */
  graDb NUMBER(3,0), /* DB */
  graIpD DATE NOT NULL, /* 입력일시 */
  teaId VARCHAR2(20) NOT NULL, /* 입력자 */
  graUdD DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_grade
  ON grade (
      memId ASC
  );

ALTER TABLE grade
  ADD
      CONSTRAINT PK_grade
      PRIMARY KEY (
        memId
      );

/* 사내게시판 */
CREATE TABLE bbsTeam (
  bbsTeamNo VARCHAR2(20) NOT NULL, /* 글번호 */
  bbsTeamCate VARCHAR2(20) NOT NULL, /* 분류 */
  bbsTeamName VARCHAR2(100) NOT NULL, /* 글제목 */
  bbsTeamCon LONG, /* 글내용 */
  bbsTeamW VARCHAR2(20) NOT NULL, /* 글쓴이 */
  bbsTeamDate DATE NOT NULL, /* 날짜 */
  bbsTeamView NUMBER, /* 조회수 */
  bbsTeamUdD DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_bbsTeam
  ON bbsTeam (
      bbsTeamNo ASC
  );

ALTER TABLE bbsTeam
  ADD
      CONSTRAINT PK_bbsTeam
      PRIMARY KEY (
        bbsTeamNo
      );

/* 신청 */
CREATE TABLE submit (
  lecNo NUMBER NOT NULL, /* 강의번호 */
  memId VARCHAR2(20) NOT NULL /* 아이디 */
);

CREATE UNIQUE INDEX PK_submit
  ON submit (
      lecNo ASC
  );

ALTER TABLE submit
  ADD
      CONSTRAINT PK_submit
      PRIMARY KEY (
        lecNo
      );

/* 댓글 */
CREATE TABLE cmt (
  comtNo VARCHAR2(20) NOT NULL, /* 글번호 */
  comtW VARCHAR2(20) NOT NULL, /* 글쓴이 */
  comtCon LONG /* 글내용 */
);

CREATE UNIQUE INDEX PK_cmt
  ON cmt (
      comtNo ASC
  );

ALTER TABLE cmt
  ADD
      CONSTRAINT PK_cmt
      PRIMARY KEY (
        comtNo
      );

/* 공지사항 */
CREATE TABLE bbs (
  bbsNo NUMBER NOT NULL, /* 글번호 */
  bbsCate VARCHAR2(20) NOT NULL, /* 분류 */
  bbsName VARCHAR2(100) NOT NULL, /* 글제목 */
  bbsCon LONG, /* 글내용 */
  bbsW VARCHAR2(20) NOT NULL, /* 글쓴이 */
  bbsDate DATE NOT NULL, /* 날짜 */
  bbsView NUMBER, /* 조회수 */
  bbsUdD DATE /* 수정일시 */
);

CREATE UNIQUE INDEX PK_bbs
  ON bbs (
      bbsNo ASC
  );

ALTER TABLE bbs
  ADD
      CONSTRAINT PK_bbs
      PRIMARY KEY (
        bbsNo
      );

ALTER TABLE member
  ADD
      CONSTRAINT FK_lechure_TO_member
      FOREIGN KEY (
        lecNo
      )
      REFERENCES lechure (
        lecNo
      );

ALTER TABLE lechure
  ADD
      CONSTRAINT FK_teacher_TO_lechure
      FOREIGN KEY (
        teaId
      )
      REFERENCES teacher (
        teaId
      );

ALTER TABLE lechure
  ADD
      CONSTRAINT FK_class_TO_lechure
      FOREIGN KEY (
        classNo
      )
      REFERENCES class (
        classNo
      );

ALTER TABLE bbsMem
  ADD
      CONSTRAINT FK_member_TO_bbsMem
      FOREIGN KEY (
        memId
      )
      REFERENCES member (
        memId
      );

ALTER TABLE chk
  ADD
      CONSTRAINT FK_teacher_TO_chk
      FOREIGN KEY (
        teaId
      )
      REFERENCES teacher (
        teaId
      );

ALTER TABLE chk
  ADD
      CONSTRAINT FK_member_TO_chk
      FOREIGN KEY (
        memId
      )
      REFERENCES member (
        memId
      );

ALTER TABLE employee
  ADD
      CONSTRAINT FK_team_TO_employee
      FOREIGN KEY (
        teamNo
      )
      REFERENCES team (
        teamNo
      );

ALTER TABLE teacher
  ADD
      CONSTRAINT FK_team_TO_teacher
      FOREIGN KEY (
        teamNo
      )
      REFERENCES team (
        teamNo
      );

ALTER TABLE class
  ADD
      CONSTRAINT FK_employee_TO_class
      FOREIGN KEY (
        classIpN
      )
      REFERENCES employee (
        empId
      );

ALTER TABLE grade
  ADD
      CONSTRAINT FK_teacher_TO_grade
      FOREIGN KEY (
        teaId
      )
      REFERENCES teacher (
        teaId
      );

ALTER TABLE grade
  ADD
      CONSTRAINT FK_member_TO_grade
      FOREIGN KEY (
        memId
      )
      REFERENCES member (
        memId
      );

ALTER TABLE submit
  ADD
      CONSTRAINT FK_lechure_TO_submit
      FOREIGN KEY (
        lecNo
      )
      REFERENCES lechure (
        lecNo
      );

ALTER TABLE submit
  ADD
      CONSTRAINT FK_member_TO_submit
      FOREIGN KEY (
        memId
      )
      REFERENCES member (
        memId
      );

ALTER TABLE bbs
  ADD
      CONSTRAINT FK_employee_TO_bbs
      FOREIGN KEY (
        bbsW
      )
      REFERENCES employee (
        empId
      );

drop sequence bbsQna_seq;
create sequence bbsQna_seq;

drop sequence member_seq;
create sequence member_seq;

drop sequence bbsMem_seq;
create sequence bbsMem_seq;

drop sequence cmt_seq;
create sequence cmt_seq;

drop sequence bbs_seq;
create sequence bbs_seq;

drop sequence bbsTeam_seq;
create sequence bbsTeam_seq;


/* 부서 */
insert into team values(1,'행정');
insert into team values(2,'영업');
insert into team values(3,'강사');

/* 직원 */
insert into employee values('E1',1234,'행정원',1);

/* 강사 */
insert into teacher values('T1',1234,'유시민',3,sysdate,'행정원','','');

/* 강의장 */
insert into class values(1,'자바강의장','6강의장',sysdate,'E1','','');

/* 강의 */
insert into lechure values(1,'자바',sysdate,sysdate,'강의내용','T1',1,20,sysdate,'행정원','','');

/* 회원 */
insert into MEMBER values('abc',1234,member_seq.nextval,1,'abc','남',sysdate,'abc@gmail.com',01012345678,sysdate,'','','');

/* 회원게시판 */
insert into bbsMem values(bbsmem_seq.nextval,'잡담','첫번째글','내용무','abc',sysdate,'1','');

/* 상담게시판 */
insert into bbsQna values(bbsQna_seq.nextval,1234,'잡담','첫번째글','내용무','E1',sysdate,'1','');

/* 출석 */
insert into chk values('abc',sysdate,'','');

/* 성적 */
insert into grade values('abc','abc',100,100,100,sysdate,'T1','');

/* 사내게시판 */
insert into bbsTeam values(bbsTeam_seq.nextval,'잡담','첫번째글','내용무','1',sysdate,'1','');

/* 신청 */
insert into submit values(1,'abc');

/* 댓글 */
insert into cmt values('bbs01','abc','냉무');

/* 공지사항 */
insert into bbs values(bbsTeam_seq.nextval,'잡담','첫번째글','내용무','E1',sysdate,'1','');
select * from lechure order by lecNo desc;

