package kr.co.softsoldesk.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/board")
public class BoardController {
	
	@GetMapping("/Boardlist")
	public String Boardlist() {
		return "board/Boardlist";
	}
	
	@GetMapping("/Boardlist_Detail")
	public String Boardlist_Detail() {
		return "board/Boardlist_Detail";
	}
	
	@GetMapping("/Board_insert")
	public String Board_insert() {
		return "board/Board_insert";
	}

}
