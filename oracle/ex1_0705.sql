desc user_constraints
/*
constraint_type : c:check, not null을 의미한다.
p:primary key, u: unique, r:reference, f:foreign key
*/
select constraint_name, constraint_type from user_constraints;

/*
2. 컬럼단위 제약조건
테이블을 생성할때 컬럼에 직접 제약조건을 명시하는 경우이다. not null 제약조건은 컬럼레벨에서만 정의할 수 있따.
3. 테이블 단위 제약조건
not null을 제외한 모든 제약조건을 명시할 수 있따.
*/
--column constraint.sql의 내용
--constraint 테이블명_컬럼_제약조건이름 제약조건 명시
create table colst(
bun number(3) constraint colst_bun_pk primary key,
name varchar2(10) constraint colst_name_nn not null,
age number(5) constraint colst_age_ck check(age>=20 and age<=30),
addr varchar2(50) default '서울시 마포구 신수동',
jumin varchar2(14) constraint colst_jumin_uq unique);
--제약조건
select constraint_name, CONSTRAINT_TYPE from user_constraints where table_name='COLST';

create table talst(
bun number(3),
name varchar2(10) constraint talst_name_nn not null,
age number(3),
addr varchar2(30) default '서울시 마포구',
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

insert into talst values(10, '김길동', 30, '서울시 마포구', '111111-1234567');  
insert into talst values(20, '이춘자', 20, '서울시 마포구', '111111-2345267');  
insert into talst values(30, '임아영', 20, '인천시 남구', '111111-2536567');  
select * from talst;
delete FROM talst;
insert into lib values(10, '자바책', sysdate);
insert into lib values(20, '오라클책', sysdate);
select * from lib;
--on delete cascade 참조하고 있는 자식데이터도 함께 삭제되는 속성이다.
delete from talst where bun=10;
delete from lib;

--제약조건 삭제
alter table talst drop constraint talst_jumin_nn;

select owner, r_owner, table_name, constraint_type, constraint_name
        from user_constraints
        where table_name in('LIB', 'TALST');
        
--실습테이블 삭제
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
alter table sawon add constraint sawon_sasex_ck check(sasex='남자' or sasex='여자');
alter table sawon add constraint sawon_samgr_fk foreign key(samgr) references sawon(sabun) on delete cascade;
alter table gogek add constraint gogek_gobun_pk primary key(gobun);
alter table gogek add constraint gogek_gojumin_uq unique(gojumin);
alter table gogek add constraint gogek_goda_fk foreign key(godam) references sawon(sabun) on delete cascade;


Insert Into Dept Values(10, '총무부','서울');
Insert Into Dept Values(20, '영업부','대전');
Insert Into Dept Values(30, '전산부','부산');
Insert Into Dept Values(40, '관리부', '광주');
Insert Into Dept Values(50, '개발부', '가산');

Insert Into sawon Values(1,'홍길동',10,'회장',5000,'1980/01/01','남자',null);
Insert Into sawon Values(2,'한국남',20,'부장',3000,'1988/11/01', '남자',1);
Insert Into sawon Values(3,'이순신',20,'과장',3500,'1985/03/01','남자', 2);
Insert Into sawon Values(5,'이순라',20,'사원',1200,'1990/05/01','여자', 3);
Insert Into sawon Values(7,'놀기만',20,'과장',2300,'1996/06/01','여자', 2);
Insert Into sawon Values(11,'류별나',20,'과장',1600,'1989/12/01','여자', 2);
Insert Into sawon Values(14,'채시라',20,'사원',3400,'1993/10/01','여자', 3);
Insert Into sawon Values(17,'이성계',30,'부장',2803,'1984/05/01','남자', 1);
Insert Into sawon Values(13,'무궁화',10,'부장',3000,'1996/11/01','여자', 1);
Insert Into sawon Values(19,'임꺽정',20,'사원',2200,'1988/04/01','남자', 7);
Insert Into sawon Values(20,'깨똥이',10,'과장',4500,'1990/05/01','남자', 13);
Insert Into sawon Values(6,'공부만',30,'과장',4003,'1995/05/01','남자', 17);
Insert Into sawon Values(8,'채송화',30,'대리',1703,'1992/06/01','여자', 17);
Insert Into sawon Values(12,'류명한',10,'대리',1800,'1990/10/01','남자', 20);
Insert Into sawon Values(9,'무궁화',10,'사원',1100,'1984/08/01','여자', 12);
Insert Into sawon Values(4,'이미라',30,'대리',2503,'1983/04/01','여자', 17);
Insert Into sawon Values(10,'공부해',30,'사원',1303,'1988/11/01','남자', 4);
Insert Into sawon Values(15,'구하라',10,'사원',2000,'1991/04/01','여자', 12);
Insert Into sawon Values(16,'김유신',30,'사원',400,'1981/04/01','남자', 4);
Insert Into sawon Values(18,'강감찬',30,'사원',1003,'1986/07/01','남자', 4);
Insert Into sawon Values(21,'김민희',50,'부장',4500,'2000/05/01','여자', 1);
Insert Into sawon Values(22,'홍실이',50,'과장',3500,'2001/11/01','여자', 21);
Insert Into sawon Values(23,'개발이',50,'대리',2500,'2002/08/01','남자', 22);
Insert Into sawon Values(24,'감수정',50,'사원',2000,'2010/05/11','남자', 23);


insert into gogek values(1,'류민', '123-1234', '700113-1537915',3);
insert into gogek values(2,'강민', '343-1454', '690216-1627914',2);
insert into gogek values(3,'영희', '144-1655', '750320-2636215',null);
insert into gogek values(4,'철이', '673-1674', '770430-1234567',4);
insert into gogek values(5,'류완', '123-1674', '720521-1123675',3);
insert into gogek values(6,'캔디', '673-1764', '650725-2534566',null);
insert into gogek values(7,'똘이', '176-7677', '630608-1648614',7);
insert into gogek values(8,'쇠돌', '673-6774', '800804-1346574',9);
insert into gogek values(9,'홍이', '767-1234', '731225-1234689',13);
insert into gogek values(10,'안나','767-1677', '751015-2432168',4);
insert into gogek values(11,'요나','767-1677', '041010-4142355',24);
insert into gogek values(12,'인군','767-1677', '031015-3112163',24);
commit;

select sabun, saname, deptno, sapay, sahire from sawon where saname like '%순%' order by 1 asc;

--번호를 primary key로 증가시킬 경우 자동으로 생성하도록 구현할 수 있다.
--start with 번호 : 지정번호부터 시작
--increment by : 지정번호대로 증가
create sequence sawon_seq
increment by 1
start with 25;
--nextVal : 시퀀스 함수를 증가
insert into sawon values(sawon_seq.nextVal,'박점심',20,'과장',5000,sysdate,'남자',10);
commit;
select sabun, saname, deptno, sapay, sahire from sawon order by desc;

------------------------------------------------
--합성연산자 : 문자열 연결 연산자
select saname ||'의 사번은' || sabun ||'입니다.' as 내용 from sawon;
select saname ||'의 사번은' || sabun ||'입니다.' 내용 from sawon;
select saname ||'의 사번은' || sabun ||'입니다.' "sawon_Contents"from sawon; --띄워쓰기 말고 붙여서 쓰거나 underbar(_)를 쓴다.

문제. 김길동의 급여는 10000 입니다. 이번달 보너스는 급여의 50%입니다.

문제. 부서번호 20 김길동님의 급여는 3000입니다.
2000~3000 사이의 급여를 받는 30번 부서사원의 정보를 출력하되 컬럼은 deptno, message로 출력하시오.

select '부서번호'|| deptno ||saname||'님의 급여는'|| sapay||'입니다.'message
from sawon
where sapay >=2000 and sapay<=3000 and deptno=20;   --between 2000 and 3000

--or 연산자, in()연산자, not in()
select saname, deptno, sapay from sawon
where deptno = 10 or deptno = 20
order by 2 asc;

select saname, deptno, sapay from sawon
where deptno in(10,20) --
order by 2 asc;

--like 문자열 연산자
----%어떤 여러 문자열
-- _ 어떤 한 문자열
--길이 들어가는 사원 출력
select saname from sawon where saname like'%길%';
--이름이 세 자, 반드시 마지막에 동 이 들어가는 사원 출력
select saname from sawon where saname like'__동';

--Dual테이블
--한 행으로 결과를 출력하기 위한 테이블
--산술연산, 가상 컬럼 등의 값을 한번에 출력하기위한 목적

select 100*2 result from dual;
select sysdate today from dual;
select * from dual; --아무 의미없는 row의 값이 존재

--숫자함수
select -10, abs(-30) from dual; --절댓값
select sin(10), cos(10), log(10,2) from dual;
반올림 round
select round(888.8888),round(888.8888,0),round(888.8888,2), round(8988.8888,-2) from dual;
자리수를 지정한 버림 : trunc
select trunc(888.8888),trunc(888.8888,0),trunc(888.8888,2), trunc(8988.8888,-2) from dual;
상한값 : ceil, 하한값 : flroor
select ceil(10.001), floor(10.99) from dual;

사원명, 급여, 월급(급여/12), 세금(급여의 3.3%)를 출력하시오. 월급은 십단위반올림, 세금은 원단위 절삭
select saname, sapay, round(sapay/12,-1), trunc(sapay*0.033,-1)
from sawon;

문자함수
lower : 문자열 전체를 소문자로 변환
upper : 문자열 전체를 대문자로 변환
initcap : 문자열의 첫번째 문자만 대문자로 변환
length : 문자열 길이를 구하는 함수
lengthb : 지정된 포맷에 의한 문자열의 바이트 수를 반환
select lower('kOstal88 OraclE'), upper('kOstal88 OraclE'),
initcap('kOstal88 OraclE')
from dual;
select length('Kostal88 Oracle') from dual;
select lengthb('Kostal88'), lengthb('오라클') from dual;
select * from nls_database_parameters where parameter like'%CHARACTERSET%';
--AL32UTF* : 한글 정렬 기능을 지원, 3바이트 공간을 차지함
KO16KSC5601 : 한글 완성형,
KO16KSC5601, MSWIN949 => 2바이트
UTF8 => 3바이트

문자 자르기
trim : 좌우 공백을 제거
ltrim, rtrim : 각각 제거
select trim(' kostal88 '),ltrim(' kostal88 '), rtrim(' kostal88 ')
from dual;
--문자열의 길이로 비교해봅시다.
select length(trim(' kostal88 ')) trim,
length(ltrim(' kostal88 ')) ltrim,
length(rtrim(' kostal88 ')) rtrim
from dual;
--특정 문자열을 찾아서 잘라내는 기능
select trim('n' from 'nkostan nnnnn') from dual;

--instr 함수 : 문자열 중에서 지정한 특정 문자가 포함된 위치를 반환하는 함수
--instr(문자열, 찾을 문자열, 검색시작, n번째)
select instr('kosta_kosta', 'k', 1,2) from dual;
select instr('kosta_kosta', 'k', -1,2) from dual;
select instr('kosta_kosta', 'a') from dual;
--substr(문자열, n부터,n개)
--오라클 인덱스는 1부터 시작이 됨.
select substr('Welcome to Oracle', 5,3) from dual;
select substr('Welcome to Oracle', -3, 3) from dual;

--연습문제를 위한 실습테이블
create table memphone(
num number(3) constraint memphone_num_pk primary key,
name varchar2(20),
pnum varchar2(25));

create sequence memphone_seq
increment by 1
start with 1;

insert into memphone values(memphone_seq.nextVal,'김길동','02)567-1267');

insert into memphone values(memphone_seq.nextVal,'노래하','032)567-1267');

insert into memphone values(memphone_seq.nextVal,'송유섭','032)567-1267');

insert into memphone values(memphone_seq.nextVal,'김경호','051)567-1267');

insert into memphone values(memphone_seq.nextVal,'오진아','02)567-1267');

insert into memphone values(memphone_seq.nextVal,'박수정','02)567-1267');

insert into memphone values(memphone_seq.nextVal,'정수미','062)567-1267');

select * from memphone;

memphone테이블에서 사용자의 전화번호 중에 사용자, 국번, 전화번호 형태로 출력하시오
select name, substr(pnum,1,(instr(pnum,')'))-1) "국번",
substr(pnum,(instr(pnum,')'))+1,8) "전화번호"
from memphone;

select substrb('김길동입니다.',1,3) from dual;--김
select substrb('김길동입니다.',4,3) from dual;--길
select substrb('김길동입니다.',7,3) from dual;--동
select substrb('김길동입니다.',4,6) from dual;--길동

문자채우기 함수
select rpad(saname,8,'*'), lpad(saname,8,'*')
from sawon;
문제. 고객테이블에서 주민번호뒷자리를 *로 보안처리해서 출력하시오
select rpad(substr(gojumin,1,8),14,'*') "주민번호"
from gogek;

select saname, deptno,
decode(deptno, 10,'총괄부', 20, '관리부', 30, '총무부', 50, '전산부', '개발부')
"임시부서명" from sawon order by 2asc;

select saname, deptno,
case deptno when 10 then '영업부'
when 20 then '관리부'
else '전산부' end "임시부서명" from sawon order by 2 asc;

select saname, deptno,
case when deptno= 10 then '영업부'
when deptno= 20 then '관리부'
else '전산부' end "임시부서명" from sawon order by 2 asc;

문제.고객테이블에서 고객명, 주민번호, 성별을 출력
select goname, gojumin,
case when substr(gojumin,8,1)=1 then '남자'
else '여자' end "성별"
from gogek;

문제. 사원명, 급여, 보너스를 출력
--단 보너스는 급여가 1000 미만 -> 급여의 10%  1000~2000:15%  2000초과:20%   null:0
select saname, sapay,
case when sapay<1000 then sapay*0.1
when (1000<=sapay and sapay<=2000) then sapay*0.15
when sapay>2000 then sapay*0.2
else 0 end "보너스"
from sawon;

-- yyyy 년도 표기, cc 세기 표현

select sysdate, to_char(sysdate,'yyyy'), to_char(sysdate,'CC') from dual;
select sysdate,to_char(sysdate,'YEAR') from dual; -- 영문표기
select sysdate,to_char(sysdate,'yy') from dual; --  년도 2자리
select sysdate,to_char(sysdate,'month'),to_char(sysdate,'mon') from dual; -- 월
select sysdate,to_char(sysdate,'q') from dual; --분기
select sysdate,to_char(sysdate,'d') from dual; --요일 (1~7요일 ,1 : 일요일)
select sysdate,to_char(sysdate,'dy') from dual; -- 요일 한글
select sysdate,to_char(sysdate,'day') from dual;
select sysdate,to_char(sysdate,'dd') from dual; -- 일
select sysdate,to_char(sysdate,'ddd') from dual; -- 365일
select sysdate,to_char(sysdate,'hh'),to_char(sysdate,'hh24') from dual; --시간
select sysdate,to_char(sysdate,'mi') from dual;
select sysdate,to_char(sysdate,'ss') from dual;
--19/07/08 2019년 07월 08일 월요일이며 3분기, 앞으로 1년중에 189일 남았습니다.
select sysdate, to_char(sysdate,'yyyy') ||'년' ||to_char(sysdate,'month')||to_char(sysdate,'dd')||'일' || to_char(sysdate,'dy')||'요일이며' || to_char(sysdate,'q')||'분기, 앞으로 1년중에'
||to_char(sysdate,'ddd')||'일 남았습니다.'
from dual;

문제. 사원명, 입사일 근무기간([xx년 xx개월])로 출력하시오.
select saname, sahire,
trunc(months_between(sysdate, sahire)/12,0)||'년'||trunc(mod(months_between(sysdate, sahire),12),0)||'개월'
end "근무기간"
from sawon;

--처음으로 맞이하는 다음 월요일 날짜 : 해당 날짜로 부터 시작해서 명시된 요일을 만나면 해당되는 날짜를 반환하는 함수
--오늘을 기준으로 가장 가까운 다음 월요일은 언제인지 반환함
select next_day(sysdate,'월') from dual;
--지정한 년/월의 마지막 날짜(이달의 마지막 날짜는...)
select last_day(sysdate) from dual;
add_months : 특정 개월 수를 더한 날짜를 구해주는 함수
select saname, sahire, add_months(sahire, 5) from sawon;

날짜에 연산되는 round/trunc함수
--기준으로 월에서 반올림
select saname, sahire, round(sahire,'yyyy') from sawon;
--그 외의 연산함수('년-개월')
select sysdate + to_yminterval('01-00')from dual;
--['일 시 : 분 : 초']
select sysdate + to_dsinterval('100 00:00:00') from dual;

--과제1쿼리
select deptno, saname, sahire, sysdate,
TO_DATE(TO_CHAR(SYSDATE, 'YYMMDD')) - TO_DATE(sahire)||'일'"근무일수"
from sawon;

--과제2쿼리
select saname, sahire,
next_day(add_months(sahire,2),'월')"월요일"
from sawon;

