<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }resources/style/QnA_insert.css" />
</head>
<body>
    <div class="container">
        <h1>QnA 작성</h1>
        <form action="#" method="POST">
            <div class="form-group">
                <label for="title">제목:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="content">내용:</label>
                <textarea id="content" name="content" required></textarea>
            </div>
            <button type="submit" class="btn" >작성하기</button>
        </form>
    </div>
</body>
</html>