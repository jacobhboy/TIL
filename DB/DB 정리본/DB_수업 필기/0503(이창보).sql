-- create 문

CREATE TABLE Newbook
(
  bookid NUMBER primary key ,
  bookname varchar2(20) NOT NULL,
  publisher varchar2(20) UNIQUE,
  price NUMBER DEFAULT 10000 check(price > 1000)
  );
  
  CREATE table NewOrder
  (
  orderid number,
  custid number not null,
  bookid number not null,
  saleprice number,
  orderdate date,
  primary key(orderid), --references == 참조
  foreign key(custid) references NewCustomer(custid)
  );                                  --on delete cascade : custid 지워지면 니도 지워져라 ㅋㅋ
                                      --on delete set null: null 넣을게... 미안...
                                      --아무것도 안쓸때 : 응 삭제 못함 ㅋㅋㅋㅋ
  create table newcustomer
  (
  custid number primary key,
  name varchar2(40),
  address varchar2(40),
  phone varchar2(30)
  );
  
  DROP TABLE Newbook;
  DROP TABLE Newcustomer;
  DROP TABLE Neworder;
  
  --not null 제약조건 : 데이터를 삽입할 때 해당속성값에 null이 들어가면 안됨.
  --unique 제약조건 : 해당속성값에 동일한 2개 이상의 값이 드어가면 안됨.
  --default 제약조건 : 만약 사용자가 그 속성값에 null을 삽입하려고 햐면 디폴트 다음으로 넣은 값은 기본으로 삽입한다
  --check 제약조건 : 속성값의 도메인(범위)을 지정한다.
  
  ALTER TABLE newbook 
  rename constraint SYS_C008614 to NewBook_pk;
           --constraint == 제약조건
    -- 문자형 자료형 : char(n) , varchar(n) , varchar2(n)
    --char(n) : n에 40 넣으면 40바이트를 무조건 할당
    --varchar(n), varchar2(n) : 가변형으로 메모리 공간을 할당할수있다. 
    --varchar2(n)이 상위호환