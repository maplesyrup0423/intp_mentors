package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.NotificationBean;
import kr.co.softsoldesk.service.NotificationService;

@Controller
@RequestMapping("/notification")
public class NotificationController {

	@Autowired
	private NotificationService notificationService;
	
	@GetMapping("/Notification")
	public String Notification(@RequestParam("noti_Key") int noti_Key,
			@RequestParam(value = "page", defaultValue = "1") int page,
			Model model) {
		
		model.addAttribute("noti_Key", noti_Key);
		model.addAttribute("page", page);
		//임시로 3으로 대체
		NotificationBean tempNotificationBean = notificationService.getNotificationInfo(3);
	    model.addAttribute("notificationBean", tempNotificationBean);

	    return "notification/Notification";
	}
	
	
	@GetMapping("/Notification_Detail")
	public String Notification_Detail(@RequestParam("noti_Key")int noti_Key,
			@RequestParam(value = "page", defaultValue = "1")int page,
			Model model) {
		model.addAttribute("noti_Key", noti_Key);
		model.addAttribute("page", page);
		
		NotificationBean detailNotificationBean = notificationService.getNotificationdetail(noti_Key);
		model.addAttribute("notificationBean",detailNotificationBean);
		model.addAttribute("page", page);
		
		
		return "notification/Notification_Detail";
	}
	
	
	
	@GetMapping("Notification_insert")
	public String Notification_insert() {
		
		
		return "Notification_insert";
	}
		
	
}
