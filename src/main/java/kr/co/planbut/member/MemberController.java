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
	
	@RequestMapping(value="member/login.do", method=RequestMethod.POST )
	public ModelAndView loginProc(MemberDTO dto, Model model, HttpServletRequest request) {
		String result = dao.login(dto);//로그인 result는 m_type		
		ModelAndView mav;
		String url = request.getHeader("referer");
		int start = url.lastIndexOf("/planbut/");
		String addr = url.substring(start); //이전페이지 주소(~~.do)
		
		if (result.equals("fale")) {//로그인 실패시 msg넘김
			mav=new ModelAndView();	
			mav.setViewName("msgView");
			mav.addObject("msg", "<h3>로그인에 '실패' 했습니다.</h3>");	
			mav.addObject("msg1", "<h4>아이디 또는 비밀번호를 확인해 주세요</h4>");	
			mav.addObject("msg2", "<button onclick='javascript:history.back()'>다시시도</button> ");		
		} else {//로그인 성공시 세션 적용			
			RedirectView rv = new RedirectView(addr);
			rv.setExposeModelAttributes(false);
			mav=new ModelAndView(rv);	
			model.addAttribute("session_m_id", dto.getM_id());
			model.addAttribute("session_m_type", result);			
		}
		
		return mav;
	} // loginProc() end
	
	@RequestMapping(value="member/logout.do", method=RequestMethod.GET)
	public ModelAndView logout(MemberDTO dto, SessionStatus status, HttpServletRequest request) {
		status.setComplete();//세션 지우기
		
		String url = request.getHeader("referer");
		int start = url.lastIndexOf("/planbut/");
		String addr = url.substring(start); //이전페이지 주소(~~.do)
		
		RedirectView rv = new RedirectView(addr);
		rv.setExposeModelAttributes(false);
		ModelAndView mav=new ModelAndView(rv);		
		
		return mav;
	} // logout() end
	
	
	
	
	
}
