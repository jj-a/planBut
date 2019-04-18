package kr.co.planbut.member;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.planbut.common.*;



@Component
public class MemberDAO {
	
	// @Autowired : @Component annotation으로 자동생성된 객체를 사용하기 위해 객체간 연결시켜줌
	@Autowired
	SqlSession sqlSession;
	
	// Constructor
	
	public MemberDAO() {
		System.out.println("Start MemberDAO");
		
	}
	
	
	// Method
	
	
	public MemberDTO home(MemberDTO dto) {

		MemberMapper mapper=sqlSession.getMapper(MemberMapper.class);
		MemberDTO member=mapper.home(dto);

		return member;
		
	} // home() end
	
	
}
