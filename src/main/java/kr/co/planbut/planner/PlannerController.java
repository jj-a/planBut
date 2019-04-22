package kr.co.planbut.planner;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.common.*;

@Controller
public class PlannerController {
	
	@Autowired
	private PlannerDAO dao;
	
	public PlannerController() {
		System.out.println("Start PlannerController");
	}
	
	
	/*
	@RequestMapping(value="[요청명령어]", method=RequestMethod.[GET|POST], produces="text/plain; charset='UTF-8'")
	 */
	
	// 마이페이지 (내 플래너 연결)
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public ModelAndView mypage(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/mypage/planner.do");
		
		return mav;
	} // planner() end
	
	
	// 마이페이지 > 내 플래너 (리스트)
	@RequestMapping(value="/mypage/planner.do", method=RequestMethod.GET)
	public ModelAndView plannerList(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("mypage/planner");
		
		String m_id="aaaa";	// Session에 저장되있는 id 가져오기
		
		mav.addObject("list", dao.plannerList(m_id));
		
		return mav;
	} // planner() end
	
	
	// 플래너 홈 (플래너 홈 연결)
	@RequestMapping(value="/planner/", method=RequestMethod.GET)
	public ModelAndView planner(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/planner/home.do");
		
		return mav;
	} // home() end
	
	
	// 플래너 홈
	@RequestMapping(value="/planner/home.do", method=RequestMethod.GET)
	public ModelAndView home(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/home");

		String m_id=dto.getM_id();	// Session에 저장되있는 id 가져오기
		
		mav.addObject("article", dao.home(dto));
		
		return mav;
	} // home() end

	
	// 캘린더
	@RequestMapping(value="/planner/calendar.do", method=RequestMethod.GET)
	public ModelAndView calendar(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/calendar");

		String m_id=dto.getM_id();	// Session에 저장되있는 id 가져오기
		
		mav.addObject("article", dao.home(dto));
		
		return mav;
	} // calendar() end
	
	
	// 사진
	@RequestMapping(value="/planner/gallery.do", method=RequestMethod.GET)
	public ModelAndView gallery(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/gallery");

		String m_id=dto.getM_id();	// Session에 저장되있는 id 가져오기
		
		mav.addObject("article", dao.home(dto));
		
		return mav;
	} // gallary() end
	
	
	// 일정
	@RequestMapping(value="/planner/schedule.do", method=RequestMethod.GET)
	public ModelAndView schedule(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/schedule");

		String m_id=dto.getM_id();	// Session에 저장되있는 id 가져오기
		
		mav.addObject("article", dao.home(dto));
		
		return mav;
	} // schedule() end
	
	
	// 일일경로
	@RequestMapping(value="/planner/course.do", method=RequestMethod.GET)
	public ModelAndView course(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/course");

		String m_id=dto.getM_id();	// Session에 저장되있는 id 가져오기
		
		mav.addObject("article", dao.home(dto));
		
		return mav;
	} // course() end
	
}
