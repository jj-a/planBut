package kr.co.planbut.planner;

import java.util.ArrayList;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.common.*;
import kr.co.planbut.member.MemberDAO;

@Controller
public class PlannerController {
	
	@Autowired
	private PlannerDAO dao;
	@Autowired
	private MemberDAO mb;
	
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
	public ModelAndView plannerList(PlannerDTO dto, Model model, final HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("mypage/planner");
		
		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");
		dto.setM_id(m_id);
		
		mav.addObject("member", mb.profile(m_id));	// 회원(member) 프로필(이름/사진)
		
		mav.addObject("list", dao.plannerList(m_id));	// 플래너(planner) 리스트
		mav.addObject("count", dao.plannerCount(dto));	// 플래너(planner) 개수 체크
		
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
	public ModelAndView home(PlannerDTO dto, Model model, final HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/home");

		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");

		mav.addObject("article", dao.plannerRead(dto));	// 플래너(planner) 정보
		mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트
		// TODO: 갤러리(gallery) 테이블 생성 + 리스트 추가하기 
		
		return mav;
	} // home() end

	
	// 캘린더
	@RequestMapping(value="/planner/calendar.do", method=RequestMethod.GET)
	public ModelAndView calendar(PlannerDTO dto, Model model, final HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/calendar");

		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");


		if(dto.getPlan_code()!=null && dto.getPlan_code()!="") {
			mav.addObject("article", dao.plannerRead(dto));	// 플래너(planner) 정보
			mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트
			//mav.addObject("calendar", dao.calendar(dto)); // 캘린더(calendar) 리스트
		
		}else {
			// parameter가 없을 때
			
		}
		
		
		return mav;
	} // calendar() end
	
	
	// 사진
	@RequestMapping(value="/planner/gallery.do", method=RequestMethod.GET)
	public ModelAndView gallery(PlannerDTO dto, Model model, final HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/gallery");

		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");

		mav.addObject("article", dao.plannerRead(dto));	// 플래너(planner) 정보
		// TODO: 갤러리(gallery) 테이블 생성 + 리스트 추가하기 
		
		return mav;
	} // gallary() end
	
	
	// 일정
	@RequestMapping(value="/planner/schedule.do", method=RequestMethod.GET)
	public ModelAndView schedule(PlannerDTO dto, Model model, final HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/schedule");

		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");

		mav.addObject("article", dao.plannerRead(dto));	// 플래너(planner) 정보
		// TODO: 교통(mytansport) 리스트 추가하기
		// TODO: 숙소(myaccomm) 리스트 추가하기
		// TODO: 티켓(myticket) 리스트 추가하기
		// TODO: 투어(mytour) 리스트 추가하기
		
		return mav;
	} // schedule() end
	
	
	// 일일경로
	@RequestMapping(value="/planner/course.do", method=RequestMethod.GET)
	public ModelAndView course(PlannerDTO dto, Model model, final HttpSession session) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("planner/course");

		// Session에 저장되있는 id 가져오기
		String m_id=(String)session.getAttribute("session_m_id");

		mav.addObject("article", dao.plannerRead(dto));	// 플래너(planner) 정보
		mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트
		mav.addObject("csplist", dao.courseplanList(dto));	// 경로계획(courseplan) 리스트
		mav.addObject("placelist", dao.placeList());	// 관광지(place) 리스트
		
		return mav;
	} // course() end
	
}
