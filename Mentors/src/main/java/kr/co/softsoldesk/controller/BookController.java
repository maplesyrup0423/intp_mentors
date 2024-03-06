package kr.co.softsoldesk.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import kr.co.softsoldesk.beans.BK_category_Bean;
import kr.co.softsoldesk.beans.BookBean;
import kr.co.softsoldesk.service.BookService;

@Controller
@RequestMapping("/book")
public class BookController {
	@Autowired
	private BookService bookService;

	@GetMapping("/Booklist")
	public String Booklist(Model model) {
		List<BookBean> bookList = bookService.getBookList();
		model.addAttribute("bookList", bookList);
		BK_category_Bean BCB = new BK_category_Bean();
		BCB.setBk_category_class_0("book_tag");
		model.addAttribute("BCB",BCB);
		return "book/Booklist";
	}

	@GetMapping("/Booklist_btn")
	public String Booklist_btn(Model model, @RequestParam("bk_category") int bk_category) {
		System.out.println(bk_category);
		BK_category_Bean BCB = new BK_category_Bean();
		

		if (bk_category == 0) {
			List<BookBean> bookList = bookService.getBookList();
			model.addAttribute("bookList", bookList);
			BCB.setBk_category_class_0("book_tag");
		} else {
			List<BookBean> bookList = bookService.getBookListSelect(bk_category);
			model.addAttribute("bookList", bookList);
		}
		
		if(bk_category==1) {
			BCB.setBk_category_class_1("book_tag");
		}else if(bk_category==2) {
			BCB.setBk_category_class_2("book_tag");
		}else if(bk_category==3) {
			BCB.setBk_category_class_3("book_tag");
		}else if(bk_category==4) {
			BCB.setBk_category_class_4("book_tag");
		}else if(bk_category==5) {
			BCB.setBk_category_class_5("book_tag");
		}else if(bk_category==6) {
			BCB.setBk_category_class_6("book_tag");
		}else if(bk_category==7) {
			BCB.setBk_category_class_7("book_tag");
		}
		model.addAttribute("BCB",BCB);
		return "book/Booklist";
	}

	@GetMapping("/Booklist_Detail")
	public String Booklist_Detail(@RequestParam("bk_Key") String bk_Key, Model model) {
		BookBean bookInfo = bookService.getBookInfo(bk_Key);
		model.addAttribute("bookInfo", bookInfo);
		return "book/Booklist_Detail";
	}

}
