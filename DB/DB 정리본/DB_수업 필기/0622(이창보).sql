--�����Լ�

--ABS(a)
select ABS(-15) from dual; --15�� ������ ���

--CEIL(a)
select CEIL(15.7) from dual; --15.7�� �ø���

--POWER(n,m)
select power(3 , 2) from dual; -- 3�� 2���� ���

--ROUND(n)
select ROUND(16.7) from dual; --16.7�� �ݿø��Ͽ� ������

--CONCAT( A , B )
select CONCAT(15 , 'BIRTHDAY') from dual; --15 + BIRTHDAY ��ģ��

--LPAD('Page 1' , 15 , '*')
select  LPAD('Page 1' , 15 , '*') from dual; --*********Page 1 �տ��� ��ŭ ���ܵΰ� ���Է� �ϰ� �տ���

--LTRIM('page 1' , 'page')
select LTRIM('==>BROWNING' , '<=>')from dual; --BROWNING ��� ���ʺ��� �����ʿ� �ִ°� ������ �ڸ��� �ƴϸ� ��ž 

--REPLACE('JACK' , 'J', 'BL')
select REPLACE('JACK' , 'J' , 'BL') from dual; -- BLACK ��� �չ��ڿ����� Jã�Ƽ� BL�� �ٲ۴�

--RPAD('page 1' , 15, '*') 
select RPAD('page 1' , 15, '*') from dual; -- page 1********* ��� ���ʿ� page 1 �������� ��ŭ *

--RTRIM('page 1' , '1 eg')
select RTRIM('page 1' , '1 eg') from dual; --pa ��� �ڿ��� ���� �ڸ���

--SUBSTR('ABCDEFG' , 3, 2)
select SUBSTR('ABCDEFG' , 3, 2) from dual; --CD ��� 3��°���� 2��°����

--ASCII('A')
select ASCII('A') from dual; --65 ��� �ƽ�Ű�ڵ尪 �Է�

--INSTR('CORPORATEFLOOR FLOOR' , 'OR' , 3 , 2)
select INSTR('CORPORATEFLOOR FLOOR' , 'OR' , 3 , 2) from dual; --13���  3��° ���� 2��°�� ������ OR�� ��ġ

--SYSDATE
select SYSDATE from dual; --�ý��� ��¥ ���

--NULLIF(123,456)
SELECT NULLIF(123,456) FROM dual; --������ �� �ƴϸ� �ڿ���

--NVL(NULL,123)
SELECT NVL(NULL , 123) FROM DUAL; --���̸� �ڿ��� �Է� �ƴϸ� �ڿ���


--�� ���̺�
--what? �������� ���̺�(������ ���̺�) 
--Ư¡: 1. ���� X (�������̺� == �ѱ� , �����̺� == pdf)
--     2. ���� �����ְ� ���� ������ ���� �����ؼ� ������ �� �ִ�.(���ȼ� ���) 
--     3. ���� CRATE VIEW ���̸� (���� �����ְ� ���� ���̸�)
--     AS SELECT�� ����

create view sc_book
as  select *
    from book
    WHERE bookname like '%�౸%';
    
select *
from sc_book;
    
insert into customer values(6, '���̰�' , '���ѹα� �λ�' , null);

select * from customer;
-- ���� 2
create view likr
as select *
from customer
where address like '%���ѹα�%';
-- ���� 3
create view vw_customer
as  select custid, CONCAT(CONCAT(SUBSTR(name , 1 , 1) , '*') , substr(name , 3 , 5)) NAME,address,phone
    from customer;
    
    DROP view vw_customer;
    
    select * from vw_customer;