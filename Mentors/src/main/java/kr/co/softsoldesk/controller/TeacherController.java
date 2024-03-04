package kr.co.softsoldesk.controller;

import java.util.Arrays;

import javax.annotation.Resource;
import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.service.TeacherService;

@Controller
@RequestMapping("/user")
public class TeacherController {
	

	@Autowired
	private TeacherService teacherService;
	
	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;
	
	@GetMapping("/Login")
	public String Login(@ModelAttribute("tempLoginTeacherBean") TeacherBean tempLoginTeacherBean,
			@RequestParam(value="fail", defaultValue = "false") boolean fail, Model model) {
		
		model.addAttribute("fail",fail);
		return "user/Login";
	}
	
	@GetMapping("/logout")
	public String logout() {
		loginTeacherBean.setTeacherLogin(false);
		return "user/logout";
	}
	
	@GetMapping("/Mypage")
	public String Mypage() {
		return "user/Mypage";
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
	public String Sign_up(@ModelAttribute("Sign_upTeacherBean") TeacherBean Sign_upTeacherBean,
							Model model) {
		
		return "user/Sign_up";
	}
	
	@GetMapping("/Mypage_change")
	public String Mypage_change() {
		return "user/Mypage_change";
	}
	
	@PostMapping("/Login_pro")
	public String Login_pro(@Valid @ModelAttribute("tempLoginTeacherBean") 
							TeacherBean tempLoginTeacherBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/Login";
		}
		teacherService.getLoginTeacherInfo(tempLoginTeacherBean);
		
		if(loginTeacherBean.isTeacherLogin() == true) {
			return "user/Login_success";
		}else {			
			return "user/Login_fail";
		}
	}
	


}
