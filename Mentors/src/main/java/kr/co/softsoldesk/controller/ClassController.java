package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;


@Controller
@RequestMapping("/class")
public class ClassController {
   

   
   @GetMapping("/class_home_center_home")
   public String class_home_center_home() {
      return "class/class_home_center_home";
   }
   
   @GetMapping("/class_video")
   public String class_video() {
      return "class/class_video";
   }
   
   @GetMapping("/class_test")
   public String class_test() {
      return "class/class_test";
   }
   
   @GetMapping("/class_home_center_test")
   public String class_home_center_test() {
      return "class/class_home_center_test";
   }

}