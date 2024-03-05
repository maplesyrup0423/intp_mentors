package kr.co.softsoldesk.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.context.annotation.SessionScope;

import kr.co.softsoldesk.beans.CartBean;
import kr.co.softsoldesk.beans.TeacherBean;
import kr.co.softsoldesk.beans.WTBean;


@Configuration
public class RootAppContext {

	@Bean("loginTeacherBean")
	@SessionScope
	public TeacherBean loginTeacherBean() {
		return new TeacherBean();
	}
	
	@Bean("tempCategoryBean")
	@SessionScope
	public WTBean tempCategoryBean() {
		return new WTBean();
	}

	
}
