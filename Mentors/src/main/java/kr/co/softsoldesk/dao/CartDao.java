package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.CartBean;
import kr.co.softsoldesk.mapper.CartMapper;

@Repository
public class CartDao {
	@Autowired
	private CartMapper cartMapper;

	public void addCart(String teacher_id, String WT_Key) {
		cartMapper.addCart(teacher_id, WT_Key);
	}
	
	public List<CartBean> getCartInfo(String teacher_id) {
		return cartMapper.getCartInfo(teacher_id);
	}
	
	public CartBean getOneCartInfo(String teacher_id, String WT_Key) {
		return cartMapper.getOneCartInfo(teacher_id, WT_Key);
	}
	
}
