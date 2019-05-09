package kr.co.planbut.plan;

import java.util.ArrayList;

import kr.co.planbut.common.*;


public interface PlanMapper {
  
	//<insert id="create">
	public int create(PlannerDTO dto);
	
	//<select id="list">
	public ArrayList<PlannerDTO> list(String m_id);
	
	public PlannerDTO read(PlannerDTO dto);
	
	public int update(PlannerDTO dto);
	public int delete(PlannerDTO dto);
	public int count(PlannerDTO dto);
	
	public ArrayList<CityplanDTO> cityplanList(PlannerDTO dto);
	public ArrayList<CourseplanDTO> courseplanList(CalendarDTO dto);
	public ArrayList<CalendarDTO> calendar(CalendarDTO dto);
	
	public ArrayList<PlaceDTO> placeList();	// 관광지리스트
	public PlaceDTO placeRead(PlaceDTO dto);
	
	//<select id="getCitys">
	public ArrayList<CityDTO> getCitys();

	//<insert id="insertCP">
	public int insertCP(CityplanDTO dto);

	public int clearCP(String plan_code);
	
} // PlanMapper end
