package kr.co.planbut.planner;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;



@Component
public class PlannerDAO {
	
	// @Autowired : @Component annotation으로 자동생성된 객체를 사용하기 위해 객체간 연결시켜줌
	@Autowired
	SqlSession sqlSession;
	
	// Constructor
	
	public PlannerDAO() {
		System.out.println("Start NoticeDAO");
		
	}
	
	
	// Method
	
	public int create(PlannerDTO dto) {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		int result=mapper.create(dto);

		return result;
		
	} // create() end
	
	
	public ArrayList<PlannerDTO> list() {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		ArrayList<PlannerDTO> list=mapper.list();

		return list;
		
	} // list() end
	
	
	public ArrayList<PlannerDTO> list(String col, String keyword) {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);

		HashMap<String, String> searchMap=new HashMap<String, String>();
		searchMap.put("col", col);
		searchMap.put("keyword", keyword);
		
		ArrayList<PlannerDTO> list=mapper.search(searchMap);

		return list;
		
	} // list() end
	
	
	public PlannerDTO read(PlannerDTO dto) {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		dto=mapper.read(dto);

		return dto;
		
	} // read() end
	
	
	public int update(PlannerDTO dto) {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		int result=mapper.update(dto);

		return result;
		
	} // update() end
	

	public int delete(PlannerDTO dto) {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		int result=mapper.delete(dto);

		return result;
		
	} // delete() end
	

	public int count() {

		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		int count=mapper.count();

		return count;
		
	} // count() end
	
	
}
