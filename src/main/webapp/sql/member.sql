
-- member (회원)


-- member 로그인 (조회)
select m_id, m_type
from member
where m_id=#{m_id} and password=#{password}
;
-- (ex)
select m_id, m_type
from member
where m_id='aaaa' and password='1234'
;


-- member 프로필 사진 (조회)
select m_name, photo
from member
where m_id=#{m_id}
;
-- (ex)
select m_name, photo
from member
where m_id='aaaa'
;





