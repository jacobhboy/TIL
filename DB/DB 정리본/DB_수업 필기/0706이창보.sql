CREATE table 학반
  (
      학년 number,
      반 number,
      학과 varchar(40),
      primary key(학년, 반)
  );
  
  drop table 학반;
  
  create table 학생
  (
    학년 number,
    반 number,
    번호 number,
    이름 varchar2(30),
    성 varchar2(30),
    foreign key(학년, 반) references 학반,
    primary key(학년, 반, 번호)
  );
  
  create table 선생님
  (
    학년 number,
    반 number,   
    담임 varchar(30),
    부담임 varchar(30),
    primary key(담임, 부담임),
    foreign key(학년, 반) references 학반
    );
    
    INSERT INTO 선생님
    values(2,3,'김*봉' ,'서*희');
    
    select *
    from 선생님;
    
    INSERT INTO 테이블이름(삽입하고자 하는 속성명1, 속성명2, 속성명3, ...전체 속성명이 다 필요하면 생략가능)
--  VALUES(값들 적기 (위에 적은 속성의 순서랑 같아야함))\
;
select 학반.학년, 학반.반,학생.번호,학생.이름,학반.학과,선생님.담임,선생님.부담임
from 학반,학생,선생님
where 학반.학년 = 학생.학년 and 학반.반 = 학생.반 
and 선생님.학년 = 학생.학년 and 선생님.반 = 학생.반 and
선생님.학년 = 학반.학년 and 선생님.반 = 학반.반;    