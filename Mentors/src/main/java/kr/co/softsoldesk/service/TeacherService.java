package kr.co.softsoldesk.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.dao.TeacherDao;

@Service
public class TeacherService {

	@Autowired
	private TeacherDao teacherDao;

	
}
