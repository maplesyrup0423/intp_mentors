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

		// 첫화면은 전체
			List<WTT_Bean> wttList = wtt_Service.addMyRoomAll();
			model.addAttribute("wttList", wttList);
			System.out.println("리스트 사이즈" + wttList.size());
			int totel_select = wttList.size();
			model.addAttribute("totel_select",totel_select);
			model.addAttribute("totel_ALL", totel_select);
			
			//카테고리별 강의 수
			//학습중
			List<WTT_Bean> wttList0=wtt_Service.addMyRoomSelect(0);
			int totel_0 = wttList0.size();
			model.addAttribute("totel_0", totel_0);
			//수료완료
			List<WTT_Bean> wttList1=wtt_Service.addMyRoomSelect(1);
			int totel_1 = wttList1.size();
			model.addAttribute("totel_1", totel_1);
			//기간만료
			List<WTT_Bean> wttList2=wtt_Service.addMyRoomSelect(2);
			int totel_2 = wttList2.size();
			model.addAttribute("totel_2", totel_2);

		return "WT/WT_my_room";
	}

	@GetMapping("/WT_my_room_btn") // 나의 강의실
	public String WT_my_room_btn(Model model, @RequestParam("Completion") int Completion) {

		System.out.println("Completion : " + Completion);
		//총 강의 수 구하기
		List<WTT_Bean> wttList3 = wtt_Service.addMyRoomAll();
		int totel_ALL = wttList3.size();
		model.addAttribute("totel_ALL", totel_ALL);
		//카테고리별 강의 수
		//학습중
		List<WTT_Bean> wttList0=wtt_Service.addMyRoomSelect(0);
		int totel_0 = wttList0.size();
		model.addAttribute("totel_0", totel_0);
		//수료완료
		List<WTT_Bean> wttList1=wtt_Service.addMyRoomSelect(1);
		int totel_1 = wttList1.size();
		model.addAttribute("totel_1", totel_1);
		//기간만료
		List<WTT_Bean> wttList2=wtt_Service.addMyRoomSelect(2);
		int totel_2 = wttList2.size();
		model.addAttribute("totel_2", totel_2);
		
		
		
		if (Completion == 3) {
			List<WTT_Bean> wttList = wtt_Service.addMyRoomAll();
			model.addAttribute("wttList", wttList);
			int totel_select = wttList.size();
			model.addAttribute("totel_select",totel_select);
		}else{
			List<WTT_Bean> wttList=wtt_Service.addMyRoomSelect(Completion);
			model.addAttribute("wttList", wttList);
			int totel_select = wttList.size();
			model.addAttribute("totel_select",totel_select);
		}
		return "WT/WT_my_room";
	}
	
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
		}else if(wt_Tag_School == 0 && wt_Tag_Time ==0 && wt_Tag_TypeCategory !=0) {
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
