package kr.co.planbut;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class TestController {
	
	@RequestMapping(value = "/test/test.do", method = RequestMethod.GET)
	public ModelAndView test() {
		ModelAndView mav=new ModelAndView();
		mav.setViewName("test/test");
		return mav;
	}
	
}
