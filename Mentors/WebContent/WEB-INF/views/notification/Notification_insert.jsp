<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="../style/Notification_insert.css" />
</head>
<body>
    <div class="container">
        <h1>공지사항 작성</h1>
        <form action="#" method="POST">
            <div class="form-group">
                <label for="title">제목:</label>
                <input type="text" id="title" name="title" required>
            </div>
            <div class="form-group">
                <label for="content">내용:</label>
                <textarea id="content" name="content" required></textarea>
            </div>
            <button type="submit" class="btn">작성하기</button>
        </form>
    </div>
</body>
</html>