CREATE table �й�
  (
      �г� number,
      �� number,
      �а� varchar(40),
      primary key(�г�, ��)
  );
  
  drop table �й�;
  
  create table �л�
  (
    �г� number,
    �� number,
    ��ȣ number,
    �̸� varchar2(30),
    �� varchar2(30),
    foreign key(�г�, ��) references �й�,
    primary key(�г�, ��, ��ȣ)
  );
  
  create table ������
  (
    �г� number,
    �� number,   
    ���� varchar(30),
    �δ��� varchar(30),
    primary key(����, �δ���),
    foreign key(�г�, ��) references �й�
    );
    
    INSERT INTO ������
    values(2,3,'��*��' ,'��*��');
    
    select *
    from ������;
    
    INSERT INTO ���̺��̸�(�����ϰ��� �ϴ� �Ӽ���1, �Ӽ���2, �Ӽ���3, ...��ü �Ӽ����� �� �ʿ��ϸ� ��������)
--  VALUES(���� ���� (���� ���� �Ӽ��� ������ ���ƾ���))\
;
select �й�.�г�, �й�.��,�л�.��ȣ,�л�.�̸�,�й�.�а�,������.����,������.�δ���
from �й�,�л�,������
where �й�.�г� = �л�.�г� and �й�.�� = �л�.�� 
and ������.�г� = �л�.�г� and ������.�� = �л�.�� and
������.�г� = �й�.�г� and ������.�� = �й�.��;    