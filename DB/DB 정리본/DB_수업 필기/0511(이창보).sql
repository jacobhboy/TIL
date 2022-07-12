--ALTER 문

drop table newbook;
drop table newcustomer;
drop table neworder;

create table newbook
( 
    bookid number,
    bookname varchar2(20),
    publisher varchar2 (20),
    price number
);

select *
from newbook;
    
--ALTER 속성 추가 기본 형식
--ALTER TABLE 테이블 이름 ADD 속성이름 자료형;        --속성 더 넣고 싶을때 !! ALTER 쓰면 된다!!

Alter table newbook add isbn varchar2(13); 

--ALTER 속성 변경 기본 형식
--ALTER TABLE 테이블이름 MODIFY 속성이름 바꾸고자 하는 타입;  --속성의 타입을 바꾸고 싶을때 이렇게 쓴다.
Alter table newbook modify isbn number; -- isbn 의 속성을 바챠2에서 넘버로 바꿈

--ALTER 속성 삭제 기본 형식
--ALter TABLE 테이블이름 DROP COLUMN 속성이름; --속성 지우고 싶을때

Alter table newbook drop column isbn;

ALTER table newbook modify bookid number not null; --뉴북에 북아이디의 제약조건을 넣는다

alter table newbook add primary key(bookid); --Primary key 추가

--insert문의 기본형식
--INSERT INTO 테이블이름(삽입하고자 하는 속성명1, 속성명2, 속성명3, ...전체 속성명이 다 필요하면 생략가능)
--  VALUES(값들 적기 (위에 적은 속성의 순서랑 같아야함))
select * from book order by bookid asc;
INSERT INTO book(bookid,bookname,publisher,price) --순서를 꼭 지킬 필요는 없다.
    values(11,'스포츠 의학','한솔의학서적' , 90000);
--바차2는 작은 따옴표안에 넣어야함

insert into book
    values(12,'스포츠 의학' , '한솔의학서적',null); --널 넣어도 되고 그냥 비워도 되고
    
select * from imported_book;
--수입도서 목록(imported_book)을 book 테이블에 모두 삽입하시오.

insert into book(bookid,bookname,price,publisher)
    select bookid , bookname , price,publisher    --select로 insert into하는법 조건 두개의 자료형이 일치해야한다
    from imported_book;
    
--UPDATE 문 기본 형식 --update문은 데이터 값 변경할때 쓰는 명령문

--UPDATE 테이블이름
--SET 속성이름='속성값'
--WHERE 조건;

update customer
set address='대한민국 부산'
where custid = 5; --like 되긴하는데 =을 많이 씀

select * from customer;

update customer
set address =(select address
from customer                  --부속지리문 안에는 ;을 안쓴답니다
where name like '김연아')
where name like '박세리';

--delete문
--현재 들어가있는 데이터를 삭제하고 싶을때 쓰는 명령어
--delete문 기본형식
--delete
--from 테이블 이름
--where 조건

select *
from customer;

delete from customer
where custid = 5;

--모든 고객 삭제
delete from customer;

rollback; --커밋하기 전에는 롤백으로 편하게 돌릴수 있다. update delete insert는 수행후 최종반영되지 않는다.
          --최종반영을 하려면 commit을 해야하고 commit후에는 롤백으로도 되돌릴수 없다.
commit;