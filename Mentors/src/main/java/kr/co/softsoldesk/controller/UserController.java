package kr.co.softsoldesk.controller;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.service.TeacherService;

@Controller
@RequestMapping("/user")
public class UserController {
	

	@Autowired
	private TeacherService teacherService;
	
	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;
	
	
	@GetMapping("/Login")
	public String Login() {
		return "user/Login";
	}
	
	@GetMapping("/Find_ID")
	public String Find_ID() {
		return "user/Find_ID";
	}
	
	@GetMapping("/Find_Password")
	public String Find_Password() {
		return "user/Find_Password";
	}
	
	@GetMapping("/Sign_up")
	public String Sign_up() {
		return "user/Sign_up";
	}
	
	

}
