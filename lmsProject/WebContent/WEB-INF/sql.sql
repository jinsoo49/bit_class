/* ȸ�� */
DROP TABLE member 
  CASCADE CONSTRAINTS;

/* �� */
DROP TABLE lechure 
  CASCADE CONSTRAINTS;

/* ȸ���Խ��� */
DROP TABLE bbsMem 
  CASCADE CONSTRAINTS;

/* ���Խ��� */
DROP TABLE bbsQna 
  CASCADE CONSTRAINTS;

/* �⼮ */
DROP TABLE chk 
  CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE employee 
  CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE teacher 
  CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE class 
  CASCADE CONSTRAINTS;

/* �μ� */
DROP TABLE team 
  CASCADE CONSTRAINTS;

/* ���� */
DROP TABLE grade 
  CASCADE CONSTRAINTS;

/* �系�Խ��� */
DROP TABLE bbsTeam 
  CASCADE CONSTRAINTS;

/* ��û */
DROP TABLE submit 
  CASCADE CONSTRAINTS;

/* ��� */
DROP TABLE cmt 
  CASCADE CONSTRAINTS;

/* �������� */
DROP TABLE bbs 
  CASCADE CONSTRAINTS;

/* ȸ�� */
CREATE TABLE member (
  memId VARCHAR2(20) NOT NULL, /* ���̵� */
  memPw VARCHAR2(20) NOT NULL, /* ��й�ȣ */
  memNo NUMBER NOT NULL, /* ȸ����ȣ */
  lecNo NUMBER, /* ���ǹ�ȣ */
  memName VARCHAR2(40) NOT NULL, /* �̸� */
  memGen VARCHAR2(4) NOT NULL, /* ���� */
  memBrith DATE NOT NULL, /* ������� */
  memMail VARCHAR2(40) NOT NULL, /* �̸��� */
  memPnum NUMBER(11,0) NOT NULL, /* ��ȭ��ȣ */
  memIpD DATE, /* �Է��Ͻ� */
  memIpN VARCHAR2(40), /* �Է��� */
  memUdD DATE, /* �����Ͻ� */
  memUdN VARCHAR2(40) /* ������ */
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

/* �� */
CREATE TABLE lechure (
  lecNo NUMBER NOT NULL, /* ���ǹ�ȣ */
  lecName VARCHAR2(100) NOT NULL, /* �����̸� */
  lecStart DATE NOT NULL, /* ���ǽ����� */
  lecEnd DATE NOT NULL, /* ���������� */
  lecCon LONG, /* ���Ǽ��� */
  teaId VARCHAR2(20) NOT NULL, /* ���� */
  classNo NUMBER NOT NULL, /* ������ */
  classNum NUMBER, /* �����ο� */
  lecIpD DATE NOT NULL, /* �Է��Ͻ� */
  lecIpN VARCHAR2(40) NOT NULL, /* �Է��� */
  lecUdD DATE, /* �������� */
  lecUdN VARCHAR2(40) /* ������ */
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

/* ȸ���Խ��� */
CREATE TABLE bbsMem (
  bbsMemNo VARCHAR2(20) NOT NULL, /* �۹�ȣ */
  bbsMemCate VARCHAR2(20) NOT NULL, /* �з� */
  bbsMemName VARCHAR2(100) NOT NULL, /* ������ */
  bbsMemCon LONG, /* �۳��� */
  memId VARCHAR2(20) NOT NULL, /* �۾��� */
  bbsMemDate DATE NOT NULL, /* ��¥ */
  bbsMemView NUMBER, /* ��ȸ�� */
  bbsMemUdD DATE /* �����Ͻ� */
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

/* ���Խ��� */
CREATE TABLE bbsQna (
  bbsQnaNo VARCHAR2(20) NOT NULL, /* �۹�ȣ */
  bbsQnaPw VARCHAR2(20) NOT NULL, /* ��й�ȣ */
  bbsQnaCate VARCHAR2(20) NOT NULL, /* �з� */
  bbsQnaName VARCHAR2(100) NOT NULL, /* ������ */
  bbsQnaCon LONG, /* �۳��� */
  bbsQnaW VARCHAR2(20) NOT NULL, /* �۾��� */
  bbsQnaIpD DATE NOT NULL, /* ��¥ */
  bbsQnaView NUMBER, /* ��ȸ�� */
  bbsQnaUdD DATE /* �����Ͻ� */
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

/* �⼮ */
CREATE TABLE chk (
  memId VARCHAR2(20) NOT NULL, /* ���̵� */
  chkIpD DATE NOT NULL, /* �Է��Ͻ� */
  chkUdD DATE, /* �����Ͻ� */
  teaId VARCHAR2(20) /* ������� */
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

/* ���� */
CREATE TABLE employee (
  empId VARCHAR2(20) NOT NULL, /* �������̵� */
  empPw VARCHAR2(20) NOT NULL, /* ������й�ȣ */
  empName VARCHAR2(40) NOT NULL, /* �����̸� */
  teamNo NUMBER NOT NULL /* �μ���ȣ */
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

/* ���� */
CREATE TABLE teacher (
  teaId VARCHAR2(20) NOT NULL, /* ������̵� */
  teaPw VARCHAR2(20) NOT NULL, /* �����й�ȣ */
  teaName VARCHAR2(40) NOT NULL, /* �����̸� */
  teamNo NUMBER NOT NULL, /* �μ���ȣ */
  teaIpD DATE NOT NULL, /* �Է��Ͻ� */
  teaIpN VARCHAR2(40) NOT NULL, /* �Է��� */
  teaUdD DATE, /* �����Ͻ� */
  teaUdN VARCHAR2(40) /* ������ */
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

/* ���� */
CREATE TABLE class (
  classNo NUMBER NOT NULL, /* �������ȣ */
  className VARCHAR2(40) NOT NULL, /* ������� */
  classAddress VARCHAR2(20), /* ��������ġ */
  classIpD DATE NOT NULL, /* �Է��Ͻ� */
  classIpN VARCHAR2(20) NOT NULL, /* �Է��� */
  classUdD DATE, /* �����Ͻ� */
  classUdN VARCHAR2(40) /* ������ */
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

/* �μ� */
CREATE TABLE team (
  teamNo NUMBER NOT NULL, /* �μ���ȣ */
  teamName VARCHAR2(40) NOT NULL /* �μ��� */
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

/* ���� */
CREATE TABLE grade (
  memId VARCHAR2(20) NOT NULL, /* ���̵� */
  graName VARCHAR2(40), /* ȸ���̸� */
  graJava NUMBER(3,0), /* JAVA */
  graWeb NUMBER(3,0), /* WEB */
  graDb NUMBER(3,0), /* DB */
  graIpD DATE NOT NULL, /* �Է��Ͻ� */
  teaId VARCHAR2(20) NOT NULL, /* �Է��� */
  graUdD DATE /* �����Ͻ� */
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

/* �系�Խ��� */
CREATE TABLE bbsTeam (
  bbsTeamNo VARCHAR2(20) NOT NULL, /* �۹�ȣ */
  bbsTeamCate VARCHAR2(20) NOT NULL, /* �з� */
  bbsTeamName VARCHAR2(100) NOT NULL, /* ������ */
  bbsTeamCon LONG, /* �۳��� */
  bbsTeamW VARCHAR2(20) NOT NULL, /* �۾��� */
  bbsTeamDate DATE NOT NULL, /* ��¥ */
  bbsTeamView NUMBER, /* ��ȸ�� */
  bbsTeamUdD DATE /* �����Ͻ� */
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

/* ��û */
CREATE TABLE submit (
  lecNo NUMBER NOT NULL, /* ���ǹ�ȣ */
  memId VARCHAR2(20) NOT NULL /* ���̵� */
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

/* ��� */
CREATE TABLE cmt (
  comtNo VARCHAR2(20) NOT NULL, /* �۹�ȣ */
  comtW VARCHAR2(20) NOT NULL, /* �۾��� */
  comtCon LONG /* �۳��� */
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

/* �������� */
CREATE TABLE bbs (
  bbsNo NUMBER NOT NULL, /* �۹�ȣ */
  bbsCate VARCHAR2(20) NOT NULL, /* �з� */
  bbsName VARCHAR2(100) NOT NULL, /* ������ */
  bbsCon LONG, /* �۳��� */
  bbsW VARCHAR2(20) NOT NULL, /* �۾��� */
  bbsDate DATE NOT NULL, /* ��¥ */
  bbsView NUMBER, /* ��ȸ�� */
  bbsUdD DATE /* �����Ͻ� */
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


/* �μ� */
insert into team values(1,'����');
insert into team values(2,'����');
insert into team values(3,'����');

/* ���� */
insert into employee values('E1',1234,'������',1);

/* ���� */
insert into teacher values('T1',1234,'���ù�',3,sysdate,'������','','');

/* ������ */
insert into class values(1,'�ڹٰ�����','6������',sysdate,'E1','','');

/* ���� */
insert into lechure values(1,'�ڹ�',sysdate,sysdate,'���ǳ���','T1',1,20,sysdate,'������','','');

/* ȸ�� */
insert into MEMBER values('abc',1234,member_seq.nextval,1,'abc','��',sysdate,'abc@gmail.com',01012345678,sysdate,'','','');

/* ȸ���Խ��� */
insert into bbsMem values(bbsmem_seq.nextval,'���','ù��°��','���빫','abc',sysdate,'1','');

/* ���Խ��� */
insert into bbsQna values(bbsQna_seq.nextval,1234,'���','ù��°��','���빫','E1',sysdate,'1','');

/* �⼮ */
insert into chk values('abc',sysdate,'','');

/* ���� */
insert into grade values('abc','abc',100,100,100,sysdate,'T1','');

/* �系�Խ��� */
insert into bbsTeam values(bbsTeam_seq.nextval,'���','ù��°��','���빫','1',sysdate,'1','');

/* ��û */
insert into submit values(1,'abc');

/* ��� */
insert into cmt values('bbs01','abc','�ù�');

/* �������� */
insert into bbs values(bbsTeam_seq.nextval,'���','ù��°��','���빫','E1',sysdate,'1','');
select * from lechure order by lecNo desc;

