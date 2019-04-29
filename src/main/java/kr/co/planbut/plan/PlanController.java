package kr.co.planbut.plan;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.common.CityDTO;
import kr.co.planbut.common.PlannerDTO;


@Controller
public class PlanController {

	@Autowired
	private PlanDAO dao;

	public PlanController() {
		;
	}// planController() end
	
	
	@RequestMapping(value="/plan/plan.do", method=RequestMethod.GET)
	public ModelAndView plan(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/plan");
		
		if(dto.getPlan_code()!=null) {
			// parameter가 있을 때 (폼 전송)
			System.out.println("★생성된 플래너 불러오기");
			System.out.println(dto.getPlan_code());
			
			mav.addObject("article", dao.read(dto));	// 플래너(planner) 정보
			mav.addObject("cplist", dao.cityplanList(dto));	// 도시계획(cityplan) 리스트 -> 수정 시
			
		}else {
			// parameter가 없을 때
			System.out.println("★플래너 추가 시작");
		}
		
		return mav;
	}// plan() end
	
	
	@RequestMapping(value="/plan/plan.do", method=RequestMethod.POST)
	public ModelAndView planproc(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/plan");

		int count=dao.create(dto);
		
		if(count!=0) {
			System.out.println("★추가 성공");
			dto=dao.read(dto);
			mav.addObject("article", dto);
			mav.setViewName("redirect:/plan/plan.do?plan_code="+dto.getPlan_code());
		}else {
			System.out.println("★추가 실패");
		}
		
		return mav;
	}// planproc() end
	
	
	@RequestMapping(value="/plan/calendar.do", method=RequestMethod.GET)
	public ModelAndView calendar(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/calendar");
		return mav;
	}// calendar() end
	
	
	@RequestMapping(value="/plan/course.do", method=RequestMethod.GET)
	public ModelAndView course(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/course");
		dto=dao.read(dto);
		mav.addObject("article", dto);
		return mav;
	}// course() end
	
	
	@RequestMapping(value="/plan/planTest.do", method=RequestMethod.GET)
	public ModelAndView planTest(Model model) {
		ModelAndView mav = new ModelAndView();
		ArrayList<CityDTO> CityDTOs = dao.getCitys();
		
		mav.setViewName("plan/planTest");
		mav.addObject("CityDTOs", CityDTOs);
		return mav;
	}//planTest end
	
	
	@RequestMapping(value="/plan/planTest.do", method=RequestMethod.POST)
	public ModelAndView planTestResult(Model model) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("plan/planTestResult");
		return mav;
	}//planTestResult end
	
}// class end
