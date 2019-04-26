

-- planner (플래너)


-- planner 조회 (리스트)
-- member 테이블 join, m_id로 조회
select plan_code, m_id, subject, people, s_date 
from planner
where m_id= #{m_id}
;
-- (ex)
select plan_code, m_id, subject, people, s_date 
from planner
where m_id= 'aaaa'
;


-- planner 조회 (상세)
-- plan_code로 조회
select plan_code, m_id, subject, people, s_date 
from planner
where plan_code= #{plan_code}
;
-- (ex)
select plan_code, m_id, subject, people, s_date 
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



-- courseplan (경로계획)

-- courseplan 조회 (리스트)
-- city, cityplan, place 테이블 join, plan_code로 조회
select cp_code, plan_code, CP.ct_code, CITY.ct_name, order_code, day, trans, s_date, rm_ok 
from cityplan as CP join city as CITY
on CP.ct_code = CITY.ct_code 
where plan_code=#{plan_code}
order by order_code asc
;
-- (ex)
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
order by order_code asc
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





-- ------- 내플래너 화면 관련


-- 사진
-- ? 사진관련 테이블이 없..
;





-- 일정
-- planner 테이블 조회
select plan_code, m_id, subject, people 
from planner
where plan_code='P001'
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






-- ****************** sql 테스트

-- (투어) 내 계획에 포함된 도시 리스트
select ct_name, photo, c_name, cp_code, EE.plan_code, EE.m_id
from tour AA
join city BB on AA.ct_code = BB.ct_code
join country CC on BB.c_code = CC.c_code
join cityplan DD on BB.ct_code = DD.ct_code
join planner EE on DD.plan_code = EE.plan_code
where EE.m_id='aaaa'
group by ct_name
;


select cp_code, 
	plan_code, 
	CP.ct_code, 
	ct_name as city_ct_name, 
	order_code, 
	day, 
	trans, 
	s_date, 
	rm_ok 
from cityplan as CP left join city as CITY
on CP.ct_code = CITY.ct_code 
where plan_code='P001'
order by order_code asc
;


select ct_name, aa.ct_code 
from tour aa
join city bb on aa.ct_code = bb.ct_code
;


select aa.ct_code, ct_name 
from city aa
join tour bb on aa.ct_code = bb.ct_code
;



