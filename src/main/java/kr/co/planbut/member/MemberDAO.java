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
		System.out.println("Start MemberDAO");	
	}
	
	
	public String login(MemberDTO dto) {
		MemberMapper mapper=sqlSession.getMapper(MemberMapper.class);
		MemberDTO member = mapper.login(dto);
		String result;
		if (member.getM_id().equals(dto.getM_id())) {
			result= member.getM_type();
		}else {
			result= "fale";
		}
		
		return result;
	}
	
	
}
