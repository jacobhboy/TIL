--ALTER ��

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
    
--ALTER �Ӽ� �߰� �⺻ ����
--ALTER TABLE ���̺� �̸� ADD �Ӽ��̸� �ڷ���;        --�Ӽ� �� �ְ� ������ !! ALTER ���� �ȴ�!!

Alter table newbook add isbn varchar2(13); 

--ALTER �Ӽ� ���� �⺻ ����
--ALTER TABLE ���̺��̸� MODIFY �Ӽ��̸� �ٲٰ��� �ϴ� Ÿ��;  --�Ӽ��� Ÿ���� �ٲٰ� ������ �̷��� ����.
Alter table newbook modify isbn number; -- isbn �� �Ӽ��� ��í2���� �ѹ��� �ٲ�

--ALTER �Ӽ� ���� �⺻ ����
--ALter TABLE ���̺��̸� DROP COLUMN �Ӽ��̸�; --�Ӽ� ����� ������

Alter table newbook drop column isbn;

ALTER table newbook modify bookid number not null; --���Ͽ� �Ͼ��̵��� ���������� �ִ´�

alter table newbook add primary key(bookid); --Primary key �߰�

--insert���� �⺻����
--INSERT INTO ���̺��̸�(�����ϰ��� �ϴ� �Ӽ���1, �Ӽ���2, �Ӽ���3, ...��ü �Ӽ����� �� �ʿ��ϸ� ��������)
--  VALUES(���� ���� (���� ���� �Ӽ��� ������ ���ƾ���))
select * from book order by bookid asc;
INSERT INTO book(bookid,bookname,publisher,price) --������ �� ��ų �ʿ�� ����.
    values(11,'������ ����','�Ѽ����м���' , 90000);
--����2�� ���� ����ǥ�ȿ� �־����

insert into book
    values(12,'������ ����' , '�Ѽ����м���',null); --�� �־ �ǰ� �׳� ����� �ǰ�
    
select * from imported_book;
--���Ե��� ���(imported_book)�� book ���̺� ��� �����Ͻÿ�.

insert into book(bookid,bookname,price,publisher)
    select bookid , bookname , price,publisher    --select�� insert into�ϴ¹� ���� �ΰ��� �ڷ����� ��ġ�ؾ��Ѵ�
    from imported_book;
    
--UPDATE �� �⺻ ���� --update���� ������ �� �����Ҷ� ���� ��ɹ�

--UPDATE ���̺��̸�
--SET �Ӽ��̸�='�Ӽ���'
--WHERE ����;

update customer
set address='���ѹα� �λ�'
where custid = 5; --like �Ǳ��ϴµ� =�� ���� ��

select * from customer;

update customer
set address =(select address
from customer                  --�μ������� �ȿ��� ;�� �Ⱦ���ϴ�
where name like '�迬��')
where name like '�ڼ���';

--delete��
--���� ���ִ� �����͸� �����ϰ� ������ ���� ��ɾ�
--delete�� �⺻����
--delete
--from ���̺� �̸�
--where ����

select *
from customer;

delete from customer
where custid = 5;

--��� �� ����
delete from customer;

rollback; --Ŀ���ϱ� ������ �ѹ����� ���ϰ� ������ �ִ�. update delete insert�� ������ �����ݿ����� �ʴ´�.
          --�����ݿ��� �Ϸ��� commit�� �ؾ��ϰ� commit�Ŀ��� �ѹ����ε� �ǵ����� ����.
commit;