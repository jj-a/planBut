package kr.co.planbut.mateBbs;

import java.io.PrintWriter;
import java.util.ArrayList;

import javax.xml.ws.Response;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import kr.co.planbut.common.CityplanDTO;
import kr.co.planbut.common.PlannerDTO;
import net.utility.Utility;

@Controller
public class MateBbsCont {
	
	@Autowired
	MateBbsDAO dao;

	public MateBbsCont() {
		System.out.println("●●●●● MateBbsCont() 객체 생성 ●●●●●");
	}

	// 결과확인
	// -> http://localhost:9090/planbut/mate/create.do

	@RequestMapping( value = "/mate/create.do", 
					 method = RequestMethod.GET )
	public ModelAndView createForm(MateBbsDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mate/mateBbsForm");
		mav.addObject("b_no", dto.getB_no());

		return mav;
	} // createForm() end

	@RequestMapping( value = "/mate/create.do", 
					 method = RequestMethod.POST )
	public ModelAndView createProc(MateBbsDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mate/list.do");
		int count = dao.create(dto);
		mav.addObject("count", count);
		return mav;
	} // createProc() end

	@RequestMapping("/mate/list.do")
	public ModelAndView list(PlannerDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("mate/mateBbsList");
		// ArrayList<MateBbsDTO> list = dao.list();
		// mav.addObject("list", list); ㅡ▶ 밑에 한줄과 같은 의미
		mav.addObject("list", dao.list());
		mav.addObject("recmList", dao.recmList());
		mav.addObject("recmPeople", dao.recmPeople());
		
		return mav;
	} // list() end
	

   @RequestMapping( value="/mate/read.do", 
		   			method=RequestMethod.GET )
   public ModelAndView read(MateBbsDTO dto) {
      ModelAndView mav=new ModelAndView();
      mav.setViewName("mate/mateBbsList");
      dto=dao.read(dto);
      mav.addObject("dto", dto);
      return mav;
   }//list() end
   
   @RequestMapping( value = "/mate/update.do", 
		   			method = RequestMethod.GET )
   public ModelAndView updateForm(MateBbsDTO dto) {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("mate/mateBbsUpdate");
      dto=dao.read(dto);
      mav.addObject("dto", dto);
      return mav;
   } // updateForm() end
         
    @RequestMapping( value = "/mate/update.do", 
    				 method = RequestMethod.POST )
    public ModelAndView updateProc(MateBbsDTO dto) {
      ModelAndView mav = new ModelAndView();
      mav.setViewName("redirect:/mate/list.do");
      int count = dao.update(dto);
      mav.addObject("count", count);
      return mav;
    } // updateProc() end
	
	@RequestMapping( value = "/mate/delete.do", 
				 	 method = RequestMethod.GET )
	public ModelAndView deleteProc(MateBbsDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("redirect:/mate/list.do");
		int count = dao.delete(dto);
		mav.addObject("count", count);
		
		return mav;
	} // deleteProc() end
	
	
	/*
	@RequestMapping( value = "/notice/update.do", 
					 method = RequestMethod.GET )
	public ModelAndView updateForm(NoticeDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/updateForm");
		mav.addObject("dto", dto);

		return mav;
	} // updateForm() end

	@RequestMapping( value = "/notice/update.do", 
					 method = RequestMethod.POST )
	public ModelAndView updateProc(NoticeDTO dto) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/msgView");
		int count = dao.update(dto);
		if (count == 0) {
			mav.addObject("msg1", "<p>공지사항 수정 실패</p>");
			mav.addObject("img", "<img src='../images/fail.jpg' height='300' width='300'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back()'>");
			mav.addObject("link2", "<input type='button' value='그룹목록' onclick='location.href=\"./list.do\"'>");
		} else {
			mav.addObject("msg1", "<p>공지사항 수정 성공</p>");
			mav.addObject("img", "<img src='../images/update.png' height='300' width='300'>");
			mav.addObject("link2", "<input type='button' value='그룹목록' onclick='location.href=\"./list.do\"'>");
		} // if end
		return mav;
	} // updateProc() end
	
	@RequestMapping( value="/notice/search.do", 
					 method=RequestMethod.GET )
	public ModelAndView search(String col, String word) {
		ModelAndView mav = new ModelAndView();
		mav.setViewName("notice/list");
		ArrayList<NoticeDTO> list = dao.search(col, word);
		mav.addObject("list", list);
		return mav;
	}//search() end
*/	
} // class end 
