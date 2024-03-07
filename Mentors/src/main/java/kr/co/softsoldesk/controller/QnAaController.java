package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.service.QnAaService;

@Controller
@RequestMapping("/qna")
public class QnAaController {

	@Autowired
	private QnAaService qnAaService;
	
	@GetMapping("/QnAa")
	public String QnAa(@RequestParam("a_key")int a_key,
			Model model) {
		
		model.addAttribute("a_key", a_key);
		
		return "qna/QnAa";

}	
}
