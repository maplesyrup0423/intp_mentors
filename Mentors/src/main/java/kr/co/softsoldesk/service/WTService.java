package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.WTBean;
import kr.co.softsoldesk.dao.WTDao;

@Service
public class WTService {
	
	@Autowired
	private WTDao wtDao;
	
	public 	List<WTBean> getWTList(){
		return wtDao.getWTList();
	}

}
