package kr.co.softsoldesk.dao;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.mapper.CartMapper;

@Repository
public class CartDao {
	@Autowired
	private CartMapper cartMapper;

	public void addCart(String teacher_id, String WT_Key) {
		cartMapper.addCart(teacher_id, WT_Key);
	}
}
