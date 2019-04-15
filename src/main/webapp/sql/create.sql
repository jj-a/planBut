-- 회원 테이블 ----------------------------------------
CREATE TABLE member(
	m_id varchar(16) NOT NULL PRIMARY KEY,
	password varchar(16) NOT NULL,
	m_name varchar(20) NOT NULL,
	email varchar(50) NOT NULL,
	birth char(8),
	gender char(1) NOT NULL,
	photo varchar(100),
	m_type char(1) DEFAULT 2 NOT NULL
);

-- 국가 테이블 ----------------------------------------
CREATE TABLE country(
	c_code char(2) NOT NULL PRIMARY KEY,
	c_name varchar(10) NOT NULL
);
	
-- 도시 테이블 ----------------------------------------
CREATE TABLE city(
	ct_code char(2) NOT NULL PRIMARY KEY, 
	c_code char(2) NOT NULL , 
	ct_name varchar(20) NOT NULL,
	FOREIGN KEY(c_code) REFERENCES country(c_code)
);

-- 관광지 유형 테이블 ------------------------------------
CREATE TABLE placetype(
	pt_code char(2) NOT NULL PRIMARY KEY,
	pt_name char(10) NOT NULL
);

-- 관광지 테이블 ---------------------------------------
CREATE TABLE place(
	p_code char(10) NOT NULL PRIMARY KEY,
	pt_code char(2) NOT NULL,
	ct_code char(2) NOT NULL,
	p_name varchar(50) NOT NULL,
	address varchar(100) NOT NULL,
	xy varchar(23) NOT NULL,
	content varchar(500) NOT NULL,
	FOREIGN KEY(pt_code) REFERENCES placetype(pt_code),
	FOREIGN KEY(ct_code) REFERENCES city(ct_code)
);

-- 게시판 테이블 ---------------------------------------
CREATE TABLE board(
	b_no int NOT NULL PRIMARY KEY,
	m_id varchar(16) NOT NULL,
	b_type char(1) NOT NULL,
	subject varchar(20) NOT NULL,
	content varchar(300) NOT NULL,
	regdt datetime DEFAULT now() NOT NULL,
	filename varchar(100),
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);

-- 게시판 댓글 테이블 ------------------------------------
CREATE TABLE boardreply(
	r_no int NOT NUll PRIMARY KEY,
	b_no int NOT NULL,
	m_id varchar(16) NOT NULL,
	content varchar(300) NOT NULL,
	regdt datetime DEFAULT now() NOT NULL,
	FOREIGN KEY(b_no) REFERENCES board(b_no),
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);

-- 플래너 --------------------------------------------
CREATE TABLE planner(
	plan_code char(4) NOT NULL PRIMARY KEY,
	m_id varchar(16) NOT NULL,
	subject varchar(20) NOT NULL,
	people int NOT NULL,
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);

-- 도시계획 -------------------------------------------
CREATE TABLE cityplan(
	cp_code char(5) NOT NULL PRIMARY KEY,
	plan_code char(4) NOT NULL,
	ct_code char(2) NOT NULL,
	order_code int NOT NULL,
	day int DEFAULT 1 NOT NULL,
	trans char(2),
	s_date datetime NOT NULL,
	rm_ok char(1) default 'N' NOT NULL,
	FOREIGN KEY(plan_code) REFERENCES planner(plan_code),
	FOREIGN KEY(ct_code) REFERENCES city(ct_code)
);

-- 캘린더 ---------------------------------------------
CREATE TABLE calender(
	cal_code char(7) NOT NULL PRIMARY KEY,
	cp_code char(5) NOT NULL,
	ct_code char(2) NOT NULL,
	memo varchar(100),
	date datetime NOT NULL,
	FOREIGN KEY(cp_code) REFERENCES cityplan(cp_code),
	FOREIGN KEY(ct_code) REFERENCES city(ct_code)
);

-- 경로계획 -------------------------------------------
CREATE TABLE courseplan(
	cos_code char(5) NOT NULL PRIMARY KEY,
	cp_code char(5) NOT NULL,
	course varchar(1000) NOT NULL,
	date datetime NOT NULL,
	FOREIGN KEY(cp_code) REFERENCES cityplan(cp_code)
);

-- 추천 ----------------------------------------------
CREATE TABLE recommend(
	rm_code char(5) NOT NULL PRIMARY KEY,
	ct_code char(2) NOT NULL,
	tm_type varchar(2) NOT NULL,
	course varchar(1000) NOT NULL,
	FOREIGN KEY(ct_code) REFERENCES city(ct_code),
	FOREIGN KEY(tm_type) REFERENCES placetype(pt_code)
); 

-- 교통 ----------------------------------------------
CREATE TABLE mytransport(
	trans_code char(5) NOT NULL PRIMARY KEY,
	cp_code char(5) NOT NULL,
	s_point char(2) NOT NULL,
	e_point char(2) NOT NULL,
	trans char(2) NOT NULL,
	price int default 0,
	s_time char(4),
	e_time char(4),
	memo varchar(100),
	FOREIGN KEY(cp_code) REFERENCES cityplan(cp_code),
	FOREIGN KEY(s_point) REFERENCES city(ct_code),
	FOREIGN KEY(e_point) REFERENCES city(ct_code)
); 

-- 숙소 ----------------------------------------------
CREATE TABLE myaccomm(
	ac_code char(5) NOT NULL PRIMARY KEY,
	cp_code char(5) NOT NULL,
	ac_name varchar(20) NOT NULL,
	price int NOT NULL,
	memo varchar(100),
	FOREIGN KEY(cp_code) REFERENCES cityplan(cp_code)
);

-- 티켓 ----------------------------------------------
CREATE TABLE myticket(
	tic_code char(6) NOT NULL PRIMARY KEY,
	cp_code char(5) NOT NULL,
	tic_name varchar(20) NOT NULL,
	date datetime,
	price int DEFAULT 0 NOT NULL,
	memo varchar(100),
	FOREIGN KEY(cp_code) REFERENCES cityplan(cp_code)
);

-- 동행게시판 ------------------------------------------
CREATE TABLE mateboard(
	b_no int NOT NULL PRIMARY KEY,
	mp_id varchar(16) NOT NULL,
	regdt datetime DEFAULT now() NOT NULL,
	subject varchar(20) NOT NULL,
	content varchar(300) NOT NULL,
	ct_code char(2) NOT NULL,
	m_date datetime NOT NULL,
	gender char(1) NOT NULL,
	capacity int NOT NULL,
	FOREIGN KEY(mp_id) REFERENCES MEMBER(m_id),
	FOREIGN KEY(ct_code) REFERENCES city(ct_code)
);


-- 동행신청(게시판) ---------------------------------------
CREATE TABLE mateapply_b(
	ma_code char(11) NOT NULL PRIMARY KEY,
	b_no int NOT NULL,
	sp_id varchar(16) NOT NULL,
	people int NOT NULL,
	mate_code varchar(6) NOT NULL,
	FOREIGN KEY(b_no) REFERENCES mateboard(b_no),
	FOREIGN KEY(sp_id) REFERENCES member(m_id)
);

-- 동행신청(추천) -----------------------------------------
CREATE TABLE mateapply_r(
	ma_code char(11) NOT NULL PRIMARY KEY,
	cp_code char(5) NOT NULL,
	mp_id varchar(16) NOT NULL,
	sp_id varchar(16) NOT NULL,
	m_date datetime NOT NULL,
	mate_code varchar(6) DEFAULT 0 NOT NULL,
	FOREIGN KEY(cp_code) REFERENCES cityplan(cp_code),
	FOREIGN KEY(mp_id) REFERENCES member(m_id),
	FOREIGN KEY(sp_id) REFERENCES member(m_id)
);

-- 동행정보 -----------------------------------------------
CREATE TABLE mate(
	mate_code char(6) NOT NULL PRIMARY KEY,
	m_date datetime NOT NULL,
	ct_code char(2) NOT NULL,
	mp_id varchar(16) NOT NULL,
	mate_list varchar(1000) NOT NULL,
	mate_type char(1) NOT NULL,
	FOREIGN KEY(ct_code) REFERENCES city(ct_code),
	FOREIGN KEY(mp_id) REFERENCES member(m_id)
);

-- 투어 --------------------------------------------------
CREATE TABLE tour(
	tour_code char(5) NOT NULL PRIMARY KEY,
	tour_name varchar(20) NOT NULL,
	ct_code char(2) NOT NULL,
	price int NOT NULL,
	content varchar(1000) NOT NULL,
	s_date datetime,
	e_date datetime,
	photo varchar(1000) NOT NULL,
	category char(1) NOT NULL,
	t_time int NOT NULL,
	m_place varchar(30) NOT NULL,
	capacity int NOT NULL,
	minimum int NOT NULL,
	day varchar(13) NOT NULL,
	FOREIGN KEY(ct_code) REFERENCES city(ct_code)
);

-- 장바구니 ------------------------------------------------
CREATE TABLE cart(
	cart_code char(11) NOT NULL PRIMARY KEY,
	tour_code char(5) NOT NULL,
	m_id varchar(16) NOT NULL,
	people int NOT NULL,
	tourday datetime not NULL,
	FOREIGN KEY(tour_code) REFERENCES tour(tour_code),
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);

-- 투어예약 -------------------------------------------------
CREATE TABLE treserve(
	re_code char(11) NOT NULL PRIMARY KEY,
	tour_code char(5) NOT NULL,
	m_id varchar(16) NOT NULL,
	pay_type char(1) NOT NULL,
	date datetime NOT NULL,
	people int NOT NULL,
	payed int NOT NULL,
	FOREIGN KEY(tour_code) REFERENCES tour(tour_code),
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);

-- 투어 ----------------------------------------------
CREATE TABLE mytour(
	tr_code char(5) NOT NULL PRIMARY KEY,
	ct_code char(5) NOT NULL,
	re_code char(11),
	tr_name varchar(20) not null,
	date datetime,
	price int default 0 not null,
	memo varchar(100),
	foreign key(ct_code) references cityplan(cp_code),
	foreign key(re_code) references treserve(re_code)
);

-- 투어문의 -------------------------------------------------
CREATE TABLE tqna(
	tq_code char(4) NOT NULL PRIMARY KEY,
	tour_code char(5) NOT NULL,
	m_id varchar(16) NOT NULL,
	content varchar(300) NOT NULL,
	regdt datetime DEFAULT now() NOT NULL,
	FOREIGN KEY(tour_code) REFERENCES tour(tour_code),
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);
	
-- 투어문의답변 -----------------------------------------------
CREATE TABLE treply(
	reply_code char(7) NOT NULL PRIMARY KEY,
	tq_code char(4) NOT NULL,
	content varchar(300) NOT NULL,
	regdt datetime default now() NOT NULL,
	FOREIGN KEY(tq_code) REFERENCES tqna(tq_code)
);

-- 투어리뷰 --------------------------------------------------
CREATE TABLE treview(
	rv_code char(5) NOT NULL PRIMARY KEY,
	re_code char(11) NOT NULL,
	m_id varchar(16) NOT NULL,
	content varchar(300) NOT NULL,
	star int NOT NULL,
	regdt datetime DEFAULT now() NOT NULL,
	FOREIGN KEY(re_code) REFERENCES treserve(re_code),
	FOREIGN KEY(m_id) REFERENCES member(m_id)
);



SELECT * from member; 

SELECT * from country;

SELECT * from city;

SELECT * from placetype;

SELECT * from place;

SELECT * from board;

SELECT * from boardreply;