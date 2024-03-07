package kr.co.softsoldesk.dao;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.QnAaBean;
import kr.co.softsoldesk.mapper.QnAaMapper;

@Repository
public class QnAaDao {
	
	@Autowired
	private QnAaMapper qnAaMapper;
	
	public List<QnAaBean> getQnAa(){
	return qnAaMapper.getQnAa();
	}
	
	public QnAaBean getQnAaInfo(int a_key) {
		return qnAaMapper.getQnAaInfo(a_key);
	}
}
