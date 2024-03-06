<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Sign in</title>
<link rel="stylesheet" href="${root }resources/style/Login.css" />
</head>
<body>
<!-- header --> 
<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	<div class="background">
		<div class="container">
			<div class="log_in_letter">로그인<br /></div>
			
			<c:if test="${fail == true }">
				<div class="alert alert-danger">
					<h3>로그인 실패</h3>
					<p>아이디 비밀번호를 확인해주세요</p>
				</div>
			</c:if>
				
			<form:form action="${root }user/Login_pro" method="post"
						modelAttribute="tempLoginTeacherBean">
				<div class="body">
					<div class="input_id">
						<form:input path = "teacher_id" placeholder="아이디를 입력하세요" />
					</div>

					<div class="input_pw">
						<form:password path = "Teacher_Password" placeholder="비밀번호를 입력하세요." />
					</div>
				</div>
				<div  class = "login_button_space">
					<form:button class="login_button">로그인</form:button>
				</div>
			</form:form>
			<footer> 
				<a href="${root }user/Find_ID">아이디 찾기</a> <span> | </span> 
				<a href="${root }user/Find_Password">비밀번호 찾기</a> <span> | </span> 
				<a href="${root }user/Sign_up">회원가입</a> 
			</footer>
		</div>
	</div>
	
	<!-- footer --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
	
</body>
</html>


<!--
	<a href="find_id.jsp">아이디 찾기</a> <span> | </span>
	<a href="find_pw_jsp">비밀번호 찾기</a> <span> | </span>
	<a href="Sign_up.jsp">회원가입</a>
  -->

