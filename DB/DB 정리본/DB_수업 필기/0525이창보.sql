--1
create table salesperson(
name varchar2(40) primary key,
age number,
salery number);

drop table salesperson;

create table Orderer(
numbers number,
custname varchar2(40),
salesperson varchar2(40),
amount varchar2(40),
foreign key(custname) references customerer(name),
foreign key(salesperson) references salesperson(name));

drop table orderer;


create table customerer(
name varchar2(40) primary key,
city varchar2(40),
industrytype varchar2(40));

insert into Salesperson
values('tom' , 17 ,100000);
insert into customerer
values('?????' ,'?¥ë?','????');

insert into orderer
values(1,'?????','?????',5);

insert into orderer
values(3,'?????','?????',7);
insert into customerer
values('?????', 'LA','???2??');

insert into customerer
values('??¥ì?','?¥ë?s','????');

--2
select name, salery
from salesperson;
--3
select name
from salesperson
where age < 30;
--4
select name
from customerer
where city like '%s';
--5
select count(distinct custname)
from orderer;
--6
select salesperson , count(*)
from orderer
group by salesperson;
--7
select name, age
from salesperson
where name=(
            select salesperson
            from orderer
            where custname =(select name 
                            from customerer
                            where city like 'LA'));
--8
select s.name , s.age
from salesperson s , customerer c, orderer o
where s.name= o.salesperson and c.name = o.custname and c.city like'LA';
--9
select salesperson
from orderer
group by salesperson
having count(*) >= 2;
--10
update salesperson set salery = 45000
where name like 'Tom';
