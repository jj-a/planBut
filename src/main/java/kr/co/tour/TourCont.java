package kr.co.tour;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TourCont {
	
	@Autowired
	TourDAO dao;
		
	public TourCont() {
		System.out.println("--- PlanButCont ");
	}
	
	@RequestMapping(value="/tour/tour.do", method=RequestMethod.GET)
	public ModelAndView tourcountry() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tour");
		return mav;
	}//createForm end

	
}//class end
