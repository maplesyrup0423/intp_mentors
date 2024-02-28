<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${root}/resources/style/Mentors_Main_footer_style.css">
</head>
<body>
    <footer class="footer">
        <div class="f_top">
            <span class="t_1"><a href="" >&nbsp;개인정보 처리 방침 &nbsp;&nbsp;&nbsp;</a></span>
            /
            <span class="t_1"><a href="">&nbsp;&nbsp;&nbsp;이용약관</a></span>
            <span class="telnum"><i class="fa-solid fa-square-phone"></i>1544-0714</span>
        </div>
        <HR></HR>
        <div class="f_left">
            <span>
                사업자번호 123-65-57595 | 대표이사 : 정세나 <br>
                서울시 종로구 종로 12길 15 종로코아빌딩 5층 (관철동 13-13) | 교육담당 : 우종용 <br>
                운영시간 : 09:00 ~ 22:00 (주말, 공휴일 휴무)
            </span>
        </div>
        <div class="f_right">
            <div id="log"><img src="${root}/resources/image/mantis.jpg" alt="로고1"></div>
            <div id="log"><img src="${root}/resources/image/mantis.jpg" alt="로고2"></div>
            <div id="log_but"><img src="${root}/resources/image/mantis.jpg" alt="로고3"></div>
        </div>
    </footer>
</body>
</html>