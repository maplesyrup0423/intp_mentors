package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.BookBean;
import kr.co.softsoldesk.mapper.BookMapper;

@Repository
public class BookDao {
	@Autowired
	private BookMapper bookMapper;
	
	public List<BookBean> getBookList(){
		return bookMapper.getBookList();
	}
}
