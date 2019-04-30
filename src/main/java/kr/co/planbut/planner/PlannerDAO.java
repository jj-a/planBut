package kr.co.planbut.planner;

import java.util.ArrayList;

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
		;
	}
	
	
	// Method

	// 플래너 조회 (리스트)
	public ArrayList<PlannerDTO> plannerList(String m_id) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		ArrayList<PlannerDTO> list=mapper.plannerList(m_id);
		return list;
	} // plannerList() end
	

	// 플래너 조회 (홈화면?)
	public PlannerDTO home(PlannerDTO dto) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		PlannerDTO planner=mapper.home(dto);
		return planner;
	} // home() end
	
	
	// 플래너 조회 (상세)
	public PlannerDTO plannerRead(PlannerDTO dto) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		PlannerDTO planner=mapper.plannerRead(dto);
		return planner;
	} // plannerRead() end
	
	
	// 플래너 수정
	public int plannerUpdate(PlannerDTO dto) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		int res=mapper.plannerUpdate(dto);
		return res;
	} // plannerUpdate() end
	
	
	// 플래너 삭제
	public int plannerDelete(PlannerDTO dto) {
		PlannerMapper mapper = sqlSession.getMapper(PlannerMapper.class);		
		int res = mapper.plannerDelete(dto);
		return res;
	} // plannerDelete() end
	
	
	// 플래너 카운트
	public int plannerCount(PlannerDTO dto) {
		PlannerMapper mapper = sqlSession.getMapper(PlannerMapper.class);
		int cnt = mapper.plannerCount(dto);
		return cnt;
	} // plannerCount() end

	
	// 1단계 도시계획 조회 (리스트)
	public ArrayList<CityplanDTO> cityplanList(PlannerDTO dto) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		ArrayList<CityplanDTO> list=mapper.cityplanList(dto);
		return list;		
	} // cityplanList() end

	
	// 일정(캘린더) 조회 (리스트)
	public ArrayList<CalendarDTO> calendar(PlannerDTO dto) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		ArrayList<CalendarDTO> list=mapper.calendar(dto);
		return list;		
	} // courseplanList() end

	
	// 2단계 경로계획 조회 (리스트)
	public ArrayList<CourseplanDTO> courseplanList(PlannerDTO dto) {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		ArrayList<CourseplanDTO> list=mapper.courseplanList(dto);
		return list;		
	} // courseplanList() end

	
	// 관광지 조회 (리스트)
	public ArrayList<PlaceDTO> placeList() {
		PlannerMapper mapper=sqlSession.getMapper(PlannerMapper.class);
		ArrayList<PlaceDTO> list=mapper.placeList();
		return list;		
	} // placeList() end
	
}
