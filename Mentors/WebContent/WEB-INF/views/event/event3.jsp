<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }resources/style/event3.css">
<title>Insert title here</title>
</head>
<body>


	<div class="Event_main">


		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />

		<h1 style="font-size: 50px; margin-left: -800;" >진행중인 이벤트</h1>

		<div class="E_button">
			<button class="blue_btn"><a href="${root }event/event3">진행중인 이벤트</a></button>
			<button class="blue_btn"><a href="${root }event/event_end">종료된 이벤트</a></button>
		</div>
		<hr>
		<div class="E_list">
		
			<c:forEach var='obj' items="${eventList }">
				<div class="event">
					<a href="${root}event/event_info?${obj.event_key}"> <img
						src="${root }resources/image/event_img/event_Thumb/${obj.event_thumbnail }.jpg"
						alt=""> <br>
						<div id="title">
							<h3>${obj.event_title  }</h3>
						</div> <br>
						<div id="e_day">${obj.event_s_date } ~ ${obj.event_e_date }</div>
						<div class="day_circle">
							<h2>D-${obj.d_day }</h2>
						</div>
					</a>
				</div>

			</c:forEach>
			
			
		
			<div class="event">
				<a href="${root}event/event_info"> 
					<img src="${root }resources/image/event_img/event_Thumb/event1-1.jpg" alt=""> 
					<br>
					<div id="title">
						<h3>이벤트 제목이자 간략한 내용</h3>
					</div> 
					<br>
					<div id="e_day">"이벤트 기간"</div>
					<div class="day_circle">
						<h2>D-1</h2>
					</div>
				</a>
			</div>

			<div class="event">
				<a href=""> 
					<img src="${root }resources/image/event_img/event_Thumb/event2-2.png" alt=""> 
					<br>
					<div id="title">
						<h3>이벤트 제목이자 간략한 내용</h3>
					</div> 
					<br>
					<div id="e_day">"이벤트 기간"</div>
					<div class="day_circle">
						<h2>D-1</h2>
					</div>
				</a>
			</div>

			<div class="event">
				<a href=""> 
					<img src="${root }resources/image/event_img/event_Thumb/event3-3.jpg" alt=""> 
					<br>
					<div id="title">
						<h3>이벤트 제목이자 간략한 내용</h3>
					</div> 
					<br>
					<div id="e_day">"이벤트 기간"</div>
					<div class="day_circle">
						<h2>D-1</h2>
					</div>
				</a>
			</div>

			<div class="event">
				<a href=""> 
					<img src="${root }resources/image/event_img/event_Thumb/event4-4.png" alt=""> 
					<br>
					<div id="title">
						<h3>이벤트 제목이자 간략한 내용</h3>
					</div> 
					<br>
					<div id="e_day">"이벤트 기간"</div>
					<div class="day_circle">
						<h2>D-1</h2>
					</div>
				</a>
			</div>

			<div class="event">
				<a href=""> 
					<img src="${root }resources/image/event_img/event_Thumb/event5-5.png" alt=""> 
					<br>
					<div id="title">
						<h3>이벤트 제목이자 간략한 내용</h3>
					</div> 
					<br>
					<div id="e_day">"이벤트 기간"</div>
					<div class="day_circle">
						<h2>D-1</h2>
					</div>
				</a>
			</div>

			<div class="event">
				<a href=""> 
					<img src="${root }resources/image/event_img/event_Thumb/event6-6.jpg" alt=""> 
					<br>
					<div id="title">
						<h3>이벤트 제목이자 간략한 내용</h3>
					</div> 
					<br>
					<div id="e_day">"이벤트 기간"</div>
					<div class="day_circle">
						<h2>D-1</h2>
					</div>
				</a>
			</div>

		</div>


		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />


	</div>
</body>
</html>