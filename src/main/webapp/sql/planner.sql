
-- planner (플래너)


-- planner 조회 (리스트)
-- cityplan 테이블 조인, m_id로 조회
select PLAN.plan_code, m_id, subject, people, PLAN.s_date, sum(day) as daysum
from planner as PLAN 
left join cityplan as CP 
on PLAN.plan_code=CP.plan_code
where m_id= #{m_id}
group by PLAN.plan_code
;
-- (ex)
select PLAN.plan_code, m_id, subject, people, PLAN.s_date, sum(day) as daysum
from planner as PLAN 
left join cityplan as CP 
on PLAN.plan_code=CP.plan_code
where m_id= 'aaaa'
group by PLAN.plan_code
;


-- planner 조회 (상세)
-- plan_code로 조회, 총 일자(daysum) 추가
select plan_code, m_id, subject, people, s_date, 
	(select sum(day) from cityplan where plan_code=#{plan_code}) as daysum
from planner
where plan_code= #{plan_code}
;
-- (ex)
select plan_code, m_id, subject, people, s_date, 
	(select sum(day) from cityplan where plan_code='P001') as daysum
from planner 
where plan_code= 'P001'
;


-- planner 추가

<selectKey keyProperty="plan_code" resultType="String" order="BEFORE"> 
select 
	if( 
		isnull(plan_code), 
		'P001', 
		concat('P', lpad(substring(max(plan_code),2)+1,3,0))
	) as plan_code 
from planner as P
;
</selectKey>

-- if(식, true결과값, false결과값) : 식이 참, 거짓일 때 결과 반환
-- concat(str1, str2, str3, ...) : 문자열 합치는 함수
-- lpad(문자열, 자리수, 채울문자열) : 남는 자리수만큼 원하는 문자열로 채우는 함수 (lpad:왼쪽에 채움 / rpad: 오른쪽에 채움)
-- substring(문자열, 인덱스) : 해당 인덱스부터 잘라오는 함수
-- max(culumn) : 해당 컬럼의 최대값 가져오는 함수

-- select lpad('plan_code',3,0) from planner as PLAN
-- select concat('P', lpad(substring(max(plan_code),2)+1,3,0)) from planner as PLAN

insert into planner(plan_code, m_id, subject, people, s_date)
values(#{plan_code}, #{m_id}, #{subject}, #{people}, #{s_date}) 
;
-- (ex)
insert into planner(plan_code, m_id, subject, people, s_date) 
values('P009', 'jina_jina', '여행 계획 짜는중', 1, "2019-05-01 00:00")
;


-- planner 삭제
-- m_id 확인여부 정하기
delete from planner 
where plan_code= #{plan_code} and m_id=#{m_id}
;
-- (ex)
delete from planner 
where plan_code='P111'
;


-- planner 수정
-- m_id 확인여부 정하기
update planner
set subject=#{subject}, people=#{people}, s_date=#{s_date} 
where plan_code=#{plan_code} and m_id=#{m_id}
;
-- (ex)
update planner
set subject='제목', people=2, s_date='2019-05-01 00:00' 
where plan_code='P001' and m_id='aaaa'
;


-- planner 카운트
-- member 테이블 join, m_id로 조회
select count(plan_code) from (
	select plan_code, m_id from planner 
) as PLAN join member as MEM
on PLAN.m_id = MEM.m_id 
where PLAN.m_id= #{m_id}
;
-- (ex)
select count(plan_code) from (
	select plan_code, m_id from planner 
) as PLAN join member as MEM
on PLAN.m_id = MEM.m_id 
where PLAN.m_id='aaaa'
;



-- cityplan (도시계획)

-- cityplan 조회 (리스트)
-- city 테이블 join, plan_code로 조회
select cp_code, plan_code, CP.ct_code, CITY.ct_name, order_code, day, trans, s_date, rm_ok 
from cityplan as CP join city as CITY
on CP.ct_code = CITY.ct_code 
where plan_code=#{plan_code}
order by order_code asc
;
-- (ex)
select cp_code, plan_code, CP.ct_code, CITY.ct_name, order_code, day, trans, s_date, rm_ok 
from cityplan as CP join city as CITY
on CP.ct_code = CITY.ct_code 
where plan_code='P001'
order by order_code asc
;


-- cityplan 추가

<selectKey keyProperty="cp_code" resultType="String" order="BEFORE"> 
select 
	if( 
		isnull(cp_code), 
		'CP001', 
		concat('CP', lpad(substring(max(cp_code),3)+1,3,0))
	) as cp_code 
from cityplan as CP
;
</selectKey>

insert into cityplan(cp_code, plan_code, ct_code, order_code, day, trans, s_date)
values(#{cp_code}, #{plan_code}, #{ct_code}, #{order_code}, #{day}, #{trans}, #{s_date}) 
;
-- (ex)
insert into cityplan(cp_code, plan_code, ct_code, order_code, day, trans, s_date)
values('CP002', 'P001', 'LD', 2, '3', '항공', '2019-04-19 00:00') 
;



-- calendar (캘린더)

-- calendar 조회 (리스트)
-- cityplan, city 테이블 join, plan_code로 조회
select cal_code, CAL.cp_code, CP.order_code, CP.day, CAL.ct_code, CITY.ct_name, memo, date 
from calendar as CAL 
join cityplan CP 
on CAL.cp_code = CP.cp_code
join city CITY
on CAL.ct_code = CITY.ct_code
where plan_code= #{plan_code} and CAL.cp_code= #{cp_code} and date like concat(#{date},'%')
order by order_code asc, date asc, cal_code asc
;
-- (ex) 전체
select cal_code, CAL.cp_code, CP.order_code, CP.s_date, CP.day, CAL.ct_code, CITY.ct_name, memo, date 
from calendar as CAL 
join cityplan CP 
on CAL.cp_code = CP.cp_code
join city CITY
on CAL.ct_code = CITY.ct_code
where plan_code='P001'
order by order_code asc, date asc
;
-- (ex) 일별
select cal_code, CAL.cp_code, CP.order_code, CP.s_date, CP.day, CAL.ct_code, CITY.ct_code, CITY.ct_name, memo, date 
from calendar as CAL 
join cityplan CP 
on CAL.cp_code = CP.cp_code
join city CITY
on CAL.ct_code = CITY.ct_code
where plan_code='P001' and CAL.cp_code='CP002' and date like concat('2019-04-20','%')
order by order_code asc, date asc
;


-- calendar 추가

<selectKey keyProperty="cal_code" resultType="String" order="BEFORE"> 
select 
	if( 
		isnull(cp_code), 
		'CAL001', 
		concat('CAL', lpad(substring(max(cal_code),4)+1,3,0))
	) as cal_code 
from calendar as CAL
;
</selectKey>

<selectKey keyProperty="ct_code" resultType="String" order="BEFORE"> 
select ct_code from cityplan 
where cp_code=#{cp_code}
;
</selectKey>

insert into calendar(cal_code, cp_code, ct_code, memo, date)
values(#{cal_code}, #{cp_code}, #{ct_code}, #{memo}, #{date}) 
;
-- (ex)
insert into calendar(cal_code, cp_code, ct_code, memo, date)
values('CAL009', 'CP002', (select ct_code from cityplan where cp_code='CP002'), '여행 메모', '2019-04-20') 
;


-- calendar 수정
update calendar 
set memo=#{memo}, date=#{date} 
where cal_code = #{cal_code} 
;
-- (ex)
update calendar 
set memo='메모 수정', date='2019-05-10' 
where cal_code = 'CAL001'
;


-- calendar 삭제
delete from calendar 
where cal_code = #{cal_code} 
;
-- (ex)
delete from calendar 
where cal_code = 'CAL001'
;



-- courseplan (경로계획)

-- courseplan 조회 (리스트)
-- city, cityplan, place 테이블 join, plan_code로 조회
select  cos_code, CP.cp_code, CP.plan_code, CP.ct_code, CITY.ct_name, CP.order_code, CP.day, course, date
from courseplan as CSP
join cityplan as CP
on CSP.cp_code = CP.cp_code 
join city as CITY
on CP.ct_code = CITY.ct_code
where plan_code= #{plan_code} and CP.cp_code= #{cp_code} and date like concat(#{date},'%')
order by order_code asc, date asc
;
-- (ex) 전체
-- select cos_code, CP.cp_code, plan_code, CP.ct_code, CITY.ct_name, order_code, day, course, trans, s_date, rm_ok
select  cos_code, CP.cp_code, CP.plan_code, CP.ct_code, CITY.ct_name, CP.order_code, CP.day, course, date -- , P.p_name
from courseplan as CSP
join cityplan as CP
on CSP.cp_code = CP.cp_code 
join city as CITY
on CP.ct_code = CITY.ct_code
-- join place as P
-- on CITY.ct_code = P.ct_code
where plan_code='P001'
order by order_code asc, date asc
;
-- (ex) 일별
-- select cos_code, CP.cp_code, plan_code, CP.ct_code, CITY.ct_name, order_code, day, course, trans, s_date, rm_ok
select  cos_code, CP.cp_code, CP.plan_code, CP.ct_code, CITY.ct_name, CP.order_code, CP.day, course, date -- , P.p_name
from courseplan as CSP
join cityplan as CP
on CSP.cp_code = CP.cp_code 
join city as CITY
on CP.ct_code = CITY.ct_code
-- join place as P
-- on CITY.ct_code = P.ct_code
where plan_code='P001' and CP.cp_code='CP002' and date like concat('2019-04-20','%')
order by order_code asc, date asc
;

-- courseplan 추가

<selectKey keyProperty="cp_code" resultType="String" order="BEFORE"> 
select 
	if( 
		isnull(cp_code), 
		'CP001', 
		concat('CP', lpad(substring(max(cp_code),3)+1,3,0))
	) as cp_code 
from cityplan as CP
;
</selectKey>

insert into cityplan(cp_code, plan_code, ct_code, order_code, day, trans, s_date)
values(#{cp_code}, #{plan_code}, #{ct_code}, #{order_code}, #{day}, #{trans}, #{s_date}) 
;
-- (ex)
insert into cityplan(cp_code, plan_code, ct_code, order_code, day, trans, s_date)
values('CP002', 'P001', 'LD', 2, '3', '항공', '2019-04-19 00:00') 
;




-- place (관광지)

-- place 조회 (리스트)
-- placetype 테이블 join, 전체 조회 (유형O)
select p_code, PL.pt_code, PLT.pt_name, ct_code, p_name, address, content, lat, lng 
from place as PL
join placetype as PLT
on PL.pt_code = PLT.pt_code 
order by p_code asc
;
-- 관광지만 조회 (유형X)
select p_code, pt_code, ct_code, p_name, address, content, lat, lng 
from place as PL
order by p_code asc
;


-- place 조회 (상세)
-- placetype 테이블 join (유형O)
select p_code, PL.pt_code, PLT.pt_name, ct_code, p_name, address, content, lat, lng 
from place as PL
join placetype as PLT
on PL.pt_code = PLT.pt_code 
where p_code = #{p_code}
;
-- 관광지만 조회 (유형X)
select p_code, pt_code, ct_code, p_name, address, content, lat, lng 
from place as PL
where p_code = 'T001'
;




-- ------- 내플래너 화면 관련


-- 사진
-- ? 사진관련 테이블이 없..
;





-- myaccomm (숙소)

-- myaccomm 조회
-- cityplan 테이블 join, 해당 도시계획 데이터만 가져오기
select CP.plan_code, ac_code, CP.cp_code, ac_name, price, memo 
from myaccomm as AC
join cityplan as CP 
on AC.cp_code = CP.cp_code
where CP.plan_code=#{plan_code} and CP.cp_code=${cp_code}
;
-- (ex)
select CP.plan_code, ac_code, CP.cp_code, ac_name, price, memo 
from myaccomm as AC
join cityplan as CP 
on AC.cp_code = CP.cp_code
where CP.plan_code='P001'and CP.cp_code='CP001'
;



-- mytransport (교통)

-- mytransport 조회
-- cityplan 테이블 join, 해당 도시계획 데이터만 가져오기
select CP.plan_code, trans_code, CP.cp_code, s_point, e_point, TR.trans, price, s_time, e_time, memo 
from mytransport as TR
join cityplan as CP 
on TR.cp_code = CP.cp_code
where CP.plan_code=#{plan_code} and CP.cp_code=${cp_code}
;
-- (ex)
select CP.plan_code, trans_code, CP.cp_code, s_point, e_point, TR.trans, price, s_time, e_time, memo 
from mytransport as TR
join cityplan as CP 
on TR.cp_code = CP.cp_code
where CP.plan_code='P001'and CP.cp_code='CP001'
;



-- myticket (티켓)

-- myticket 조회
-- cityplan 테이블 join, 해당 도시계획 데이터만 가져오기
select CP.plan_code, tic_code, CP.cp_code, tic_name, date, price, memo 
from myticket as TK
join cityplan as CP 
on TK.cp_code = CP.cp_code
where CP.plan_code=#{plan_code} and CP.cp_code=${cp_code}
;
-- (ex)
select CP.plan_code, tic_code, CP.cp_code, tic_name, date, price, memo 
from myticket as TK
join cityplan as CP 
on TK.cp_code = CP.cp_code
where CP.plan_code='P001'and CP.cp_code='CP001'
;



-- mytour (투어)

-- mytour 조회
-- cityplan 테이블 join, 해당 도시계획 데이터만 가져오기
select CP.plan_code, tr_code, CP.cp_code, TRE.re_code, tr_name, T.date, price, memo 
from mytour as T
join cityplan as CP 
on T.cp_code = CP.cp_code
join treserve as TRE
on T.re_code = TRE.re_code
where CP.plan_code=#{plan_code} and CP.cp_code=${cp_code}
;
-- (ex)
select CP.plan_code, tr_code, CP.cp_code, TRE.re_code, tr_name, T.date, price, memo 
from mytour as T
join cityplan as CP 
on T.cp_code = CP.cp_code
join treserve as TRE
on T.re_code = TRE.re_code
where CP.plan_code='P001'and CP.cp_code='CP001'
;



-- ************** 일련번호 생성 관련 참고 ************** 

select 
	if( 
		isnull(h_item_code),
		'h_item_code1', 
		concat('h_item_code', SUBSTRING(MAX(h_item_code),12)+1)
	) as hItemCode,
	if(
		isnull(inte_code),'inte_code1',
		concat('i', SUBSTRING(MAX(inte_code),2)+1)
	) as inteCode 
from head_item

