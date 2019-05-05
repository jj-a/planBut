package kr.co.planbut.tour;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.member.MemberDAO;


@Controller
public class TourCont {

	@Autowired
	TourDAO dao;
	
	@Autowired
	MemberDAO member;

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
	}//list end
	
	@RequestMapping(value="/tour/city.do", method=RequestMethod.GET)
	public ModelAndView city() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/city");
		return mav;
	}//city end
	
	@RequestMapping(value="/tour/tourinfo.do", method=RequestMethod.GET)
		public ModelAndView tourinfo(TourDTO dto, TreviewDTO review) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourinfo");
		ArrayList<TourDTO> reviewlist = dao.reviewlist(dto);
		int reviewavg = dao.reviewavg(review);
		int reviewtotal = dao.reviewtotal(review);
		mav.addObject("reviewlist", reviewlist);
		mav.addObject("reviewtotal", reviewtotal);
		mav.addObject("reviewavg", reviewavg);
		dto = dao.read(dto);
		mav.addObject("dto", dto);
		return mav;
	}//tourinfo end
	
	@RequestMapping(value="/tour/cart.do", method=RequestMethod.GET)
	public ModelAndView cartlist(TourDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/cart");
		String m_id = (String)session.getAttribute("session_m_id");
		ArrayList<TourDTO> cartlist = dao.cartlist(m_id);
		
		System.out.println(cartlist.size());
		
		mav.addObject("cartlist", cartlist);
		return mav;
	}//cartlist end
	
	
	@RequestMapping(value="/tour/tourinfo.do", method=RequestMethod.POST)
	public ModelAndView addcart(CartDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/tour/tourinfo.do?tour_code="+dto.getTour_code());
		String m_id = (String) session.getAttribute("session_m_id");
		dto.setM_id(m_id);
		int res = dao.addcart(dto);
		mav.addObject("res", res);

		return mav;
	}//addcart end

	@RequestMapping(value="/tour/reserve.do", method=RequestMethod.GET)
	public ModelAndView reserve() {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/reserve");
		return mav;
	}//reserve end
	
	@RequestMapping(value="/tour/tourlist.do", method=RequestMethod.GET)
	public ModelAndView tourlist(TourDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourlist");
		ArrayList<TourDTO> tourlist = dao.tourlist(dto);
		System.out.println(tourlist.size());
		int tourtotal = dao.tourtotal(dto);
		mav.addObject("tourlist", tourlist);
		mav.addObject("tourtotal", tourtotal);
		return mav;
	}//tourlist end
	
	@RequestMapping(value="/mypage/reservation.do", method=RequestMethod.GET)
	public ModelAndView myreserve(TourDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/reservation");
		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");
				
		mav.addObject("member", member.profile(m_id));	// 회원(member) 프로필(이름/사진)
		
		ArrayList<TourDTO> reservelist = dao.reservelist();
		ArrayList<TourDTO> c_reservelist = dao.c_reservelist();
		mav.addObject("reservelist", reservelist);
		mav.addObject("c_reservelist", c_reservelist);
		return mav;
	}//myreserve end
	
	@RequestMapping(value="/mypage/reservation.do", method=RequestMethod.POST)
	public ModelAndView addreview(TreviewDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mypage/reservation.do");
		String m_id = (String) session.getAttribute("session_m_id");
		dto.setM_id(m_id);
		int res = dao.addreview(dto);
		mav.addObject("res", res);

		return mav;
	}//addview end
	
	
	
}//class end
