package kr.co.planbut.mate;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.mateBbs.MateBbsDAO;
import kr.co.planbut.mateBbs.MateBbsDTO;

@Controller
public class MateCont {	
	
	@Autowired
	MateDAO dao;

	public MateCont() {
		System.out.println("●●●●● MateCont() 객체 생성 ●●●●●");
	} // MateCont() end
	
	// 내 동행 mypage -> mymate.do
    @RequestMapping("/mypage/mymate.do")
	public ModelAndView mateOk(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mypage/mymate");
		String id = (String)session.getAttribute("session_m_id");
		ArrayList<MateDTO> mateOk = dao.mateOk(id);
		mav.addObject("mateOk", mateOk);
		return mav;
	} // myMate() end
    
    @RequestMapping("/mypage/mateReceive.do")
	public ModelAndView mateReceive(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mate/mateReceive");

		String id = (String)session.getAttribute("session_m_id");
		ArrayList<ApplyBbs_DTO> myMateBbs = dao.myMateBbs(id);
		ArrayList<ApplyRecm_DTO> myMateRecm = dao.myMateRecm(id);
		
		mav.addObject("myMateBbs", myMateBbs);
		mav.addObject("myMateRecm", myMateRecm);
		return mav;
	} // mateReceive() end
    
    @RequestMapping("/mypage/mateApply.do")
	public ModelAndView mateApply(HttpSession session) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mate/mateApply");

		String id = (String)session.getAttribute("session_m_id");
		ArrayList<ApplyBbs_DTO> myMateApplyBbs = dao.myMateApplyBbs(id);
		ArrayList<ApplyRecm_DTO> myMateApplyRecm = dao.myMateApplyRecm(id);
		
		mav.addObject("myMateApplyBbs", myMateApplyBbs);
		mav.addObject("myMateApplyRecm", myMateApplyRecm);
		return mav;
	} // mateReceive() end
    
    @RequestMapping( value  = "/mypage/recBbsChange.do", 
			 	 	 method = RequestMethod.GET )
	public ModelAndView recBbsChange(ApplyBbs_DTO dto) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:/mypage/mateReceive.do");
	int count = dao.recBbsChange(dto);
	mav.addObject("count", count);
	
	return mav;
	} // deleteProc() end
    
    @RequestMapping( value  = "/mate/mateChat.do", 
    				 method = RequestMethod.POST )
	public ModelAndView mateChat(String nowTime) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("mate/mateChat");
	ArrayList<ChatDTO> mateChat = dao.mateChat(nowTime);
	
	mav.addObject("mateChat", mateChat);
	return mav;
	} // deleteProc() end
    
    @RequestMapping( value  = "/mate/submit.do", 
				 	 method = RequestMethod.GET )
	public ModelAndView submitForm(HttpServletRequest request, HttpServletResponse response, String chatName, String chatContent) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("mate/mateChat");
	chatName = request.getParameter(chatName);
	chatContent = request.getParameter(chatContent);
	
	mav.addObject("chatName", chatName);
	mav.addObject("chatContent", chatContent);
	return mav;
	} // deleteProc() end
    
    @RequestMapping( value  = "/mate/submit.do", 
    				 method = RequestMethod.POST )
	public ModelAndView submit(HttpServletRequest request, HttpServletResponse response, String chatName, String chatContent) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("mate/mateChat");
	chatName = request.getParameter(chatName);
	chatContent = request.getParameter(chatContent);
	
	int count = dao.submit(chatName, chatContent);
	
	mav.addObject("count", count);
	return mav;
	} // deleteProc() end
    
} // class end
