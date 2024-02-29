package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.softsoldesk.beans.TeacherBean;

@Controller
public class HomeController {
	
	/*
	 * @Resource(name="loginUserBean") private UserBean loginUserBean;
	 */
	
	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		System.out.println("홈컨트롤러 로그인 상태 값 : "+ loginTeacherBean.isTeacherLogin());
		Boolean loginCheck =loginTeacherBean.isTeacherLogin();
		model.addAttribute("loginCheck",loginCheck);
		return "main";
	}

}
