<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Find_Password</title>
<link rel="stylesheet" href="${root }resources/style/Find_Password.css" />
</head>
<body>
	<!-- header --> 
<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	
	<div class="container">
		<div class="find_password_space">
			<div class="find_password_title">비밀번호 찾기</div>
			<br />
		</div>
		<div class="change_find_info">
			<input type="button" name="find_id_button" value="아이디 찾기" 
			onClick="location.href='Find_ID.jsp'" /> 
			<span class = ""> | </span>
			<input type="button" name="find_password_button" value="비밀번호 찾기" 
			onClick="location.href='Find_Password.jsp'" />
		</div>
		<form action="">
			<div class="body">
				<div class="input_id">
					<input type="text" name="id" placeholder="아이디를 입력하세요" />
				</div>

				<div class="input_name">
					<input type="text" name="name" placeholder="성명을 입력하세요" />
				</div>

				<div class="input_tel">
					<input type="text" name="tel" placeholder="전화번호를 입력하세요" />
				</div>
			</div>
			<center>
				<input class="cancel" type="button" value="취소"
				onClick="location.href='Login.jsp'" /> <input type="submit"
				name="submit" value="확인" />
			</center>
		</form>
	</div>
	<!-- footer --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
	
</body>
</html>