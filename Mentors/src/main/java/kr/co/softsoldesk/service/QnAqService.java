package kr.co.softsoldesk.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.QnAaBean;
import kr.co.softsoldesk.beans.QnAqBean;
import kr.co.softsoldesk.dao.QnAqDao;

@Service
public class QnAqService {
	
	@Autowired
	private QnAqDao qnAqDao;
	
	public List<QnAqBean> getQnAa(){
		List<QnAqBean> QnAq = qnAqDao.getQnAq();
		return QnAq;
	}
	
	public void updateResponseStatus(int q_key, String status) {
	    qnAqDao.updateResponseStatus(q_key, status);
	}
	
	public void writeQnA(QnAqBean qna) {
        qnAqDao.writeQnA(qna);
    }
}
