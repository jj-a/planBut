package kr.co.planbut.tour;


import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
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
	
	   @ResponseBody
	    @RequestMapping(value="/tour/tour", produces = "application/json", method=RequestMethod.GET)
	      public ArrayList<TourDTO> tourlistload(TourDTO dto) {

	         System.out.println("city_code:"+dto.getCt_code());
	         
	         ArrayList<TourDTO> list=dao.tourlist(dto);   // 캘린더(calendar) 리스트 -> 수정 시

	         System.out.println("투어 리스트: "+list.size());
	         System.out.println("tour_code:"+list.get(0).getTour_code());
	         System.out.println("tour_name:"+list.get(0).getTour_name());
	         System.out.println("price:"+list.get(0).getPrice());
	         
	         return list;
	      }// tourlistload() end

	
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
		Integer reviewavg = dao.reviewavg(review);
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
		
//		System.out.println(cartlist.size());
		mav.addObject("cartlist", cartlist);
		return mav;
	}//cartlist end
	
	/*
	@RequestMapping(value="/tour/cart.do", method=RequestMethod.POST)
	public ModelAndView cartdelete(CartDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/tour/cart.do");
		int count = dao.delete(dto);
		return mav;
	}
	*/
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
	
	
	@RequestMapping(value="/tour/writeqna.do", method=RequestMethod.POST)
	public ModelAndView addqna(QnaDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/tour/tourinfo.do?tour_code="+dto.getTour_code());
		String m_id = (String) session.getAttribute("session_m_id");
		dto.setM_id(m_id);
		int res = dao.addqna(dto);
		
		mav.addObject("res", res);
		
		return mav;
	}//addqna end
	

	@RequestMapping(value="/tour/reserve.do", method=RequestMethod.GET)
	public ModelAndView reserve(CartDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/reserve");
		
		// 데이터 받아오기 테스트 출력
		if(dto.getCart_list()!=null) {
			// 데이터 받아오기
			// 장바구니에서 가져올 때
			/*
			ArrayList<TourDTO> list = new ArrayList<TourDTO>();
			list.add(dao.readcart(cart_list));	//TODO:cart_code로 조회하는 sql만들기
			mav.addObject("cart_list", cart_list);
			*/
			
			System.out.println("dto size: "+dto.getCart_list().size());
			int i=0;
			for (String item : dto.getCart_list()) {
				System.out.println("장바구니 (다중 데이터)");
				System.out.println("["+i+"]");
				System.out.println("cart_code: "+item);
				i++;
			}
		}else {
			System.out.println("투어예약 (단일 데이터)");
			System.out.println("tour_code: "+dto.getTour_code());
			System.out.println("cart_code: "+dto.getCart_code()); // null
		}
		
		
		return mav;
	}//reserve end
	
	@RequestMapping(value="/tour/reserve.do", method=RequestMethod.POST)
	public ModelAndView payed(TreserveDTO dto, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/reserve");
		String m_id = (String) session.getAttribute("session_m_id");
		dto.setM_id(m_id);
		int res = dao.payed(dto);

		mav.addObject("res", res);
		
		return mav;
	}//reserve end
	
	@RequestMapping(value="/tour/tourlist.do", method=RequestMethod.GET)
	public ModelAndView tourlist(TourDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("tour/tourlist");
		ArrayList<TourDTO> tourlist = dao.tourlist(dto);
//		System.out.println(tourlist.size());
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
		
		ArrayList<TourDTO> reservelist = dao.reservelist(m_id);
		ArrayList<TourDTO> c_reservelist = dao.c_reservelist(m_id);
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
	
	@RequestMapping(value="/mypage/qna.do", method=RequestMethod.GET)
	public ModelAndView myqna(TourDTO dto, ReplyDTO reply, Model model, final HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/qna");
		String m_id = (String) session.getAttribute("session_m_id");
		ArrayList<ReplyDTO> replylist = dao.replylist(m_id);
		ArrayList<TourDTO> qnalist = dao.qnalist(m_id);
		
		System.out.println("reply_code : " +reply.getReply_code());
		System.out.println("tq_code : " +reply.getTq_code());
		System.out.println("content : " +reply.getContent());
		System.out.println("date : " +reply.getRegdt());
		
		mav.addObject("qnalist", qnalist);
		mav.addObject("replylist", replylist);
		System.out.println("reply" + replylist.size());
		System.out.println("qna" + qnalist.size());
		return mav;
	}//reserve end
	

	
}//class end
