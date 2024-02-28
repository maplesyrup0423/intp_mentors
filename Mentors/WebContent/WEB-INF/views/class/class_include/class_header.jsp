<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }resources/style/class_home_style.css" />
</head>
<body>
	<div class="class_home_top">
		<div class="logo_div">
			<img src="${root }resources/image/M_logo_fff_2.png" id="logo" />
		</div>
		<div class="Exit_div">
			<div>
				<a href="${root }main"> <img
					src="${root }resources/image/Exit.png" id="Exit" /></a>
			</div>
			<div>
				<span class="text_fff">나가기</span>
			</div>

		</div>
	</div>
</body>
</html>