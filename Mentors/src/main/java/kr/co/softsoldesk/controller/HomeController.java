package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import kr.co.softsoldesk.beans.TestBean;
import kr.co.softsoldesk.service.TestService;

@Controller
public class HomeController {
	
	/*
	 * @Resource(name="loginUserBean") private UserBean loginUserBean;
	 */
	@Autowired
	TestService testService;
	
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "main";
	}

}
