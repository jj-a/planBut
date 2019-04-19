package kr.co.planbut.planner;

import java.util.ArrayList;
import java.util.HashMap;

import kr.co.planbut.common.*;

public interface PlannerMapper {
	/*
	 * Mapper(notice.xml)에 등록되어있는 id를 interface의 메소드에 다시 한번 등록함으로써 myBatis3에서 호출하기 편리하도록 지원
	 */

	public ArrayList<PlannerDTO> plannerList(String m_id);
	public PlannerDTO home(PlannerDTO dto);

}
