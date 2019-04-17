package kr.co.planbut.planner;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class PlannerController {
	
	@Autowired
	private PlannerDAO dao;
	
	public PlannerController() {
		System.out.println("Start NoticeController");
	}
	
	
	/*
	@RequestMapping(value="[요청명령어]", method=RequestMethod.[GET|POST], produces="text/plain; charset='UTF-8'")
	 */
	
	// 목록 조회
	@RequestMapping(value="notice/list.do", method=RequestMethod.GET)
	public ModelAndView list(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/list");

		mav.addObject("msg", "전체 글 수");
		mav.addObject("count", dao.count());
		mav.addObject("list", dao.list());	// list 전달
		
		return mav;
	} // list() end
	
	
	// 목록 조회 (검색)
	@RequestMapping(value="/notice/search.do", method=RequestMethod.GET)
	public ModelAndView search(String col, String keyword) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/list");
		
		String colstr;
		if(col.equals("title")) colstr="내용";
		else if(col.equals("rname")) colstr="작성자";
		else colstr="내용+작성자";
		
		mav.addObject("msg", colstr+"에서 '"+keyword+"' 검색 결과");
		mav.addObject("count", dao.count());
		mav.addObject("list", dao.list(col,keyword));	// list 전달
		mav.addObject("col", col);
		mav.addObject("keyword", keyword);
		
		return mav;
	} // list() end

	
	// 상세 조회
	@RequestMapping(value="/notice/read.do", method=RequestMethod.GET)
	public ModelAndView read(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/read");
		System.out.println(dto.getNoticeno());
		
		dto=dao.read(dto);
		
		mav.addObject("article", dto);	// list 전달
		
		return mav;
	} // list() end
	
	
	// 글 추가 (폼)
	@RequestMapping(value="/notice/create.do", method=RequestMethod.GET)
	public ModelAndView create(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/createForm");
		return mav;
	} // create() end
	
	
	// 글 추가
	@RequestMapping(value="/notice/create.do", method=RequestMethod.POST)
	public ModelAndView createProc(PlannerDTO dto, HttpServletRequest req) {
		ModelAndView mav=new ModelAndView();
//		mav.setViewName("redirect:/notice/list.do");
		mav.setViewName("notice/msgView");

		int count=dao.create(dto);
		
		if(count==0) {
			mav.addObject("msg1", "등록이 실패하였습니다. ");
			mav.addObject("img", "<img src='../images/original_17.gif'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back()'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do\"'>");
		}else {
			mav.addObject("title", dto.getTitle());
			mav.addObject("msg1", "등록되었습니다. ");
			mav.addObject("img", "<img src='../images/muzi2.gif'>");
			mav.addObject("link1", "<input type='button' value='계속 등록' onclick='location.href=\"./create.do?noticeno="+dto.getNoticeno()+"\"'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do\"'>");
		}
		
		mav.addObject("count", count);
		
		return mav;
	} // createProc() end
	
	
	// 글 수정 (폼)
	@RequestMapping(value="notice/update.do", method=RequestMethod.GET)
	public ModelAndView update(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("notice/updateForm");

		dto=dao.read(dto);
		mav.addObject("article", dto);
		
		return mav;
	} // update() end
	
	
	// 글 수정
	@RequestMapping(value="notice/update.do", method=RequestMethod.POST)
	public ModelAndView updateProc(PlannerDTO dto, HttpServletRequest req) {
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("notice/msgView");
		
		// DB 수정 및 기존 파일 삭제 수행
		int result;
		result=dao.update(dto);
		
		if(result==0) {
			mav.addObject("msg1", "수정 실패하였습니다. ");
			mav.addObject("img", "<img src='../images/original_17.gif'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back()'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do\"'>");
		}else {
			mav.addObject("msg1", "수정되었습니다. ");
			mav.addObject("img", "<img src='../images/muzi2.gif'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do\"'>");
		}
		
		return mav;
	} // updateProc() end
	
	
	// 글 삭제 (확인창)
	@RequestMapping(value="notice/delete.do", method=RequestMethod.GET)
	public ModelAndView delete(PlannerDTO dto) {
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("notice/delete");
		
		mav.addObject("article", dto);
		
		return mav;
	} // delete() end
	
	
	// 글 삭제
	@RequestMapping(value="notice/delete.do", method=RequestMethod.POST)
	public ModelAndView deleteProc(PlannerDTO dto, HttpServletRequest req) {
		ModelAndView mav=new ModelAndView();
		
		mav.setViewName("notice/msgView");
		
		int result=dao.delete(dto);
		
		if(result==0) {
			mav.addObject("msg1", "삭제 실패하였습니다. ");
			mav.addObject("img", "<img src='../images/original_17.gif'>");
			mav.addObject("link1", "<input type='button' value='다시시도' onclick='javascript:history.back()'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do\"'>");
		}else {
			mav.addObject("msg1", "삭제되었습니다. ");
			mav.addObject("img", "<img src='../images/muzi2.gif'>");
			mav.addObject("link2", "<input type='button' value='목록' onclick='location.href=\"./list.do\"'>");
		}
		
		return mav;
	} // deleteProc() end
	
	
}
