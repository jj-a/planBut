package kr.co.planbut.planner;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.planbut.common.*;


@Component
public class PlannerDAO {
	
	// @Autowired : @Component annotation으로 자동생성된 객체를 사용하기 위해 객체간 연결시켜줌
	@Autowired
	SqlSession sqlSession;
	
	// Constructor
	
	public PlannerDAO() {
		System.out.println("Start PlannerDAO");
		
	}
	
	
	// Method
	
	public PlannerDTO home(PlannerDTO dto) {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		PlannerDTO planner=mapper.home(dto);

		return planner;
		
	} // home() end
	
}
