package kr.co.planbut.plan;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.common.*;


@Controller
public class PlanController {

	@Autowired
	private PlanDAO dao;

	public PlanController() {
		;
	}// planController() end

	
	// 계획짜기 (플래너 생성 연결)
	@RequestMapping(value="/plan", method=RequestMethod.GET)
	public ModelAndView mypage(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/plan/plan.do");
		
		return mav;
	} // planner() end
	

	// 계획짜기 > 1단계 플래너 (플래너 생성&도시계획)
	@RequestMapping(value="/plan/plan.do", method=RequestMethod.GET)
	public ModelAndView plan(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();

		mav.setViewName("plan/plan");
		
		ArrayList<CityDTO> CityDTOs = dao.getCitys(); //좌표찍을 전체 도시들 정보
		mav.addObject("CityDTOs", CityDTOs);// 좌표찍을 도시들 mav에 담기

		if(dto.getPlan_code()!=null && dto.getPlan_code()!="") {
			// parameter가 있을 때 (폼 전송)
			System.out.println("★생성된 플래너 불러오기");
			System.out.println(dto.getPlan_code());
			
			mav.addObject("article", dao.read(dto));	// 플래너(planner) 정보
			mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트 -> 수정 시
			
		}else {
			// parameter가 없을 때
			System.out.println("★플래너 추가 시작");
		}
		
		return mav;
	}// plan() end
	

	// 계획짜기 > 1단계 플래너 (플래너 생성&도시계획) - 플래너 생성
	@RequestMapping(value="/plan/plan.do", method=RequestMethod.POST)
	public ModelAndView planproc(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/plan");

		int count=dao.create(dto);	// 플래너(planner) 추가
		
		if(count!=0) {
			System.out.println("★추가 성공");
			dto=dao.read(dto);	// 플래너(planner) 정보
			mav.addObject("article", dto);
			mav.setViewName("redirect:/plan/plan.do?plan_code="+dto.getPlan_code());
		}else {
			System.out.println("★추가 실패");
		}
		
		return mav;
	}// planproc() end
	
	
	// 계획짜기 > 일정 (캘린더)
	@RequestMapping(value="/plan/calendar.do", method=RequestMethod.GET)
	public ModelAndView calendar(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/calendar");

		if(dto.getPlan_code()!=null && dto.getPlan_code()!="") {
			mav.addObject("article", dao.read(dto));	// 플래너(planner) 정보
			mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트 -> 수정 시

		}else {
			// parameter가 없을 때
			
		}
		
		return mav;
	}// calendar() end
	

	// 계획짜기 > 일정 (캘린더) - 일별 메모 조회 (ajax 로드)
	@ResponseBody
	@RequestMapping(value="/plan/calendar", produces = "application/json", method=RequestMethod.GET)
	public ArrayList<CalendarDTO> calendarLoad(CalendarDTO dto) {

		System.out.println("plan_code:"+dto.getPlan_code());
		//System.out.println("plan_code2:"+dto.getCityplan().getPlan_code());
		System.out.println("cp_code:"+dto.getCp_code());
		System.out.println("date:"+dto.getDate());
		
		ArrayList<CalendarDTO> list=dao.calendar(dto);	// 캘린더(calendar) 리스트 -> 수정 시
		
		System.out.println("캘린더 리스트: "+list.size());
		
		return list;
	}// calendarLoad() end
	
	
	// 계획짜기 > 일정 (캘린더) - 캘린더 "추가" (ajax 저장)
	@ResponseBody
	@RequestMapping(value="/plan/cal-add", method=RequestMethod.POST)
	public int calendarAdd(CalendarDTO dto) {

		System.out.println("cp_code:"+dto.getCp_code());
		System.out.println("memo:"+dto.getMemo());
		System.out.println("date:"+dto.getDate());
		
		int result=dao.calAdd(dto);	// 캘린더(calendar) 추가
		
		return result;
	}// calendarAdd() end
	
	
	// 계획짜기 > 일정 (캘린더) - 캘린더 "수정" (ajax 저장)
	@ResponseBody
	@RequestMapping(value="/plan/cal-upd", method=RequestMethod.PUT) // 톰캣 server.xml - Connector태그의 parseBodyMethods에 PUT 추가
	public int calendarUpdate(CalendarDTO dto) {

		System.out.println("cal_code:"+dto.getCal_code());
		System.out.println("memo:"+dto.getMemo());
		
		int result=dao.calUpdate(dto);	// 캘린더(calendar) 수정
		
		return result;
	}// calendarUpdate() end
	
	
	// 계획짜기 > 일정 (캘린더) - 캘린더 "삭제" (ajax 저장)
	@ResponseBody
	@RequestMapping(value="/plan/cal-del", method=RequestMethod.DELETE) // 톰캣 server.xml - Connector태그의 parseBodyMethods에 DELETE 추가
	public int calendarDelete(CalendarDTO dto) {

		System.out.println("cal_code:"+dto.getCal_code());
		
		int result=dao.calDelete(dto);	// 캘린더(calendar) 삭제
		
		return result;
	}// calendarDelete() end
	

	// 계획짜기 > 2단계 플래너 (경로계획)
	@RequestMapping(value="/plan/course.do", method=RequestMethod.GET)
	public ModelAndView course(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/course");
		if(dto.getPlan_code()!=null && dto.getPlan_code()!="") {
		mav.addObject("article", dao.read(dto));	// 플래너(planner) 정보
		mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트 -> 수정 시
		mav.addObject("placelist", dao.placeList());	// 관광지(place) 리스트

		}else {
			// parameter가 없을 때
			System.out.println("★플래너 추가 화면으로 이동");
			mav.setViewName("redirect:/plan/plan.do");
		}
		
		return mav;
	}// course() end
	

	// 계획짜기 > 2단계 플래너 (경로계획) - 일별 경로 조회 (ajax 로드)
	@ResponseBody
	@RequestMapping(value="/plan/courseplan", produces = "application/json", method=RequestMethod.GET)
	public ArrayList<CourseplanDTO> courseLoad(CalendarDTO dto) {

		System.out.println("plan_code:"+dto.getPlan_code());
		System.out.println("cp_code:"+dto.getCp_code());
		System.out.println("date:"+dto.getDate());
		
		ArrayList<CourseplanDTO> list=dao.courseplanList(dto);	// 경로계획(courseplan) 리스트 -> 수정 시
	
		return list;
	}// courseLoad() end
	

	// 계획짜기 > 2단계 플래너 (경로계획) - 코스(경로)별 관광지 정보 조회 (ajax 로드)
	@ResponseBody
	@RequestMapping(value="/plan/course", produces = "application/json", method=RequestMethod.GET)
	public PlaceDTO courseView(PlaceDTO dto) {

		System.out.println("p_code:"+dto.getP_code());
		
		dto=dao.placeRead(dto);	// 관광지(place) 정보
		
		System.out.println("관광지: "+dto.getP_name());
	
		return dto;
	}// courseView() end
	
	
	@RequestMapping(value="/plan/planTest.do", method=RequestMethod.GET)
	public ModelAndView planTest(Model model) {
		ModelAndView mav = new ModelAndView();
		ArrayList<CityDTO> CityDTOs = dao.getCitys();
		
		mav.setViewName("plan/planTest");
		mav.addObject("CityDTOs", CityDTOs);
		return mav;
	}//planTest end
	
	
	//계획 1단계 저장하기
	@RequestMapping(value="/plan/planTest.do", method=RequestMethod.POST)
	public ModelAndView planTestResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/planTestResult");
		return mav;
	}//planTestResult end
	
	
	@RequestMapping(value="/plan/create.do", method=RequestMethod.POST)
	public void cityPlanCreate(HttpServletRequest req, HttpServletResponse resp, String json)throws IOException {
		System.out.println(json);
		
		try {
			int result = 0;

			//String jsonData = req.getParameter("json");
			JSONParser jsonParser = new JSONParser();
			JSONArray jsonArray = (JSONArray) jsonParser.parse(json);
			
			String plan_code =(String) ((JSONObject) jsonArray.get(0)).get("plan_code");
			//System.out.println("clearCP 결과 : "+dao.clearCP(plan_code));
			
            for(int i=0 ; i<jsonArray.size() ; i++){ //json에 있는 도시계획들 파싱
                JSONObject jsonObj = (JSONObject) jsonArray.get(i);
                //System.out.println(jsonObj.toString());
                
                int a = (int)Math.round((Long) jsonObj.get("order_code"));
                int b = Integer.parseInt((String) jsonObj.get("day"));
                
                CityplanDTO dto = new CityplanDTO();
                dto.setPlan_code((String) jsonObj.get("plan_code"));
                dto.setCt_code((String) jsonObj.get("ct_code"));
                dto.setOrder_code(a);
                dto.setDay(b);
                dto.setTrans((String) jsonObj.get("trans"));
                dto.setS_date((String) jsonObj.get("s_date"));
                dto.setRm_ok((String) jsonObj.get("rm_ok"));
                //((Long)parse_response.get("age")).intValue();
                
                //System.out.println(jsonObj.get("cp_code").equals("제거"));
                
                if (jsonObj.get("cp_code").equals("제거")) {//저장 안되어있던것만 insert
	                result = dao.insertCP(dto); //insert 실행
	                //System.out.println("insertCP 결과 : "+result +"\n--------------------");
                }else {                	
                	dto.setCp_code((String) jsonObj.get("cp_code"));
					result = dao.updateCP(dto);
					//System.out.println("updateCP 결과 : "+result +"\n--------------------");
				}// if end
            }//for end
            
			resp.setContentType("text/plain; charset=UTF-8");
			PrintWriter out=resp.getWriter();
			out.println(result);
			out.flush();
			out.close();

		} catch (Exception e) {
			System.out.println(e);

		}// try end
		//return "결과";

	}//cityPlanCreate() end
	
	@RequestMapping(value="/plan/delCP.do", method=RequestMethod.POST)
	public void delCP(HttpServletRequest req, HttpServletResponse resp, String cp_code)throws IOException {
		System.out.println(cp_code);
		
		try {
			int result = 0;
			
			result = dao.delCP(cp_code); //insert 실행
			System.out.println("delCP 결과 : "+result +"--------------------");
			
			resp.setContentType("text/plain; charset=UTF-8");
			PrintWriter out=resp.getWriter();
			out.println(result);
			out.flush();
			out.close();
			
		} catch (Exception e) {
			System.out.println(e);
			
		}// try end
		//return "결과";
		
	}//cityPlanCreate() end
	
}// class end
