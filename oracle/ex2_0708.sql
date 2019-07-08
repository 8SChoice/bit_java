-- like문, order by 절 사용 : 검색된 데이터의 번호의 최신순으로 정렬
select sabun, saname, deptno, sapay, sahire from sawon
where saname like '%순%' order by 1 asc