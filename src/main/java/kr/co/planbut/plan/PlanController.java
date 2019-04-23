package kr.co.planbut.plan;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PlanController {
/*
	@Autowired
	PlanDAO dao;
 */
	public PlanController() {
		System.out.println("------PlanController() 객체 생성됨");
	}// planController() end
	
	@RequestMapping(value="/plan/plan.do", method=RequestMethod.GET)
	public ModelAndView plan(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/plan");
		return mav;
	}// plan() end
	
	@RequestMapping(value="/plan/calendar.do", method=RequestMethod.GET)
	public ModelAndView calendar(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/calendar");
		return mav;
	}// calendar() end
	
	@RequestMapping(value="/plan/course.do", method=RequestMethod.GET)
	public ModelAndView course(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/course");
		return mav;
	}// course() end
	
	@RequestMapping(value="/plan/planTest.do", method=RequestMethod.GET)
	public ModelAndView planTest(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/planTest");
		return mav;
	}//creatForm end
	
	@RequestMapping(value="/plan/planTest.do", method=RequestMethod.POST)
	public ModelAndView planTestResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/planTestResult");
		return mav;
	}//creatForm end
	
}// class end
