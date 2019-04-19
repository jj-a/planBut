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
	
	// 마이페이지
	@RequestMapping(value="/mypage", method=RequestMethod.GET)
	public ModelAndView mypage(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/mypage/planner.do");
		
		return mav;
	} // planner() end
	
	// 마이페이지 > 내 플래너 (리스트)
	@RequestMapping(value="/mypage/planner.do", method=RequestMethod.GET)
	public ModelAndView planner(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/planner");
		
		return mav;
	} // planner() end
	
	
	// 플래너 홈
	@RequestMapping(value="/planner/", method=RequestMethod.GET)
	public ModelAndView plannerhome(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("redirect:/planner/home.do");
		
		return mav;
	} // home() end
	
	
	// 플래너 홈
	@RequestMapping(value="/planner/home.do", method=RequestMethod.GET)
	public ModelAndView home(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/home");
		
		return mav;
	} // home() end

	
	// 캘린더
	@RequestMapping(value="/planner/calendar.do", method=RequestMethod.GET)
	public ModelAndView calendar(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/calendar");
		
		return mav;
	} // calendar() end
	
	
	// 사진
	@RequestMapping(value="/planner/gallery.do", method=RequestMethod.GET)
	public ModelAndView gallery(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/gallery");
		
		return mav;
	} // gallary() end
	
	
	// 일정
	@RequestMapping(value="/planner/schedule.do", method=RequestMethod.GET)
	public ModelAndView schedule(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/schedule");
		
		return mav;
	} // schedule() end
	
	
	// 일일경로
	@RequestMapping(value="/planner/course.do", method=RequestMethod.GET)
	public ModelAndView course(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/course");
		
		return mav;
	} // course() end
	
}
