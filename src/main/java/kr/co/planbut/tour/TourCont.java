package kr.co.planbut.tour;


import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;



@Controller
public class TourCont {
	/*
	@Autowired
	TourDAO dao;
	*/
	
	public TourCont() {
		System.out.println("--- PlanButCont 생성");
	}
	
	@RequestMapping(value="/tour/tour.do", method=RequestMethod.GET)
	public ModelAndView tour() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/index");
		return mav;
	}//index end
	
	@RequestMapping(value="/tour/city.do", method=RequestMethod.GET)
	public ModelAndView city() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/city");
		return mav;
	}//index end
	
	
	@RequestMapping(value="/tour/tourinfo.do", method=RequestMethod.GET)
	public ModelAndView tourinfo() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourinfo");
		return mav;
	}//index end
	
	
	/*
	@RequestMapping("/notice/list.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/list");
		ArrayList<TourDTO> list = dao.list();
		mav.addObject("list", list);
		return mav;
	}//list end
	*/
	
}//class end
