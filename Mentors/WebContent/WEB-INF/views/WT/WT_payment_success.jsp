<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${root }resources/style/WT_payment_style.css" />
</head>
<body>

	<!-- header -->
	<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />


	<div class="success_top">
		<img src="${root }resources/img/checked.png" alt="체크 이미지" id="check">
		<p class="check_message">결제가 정상적으로 완료되었습니다!</p>
	</div>
	<div class="success_bottom">
		<button class="main_button" onclick="location.href='${root}main'">메인으로</button>
	</div>


	<!-- footer -->
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

</body>
</html>