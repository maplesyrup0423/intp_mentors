package kr.co.softsoldesk.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import kr.co.softsoldesk.beans.BookBean;

public interface BookMapper {
	
	//북리스트 정보 받아오기
	@Select("select bk_Key,bk_img,bk_title,bk_autor,bk_date,bk_isbn,bk_price from booklist")
	List<BookBean> getBookList();
	
	//북 디테일 정보 받아오기
	@Select("select bk_Key,bk_img, bk_title,bk_autor,bk_date,bk_isbn,bk_publisher,bk_price,bk_yes24,bk_ald,bk_kobo "
			+ ",bk_info, bk_content,bk_autorinfo,bk_category from booklist where bk_Key=#{bk_Key}")
	BookBean getBookInfo(String bk_Key);
	
	//카테고리별 북리스트 받아오기
	@Select("select BK_Key,BK_img,BK_title,BK_autor,BK_date,BK_isbn,BK_price from booklist where BK_category=#{bk_category}")
	List<BookBean> getBookListSelect(int bk_category);
	
}
