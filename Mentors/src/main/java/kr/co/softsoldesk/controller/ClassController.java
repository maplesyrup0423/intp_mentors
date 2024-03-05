package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.service.WTT_Service;

@Controller
@RequestMapping("/class")
public class ClassController {

	/*@Autowired
	private WTT_Service wtt_Service;*/

	@GetMapping("/class_home_center_home")
	public String class_home_center_home(@RequestParam("wtt_Key")String wtt_Key) {
		
		//TODO % 정보 2개 Math.round()로 컨트롤러 단계에서 소수점 절삭할것
		
		return "class/class_home_center_home";
	}

	@GetMapping("/class_home_center_test")
	public String class_home_center_test() {
		return "class/class_home_center_test";
	}

	@GetMapping("/QnAlist")
	public String QnAlist() {
		return "class/QnAlist";
	}

	@GetMapping("/Notification")
	public String Notification() {
		return "class/Notification";
	}

	@GetMapping("/class_video")
	public String class_video() {
		return "class/class_video";
	}

	@GetMapping("/class_test")
	public String class_test() {
		return "class/class_test";
	}

}