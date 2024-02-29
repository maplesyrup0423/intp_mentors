package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kr.co.softsoldesk.beans.BookBean;
import kr.co.softsoldesk.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	private BookService bookService;
	
	@GetMapping("/Booklist")
	public String Booklist(Model model) {
		List<BookBean> bookList=bookService.getBookList();
		model.addAttribute("bookList",bookList);
		
		return "book/Booklist";
	}
	
	@GetMapping("/Booklist_Detail")
	public String Booklist_Detail() {
		return "book/Booklist_Detail";
	}

}
