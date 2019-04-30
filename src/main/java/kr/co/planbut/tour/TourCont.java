package kr.co.planbut.tour;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class TourCont {

	@Autowired
	TourDAO dao;

	public TourCont() {
		System.out.println("--- PlanButCont 생성");
	}
	
	@RequestMapping(value="/tour/tour.do")
	public ModelAndView list() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/index");
		ArrayList<TourDTO> countrylist = dao.countrylist();
		ArrayList<TourDTO> citylist = dao.citylist();
		ArrayList<TourDTO> plannerlist = dao.plannerlist();
		mav.addObject("countrylist", countrylist);
		mav.addObject("citylist", citylist);
		mav.addObject("plannerlist", plannerlist);
		return mav;
	}//index end
	
	@RequestMapping(value="/tour/city.do", method=RequestMethod.GET)
	public ModelAndView city() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/city");
		return mav;
	}//index end
	
	@RequestMapping(value="/tour/tourinfo.do", method=RequestMethod.GET)
		public ModelAndView read(TourDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourinfo");
		dto = dao.read(dto);
		mav.addObject("dto", dto);
		return mav;
	}//index end
	
	@RequestMapping(value="/tour/cart.do", method=RequestMethod.GET)
	public ModelAndView cartlist(TourDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/cart");
		String m_id = (String)session.getAttribute("session_m_id");
		ArrayList<TourDTO> cartlist = dao.cartlist(m_id);
		mav.addObject("cartlist", cartlist);
		return mav;
	}//index end
	
/*	
	@RequestMapping(value="/tour/tourinfo.do", method=RequestMethod.POST)
	public ModelAndView cartproc(CartDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		String m_id = (String) session.getAttribute("session_m_id");
		dto.setM_id(m_id);
		int res = dao.cart(dto);
		mav.addObject("res", res);
		return mav;
	}//createProc end
*/	
	@RequestMapping(value="/tour/reserve.do", method=RequestMethod.GET)
	public ModelAndView reserve() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/reserve");
		return mav;
	}//index end
	
	@RequestMapping(value="/tour/tourlist.do", method=RequestMethod.GET)
	public ModelAndView tourlist(TourDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourlist");
		ArrayList<TourDTO> tourlist = dao.tourlist(dto);
		System.out.println(tourlist.size());
		int total = dao.tourtotal(dto);
		mav.addObject("tourlist", tourlist);
		mav.addObject("total", total);
		return mav;
	}//index end
	
	
	
	
}//class end
