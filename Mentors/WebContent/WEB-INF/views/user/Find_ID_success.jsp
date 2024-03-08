<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>delete_account</title>
<link rel="stylesheet"
	href="${root }resources/style/Find_ID_success.css" />
</head>
<body>
	<div class="Mentors_header">
		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	</div>

	<center>
		<div class="Find_Id_Comment">
			찾으신 아이디는 ${getTeacher_Id } 입니다.
		</div>

		<center>
			<input class="back_to_Login" type="button" value="확인"
				onClick="location.href='${root}user/Login'" />
		</center>
	</center>
	
	
	<div class="Mentors_footer">
		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
	</div>
</body>
</html>