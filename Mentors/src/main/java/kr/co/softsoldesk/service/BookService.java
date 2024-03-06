package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.BookBean;
import kr.co.softsoldesk.dao.BookDao;

@Service
public class BookService {

	@Autowired
	private BookDao bookDao;
	
	public List<BookBean> getBookList(){
		return bookDao.getBookList();
	}
	public BookBean getBookInfo(String bk_Key) {
		return bookDao.getBookInfo(bk_Key);
	}
}
