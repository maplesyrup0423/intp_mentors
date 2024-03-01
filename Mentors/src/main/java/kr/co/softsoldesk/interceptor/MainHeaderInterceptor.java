package kr.co.softsoldesk.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.softsoldesk.beans.TeacherBean;

public class MainHeaderInterceptor implements HandlerInterceptor{

	private TeacherBean loginTeacherBean;

	public MainHeaderInterceptor(TeacherBean loginTeacherBean) {
		this.loginTeacherBean = loginTeacherBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
	
		request.setAttribute("loginTeacherBean", loginTeacherBean);
		return true;
	}

	
}
