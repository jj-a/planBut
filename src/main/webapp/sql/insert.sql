-- 회원 ---------------------------------
INSERT INTO member(m_id, password, m_name, email, gender, m_type)
VALUES('admin', '1234', 'admin', 'admin@admin.com', 'M','1');

INSERT INTO member(m_id, password, m_name, email, gender, m_type)
VALUES('bbbb', '1234', 'aaaa', 'admin@admin.com', 'M','2');

-- 국가 ---------------------------------
INSERT INTO country(c_code, c_name)
VALUES('KR', '한국');

INSERT INTO country(c_code, c_name)
VALUES('UK', '영국');

INSERT INTO country(c_code, c_name)
VALUES('FR', '프랑스');

INSERT INTO country(c_code, c_name)
VALUES('DE', '독일');

INSERT INTO country(c_code, c_name)
VALUES('BE', '벨기에');

INSERT INTO country(c_code, c_name)
VALUES('US', '미국');

INSERT INTO country(c_code, c_name)
VALUES('SW', '스위스');

INSERT INTO country(c_code, c_name)
VALUES('IT', '이탈리아');

-- 도시 ---------------------------------
INSERT INTO city(ct_code, c_code, ct_name)
VALUES('NY', 'US', '뉴욕');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('PR', 'FR', '파리');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('LD', 'UK', '런던');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('MH', 'DE', '뮌헨');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('BL', 'DE', '베를린');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('BU', 'BE', '브뤼셀');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('ZU', 'SW', '취리히');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('RM', 'IT', '로마');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('FL', 'IT', '피렌체');

INSERT INTO city(ct_code, c_code, ct_name)
VALUES('NS', 'FR', '니스');

-- 관광지 유형 --------------------------------------
INSERT INTO placetype(pt_code, pt_name)
VALUES('S1', '볼거리');

INSERT INTO placetype(pt_code, pt_name)
VALUES('S2', '먹을거리');

INSERT INTO placetype(pt_code, pt_name)
VALUES('S3', '쇼핑');

-- 게시판 ------------------------------------------
INSERT INTO board(b_no, m_id, b_type, subject, content)
VALUES((SELECT ifnull(MAX(b_no),0)+1 FROM board as TB), 'admin', '2', 'test', 'test');

-- 관광지-------------------------------------------
INSERT INTO place(p_code, pt_code, ct_code, p_name, address, xy, content)
VALUES('T001', 'S1', 'PR', '에펠탑', '프랑스주소', '110,111123', '설명이요');

-- 플래너--------------------------------------------
INSERT INTO planner(plan_code, m_id, subject, people)
VALUES('P001', 'aaaa', '제목입니다', 1);

-- 도시계획-------------------------------------------
INSERT INTO cityplan(cp_code, plan_code, ct_code, order_code, day, trans, s_date, rm_ok)
VALUES('CP001', 'P001', 'PR', 1, 3, '기차', now(), 'Y');

-- 캘린더-------------------------------------------
INSERT INTO calender(cal_code, cp_code, ct_code, memo, date)
VALUES('CAL001', 'CP001', 'PR', '메모입니다', now());

-- 경로계획-------------------------------------------
INSERT INTO courseplan(cos_code, cp_code, course, date)
VALUES('RT001', 'CP001', '111,110,101,100', now());

-- 추천-------------------------------------------
INSERT INTO recommend(rm_code, ct_code, tm_type, course)
VALUES('RM001', 'PR', 'S1', '111,110,101,100');

-- 교통-------------------------------------------
INSERT INTO mytransport(trans_code, cp_code, s_point, e_point, trans, price, s_time, e_time, memo)
VALUES('GT001', 'CP001', 'PR', 'PR', '버스', 5000, '1000', '1400', '메에모');

-- 숙소-------------------------------------------
INSERT INTO myaccomm(ac_code, cp_code, ac_name, price, memo)
VALUES('AC001', 'CP001', 'PR민박', 5000, '메에모');

-- 티켓-------------------------------------------
INSERT INTO myticket(tic_code, cp_code, tic_name, date, price, memo)
VALUES('TIC001', 'CP001', '박물관티켓', now(), 5000, '메에모');

-- 투어-------------------------------------------
INSERT INTO mytour(tr_code, ct_code, tr_name, date, price, memo)
VALUES('TR001', 'CP001', '베르사유투어', now(), 5000, '메에모');

-- 동행게시판-------------------------------------------
INSERT INTO mateboard(b_no, mp_id, regdt, subject, content, ct_code, m_date, gender, capacity)
VALUES((select ifnull(max(b_no),0)+1 from mateboard as TB), 'aaaa', now(), '동행구함제목', '동행구함내용', 'PR', now(), '1', 4);

-- 동행신청★게시판 -------------------------------------------
INSERT INTO mateapply_b(ma_code, b_no, sp_id, people, mate_code)
VALUES('B20190403-1', (select ifnull(max(b_no),0)+1 from mateapply_b as TB), 'bbbb', 1, '0');

-- 동행신청★추천 -------------------------------------------
INSERT INTO mateapply_r(ma_code, cp_code, mp_id, sp_id, m_date, mate_code)
VALUES('A20190403-1', 'CP001', 'aaaa', 'bbbb', now(), '0');

-- 동행정보 -------------------------------------------
INSERT INTO mate(mate_code, m_date, ct_code, mp_id, mate_list, mate_type)
VALUES('F00111', now(), 'PR', 'aaaa', 'aaaa,bbbb', 'R');

-- 투어정보 -------------------------------------------
INSERT INTO tour(tour_code, tour_name, ct_code, price, content, s_date, e_date, photo, category, t_time, m_place, capacity, minimum, day)
VALUES('TU001', '베르사유투어', 'PR', 50000, '베르사유투어설명', now(), now(), 'pic.jpg', '1', 4, '파리 북역', 2, 7, '0,2,3,4,5,6');

-- 장바구니 -------------------------------------------
INSERT INTO cart(cart_code, tour_code, m_id, people, tourday)
VALUES('20190410-12', 'TU001', 'aaaa', 2, now());

-- 투어예약 -------------------------------------------
INSERT INTO treserve(re_code, tour_code, m_id, pay_type, date, payed, people)
VALUES('20190317-12', 'TU001', 'aaaa', 2, now(), 60000, 1);

-- 투어문의 -------------------------------------------
INSERT INTO tqna(tq_code, tour_code, m_id, content, regdt)
VALUES('Q001', 'TU001', 'aaaa', '문의내용', now());

-- 투어문의답변 -------------------------------------------
INSERT INTO treply(tq_code, reply_code, content, regdt)
VALUES('Q001', 'Q001-01', '답변내용이요', now());

-- 투어리뷰 -------------------------------------------
INSERT INTO treview(rv_code, re_code, m_id, content, star, regdt)
VALUES('RE001', '20190317-11', 'aaaa', '리뷰입니다', 4, now());

SELECT * from country;



