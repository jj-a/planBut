package kr.co.planbut.member;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;

import kr.co.planbut.common.MemberDTO;

@Controller
@SessionAttributes({"session_m_id","session_m_type"})
public class MemberController {
	
	@Autowired
	private MemberDAO dao;
	
	public MemberController() {
		System.out.println("Start MemberController");
	}
	
	
	/*
	@RequestMapping(value="[요청명령어]", method=RequestMethod.[GET|POST], produces="text/plain; charset='UTF-8'")
	 */
	
	// 플래너 홈
	@RequestMapping(value="member/login.do", method=RequestMethod.GET)
	public ModelAndView loginForm() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("member/loginForm");
		
		return mav;
	} // home() end
	
	@RequestMapping(value="member/login.do", method=RequestMethod.POST )
	public ModelAndView loginProc(MemberDTO dto, Model model, HttpServletRequest request) {
		String result = dao.login(dto);
		
		//http://localhost:9090/planbut/plan/plan.do
		System.out.println(request.getHeader("referer"));
		String url = request.getHeader("referer");
		int start = url.lastIndexOf("/planbut/");
		//int end = url.indexOf(".do");
		String addr = url.substring(start);
		System.out.println(addr);
		System.out.println("로그인 결과(m_type) : " + result);
		RedirectView rv = new RedirectView(addr);
		rv.setExposeModelAttributes(false);
		ModelAndView mav=new ModelAndView(rv);	
		
		if (result.equals("fale")) {
			mav.addObject("msg", "<script type=\"text/javascript\">alert(\"로그인실패\");javascript:history.back()</script>");
			mav.setViewName("redirect:"+addr);			
		} else {//로그인 성공시 세션 적용			
			model.addAttribute("session_m_id", dto.getM_id());
			model.addAttribute("session_m_type", result);
			mav.addObject("msg", "<script type=\"text/javascript\">alert(\"로그인 되었습니다.\");</script>");	
			
		}
		
		return mav;
	} // loginProc() end
	
	@RequestMapping(value="member/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(MemberDTO dto, SessionStatus status, HttpServletRequest request) {
		status.setComplete();//세션 지우기
		
		System.out.println(request.getHeader("referer"));
		String url = request.getHeader("referer");
		int start = url.lastIndexOf("/planbut/");
		String addr = url.substring(start);
		System.out.println(addr);
		
		RedirectView rv = new RedirectView(addr);
		rv.setExposeModelAttributes(false);
		ModelAndView mav=new ModelAndView(rv);		
		
		return mav;
	} // logout() end
	
	
	
	
	
}
