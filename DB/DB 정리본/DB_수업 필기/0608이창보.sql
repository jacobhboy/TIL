//1��
create table MyUser(
USER_SEQ NUMBER primary key,
ID VARCHAR2(20),
USER_NAME varchar2(20),
DATETIME date);

drop table myuser;

insert into Myuser
values(5,'shin1504','�Ż��Ӵ�','22-05-05');
// 2��
create table Category(
category_seq number primary key,
name varchar2(20));

insert into category
values( 3 , '��ȭ����');

//3��
create table post(
post_seq number primary key,
category_seq number,
user_seq number,
title varchar2(40),
content varchar2(4000),
datetime date,
insert into post
values( 3 ,1,5,'�Ż��Ӵ翡 ����', '�Ż��Ӵ� [��������, 1504~1551] ������ ���(��ߣ)�̰�, ȣ�� ���Ӵ�(������:������:������)�����Ӵ�(�����)���ӻ���(�����)�̴�. ������ ����(˰��) ����̸�, ���� ����(���)�� ��Ӵ��̴�. ȿ���� �����ϰ� ������ �������� ��������� �湮(����)�� ������ ���塤ħ��(����)���ڼ�(��)�� ��������, Ư�� �ù�(����)�� �׸��� �پ ���� ���� �ѽ�(����) ��ǰ�� ��������. ���� �Ȱ�(��̱)�� ������ ���� ȭǳ(����)�� ���� Ư���� ���� �������� ���Ͽ� �ѱ� ������ ����ȭ����� ���� ��´�. ���(ߣ�)��������Ǯ������ ���� �� �׷ȴ�. �ڳ౳������ ���ٸ� ����� ��￩ �����ó(��ٽ����)�� �Ͱ�(Т��)�� �Ǿ���. ������ ��Ӵ��̴�.
', '04-10-29');
foreign key(user_seq) references myuser(user_seq)
);

insert into post
values( 1 ,1,1,'������ ����', '�⺻�� ���翡�� ������������ ������ ��ġ�� ���(�ɼ� Ŭ�ο�)�� �������� ����ġ�� ��ġ�� 2���� �Ͽ� ��ȸ�� ������ ������ �����ϴ� ����̴�. �ѴϹ� �ٸ�ī�� ĭ���� �������� ����� �⵿ �⸶�� 2�δ븦 �̿��ϰ� �ڽ��� �������� ������� ���� ����Ͽ� �¸��� �ŵ״� �����̴�. �����ε��� �̸� ���� ���������� �θ����� ���� ������ �⺻�� ���񱺴� 2���� �߰��� ����Ͽ� �������� �ϼ���Ų ���´�. ��, �̰��� �������� ����� �⸶���� �⵿���� �̿��� ������ �����̶� ���̴�.
', '92-08-14');

insert into post
values( 2 ,3,4,'�ƹ�����', '�ƹ�����(��������)�� �鼺�� ����ġ�� �ٸ� �Ҹ���� ���̴�. �ƹ������̶�� �θ��� ����� �� ������ �ִµ�, �� �ϳ��� 1443�� ���� 12��(��� 1444�� 1��)�� ��������� ���� �ѱ����� ǥ�� ü��, �� ���ó��� �ѱ��� â�� ��ÿ� �θ� �̸��̰�, �� �ϳ��� 1446�� 9��[1]�� �߰��� å �̸��̴�. ���⼭�� ����, �� �ƹ������̶�� å�� �����Ѵ�.
', '46-10-09');

insert into post
values( 3 ,1,5,'�Ż��Ӵ翡 ����', '�Ż��Ӵ� [��������, 1504~1551] ������ ���(��ߣ)�̰�, ȣ�� ���Ӵ�(������:������:������)�����Ӵ�(�����)���ӻ���(�����)�̴�. ������ ����(˰��) ����̸�, ���� ����(���)�� ��Ӵ��̴�. ȿ���� �����ϰ� ������ �������� ��������� �湮(����)�� ������ ���塤ħ��(����)���ڼ�(��)�� ��������, Ư�� �ù�(����)�� �׸��� �پ ���� ���� �ѽ�(����) ��ǰ�� ��������. ���� �Ȱ�(��̱)�� ������ ���� ȭǳ(����)�� ���� Ư���� ���� �������� ���Ͽ� �ѱ� ������ ����ȭ����� ���� ��´�. ���(ߣ�)��������Ǯ������ ���� �� �׷ȴ�. �ڳ౳������ ���ٸ� ����� ��￩ �����ó(��ٽ����)�� �Ͱ�(Т��)�� �Ǿ���. ������ ��Ӵ��̴�.
', '04-10-29');

insert into post
values( 4 ,2,3,'�ʸ��纴��', '���̴� �������� 10�� �纴���� �����Ͽ� ������ �ݰ��� ��⵵ �Ͽ���.[19] �״� �Ϻ��� �����ô�� ����� ���̸�, �Ϻ��� ������ ����� �Ϻ� �� ���� �� ���� ��ȭ�� ���� ���ɻ縦 �ٸ� ������ ������ ���� �������� �̱��� ���� ������ ħ���� ���̶�� �����ߴ�. �Ϻ��� ���߿� ���� �������� �״� 10�� ���� ������ �缺�Ͽ� �Ϻ��� ħ���� ����� ���� �����Ͽ���. �׷��� ���� �̷��� ���ش� ���ο� ���� ���� ��Ȥ�ϱ� ���� �߾����� ġ�εǾ���, �������� ���� ������ ����ģ ���°� ����̶�� ȣ�������� �ʾҴ�. ���̰� 10�� �纴���� �����ϴ� ���, ������ �� ���¼��� ��λ����δ� 30�� ���� �Ѿ�����, ���� ���� ������ ���� ���ڴ� 1,000�� ������ �Ǿ��ٰ� �Ѵ�.[20] 1581�� ������ ���� �� �������� �����ϴ� ���濬�ϱ⡷�� �ϼ��� ���Ҵ�. �Ż��Ӵ��� �Ƶ��̴�.
', '83-01-01');

//4��

create table Mycomment(
comment_seq number primary key,
post_seq number,
user_seq number,
content varchar2(4000),
datetime date,
parent number,
foreign key(post_seq) references post(post_seq),
foreign key(user_seq) references myuser(user_seq),
foreign key(parent) references mycomment(comment_seq)
);

insert into mycomment
values( 4,2,1 , '�����ٶ󸶹ٻ�','22-05-01',(null));

//6��;

select name
from category;

//7��;

select comment_seq,content,parent
from mycomment
where parent is not null;
select *
from myuser;
//8��;
select *
from post, myuser
where myuser.user_seq = post.user_seq and content like '%�Ż��Ӵ�%';

//9��;
select name , mycomment.comment_seq, post.title, myuser.user_name , post.datetime, count(comment_seq)
from mycomment, myuser, post,category
where post.user_seq = myuser.user_seq and post.category_seq = category.category_seq and mycomment.post_seq = post.post_seq
group by name , mycomment.comment_seq, post.title, myuser.user_name , post.datetime, count(comment_seq);

//10��;
update post set category_seq = 3 where post_seq = 3;
