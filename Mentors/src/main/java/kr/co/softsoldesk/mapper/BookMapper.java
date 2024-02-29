package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.BookBean;

public interface BookMapper {
	
	//북리스트 정보 받아오기
	@Select("select BK_Key,BK_img,BK_title,BK_autor,BK_date,BK_isbn,BK_price from booklist")
	List<BookBean> getBookList();
	
	//북 디테일 정보 받아오기
	@Select("select BK_Key,BK_img, BK_title,BK_autor,BK_date,BK_isbn,BK_publisher,BK_price,BK_yes24,BK_ald,BK_kobo "
			+ ",BK_info, BK_content,BK_autorinfo,BK_category from booklist where BK_Key=#{BK_Key}")
	BookBean getBookInfo(String BK_Key);
	

}
