package kr.co.softsoldesk.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.CartBean;
import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.dao.CartDao;

@Service
public class CartService {
	@Autowired
	private CartDao cartDao;
	@Resource(name = "loginTeacherBean")
	private TeacherBean loginTeacherBean;
	
	public void addCart(String WT_Key) {
		
		String teacher_id=loginTeacherBean.getTeacher_id();
		System.out.println("장바구니에 추가하는 유저 아이디 : "+teacher_id);
		cartDao.addCart(teacher_id, WT_Key);
	}
	
	public List<CartBean> getCartInfo(String teacher_id) {
		return cartDao.getCartInfo(teacher_id);
	}
	
	public CartBean getOneCartInfo(String teacher_id, String WT_Key) {
		return cartDao.getOneCartInfo(teacher_id, WT_Key);
	}
	
	public List<String> getCartWT_KeyInfo(){
		String teacher_id=loginTeacherBean.getTeacher_id();
		return cartDao.getCartWT_KeyInfo(teacher_id);
	}
	
	public List<String> getCartWT_KeyInfo2(){
		String teacher_id=loginTeacherBean.getTeacher_id();
		return cartDao.getCartWT_KeyInfo2(teacher_id);
	}
	
	public void deleteCart(String WT_Key) {
		cartDao.deleteCart(WT_Key);
	}
	
}
