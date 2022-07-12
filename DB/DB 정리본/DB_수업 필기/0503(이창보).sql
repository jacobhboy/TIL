-- create ��

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
  primary key(orderid), --references == ����
  foreign key(custid) references NewCustomer(custid)
  );                                  --on delete cascade : custid �������� �ϵ� �������� ����
                                      --on delete set null: null ������... �̾�...
                                      --�ƹ��͵� �Ⱦ��� : �� ���� ���� ��������
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
  
  --not null �������� : �����͸� ������ �� �ش�Ӽ����� null�� ���� �ȵ�.
  --unique �������� : �ش�Ӽ����� ������ 2�� �̻��� ���� ���� �ȵ�.
  --default �������� : ���� ����ڰ� �� �Ӽ����� null�� �����Ϸ��� ��� ����Ʈ �������� ���� ���� �⺻���� �����Ѵ�
  --check �������� : �Ӽ����� ������(����)�� �����Ѵ�.
  
  ALTER TABLE newbook 
  rename constraint SYS_C008614 to NewBook_pk;
           --constraint == ��������
    -- ������ �ڷ��� : char(n) , varchar(n) , varchar2(n)
    --char(n) : n�� 40 ������ 40����Ʈ�� ������ �Ҵ�
    --varchar(n), varchar2(n) : ���������� �޸� ������ �Ҵ��Ҽ��ִ�. 
    --varchar2(n)�� ����ȣȯ