package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.service.WTService;

@Controller
public class MainController {
	
	@Autowired
	private WTService wtService;
	
	@GetMapping("/main")
	public String main(Model model) {
		
		List<WTBean> wtList = wtService.getWTList();
		model.addAttribute("wtList", wtList);
		
		List<WTBean> wt1 = wtService.getSchool(1); //초
		model.addAttribute("wt1",wt1);
		
		List<WTBean> wt2 = wtService.getSchool(2); //중
		model.addAttribute("wt2",wt2);
		
		List<WTBean> wt3 = wtService.getSchool(3); //고
		model.addAttribute("wt3",wt3);
		
		List<WTBean> wt4 = wtService.getCategory(1); //교과지도
		model.addAttribute("wt4",wt4);
		
		List<WTBean> wt5 = wtService.getCategory(2); //학습지도
		model.addAttribute("wt5",wt5);
		
		List<WTBean> wt6 = wtService.getCategory(3); //생활지도
		model.addAttribute("wt6",wt6);
		
		return "main";
	}

}
