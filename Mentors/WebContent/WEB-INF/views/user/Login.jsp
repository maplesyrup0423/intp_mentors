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
	<div class="background">
		<div class="container">
			<div class="log_in_letter">
				로그인 <br />
			</div>

			<form action="LoginAction.jsp" method="post">
				<div class="body">
					<div class="input_id">
						<input type="text" name="id" placeholder="아이디를 입력하세요" />
					</div>

					<div class="input_pw">
						<input type="password" name="pw" placeholder="비밀번호를 입력하세요." />
					</div>
				</div>
				<center>
					<input type="submit" name="submit" value="로그인" />
				</center>
			</form>
			<footer> 
				<a href="Find_ID.jsp">아이디 찾기</a> <span> | </span> <a
				href="Find_Password.jsp">비밀번호 찾기</a> <span> | </span> <a
				href="${root }user/Sign_up">회원가입</a> 
				
			</footer>
		</div>
	</div>
</body>
</html>


<!--
	<a href="find_id.jsp">아이디 찾기</a> <span> | </span>
	<a href="find_pw_jsp">비밀번호 찾기</a> <span> | </span>
	<a href="Sign_up.jsp">회원가입</a>
  -->

