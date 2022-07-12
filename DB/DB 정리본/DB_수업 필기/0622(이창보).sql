--내장함수

--ABS(a)
select ABS(-15) from dual; --15의 절댓값을 출력

--CEIL(a)
select CEIL(15.7) from dual; --15.7을 올림함

--POWER(n,m)
select power(3 , 2) from dual; -- 3의 2승을 출력

--ROUND(n)
select ROUND(16.7) from dual; --16.7을 반올림하여 보여줌

--CONCAT( A , B )
select CONCAT(15 , 'BIRTHDAY') from dual; --15 + BIRTHDAY 합친다

--LPAD('Page 1' , 15 , '*')
select  LPAD('Page 1' , 15 , '*') from dual; --*********Page 1 앞에꺼 만큼 남겨두고 별입력 하고 앞에꺼

--LTRIM('page 1' , 'page')
select LTRIM('==>BROWNING' , '<=>')from dual; --BROWNING 출력 왼쪽부터 오른쪽에 있는거 있으면 자르고 아니면 스탑 

--REPLACE('JACK' , 'J', 'BL')
select REPLACE('JACK' , 'J' , 'BL') from dual; -- BLACK 출력 앞문자열에서 J찾아서 BL로 바꾼다

--RPAD('page 1' , 15, '*') 
select RPAD('page 1' , 15, '*') from dual; -- page 1********* 출력 왼쪽에 page 1 남은공간 만큼 *

--RTRIM('page 1' , '1 eg')
select RTRIM('page 1' , '1 eg') from dual; --pa 출력 뒤에서 부터 자르기

--SUBSTR('ABCDEFG' , 3, 2)
select SUBSTR('ABCDEFG' , 3, 2) from dual; --CD 출력 3번째부터 2번째까지

--ASCII('A')
select ASCII('A') from dual; --65 출력 아스키코드값 입력

--INSTR('CORPORATEFLOOR FLOOR' , 'OR' , 3 , 2)
select INSTR('CORPORATEFLOOR FLOOR' , 'OR' , 3 , 2) from dual; --13출력  3번째 이후 2번째로 나오는 OR의 위치

--SYSDATE
select SYSDATE from dual; --시스템 날짜 출력

--NULLIF(123,456)
SELECT NULLIF(123,456) FROM dual; --같으면 널 아니면 뒤에꺼

--NVL(NULL,123)
SELECT NVL(NULL , 123) FROM DUAL; --널이면 뒤에꺼 입력 아니면 뒤에꺼


--뷰 테이블
--what? 보기전용 테이블(가상의 테이블) 
--특징: 1. 수정 X (기존테이블 == 한글 , 뷰테이블 == pdf)
--     2. 내가 보여주고 싶은 정보만 따로 추출해서 보여줄 수 있다.(보안성 우수) 
--     3. 형식 CRATE VIEW 뷰이름 (내가 보여주고 싶은 열이름)
--     AS SELECT문 삽입

create view sc_book
as  select *
    from book
    WHERE bookname like '%축구%';
    
select *
from sc_book;
    
insert into customer values(6, '이이경' , '대한민국 부산' , null);

select * from customer;
-- 문제 2
create view likr
as select *
from customer
where address like '%대한민국%';
-- 문제 3
create view vw_customer
as  select custid, CONCAT(CONCAT(SUBSTR(name , 1 , 1) , '*') , substr(name , 3 , 5)) NAME,address,phone
    from customer;
    
    DROP view vw_customer;
    
    select * from vw_customer;