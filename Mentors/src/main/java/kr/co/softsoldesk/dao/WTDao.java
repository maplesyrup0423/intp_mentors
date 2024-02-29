package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.mapper.WTMapper;

@Repository
public class WTDao {

	@Autowired
	private WTMapper wtMapper;

	public List<WTBean> getWTList() {
		return wtMapper.getWTList();
	}

}
