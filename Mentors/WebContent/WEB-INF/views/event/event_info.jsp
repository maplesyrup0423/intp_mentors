<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="${root }resources/style/event_info.css">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
</head>
<body>

<!-- header -->
<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />

    <div class="main_all">
    
    <div id="up-point"></div>

    <h1 style="text-align: left;">${eBean.event_title } </h1>

    <hr>

    <div style="text-align: left;">
        <span id="s_dayt"> 이벤트 기간&nbsp;&nbsp;|&nbsp; ${eBean.event_s_date }</span>
        <span id="e_dayt">~ ${eBean.event_e_date }</span>
    </div>

    <hr>

      <img src="${root }resources/image/event_img/event_info/${eBean.event_content_img }" 
      style="width: 100%; height: auto;">

        <div>
            <a href="#up-point" >
                <i class="fa-solid fa-circle-chevron-up" id="up_icon"></i>
            </a>
        </div>

    </div>
    
    <!-- footer -->
<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

</body>
</html>