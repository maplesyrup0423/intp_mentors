package kr.co.softsoldesk.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.validation.Errors;
import org.springframework.validation.Validator;
import org.springframework.web.servlet.HandlerInterceptor;

import kr.co.softsoldesk.beans.TeacherBean;

public class CheckLoginInterceptor implements HandlerInterceptor{
	
	//로그인 연부를 판단하는 loginUserBean
	private TeacherBean loginTeacherBean;
	
	public CheckLoginInterceptor(TeacherBean loginTeacherBean) {
		this.loginTeacherBean=loginTeacherBean;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//로그인을 하지 않았다면
		if(loginTeacherBean.isTeacherLogin() == false) {
			//로그인 하지 않은 경로 호출
			String contextPath = request.getContextPath();
			//로그인이 되지 않았으므로 웹브라우저에게 not_login 요청 지시
			response.sendRedirect(contextPath + "/user/Not_login");
			return false;
		}
		//로그인 되어 있는 상태
		return true;
	}
}
