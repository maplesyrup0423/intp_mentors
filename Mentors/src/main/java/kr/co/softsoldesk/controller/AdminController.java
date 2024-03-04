package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;


@Controller
@RequestMapping("/admin")
public class AdminController {
   

   
   @GetMapping("/admin_home")
   public String admin_home() {
      return "admin/admin_home";
   }
   
   @GetMapping("/admin_wt")
   public String admin_wt() {
      return "admin/admin_wt";
   }

   @GetMapping("/admin_qna")
   public String admin_qna() {
      return "admin/admin_qna";
   }
   
   @GetMapping("/admin_qna_detail")
   public String admin_qna_detail(){
	   return "admin/admin_qna_detail";
   }
   
   @GetMapping("/admin_noti")
   public String admin_noti() {
      return "admin/admin_noti";
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
}