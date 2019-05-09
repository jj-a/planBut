package kr.co.planbut.plan;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import kr.co.planbut.common.*;


@Component
public class PlanDAO {
	@Autowired
	SqlSession sqlSession;
	
	public PlanDAO() {
		;
	}
	
	// Method
	
	// 플래너 추가
	public int create(PlannerDTO dto) {
		PlanMapper mapper = sqlSession.getMapper(PlanMapper.class);		
		int res = mapper.create(dto);
		return res;
	}// create() end

	
	// 플래너 조회 (리스트)
	public ArrayList<PlannerDTO> list(String m_id) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		ArrayList<PlannerDTO> list=mapper.list(m_id);
		return list;		
	} // list() end
	
	
	// 플래너 조회 (상세)
	public PlannerDTO read(PlannerDTO dto) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		PlannerDTO planner=mapper.read(dto);
		return planner;
	} // read() end
	
	
	// 플래너 수정
	public int update(PlannerDTO dto) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		int res=mapper.update(dto);
		return res;
	} // update() end
	
	
	// 플래너 삭제
	public int delete(PlannerDTO dto) {
		PlanMapper mapper = sqlSession.getMapper(PlanMapper.class);		
		int res = mapper.delete(dto);
		return res;
	} // delete() end
	
	
	// 플래너 카운트
	public int count(PlannerDTO dto) {
		PlanMapper mapper = sqlSession.getMapper(PlanMapper.class);
		int cnt = mapper.count(dto);
		return cnt;
	} // count() end

	
	// 1단계 도시계획 조회 (리스트)
	public ArrayList<CityplanDTO> cityplanList(PlannerDTO dto) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		ArrayList<CityplanDTO> list=mapper.cityplanList(dto);
		return list;		
	} // cityplanList() end

	
	// 일정(캘린더) 조회 (리스트)
	public ArrayList<CalendarDTO> calendar(CalendarDTO dto) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		ArrayList<CalendarDTO> list=mapper.calendar(dto);
		return list;		
	} // calendar() end

	
	// 2단계 경로계획 조회 (리스트) - 단일데이터
	public ArrayList<CourseplanDTO> courseplanList(CalendarDTO dto) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		ArrayList<CourseplanDTO> list=mapper.courseplanList(dto);
		return list;		
	} // courseplanList() end

	
	// 관광지 조회 (리스트)
	public ArrayList<PlaceDTO> placeList() {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		ArrayList<PlaceDTO> list=mapper.placeList();
		return list;		
	} // placeList() end
	
	
	// 관광지 조회 (상세)
	public PlaceDTO placeRead(PlaceDTO dto) {
		PlanMapper mapper=sqlSession.getMapper(PlanMapper.class);
		PlaceDTO place=mapper.placeRead(dto);
		return place;
	} // placeRead() end
	

	// getCitys
	public ArrayList<CityDTO> getCitys() { 
		PlanMapper mapper = sqlSession.getMapper(PlanMapper.class);		
		ArrayList<CityDTO> CityDTOs = mapper.getCitys();
		return CityDTOs;
	}

	
	// 1단계 도시계획 추가
	public int insertCP(CityplanDTO dto) {
		PlanMapper mapper = sqlSession.getMapper(PlanMapper.class);		
		int result = mapper.insertCP(dto);
		return result;
	}

	
	// 1단계 도시계획 삭제
	public int clearCP(String plan_code) {
		PlanMapper mapper = sqlSession.getMapper(PlanMapper.class);		
		int result = mapper.clearCP(plan_code);
		return result;
	}
	
	
}// PlanDAO end
