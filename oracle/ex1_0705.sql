desc user_constraints
/*
constraint_type : c:check, not null�� �ǹ��Ѵ�.
p:primary key, u: unique, r:reference, f:foreign key
*/
select constraint_name, constraint_type from user_constraints;

/*
2. �÷����� ��������
���̺��� �����Ҷ� �÷��� ���� ���������� ����ϴ� ����̴�. not null ���������� �÷����������� ������ �� �ֵ�.
3. ���̺� ���� ��������
not null�� ������ ��� ���������� ����� �� �ֵ�.
*/
--column constraint.sql�� ����
--constraint ���̺��_�÷�_���������̸� �������� ���
create table colst(
bun number(3) constraint colst_bun_pk primary key,
name varchar2(10) constraint colst_name_nn not null,
age number(5) constraint colst_age_ck check(age>=20 and age<=30),
addr varchar2(50) default '����� ������ �ż���',
jumin varchar2(14) constraint colst_jumin_uq unique);
--��������
select constraint_name, CONSTRAINT_TYPE from user_constraints where table_name='COLST';

create table talst(
bun number(3),
name varchar2(10) constraint talst_name_nn not null,
age number(3),
addr varchar2(30) default '����� ������',
jumin varchar2(14) constraint talst_jumin_nn not null,
constraint talst_bun_pk primary key(bun),
constraint talst_age_ch check(age>=20 and age<=30),
constraint talst_uq unique(jumin));

create table lib(
bun number(3),
book varchar2(20),
l_date date default sysdate,
constraint lib_bun_fk foreign key(bun) references talst(bun) on delete cascade);

select owner, r_owner, table_name, constraint_type, constraint_name
        from user_constraints
        where table_name in('LIB', 'TALST');

insert into talst values(10, '��浿', 30, '����� ������', '111111-1234567');  
insert into talst values(20, '������', 20, '����� ������', '111111-2345267');  
insert into talst values(30, '�Ӿƿ�', 20, '��õ�� ����', '111111-2536567');  
select * from talst;
delete FROM talst;
insert into lib values(10, '�ڹ�å', sysdate);
insert into lib values(20, '����Ŭå', sysdate);
select * from lib;
--on delete cascade �����ϰ� �ִ� �ڽĵ����͵� �Բ� �����Ǵ� �Ӽ��̴�.
delete from talst where bun=10;
delete from lib;

--�������� ����
alter table talst drop constraint talst_jumin_nn;

select owner, r_owner, table_name, constraint_type, constraint_name
        from user_constraints
        where table_name in('LIB', 'TALST');
        
--�ǽ����̺� ����
drop table talst CASCADE CONSTRAINTS;
drop table lib CASCADE CONSTRAINTS;
drop table gogek;
drop table sawon CASCADE CONSTRAINTS;
drop table dept;

create table dept(
deptno number(3),
dname varchar2(10),
loc varchar2(10));

create table sawon(
     sabun number(3), 
     saname varchar2(10), 
     deptno number(3), 
     sajob varchar2(10), 
     sapay number(10), 
     sahire date default sysdate, 
     sasex varchar2(6), 
     samgr number(3));
     
create table gogek(gobun number(3),
                  goname varchar2(10),
                  gotel varchar2(14),
                  gojumin varchar(14),
                  godam number(3));
                  
alter table dept add constraint dept_deptno_pk primary key(deptno);
alter table dept add constraint dept_dname_uq unique(dname);
alter table sawon add constraint sawon_sabun_pk primary key(sabun);
alter table sawon add constraint sawon_depto_fk foreign key(deptno) references dept(deptno) on delete cascade;
alter table sawon add constraint sawon_sasex_ck check(sasex='����' or sasex='����');
alter table sawon add constraint sawon_samgr_fk foreign key(samgr) references sawon(sabun) on delete cascade;
alter table gogek add constraint gogek_gobun_pk primary key(gobun);
alter table gogek add constraint gogek_gojumin_uq unique(gojumin);
alter table gogek add constraint gogek_goda_fk foreign key(godam) references sawon(sabun) on delete cascade;


Insert Into Dept Values(10, '�ѹ���','����');
Insert Into Dept Values(20, '������','����');
Insert Into Dept Values(30, '�����','�λ�');
Insert Into Dept Values(40, '������', '����');
Insert Into Dept Values(50, '���ߺ�', '����');

Insert Into sawon Values(1,'ȫ�浿',10,'ȸ��',5000,'1980/01/01','����',null);
Insert Into sawon Values(2,'�ѱ���',20,'����',3000,'1988/11/01', '����',1);
Insert Into sawon Values(3,'�̼���',20,'����',3500,'1985/03/01','����', 2);
Insert Into sawon Values(5,'�̼���',20,'���',1200,'1990/05/01','����', 3);
Insert Into sawon Values(7,'��⸸',20,'����',2300,'1996/06/01','����', 2);
Insert Into sawon Values(11,'������',20,'����',1600,'1989/12/01','����', 2);
Insert Into sawon Values(14,'ä�ö�',20,'���',3400,'1993/10/01','����', 3);
Insert Into sawon Values(17,'�̼���',30,'����',2803,'1984/05/01','����', 1);
Insert Into sawon Values(13,'����ȭ',10,'����',3000,'1996/11/01','����', 1);
Insert Into sawon Values(19,'�Ӳ���',20,'���',2200,'1988/04/01','����', 7);
Insert Into sawon Values(20,'������',10,'����',4500,'1990/05/01','����', 13);
Insert Into sawon Values(6,'���θ�',30,'����',4003,'1995/05/01','����', 17);
Insert Into sawon Values(8,'ä��ȭ',30,'�븮',1703,'1992/06/01','����', 17);
Insert Into sawon Values(12,'������',10,'�븮',1800,'1990/10/01','����', 20);
Insert Into sawon Values(9,'����ȭ',10,'���',1100,'1984/08/01','����', 12);
Insert Into sawon Values(4,'�̶̹�',30,'�븮',2503,'1983/04/01','����', 17);
Insert Into sawon Values(10,'������',30,'���',1303,'1988/11/01','����', 4);
Insert Into sawon Values(15,'���϶�',10,'���',2000,'1991/04/01','����', 12);
Insert Into sawon Values(16,'������',30,'���',400,'1981/04/01','����', 4);
Insert Into sawon Values(18,'������',30,'���',1003,'1986/07/01','����', 4);
Insert Into sawon Values(21,'�����',50,'����',4500,'2000/05/01','����', 1);
Insert Into sawon Values(22,'ȫ����',50,'����',3500,'2001/11/01','����', 21);
Insert Into sawon Values(23,'������',50,'�븮',2500,'2002/08/01','����', 22);
Insert Into sawon Values(24,'������',50,'���',2000,'2010/05/11','����', 23);


insert into gogek values(1,'����', '123-1234', '700113-1537915',3);
insert into gogek values(2,'����', '343-1454', '690216-1627914',2);
insert into gogek values(3,'����', '144-1655', '750320-2636215',null);
insert into gogek values(4,'ö��', '673-1674', '770430-1234567',4);
insert into gogek values(5,'����', '123-1674', '720521-1123675',3);
insert into gogek values(6,'ĵ��', '673-1764', '650725-2534566',null);
insert into gogek values(7,'����', '176-7677', '630608-1648614',7);
insert into gogek values(8,'�赹', '673-6774', '800804-1346574',9);
insert into gogek values(9,'ȫ��', '767-1234', '731225-1234689',13);
insert into gogek values(10,'�ȳ�','767-1677', '751015-2432168',4);
insert into gogek values(11,'�䳪','767-1677', '041010-4142355',24);
insert into gogek values(12,'�α�','767-1677', '031015-3112163',24);
commit;

select sabun, saname, deptno, sapay, sahire from sawon where saname like '%��%' order by 1 asc;

--��ȣ�� primary key�� ������ų ��� �ڵ����� �����ϵ��� ������ �� �ִ�.
--start with ��ȣ : ������ȣ���� ����
--increment by : ������ȣ��� ����
create sequence sawon_seq
increment by 1
start with 25;
--nextVal : ������ �Լ��� ����
insert into sawon values(sawon_seq.nextVal,'������',20,'����',5000,sysdate,'����',10);
commit;
select sabun, saname, deptno, sapay, sahire from sawon order by desc;

------------------------------------------------
--�ռ������� : ���ڿ� ���� ������
select saname ||'�� �����' || sabun ||'�Դϴ�.' as ���� from sawon;
select saname ||'�� �����' || sabun ||'�Դϴ�.' ���� from sawon;
select saname ||'�� �����' || sabun ||'�Դϴ�.' "sawon_Contents"from sawon; --������� ���� �ٿ��� ���ų� underbar(_)�� ����.

����. ��浿�� �޿��� 10000 �Դϴ�. �̹��� ���ʽ��� �޿��� 50%�Դϴ�.

����. �μ���ȣ 20 ��浿���� �޿��� 3000�Դϴ�.
2000~3000 ������ �޿��� �޴� 30�� �μ������ ������ ����ϵ� �÷��� deptno, message�� ����Ͻÿ�.

select '�μ���ȣ'|| deptno ||saname||'���� �޿���'|| sapay||'�Դϴ�.'message
from sawon
where sapay >=2000 and sapay<=3000 and deptno=20;   --between 2000 and 3000

--or ������, in()������, not in()
select saname, deptno, sapay from sawon
where deptno = 10 or deptno = 20
order by 2 asc;

select saname, deptno, sapay from sawon
where deptno in(10,20) --
order by 2 asc;

--like ���ڿ� ������
----%� ���� ���ڿ�
-- _ � �� ���ڿ�
--���� ���� ��� ���
select saname from sawon where saname like'%��%';
--�̸��� �� ��, �ݵ�� �������� �� �� ���� ��� ���
select saname from sawon where saname like'__��';

--Dual���̺�
--�� ������ ����� ����ϱ� ���� ���̺�
--�������, ���� �÷� ���� ���� �ѹ��� ����ϱ����� ����

select 100*2 result from dual;
select sysdate today from dual;
select * from dual; --�ƹ� �ǹ̾��� row�� ���� ����

--�����Լ�
select -10, abs(-30) from dual; --����
select sin(10), cos(10), log(10,2) from dual;
�ݿø� round
select round(888.8888),round(888.8888,0),round(888.8888,2), round(8988.8888,-2) from dual;
�ڸ����� ������ ���� : trunc
select trunc(888.8888),trunc(888.8888,0),trunc(888.8888,2), trunc(8988.8888,-2) from dual;
���Ѱ� : ceil, ���Ѱ� : flroor
select ceil(10.001), floor(10.99) from dual;

�����, �޿�, ����(�޿�/12), ����(�޿��� 3.3%)�� ����Ͻÿ�. ������ �ʴ����ݿø�, ������ ������ ����
select saname, sapay, round(sapay/12,-1), trunc(sapay*0.033,-1)
from sawon;

�����Լ�
lower : ���ڿ� ��ü�� �ҹ��ڷ� ��ȯ
upper : ���ڿ� ��ü�� �빮�ڷ� ��ȯ
initcap : ���ڿ��� ù��° ���ڸ� �빮�ڷ� ��ȯ
length : ���ڿ� ���̸� ���ϴ� �Լ�
lengthb : ������ ���˿� ���� ���ڿ��� ����Ʈ ���� ��ȯ
select lower('kOstal88 OraclE'), upper('kOstal88 OraclE'),
initcap('kOstal88 OraclE')
from dual;
select length('Kostal88 Oracle') from dual;
select lengthb('Kostal88'), lengthb('����Ŭ') from dual;
select * from nls_database_parameters where parameter like'%CHARACTERSET%';
--AL32UTF* : �ѱ� ���� ����� ����, 3����Ʈ ������ ������
KO16KSC5601 : �ѱ� �ϼ���,
KO16KSC5601, MSWIN949 => 2����Ʈ
UTF8 => 3����Ʈ

���� �ڸ���
trim : �¿� ������ ����
ltrim, rtrim : ���� ����
select trim(' kostal88 '),ltrim(' kostal88 '), rtrim(' kostal88 ')
from dual;
--���ڿ��� ���̷� ���غ��ô�.
select length(trim(' kostal88 ')) trim,
length(ltrim(' kostal88 ')) ltrim,
length(rtrim(' kostal88 ')) rtrim
from dual;
--Ư�� ���ڿ��� ã�Ƽ� �߶󳻴� ���
select trim('n' from 'nkostan nnnnn') from dual;

--instr �Լ� : ���ڿ� �߿��� ������ Ư�� ���ڰ� ���Ե� ��ġ�� ��ȯ�ϴ� �Լ�
--instr(���ڿ�, ã�� ���ڿ�, �˻�����, n��°)
select instr('kosta_kosta', 'k', 1,2) from dual;
select instr('kosta_kosta', 'k', -1,2) from dual;
select instr('kosta_kosta', 'a') from dual;
--substr(���ڿ�, n����,n��)
--����Ŭ �ε����� 1���� ������ ��.
select substr('Welcome to Oracle', 5,3) from dual;
select substr('Welcome to Oracle', -3, 3) from dual;

--���������� ���� �ǽ����̺�
create table memphone(
num number(3) constraint memphone_num_pk primary key,
name varchar2(20),
pnum varchar2(25));

create sequence memphone_seq
increment by 1
start with 1;

insert into memphone values(memphone_seq.nextVal,'��浿','02)567-1267');

insert into memphone values(memphone_seq.nextVal,'�뷡��','032)567-1267');

insert into memphone values(memphone_seq.nextVal,'������','032)567-1267');

insert into memphone values(memphone_seq.nextVal,'���ȣ','051)567-1267');

insert into memphone values(memphone_seq.nextVal,'������','02)567-1267');

insert into memphone values(memphone_seq.nextVal,'�ڼ���','02)567-1267');

insert into memphone values(memphone_seq.nextVal,'������','062)567-1267');

select * from memphone;

memphone���̺��� ������� ��ȭ��ȣ �߿� �����, ����, ��ȭ��ȣ ���·� ����Ͻÿ�
select name, substr(pnum,1,(instr(pnum,')'))-1) "����",
substr(pnum,(instr(pnum,')'))+1,8) "��ȭ��ȣ"
from memphone;

select substrb('��浿�Դϴ�.',1,3) from dual;--��
select substrb('��浿�Դϴ�.',4,3) from dual;--��
select substrb('��浿�Դϴ�.',7,3) from dual;--��
select substrb('��浿�Դϴ�.',4,6) from dual;--�浿

����ä��� �Լ�
select rpad(saname,8,'*'), lpad(saname,8,'*')
from sawon;
����. �����̺��� �ֹι�ȣ���ڸ��� *�� ����ó���ؼ� ����Ͻÿ�
select rpad(substr(gojumin,1,8),14,'*') "�ֹι�ȣ"
from gogek;

select saname, deptno,
decode(deptno, 10,'�Ѱ���', 20, '������', 30, '�ѹ���', 50, '�����', '���ߺ�')
"�ӽúμ���" from sawon order by 2asc;

select saname, deptno,
case deptno when 10 then '������'
when 20 then '������'
else '�����' end "�ӽúμ���" from sawon order by 2 asc;

select saname, deptno,
case when deptno= 10 then '������'
when deptno= 20 then '������'
else '�����' end "�ӽúμ���" from sawon order by 2 asc;

����.�����̺��� ����, �ֹι�ȣ, ������ ���
select goname, gojumin,
case when substr(gojumin,8,1)=1 then '����'
else '����' end "����"
from gogek;

����. �����, �޿�, ���ʽ��� ���
--�� ���ʽ��� �޿��� 1000 �̸� -> �޿��� 10%  1000~2000:15%  2000�ʰ�:20%   null:0
select saname, sapay,
case when sapay<1000 then sapay*0.1
when (1000<=sapay and sapay<=2000) then sapay*0.15
when sapay>2000 then sapay*0.2
else 0 end "���ʽ�"
from sawon;

-- yyyy �⵵ ǥ��, cc ���� ǥ��

select sysdate, to_char(sysdate,'yyyy'), to_char(sysdate,'CC') from dual;
select sysdate,to_char(sysdate,'YEAR') from dual; -- ����ǥ��
select sysdate,to_char(sysdate,'yy') from dual; --  �⵵ 2�ڸ�
select sysdate,to_char(sysdate,'month'),to_char(sysdate,'mon') from dual; -- ��
select sysdate,to_char(sysdate,'q') from dual; --�б�
select sysdate,to_char(sysdate,'d') from dual; --���� (1~7���� ,1 : �Ͽ���)
select sysdate,to_char(sysdate,'dy') from dual; -- ���� �ѱ�
select sysdate,to_char(sysdate,'day') from dual;
select sysdate,to_char(sysdate,'dd') from dual; -- ��
select sysdate,to_char(sysdate,'ddd') from dual; -- 365��
select sysdate,to_char(sysdate,'hh'),to_char(sysdate,'hh24') from dual; --�ð�
select sysdate,to_char(sysdate,'mi') from dual;
select sysdate,to_char(sysdate,'ss') from dual;
--19/07/08 2019�� 07�� 08�� �������̸� 3�б�, ������ 1���߿� 189�� ���ҽ��ϴ�.
select sysdate, to_char(sysdate,'yyyy') ||'��' ||to_char(sysdate,'month')||to_char(sysdate,'dd')||'��' || to_char(sysdate,'dy')||'�����̸�' || to_char(sysdate,'q')||'�б�, ������ 1���߿�'
||to_char(sysdate,'ddd')||'�� ���ҽ��ϴ�.'
from dual;

����. �����, �Ի��� �ٹ��Ⱓ([xx�� xx����])�� ����Ͻÿ�.
select saname, sahire,
trunc(months_between(sysdate, sahire)/12,0)||'��'||trunc(mod(months_between(sysdate, sahire),12),0)||'����'
end "�ٹ��Ⱓ"
from sawon;

--ó������ �����ϴ� ���� ������ ��¥ : �ش� ��¥�� ���� �����ؼ� ��õ� ������ ������ �ش�Ǵ� ��¥�� ��ȯ�ϴ� �Լ�
--������ �������� ���� ����� ���� �������� �������� ��ȯ��
select next_day(sysdate,'��') from dual;
--������ ��/���� ������ ��¥(�̴��� ������ ��¥��...)
select last_day(sysdate) from dual;
add_months : Ư�� ���� ���� ���� ��¥�� �����ִ� �Լ�
select saname, sahire, add_months(sahire, 5) from sawon;

��¥�� ����Ǵ� round/trunc�Լ�
--�������� ������ �ݿø�
select saname, sahire, round(sahire,'yyyy') from sawon;
--�� ���� �����Լ�('��-����')
select sysdate + to_yminterval('01-00')from dual;
--['�� �� : �� : ��']
select sysdate + to_dsinterval('100 00:00:00') from dual;

--����1����
select deptno, saname, sahire, sysdate,
TO_DATE(TO_CHAR(SYSDATE, 'YYMMDD')) - TO_DATE(sahire)||'��'"�ٹ��ϼ�"
from sawon;

--����2����
select saname, sahire,
next_day(add_months(sahire,2),'��')"������"
from sawon;

