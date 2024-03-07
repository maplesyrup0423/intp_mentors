<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }resources/style/end-event3.css"><title>Insert title here</title>
</head>
<body>


    <div class="Event_main">
    
    <!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
      
        <h1 style="font-size: 50px; margin-left: -800;" >종료된 이벤트</h1>
        <!-- <hr style="margin-bottom: 30px;"> -->
        <div class=" endE_button">
            <button class="blue_btn"><a href="${root }event/event3">진행중인 이벤트</a></button>
            <button class="blue_btn">종료된 이벤트</button>
        </div>
        <div class="E_list">

			<c:forEach var='obj' items="${eventList }">
				
				
				<div class="event" >
                <a href="${root }event/event_return">
                    <img src="${root }resources/image/event_img/event_Thumb/${obj.event_thumbnail }.jpg" >
                    <br>
                    <div id="title"><h3>${obj.event_title  }</h3></div>
                    <br>
                    <div id="e_day">${obj.event_s_date }~ ${obj.event_e_date }</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

			</c:forEach>

        </div>

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

    </div>
</body>
</html>