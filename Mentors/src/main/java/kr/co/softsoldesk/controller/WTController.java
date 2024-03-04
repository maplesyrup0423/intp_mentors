package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.beans.WTT_Bean;
import kr.co.softsoldesk.service.WTService;
import kr.co.softsoldesk.service.WTT_Service;


@Controller
@RequestMapping("/WT")
public class WTController {
	
@Autowired
private WTService wtService;

@Autowired
private WTT_Service wtt_Service;


	@GetMapping("/WT_list") // 연수 목록
	public String WT_list(Model model) {
		List<WTBean> wtList = wtService.getWTList();
		model.addAttribute("wtList", wtList);
		
		return "WT/WT_list";
	}

	@GetMapping("/WT_info") // 연수 상세
	public String WT_info(@RequestParam("WT_Key")String WT_Key, Model model) {
		WTBean wtInfoBean = wtService.getWTInfo(WT_Key);
		model.addAttribute("wtInfoBean",wtInfoBean);
		
		return "WT/WT_info";
	}

	@GetMapping("/WT_my_room") // 나의 강의실
	public String WT_my_room(Model model) {
		
		
		//막약 라디오버튼이 0일경우
		List<WTT_Bean> wttList=wtt_Service.addMyRoomAll();
		model.addAttribute("wttList",wttList);
		System.out.println("리스트 사이즈"+wttList.size());
		
		
		//TODO 나머지 경우 처리해야함
		
		
		return "WT/WT_my_room";
	}


}
