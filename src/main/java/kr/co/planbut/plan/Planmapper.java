package kr.co.planbut.plan;

import java.util.ArrayList;

public interface Planmapper {
  
	//<insert id="create">
	public int create(PlanDTO dto);
	
	//<select id="list">
	public ArrayList<PlanDTO> list();
	
}//interface end
