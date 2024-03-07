package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.QnAaBean;
import kr.co.softsoldesk.dao.QnAaDao;



@Service
public class QnAaService {

	@Autowired
	private QnAaDao qnAaDao;
	
	public List<QnAaBean> getQnAa(){
		List<QnAaBean> QnAa = qnAaDao.getQnAa();
		return QnAa;
	}
	
}
