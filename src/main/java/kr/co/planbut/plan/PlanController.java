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
	}//creatForm end
}// class end
