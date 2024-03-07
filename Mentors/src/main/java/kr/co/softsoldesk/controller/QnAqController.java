package kr.co.softsoldesk.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.service.QnAqService;

@Controller
@RequestMapping("/qna")
public class QnAqController {
	
	@Autowired
	private QnAqService qnAqService;
	
	@GetMapping("/QnAq")
	public String QnAq(@RequestParam("q_key")int q_key,String q_keyString,
			Model model) {
		model.addAttribute("q_key", q_key);
		
		
		return "qna/QnAq";
	}
	
	@PostMapping("/QnAq")
	public String postQnAq(@RequestParam("q_key") int q_key, @RequestParam("QnAq") String answer) {
	    // 답변 저장 로직

	    // 답변 상태 변경
	    qnAqService.updateResponseStatus(q_key, "완료");

	    return "redirect:/qna";
	}
	
}
