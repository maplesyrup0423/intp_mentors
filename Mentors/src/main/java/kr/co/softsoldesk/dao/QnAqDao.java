package kr.co.softsoldesk.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import kr.co.softsoldesk.beans.QnAqBean;
import kr.co.softsoldesk.mapper.QnAqMapper;

@Repository
public class QnAqDao {
	
	@Autowired
	private QnAqMapper qnAqMapper;
	
	public List<QnAqBean> getQnAq(){
		return qnAqMapper.getQnAq();
	}
	
	public void updateResponseStatus(int q_key, String status) {
	    qnAqMapper.updateResponseStatus(q_key, status);
	}
	
	public void writeQnA(QnAqBean qna) {
        qnAqMapper.writeQnA(qna);
    }
	
	//-----------------------------------------------------------
	
	public List<QnAqBean> getQList(String wt_key){
		return qnAqMapper.getQList(wt_key);
	}
	
	public void insertQ(String WTT_Key, String q_Title, String q_content) {
		qnAqMapper.insertQ(WTT_Key, q_Title, q_content);
	}
	
	public void insertA(String q_key) {
		qnAqMapper.insertA(q_key);
	}
	
	public String getAK(String q_Title, String q_content) {
		return qnAqMapper.getAK(q_Title, q_content);
	}
}
