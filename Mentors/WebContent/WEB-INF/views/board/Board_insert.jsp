<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>게시판 작성 페이지</title>
<link rel="stylesheet" href="${root }resources/style/Board_insert.css" />
</head>
<body>
	<div class="container">

		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />


		<h1>게시글 작성</h1>
		<form action="#" method="POST">
			<div class="form-group">
				<label for="title">제목:</label> <input type="text" id="title"
					name="title" required>
			</div>
			<div class="form-group">
				<label for="content">내용:</label>
				<textarea id="content" name="content" required></textarea>
			</div>
			<button type="submit" class="btn">작성하기</button>
		</form>

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

	</div>
</body>
</html>