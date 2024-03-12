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

import kr.co.softsoldesk.beans.AdminBean;
import kr.co.softsoldesk.beans.EventBean;
import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.service.AdminService;
import lombok.val;

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
   public String admin_wt(Model model) {
	   List<WTBean> awtlist = adminService.getAdminWTBeanList();
	   model.addAttribute("awtlist", awtlist);
      return "admin/admin_wt";
   }
   
   @GetMapping("/wt_delete")
   public String wt_delete(@RequestParam("WT_Key") String WT_Key) {
	   System.out.println(WT_Key);
	   adminService.deleteWT(WT_Key);
	   return "admin/WT_delete_s";
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
   public String admin_qna_detail(@ModelAttribute("answertext")AdminBean answertext, @RequestParam("q_key") String q_key,
		   							Model model) {
	   AdminBean adminqnaqbean = adminService.getAdminQnAQ(q_key);
	   model.addAttribute("adminqnaqbean", adminqnaqbean);
	   String adminqnaa = adminService.getAdminQnAA(q_key);
	   model.addAttribute("adminqnaa", adminqnaa);
	   
	   model.addAttribute("answertext", answertext);
	   return "admin/admin_qna_detail";
   }
   
   @PostMapping("/a_update")
   public String a_update(@Valid @RequestParam("q_key")String q_key, @ModelAttribute("answertext")AdminBean answertext,BindingResult result, Model model) {
	   //adminService.insertA(q_key);
	   
	   if(result.hasErrors()) {
			 return  "admin/admin_qna";
			}
	   System.out.println(answertext.getA_content());
	   adminService.updateA(answertext.getA_content(), q_key);
	   adminService.updateQCheck(q_key);
	   model.addAttribute("answertext", answertext);
	   return "admin/admin_qna_detail_s";
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
   public String admin_pay(Model model) {
	  List<AdminBean> apaylist = adminService.getApayList();
	  model.addAttribute("apaylist", apaylist);
      return "admin/admin_pay";
   }
   
   @GetMapping("/admin_user")
   public String admin_user(Model model) {
	   List<AdminBean> tList = adminService.getTInfoList();
	   model.addAttribute("tList",tList);
      return "admin/admin_user";
   }
   @GetMapping("/admin_event")
   public String admin_event(Model model) {
	   List<EventBean> evList = adminService.getAeventList();
	   model.addAttribute("evList",evList);
      return "admin/admin_event";
   }
   
   @GetMapping("/event_delete")
   public String event_delete(Model model, @RequestParam("event_key")String event_key) {
	   adminService.deleteEvent(event_key);
	   
	   return "admin/admin_event";
   }
   
   @GetMapping("/admin_event_insert")
   public String admin_event_insert() {
	   return "admin/admin_event_insert";
   }

   
}