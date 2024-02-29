package kr.co.softsoldesk.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import kr.co.softsoldesk.beans.TeacherBean;


@Configuration
public class RootAppContext {

	@Bean("loginTeacherBean")
	@SessionScope
	public TeacherBean loginTeacherBean() {
		return new TeacherBean();
	}

	
}
