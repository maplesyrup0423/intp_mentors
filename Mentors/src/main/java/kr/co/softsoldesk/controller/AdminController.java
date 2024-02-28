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
   
   @GetMapping("/admin_event")
   public String admin_event() {
      return "admin/admin_event";
   }

}