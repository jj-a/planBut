package kr.co.planbut.plan;

import java.util.ArrayList;

public interface Planmapper {
	/*
	  매퍼(plan.xml)에 등록되어있는 id를
	  인터페이스에 등록 함으로써 MyBatis3에서 호출하기 편리하도록 지원함
	 */	
	//<insert id="create">
	public int create(PlanDTO dto);
	
	//<select id="list">
	public ArrayList<PlanDTO> list();
	
}//interface end
