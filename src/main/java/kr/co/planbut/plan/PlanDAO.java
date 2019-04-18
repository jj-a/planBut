package kr.co.planbut.plan;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

@Component
public class PlanDAO {
	@Autowired
	SqlSession sqlSession;
	
	public PlanDAO() {
		System.out.println("----- PlanDAO 객체 생성됨");
	}
	
	public int create(PlanDTO dto) {		
		Planmapper mapper = sqlSession.getMapper(Planmapper.class);		
		int res = mapper.create(dto);
		return res;
	}// create end
}//class end
