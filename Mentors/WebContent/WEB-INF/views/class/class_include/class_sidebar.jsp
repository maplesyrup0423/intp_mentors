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
	<div class="sidebar div_shadow">
		<div class="sidebar_list">
			<button class="CH_list list_home "
				onclick="location.href='${root}class/class_home_center_home'">강의
				홈</button>
			<button class="list_test CH_list "
				onclick="location.href='${root}class/class_home_center_test'">시험</button>
			<button class="list_QnA CH_list "
				onclick="location.href=''">Q&A</button>
			<button class="list_notification CH_list "
				onclick="location.href=''">공지사항</button>
		</div>
	</div>
</body>
</html>