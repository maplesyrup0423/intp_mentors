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
      
        <h1 style="font-size: 50px; margin-left: -800;" >종료된 이벤트</h1>
        <!-- <hr style="margin-bottom: 30px;"> -->
        <div class=" endE_button">
            <button class="blue_btn"><a href="${root }event/event3">진행중인 이벤트</a></button>
            <button class="blue_btn">종료된 이벤트</button>
        </div>
        <div class="E_list">
            <div class="event" >
                <a href="${root }event/event_return">
                    <img src="${root }resources/image/event_img/event_Thumb/event1-1.jpg" >
                    <br>
                    <div id="title"><h3>이벤트 제목이자 간략한 내용</h3></div>
                    <br>
                    <div id="e_day">"이벤트 기간"</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

            <div class="event" onclick="alert('종료된 이벤트입니다')">
                <a href="">
                    <img src="${root }resources/image/event_img/event_Thumb/event2-2.png" >
                    <br>
                    <div id="title"><h3>이벤트 제목이자 간략한 내용</h3></div>
                    <br>
                    <div id="e_day">"이벤트 기간"</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

            <div class="event" onclick="alert('종료된 이벤트입니다')">
                <a href="">
                    <img src="${root }resources/image/event_img/event_Thumb/event3-3.jpg" alt="">
                    <br>
                    <div id="title"><h3>이벤트 제목이자 간략한 내용</h3></div>
                    <br>
                    <div id="e_day">"이벤트 기간"</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

            <div class="event" onclick="alert('종료된 이벤트입니다')">
                <a href="">
                    <img src="${root }resources/image/event_img/event_Thumb/event4-4.png" alt="">
                    <br>
                    <div id="title"><h3>이벤트 제목이자 간략한 내용</h3></div>
                    <br>
                    <div id="e_day">"이벤트 기간"</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

            <div class="event" onclick="alert('종료된 이벤트입니다')">
                <a href="">
                    <img src="${root }resources/image/event_img/event_Thumb/event5-5.png" alt="">
                    <br>
                    <div id="title"><h3>이벤트 제목이자 간략한 내용</h3></div>
                    <br>
                    <div id="e_day">"이벤트 기간"</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

            <div class="event" onclick="alert('종료된 이벤트입니다')">
                <a href="">
                    <img src="${root }resources/image/event_img/event_Thumb/event6-6.jpg" alt="">
                    <br>
                    <div id="title"><h3>이벤트 제목이자 간략한 내용</h3></div>
                    <br>
                    <div id="e_day">"이벤트 기간"</div>
                    <div class="day_circle">
                        <h2 class="day_end">종료</h2>
                    </div>
                    <div class="endfilter">
                        <div class="endtext">마감완료</div>
                    </div>
                </a>
            </div>

        </div>



    </div>
</body>
</html>