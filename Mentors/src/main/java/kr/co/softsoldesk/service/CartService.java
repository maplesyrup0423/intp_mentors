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

//	public void addCart(String WT_Key) {
//		String t_id=loginTeacherBean.getTeacher_id();
//		System.out.println("장바구니에 추가하는 유저 아이디"+t_id);
//		cartDao.addCart(t_id, WT_Key);
//	}
	
	public List<CartBean> getCartInfo(String teacher_id) {
		return cartDao.getCartInfo(teacher_id);
	}
	
}
