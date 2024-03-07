package kr.co.softsoldesk.controller;

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
	
	@PostMapping("/Login_pro")
	public String Login_pro(@Valid @ModelAttribute("tempLoginTeacherBean") 
							TeacherBean tempLoginTeacherBean, BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/Login";
		}
		
		teacherService.getLoginTeacherInfo(tempLoginTeacherBean);
		
		String admin_id = tempLoginTeacherBean.getTeacher_id();
		String admin_pw = tempLoginTeacherBean.getTeacher_Password();
		
		if(admin_id.equals("system1004")&&admin_pw.equals("1004!")) {
			return "admin/admin_welcome";
		}
		
		else {
		if(loginTeacherBean.isTeacherLogin() == true) {
			return "user/Login_success";
		}else {			
			return "user/Login_fail";
		}
		}
	}
	
	@GetMapping("/logout")
	public String logout() {
		loginTeacherBean.setTeacherLogin(false);
		return "user/logout";
	}
	
	@GetMapping("/Sign_up")
	public String Sign_up(@ModelAttribute("Sign_upTeacherBean") TeacherBean Sign_upTeacherBean) {
		
		return "user/Sign_up";
	}
	
	@PostMapping("/Sign_up_pro")
	public String Sign_up_pro(@Valid @ModelAttribute("Sign_upTeacherBean") TeacherBean Sign_upTeacherBean, 
			BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/sign_up";
		}
		
		//데이터베이스에 저장 및 회원가입 완료
		teacherService.addTeacherInfo(Sign_upTeacherBean);
		return "user/sign_up_success";
	}
	
	@GetMapping("/Find_ID")
	public String Find_ID(@ModelAttribute("tempFindIdBean") 
						  TeacherBean tempFindIdBean, Model model) {
		
		model.addAttribute("tempFindIdBean", tempFindIdBean);
		return "user/Find_ID";
	}
	
	@PostMapping("/Find_ID_pro")
	public String Find_ID_pro(@Valid @ModelAttribute("tempFindIdBean")
						  TeacherBean tempFindIdBean, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "Find_ID";
		}
		String getTeacher_Name = tempFindIdBean.getTeacher_Name();
		String getTeacher_Tel = tempFindIdBean.getTeacher_Tel();
		
		String getTeacher_Id = teacherService.getTeacherId(getTeacher_Name, getTeacher_Tel);
		
		model.addAttribute("getTeacher_Id", getTeacher_Id);
		System.out.println("안녕하세요.");
		System.out.println(getTeacher_Id);
		return "user/Find_ID_success";
	}
	
	
	
	@GetMapping("/Find_Password")
	public String Find_Password(@ModelAttribute("tempFindPwBean") 
								TeacherBean tempFindPwBean, Model model) {
		
		model.addAttribute("tempFindPwBean", tempFindPwBean);
		
		return "user/Find_Password";
	}
	
	@PostMapping("/Find_Password_pro")
	public String Find_Password_pro(@Valid @ModelAttribute("tempFindPwBean")
									TeacherBean tempFindPwBean, BindingResult result, Model model) {
		
		if(result.hasErrors()) {
			return "Find_Password";
		}
		String getTeacher_Id = tempFindPwBean.getTeacher_id();
		String getTeacher_Name = tempFindPwBean.getTeacher_Name();
		String getTeacher_Tel = tempFindPwBean.getTeacher_Tel();
		
		String getTeacher_Password = teacherService.getTeacherPw(getTeacher_Id, getTeacher_Name, getTeacher_Tel);
		
		model.addAttribute("getTeacher_Password", getTeacher_Password);
		System.out.println("안녕하세요.");
		System.out.println(getTeacher_Password);
		return "user/Find_Password_success";
		
	}
	
	@GetMapping("/Mypage")
	public String Mypage() {
		
		return "user/Mypage";
	}
		
	@GetMapping("/Mypage_change")
	public String Mypage_change(@ModelAttribute("modifyTeacherBean") TeacherBean modifyTeacherBean) {
			
		teacherService.getModifyTeacherinfo(modifyTeacherBean);
		
		
		return "user/Mypage_change";
		
	}

	@PostMapping("/Mypage_change_pro")
	public String Mypage_change_pro(@Valid @ModelAttribute("modifyTeacherBean") TeacherBean modifyTeacherBean,
									BindingResult result) {
		if(result.hasErrors()) {
			return "user/Mypage_change";
		}
		
		teacherService.modifyTeacherInfo(modifyTeacherBean);
		return "user/Mypage_change_success";
	}
	
	@GetMapping("/Password_change_confirm")
	public String Password_change_confirm(@ModelAttribute("pwChangeBean") TeacherBean pwChangeBean) {
		return "user/Password_change_confirm";
	}
	
	@GetMapping("/delete_account")
	public String delete_account(@ModelAttribute("deleteAccountBean") TeacherBean deleteAccountBean) {
		
		
		return "user/delete_account";
	}
	
	@PostMapping("/delete_account_pro")
	public String delete_account_pro(@Valid @ModelAttribute("deleteAccountBean") TeacherBean deleteAccountBean,
										BindingResult result) {
		
		if(result.hasErrors()) {
			return "user/delete_account";
		}
		
		if(loginTeacherBean.getTeacher_Password().equals(deleteAccountBean.getTeacher_Password())) {
			teacherService.deleteAccount(deleteAccountBean);
			return "user/delete_account_success";
		}
		else {
			return "user/delete_account_fail";
		}
		
	}
	
}
