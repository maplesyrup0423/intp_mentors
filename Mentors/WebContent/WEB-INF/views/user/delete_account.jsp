<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>delete_account</title>
<link rel="stylesheet" href="${root }resources/style/delete_account.css" />
</head>
<body>
	<!-- header --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	<center>
		<form:form action="${root }user/delete_account_pro" method = "post"
		modelAttribute="deleteAccountBean">
			<table class = "delete_account_table">
				<tr>
					<td>
						<h1 class = "delete_account_h1">회원탈퇴</h1>
						<div class = "delete_account_div">
							회원탈퇴를 위해 현재 비밀번호를 입력하세요. <br />
							회원탈퇴 후 모든 정보는 소멸됩니다.
						</div>
						<center>
							<form:input class = "delete_account_input" type = "password" path = "teacher_Password" placeholder = "비밀번호를 입력하세요." autocomplete = "off"/> <br />
						</center>
							
						<center>
							<input class = "delete_account_cancel" type="button" value = "취소" 
							onClick="location.href='${root}user/Mypage'"/>
							<form:button class = "delete_account_submit">확인</form:button>
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