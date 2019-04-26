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
	
	// cityplan
	public ArrayList<CityplanDTO> cityplanList(PlannerDTO dto);
	public ArrayList<CourseplanDTO> courseplanList(PlannerDTO dto);

	public ArrayList<PlaceDTO> placeList();	// 관광지리스트
	
} // PlanMapper end
