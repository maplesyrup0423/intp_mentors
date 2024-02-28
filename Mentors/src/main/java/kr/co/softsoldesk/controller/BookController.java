package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/book")
public class BookController {
	
	@GetMapping("/Booklist")
	public String Booklist() {
		return "book/Booklist";
	}
	
	@GetMapping("/Booklist_Detail")
	public String Booklist_Detail() {
		return "book/Booklist_Detail";
	}

}
