package kr.co.softsoldesk.controller;

import java.util.List;

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

import kr.co.softsoldesk.beans.ClassBean;
import kr.co.softsoldesk.beans.NotificationBean;
import kr.co.softsoldesk.beans.QnAqBean;
import kr.co.softsoldesk.beans.WTT_Bean;
import kr.co.softsoldesk.service.ClassService;
import kr.co.softsoldesk.service.NotificationService;
import kr.co.softsoldesk.service.QnAqService;
import kr.co.softsoldesk.service.WTT_Service;

@Controller
@RequestMapping("/class")
public class ClassController {

	@Autowired
	private ClassService classService;

	@Autowired
	private WTT_Service wtt_Service;

	@Autowired
	private NotificationService notificationService;
	
	@Autowired
	private QnAqService qnAqService;

	@GetMapping("/class_home_center_home")
	public String class_home_center_home(@RequestParam("wtt_Key") String wtt_Key, Model model) {

		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);

		// % 정보 2개 단계에서 소수점 절삭할것
		int video_progressRound = (int) Math.floor(wttBean.getVideo_progress());
		int progressRound = (int) Math.floor(wttBean.getProgress());
		System.out.println("video_progressRound : " + video_progressRound);
		System.out.println("progressRound : " + progressRound);
		System.out.println("시청 시간 " + wttBean.getWtt_viewing_time());

		model.addAttribute("video_progressRound", video_progressRound);
		model.addAttribute("progressRound", progressRound);

		String wttCompletion = classService.getWttCompletion(wtt_Key);
		model.addAttribute("wttCompletion", wttCompletion); // 강의 상태

		double a = Math.round(wttBean.getTimeVprogressFinal() * 10) / 10.0;
		model.addAttribute("a", a);

		return "class/class_home_center_home";
	}

	@GetMapping("/class_home_center_test")
	public String class_home_center_test(@RequestParam("wtt_Key") String wtt_Key, Model model) {
		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);
		int aa = classService.getTest_aa(wtt_Key);
		model.addAttribute("aa", aa);

		return "class/class_home_center_test";
	}


	@GetMapping("/class_video")
	public String class_video(@RequestParam("wtt_Key") String wtt_Key, Model model) {
		WTT_Bean tempWttBean = classService.getWtInfo(wtt_Key);
		System.out.println("시청 시간 " + tempWttBean.getWtt_viewing_time());
		model.addAttribute("tempWttBean", tempWttBean);
		model.addAttribute("wtt_Key", wtt_Key);

		return "class/class_video";
	}

	@GetMapping("/class_video_save")
	public String class_video_save(@RequestParam("wtt_Key") String wtt_Key,
			@RequestParam("wtt_viewing_time") String wtt_viewing_time, Model model) {
		model.addAttribute("wtt_Key", wtt_Key);

		String a = wtt_viewing_time;
		System.out.println(a);
		System.out.println(a.length());
		String m = a.substring(0, 2); // 01
		System.out.println(m);
		String s = a.substring(5, 7); // 22
		System.out.println(s);
		int mm = Integer.parseInt(m);// 1
		System.out.println(mm);
		int ss = Integer.parseInt(s);// 22
		System.out.println(ss);
		int time = (mm * 60) + ss;// 82
		System.out.println(time);
		classService.updateViewTime(time, wtt_Key);

		// 영상 끌때마다 응시조건 업데이트
		WTT_Bean wb = wtt_Service.getWTT_Bean(wtt_Key);

		if (wb.getVideo_progress() >= 90) {
			classService.updateTestAA(1, wtt_Key);
		}

		return "class/class_video_save";
	}

	@GetMapping("/class_test")
	public String class_test(@RequestParam("wtt_Key") String wtt_Key, Model model) {
		model.addAttribute("wtt_Key", wtt_Key);
		return "class/class_test";
	}

	@GetMapping("/class_answer")
	public String class_answer(@RequestParam("teat_a1") int teat_a1, @RequestParam("teat_a2") int teat_a2,
			@RequestParam("teat_a3") int teat_a3, @RequestParam("teat_a4") int teat_a4,
			@RequestParam("teat_a5") int teat_a5, @RequestParam("teat_a6") int teat_a6,
			@RequestParam("teat_a7") int teat_a7, @RequestParam("teat_a8") int teat_a8,
			@RequestParam("teat_a9") int teat_a9, @RequestParam("teat_a10") int teat_a10,
			@RequestParam("wtt_Key") String wtt_Key, Model model) {
		ClassBean tempClassBean = new ClassBean();
		tempClassBean.setTeat_a1(teat_a1);
		tempClassBean.setTeat_a2(teat_a2);
		tempClassBean.setTeat_a3(teat_a3);
		tempClassBean.setTeat_a4(teat_a4);
		tempClassBean.setTeat_a5(teat_a5);
		tempClassBean.setTeat_a6(teat_a6);
		tempClassBean.setTeat_a7(teat_a7);
		tempClassBean.setTeat_a8(teat_a8);
		tempClassBean.setTeat_a9(teat_a9);
		tempClassBean.setTeat_a10(teat_a10);
		tempClassBean.setWtt_Key(wtt_Key);
		classService.updateAnswer(tempClassBean);
		System.out.println("성공");

		ClassBean tcb = classService.getQ(wtt_Key);

		if (tcb.getTeat_q1() == teat_a1) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("01 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q2() == teat_a2) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("02 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q3() == teat_a3) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("03 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q4() == teat_a4) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("04 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q5() == teat_a5) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("05 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q6() == teat_a6) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("06 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q7() == teat_a7) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("07 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q8() == teat_a8) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("08 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q9() == teat_a9) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("09 정답 : " + tcb.getCnt());
		}
		if (tcb.getTeat_q10() == teat_a10) {
			tcb.setCnt(tcb.getCnt() + 1);
			System.out.println("10 정답 : " + tcb.getCnt());
		}

		classService.updateScore((tcb.getCnt() * 10), wtt_Key); // 채점

		WTT_Bean wb = wtt_Service.getWTT_Bean(wtt_Key);

		if (wb.getWtt_test_result() <= 60) {
			classService.updateWttCompletion(3, wtt_Key);
		} else {
			classService.updateWttCompletion(1, wtt_Key);
		}

		return "class/class_answer";
	}

	//----------------------------------------------------------------------

	@GetMapping("/QnAlist")
	public String QnAlist(@RequestParam("wtt_Key") String wtt_Key, Model model) {
		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);
		String wttK=wttBean.getWt_Key();
		List<QnAqBean> qnAqBeanList = qnAqService.getQList(wttK);
		model.addAttribute("qnAqBeanList",qnAqBeanList);
		
		return "class/QnAlist";
	}

	@GetMapping("/Notification")
	public String Notification(@RequestParam("wtt_Key") String wtt_Key, Model model) {
		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);
		String wttK=wttBean.getWt_Key();
		List<NotificationBean> notificationBeanList = notificationService.getNotiList(wttK);
		model.addAttribute("notificationBeanList",notificationBeanList);
		return "class/Notification";
	}
	
	
	@GetMapping("/Notification_D")
	public String Notification_D(@RequestParam("wtt_Key") String wtt_Key, @RequestParam("noti_Key") String noti_Key, Model model) {
		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);
		
		NotificationBean notificationBean=notificationService.getNoti(noti_Key);
		model.addAttribute("notificationBean",notificationBean);
		
		
		return "class/Notification_D";
	}
	
	@GetMapping("/QnAlist_insert")
	public String QnAlist_insert(@Valid @ModelAttribute("qList")QnAqBean qList, @RequestParam("wtt_Key")String wtt_Key, Model model) {
		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);
		return "class/QnAlist_insert";
	}
	@PostMapping("/QnAlist_insert_pro")
	public String QnAlist_insert_pro(@Valid @ModelAttribute("qList")QnAqBean qList,
			BindingResult result,@RequestParam("wtt_Key")String wtt_Key, Model model) {
		WTT_Bean wttBean = wtt_Service.getWTT_Bean(wtt_Key);
		model.addAttribute("wttBean", wttBean);
		if(result.hasErrors()) {
		 return  "class/QnAlist";
		}
		System.out.println(qList.getQ_Title());
		System.out.println(qList.getQ_content());
		
		qnAqService.insertQ(wtt_Key, qList.getQ_Title(), qList.getQ_content());
		String qk= qnAqService.getAK(qList.getQ_Title(), qList.getQ_content());
		qnAqService.insertA(qk);
		return "class/QnAlist";
	}
}