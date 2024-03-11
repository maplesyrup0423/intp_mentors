package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.AdminBean;
import kr.co.softsoldesk.service.AdminService;

@Controller
@RequestMapping("/admin")
public class AdminController {
 
	@Autowired
	AdminService adminService;

   @GetMapping("/admin_home")
   public String admin_home() {
      return "admin/admin_home";
   }
   
   @GetMapping("/admin_wt")
   public String admin_wt() {
      return "admin/admin_wt";
   }
   
   @GetMapping("/admin_wt_insert")
   public String admin_wt_insert() {
	   return "admin/admin_wt_insert";
   }

   @GetMapping("/admin_qna")
   public String admin_qna(Model model) {
	   List<AdminBean> adminqnaq = adminService.getAdminQnAqList();
	   model.addAttribute("adminqnaq", adminqnaq);
      return "admin/admin_qna";
   }
   
   @GetMapping("/admin_qna_detail")
   public String admin_qna_detail() {
	   return "admin/admin_qna_detail";
   }
   
   @GetMapping("/admin_noti")
   public String admin_noti(Model model) {
	  List<AdminBean> adminnoti = adminService.getAdminNotiList();
	  model.addAttribute("adminnoti", adminnoti);
      return "admin/admin_noti";
   }
   
   @GetMapping("/admin_noti_detail")
   public String admin_noti_detail(@RequestParam("noti_key") String noti_key,
			  						Model model){
	   model.addAttribute("noti_key", noti_key);
	   AdminBean adminnotiDetail = adminService.getAdminNotiDetail(noti_key);
	   model.addAttribute("adminnotiDetail", adminnotiDetail);
	   return "admin/admin_noti_detail";
   }
   
   @GetMapping("/admin_noti_insert")
   public String admin_noti_insert() {
	   return "admin/admin_noti_insert";
   }
   
   @GetMapping("/admin_noti_modify")
   public String admin_noti_modify(@RequestParam("noti_key") String noti_key,
								   Model model){
	   model.addAttribute("noti_key", noti_key);
	   AdminBean adminnotiModify = adminService.getAdminNotiModify(noti_key);
	   model.addAttribute("adminnotiModify", adminnotiModify);
	   return "admin/admin_noti_modify";
   }
   
   @GetMapping("/admin_pay")
   public String admin_pay() {
      return "admin/admin_pay";
   }
   
   @GetMapping("/admin_user")
   public String admin_user() {
      return "admin/admin_user";
   }
   @GetMapping("/admin_event")
   public String admin_event() {
      return "admin/admin_event";
   }
   
   @GetMapping("/admin_event_insert")
   public String admin_event_insert() {
	   return "admin/admin_event_insert";
   }
}