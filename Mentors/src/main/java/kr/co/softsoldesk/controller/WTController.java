package kr.co.softsoldesk.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

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
	
	@Resource(name = "tempCategoryBean")
	private WTBean tempCategoryBean;
	
	

	@GetMapping("/WT_list") // 연수 목록
	public String WT_list(Model model) {
		List<WTBean> wtList = wtService.getWTList();
		model.addAttribute("wtList", wtList);

		return "WT/WT_list";
	}

	@GetMapping("/WT_info") // 연수 상세
	public String WT_info(@RequestParam("WT_Key") String WT_Key, Model model) {
		WTBean wtInfoBean = wtService.getWTInfo(WT_Key);
		model.addAttribute("wtInfoBean", wtInfoBean);

		return "WT/WT_info";
	}

	@GetMapping("/WT_my_room") // 나의 강의실
	public String WT_my_room(Model model) {

	
		// 막약 라디오버튼이 0일경우
		List<WTT_Bean> wttList = wtt_Service.addMyRoomAll();
		model.addAttribute("wttList", wttList);
		System.out.println("리스트 사이즈" + wttList.size());
		int totel_ALL = wttList.size();
		model.addAttribute("totel_ALL", totel_ALL);

		// TODO 나머지 경우 처리해야함

		return "WT/WT_my_room";
	}
/*
	@RequestMapping(value = "/my_room", method = { RequestMethod.POST })
	public String test(@RequestParam(value = "btnValue", required = false) String btnValue) {

		System.out.println("btnValue ㅎㅎ : " + btnValue);
		return "WT/WT_my_room";
	}
	  @RequestMapping(value="/my_room", method=RequestMethod.POST)
	    @ResponseBody
	    public String stringify(@RequestParam("btnValue")String btnValue) {
		  System.out.println("btnValue ㅎㅎ : " + btnValue);
			return "WT/WT_my_room";
	    }*/
	
	
	@GetMapping("/WT_list_category")
	public String WT_list_category(@RequestParam("wt_Tag_Time") int wt_Tag_Time,
									@RequestParam("wt_Tag_School") int wt_Tag_School,
									@RequestParam("wt_Tag_TypeCategory") int wt_Tag_TypeCategory,
									Model model) {
		
		// TODO 값 3개 일단 받아와서 if문으로
		if(wt_Tag_School == 0 && wt_Tag_Time ==0 && wt_Tag_TypeCategory ==0) {
			List<WTBean> wtList = wtService.getWTList();
			model.addAttribute("wtList", wtList);
			
			return "WT/WT_list";
		}else if(wt_Tag_School != 0 && wt_Tag_Time ==0 && wt_Tag_TypeCategory ==0) {
			List<WTBean> wtList = wtService.getSchool(wt_Tag_School);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}else if(wt_Tag_School == 0 && wt_Tag_Time !=0 && wt_Tag_TypeCategory ==0) {
			List<WTBean> wtList = wtService.getTime(wt_Tag_Time);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}else if(wt_Tag_School != 0 && wt_Tag_Time ==0 && wt_Tag_TypeCategory !=0) {
			List<WTBean> wtList = wtService.getCategory(wt_Tag_TypeCategory);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}else if(wt_Tag_School != 0 && wt_Tag_Time !=0 && wt_Tag_TypeCategory ==0) {
			List<WTBean> wtList = wtService.getSchoolNTime(wt_Tag_School, wt_Tag_Time);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}else if(wt_Tag_School != 0 && wt_Tag_Time ==0 && wt_Tag_TypeCategory !=0) {
			List<WTBean> wtList = wtService.getSchoolNCategory(wt_Tag_School,wt_Tag_TypeCategory);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}else if(wt_Tag_School == 0 && wt_Tag_Time !=0 && wt_Tag_TypeCategory !=0) {
			List<WTBean> wtList = wtService.getTimeNCategory(wt_Tag_Time, wt_Tag_TypeCategory);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}else{
			List<WTBean> wtList = wtService.getAllTag(wt_Tag_School, wt_Tag_Time, wt_Tag_TypeCategory);
			model.addAttribute("wtList", wtList);

			return "WT/WT_list_category";
		}

	}
	
	
}
