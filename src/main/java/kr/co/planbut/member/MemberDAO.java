package kr.co.planbut.member;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.planbut.common.MemberDTO;

@Component
public class MemberDAO {

	// @Autowired : @Component annotation으로 자동생성된 객체를 사용하기 위해 객체간 연결시켜줌
	@Autowired
	SqlSession sqlSession;

	// Constructor

	public MemberDAO() {
		;
	}

	// 회원 로그인
	public String login(MemberDTO dto) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		MemberDTO member = mapper.login(dto);
		String result;

		if (member == null) {
			result = "fale";
			return result;
		} else {
			result = member.getM_type();
			return result;
		}

	}
	
	// 회원 프로필 (이름/사진)
	public MemberDTO profile(String m_id) {
		MemberMapper mapper = sqlSession.getMapper(MemberMapper.class);
		MemberDTO member = mapper.profile(m_id);
		return member;
	} // profile() end
	
	
	//회원 정보 수정
	public int modify(MemberDTO dto) {
		MemberMapper mapper=sqlSession.getMapper(MemberMapper.class);
		int count=mapper.modify(dto);
		return count;
	}//modify() end
	

}