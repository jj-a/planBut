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
	@RequestMapping(value="/planner/gallary.do", method=RequestMethod.GET)
	public ModelAndView gallary(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/gallary");
		
		return mav;
	} // gallary() end
	
	
	// 일정
	@RequestMapping(value="/planner/plan.do", method=RequestMethod.GET)
	public ModelAndView plan(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/plan");
		
		return mav;
	} // plan() end
	
	
	// 일일경로
	@RequestMapping(value="/planner/course.do", method=RequestMethod.GET)
	public ModelAndView course(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/course");
		
		return mav;
	} // course() end
	
	
}
