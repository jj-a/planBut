package kr.co.planbut.planner;

import java.util.ArrayList;
import java.util.HashMap;

public interface PlannerMapper {
	/*
		Mapper(notice.xml)에 등록되어있는 id를 interface의 메소드에 다시 한번 등록함으로써
		myBatis3에서 호출하기 편리하도록 지원
	 */
	public int create(PlannerDTO dto);
	public ArrayList<PlannerDTO> list();
	public ArrayList<PlannerDTO> search(HashMap<String, String> searchMap);
	public PlannerDTO read(PlannerDTO dto);
	public int update(PlannerDTO dto);
	public int delete(PlannerDTO dto);
	public int count();
	
}
