package kr.co.planbut.planner;

import java.util.ArrayList;

import kr.co.planbut.common.*;

public interface PlannerMapper {
	/*
	 * Mapper(notice.xml)에 등록되어있는 id를 interface의 메소드에 다시 한번 등록함으로써 myBatis3에서 호출하기 편리하도록 지원
	 */

	public PlannerDTO home(PlannerDTO dto);
	public ArrayList<PlannerDTO> plannerList(String m_id);
	
	public PlannerDTO plannerRead(PlannerDTO dto);
	
	public int plannerUpdate(PlannerDTO dto);
	public int plannerDelete(PlannerDTO dto);
	public int plannerCount(PlannerDTO dto);
	
	public ArrayList<CityplanDTO> cityplanList(PlannerDTO dto);
	public ArrayList<CourseplanDTO> courseplanList(PlannerDTO dto);
	public ArrayList<CalendarDTO> calendar(PlannerDTO dto);
	public ArrayList<PlaceDTO> placeList();	// 관광지리스트

}
