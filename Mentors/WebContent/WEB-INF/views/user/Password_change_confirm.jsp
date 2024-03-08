<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>password_change_confirm</title>
<link rel="stylesheet" href="${root }resources/style/Password_change_confirm.css" />
</head>
<body>
	<!-- header --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	<center>
		<form:form action="password_change_pro" method = "post"
					modelAttribute="pwChangeBean">
			<table class = "password_change_table">
				<tr>
					<td>
						<h1 class = "password_change_h1">비밀번호 변경</h1>
						<div class = "password_change_div">
							본인확인을 위해 현재 비밀번호를 입력한 후에 <br />
							새로운 비밀번호를 입력해주세요.
						</div>
						<center>
							<form:input type = "password" class = "password_change_input" path = "teacher_Password" placeholder = "현재 비밀번호를 입력하세요." autocomplete = "off"/> <br />
							<form:input type = "password" class = "password_change_input" path = "new_Password" placeholder = "새로운 비밀번호를 입력하세요." autocomplete = "off"/> <br />
							<form:input type = "password" class = "password_change_input" path = "new_Password2" placeholder = "새로운 비밀번호를 다시 입력하세요." autocomplete = "off"/>
						</center>
							
						<center>
							<input class = "password_change_cancel" type="button" value = "취소" 
							onClick="location.href='${root}user/Mypage'"/>
							<form:button class = "password_change_submit">확인</form:button>
						</center>
					</td>
				</tr>
			</table>
		</form:form>
	</center>
	<!-- footer --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
</body>
</html>