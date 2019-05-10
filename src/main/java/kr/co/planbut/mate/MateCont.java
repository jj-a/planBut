package kr.co.planbut.mate;

import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;


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
	} // recBbsChangeProc() end
    
    @RequestMapping( value  = "/mypage/recRecmChange.do", 
	 	 	 method = RequestMethod.GET )
	public ModelAndView recRecmChange(ApplyRecm_DTO dto) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:/mypage/mateReceive.do");
	int count = dao.recRecmChange(dto);
	mav.addObject("count", count);
	return mav;
	} // recRecmChange() end

    @RequestMapping( value  = "/mypage/applyBbsMate.do", 
	 	 	 method = RequestMethod.GET )
	public ModelAndView applyBbsMate(MateDTO dto) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("mypage/applyBbsMate");
	int count = dao.applyBbsMate(dto);
	mav.addObject("count", count);
	mav.addObject("dto", dto);
	return mav;
	} // applyBbsMate() end
    
    @RequestMapping( value  = "/mypage/applyBbs.do", 
	 	 	 method = RequestMethod.POST )
	public ModelAndView applyBbsMateProc(ApplyBbs_DTO dto, ApplyRecm_DTO dto2) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:/mypage/mateReceive.do");
	int count1 = dao.applyBbs(dto);
	int count2 = dao.applyRecm(dto2);
	mav.addObject("count", count1);
	mav.addObject("count", count2);
	mav.addObject("dto", dto);
	return mav;
	} // applyBbsProc() end
/*
    @RequestMapping( value  = "/mypage/applyBbs.do", 
	 	 	 method = RequestMethod.POST )
	public ModelAndView applyBbsMateProc(ApplyRecm_DTO dto) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:/mypage/mateReceive.do");
	int count = dao.applyRecm(dto);
	mav.addObject("count", count);
	mav.addObject("dto", dto);
	return mav;
	} // applyBbsProc() end
*/
    @RequestMapping( value = "/mypage/delete.do", 
                  method = RequestMethod.GET )
    public ModelAndView deleteProc(MateDTO dto) {
       ModelAndView mav = new ModelAndView();
       System.out.println(dto);
       mav.setViewName("redirect:/mypage/mateReceive.do");
       int count = dao.delete(dto);
       mav.addObject("count", count);
       mav.addObject("dto", dto);
       return mav;
    } // deleteProc() end
    
    @RequestMapping( value  = "/mate/mateChat.do", 
    				 method = RequestMethod.GET )
	public ModelAndView mateChatForm(String nowTime) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("mate/mateChat");
	nowTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	ArrayList<ChatDTO> mateChat = dao.mateChat(nowTime);
	System.out.println(nowTime);
	mav.addObject("nowTime", nowTime);
	mav.addObject("mateChat", mateChat);
	System.out.println(mateChat);
	return mav;
	} // mateChatForm() end
    
    @RequestMapping( value  = "/mate/mateChat.do", 
    				 method = RequestMethod.POST )
	public ModelAndView mateChat(String nowTime) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("redirect:/mate/mateChat.do");
	nowTime = new SimpleDateFormat("yyyy-MM-dd").format(new Date());
	ArrayList<ChatDTO> mateChat = dao.mateChat(nowTime);
	
	mav.addObject("nowTime", nowTime);
	mav.addObject("mateChat", mateChat);
	return mav;
	} // mateChat() end
    
    @RequestMapping( value  = "/mate/submit.do", 
				 	 method = RequestMethod.GET )
	public ModelAndView submitForm(String chatName, String chatContent) {
	ModelAndView mav = new ModelAndView();
	mav.setViewName("mate/mateChat");
	
	return mav;
	} // submitForm() end
    
    @RequestMapping( value  = "/mate/submit.do", 
    				 method = RequestMethod.POST )
    @ResponseBody
	public ModelAndView submit(@RequestParam("chatName") String chatName, @RequestParam("chatContent") String chatContent, ChatDTO dto) {
    	ModelAndView mav = new ModelAndView();
    	mav.setViewName("redirect:/mate/mateChat.do");
    	int count = dao.submit(dto);
    	
    	mav.addObject("count", count);
    	return mav;
    }
   
    
} // class end
