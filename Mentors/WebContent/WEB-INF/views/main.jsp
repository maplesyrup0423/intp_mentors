<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Document</title>
<link rel="stylesheet" href="${root}resources/style/slidestest.css">
<link rel="stylesheet" href="${root}resources/style/slick.css" />
<%-- <link rel="stylesheet" href="${root}resources/style/xeicon.min.css"> --%>
<link rel="stylesheet"
	href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="${root}/resources/script/jquery-3.3.1.min.js"></script>
<script src="${root}/resources/script/slick.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="all_center">
		<!-- header -->
		<%-- <c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" /> --%>
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
		<!-- center -->
		<div class="C-main">

			<top>
			<div class="C-eventList">

				<div class="C-mianimg">
					<div>
						<img
							src="${root}resources/image/event_img/event_banner/bannerimg1 (1).png"
							alt="">
					</div>
					<div>
						<img
							src="${root}resources/image/event_img/event_banner/bannerimg2 (1).jpg"
							alt="">
					</div>
					<div>
						<img
							src="${root}resources/image/event_img/event_banner/bannerimg3 (1).jpg"
							alt="">
					</div>
					<div>
						<img
							src="${root}resources/image/event_img/event_banner/bannerimg4 (1).png"
							alt="">
					</div>
					<div>
						<img
							src="${root}resources/image/event_img/event_banner/bannerimg5 (1).png"
							alt="">
					</div>
				</div>




				<c:choose>
					<c:when test="${loginTeacherBean.teacherLogin == true}">
						<div class="login-circle2">
							<div class="circle-login2">

								<span id="My">환영합니다!
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
									<button style="border-radius: 25px;"><a href="${root }user/logout"">로그아웃</a></button>
								</span>
								<h1>${loginTeacherBean.teacher_Name}&nbsp;&nbsp;님! </h1>
								<br>

								<button class="loginbutton"><a href="${root }user/Mypage"  class="loginbutton">마이페이지</a>
									&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 〉</button>
							</div>
						</div>

					</c:when>

					<c:otherwise>
						<div class="login-circle">
							<div class="circle-login">

								<h1>
									로그인 이후 <br>이용해주세요!
								</h1>
								<button class="login blue_btn" ><a href="${root }user/Login" class="a_login">로그인</a></button>
								<br> <span>아이디 </span> · <span>비밀번호</span> 
								&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
								<span id="newUser">회원가입</span>
							</div>
						</div>
					</c:otherwise>
				</c:choose>



			</div>
			</header>

			<div class="teb">
				<ul class="teb_list">
					<li><a href="#teb00">전체</a></li>
					<li><a href="#teb01">초등학생</a></li>
					<li><a href="#teb02">중학생</a></li>
					<li><a href="#teb03">고등학생</a></li>
				</ul>

				<div class="teb_item">
					<div id="teb00" class="item_list">
						<!-- 전체메뉴 4개 -->
						<c:forEach var="obj" items="${wtList}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key} }"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>

					</div>

					<div id="teb01" class="item_list">
						<!-- 초등학생 4개 -->
						<c:forEach var="obj" items="${wt1}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
					</div>

					<div id="teb02" class="item_list">
						<!-- 중학생 4개 -->
						<c:forEach var="obj" items="${wt2}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
					</div>

					<div id="teb03" class="item_list">
						<!-- 고등학생 4개 -->
						<c:forEach var="obj" items="${wt3}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
					</div>
				</div>

			</div>
			
			<div class="teb2">
				<ul class="teb_list2">
					<li><a href="#teb04">전체</a></li>
					<li><a href="#teb05">교과지도</a></li>
					<li><a href="#teb06">학습지도</a></li>
					<li><a href="#teb07">생활지도</a></li>
				</ul>

				<div class="teb_item2">
					<div id="teb04" class="item_list2">
						<!-- 전체메뉴 4개 -->
						<c:forEach var="obj" items="${wtList}" begin="5" end="8" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
						
					</div>

					<div id="teb05" class="item_list2">
						<!-- 교과지도 4개 -->
						<c:forEach var="obj" items="${wt4}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
					</div>

					<div id="teb06" class="item_list2">
						<!-- 학습지도 4개 -->
						<c:forEach var="obj" items="${wt5}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
					</div>

					<div id="teb07" class="item_list2">
						<!-- 생활지도 4개 -->
						<c:forEach var="obj" items="${wt6}" begin="0" end="3" step="1" varStatus="status">
						<div class="item2">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
						</c:forEach>
					</div>
				</div>

			</div>


			<footer>
				<div class="title_text">
					<h1>현재 신청 가능한 강의</h1>
				</div>

				<div class="C-classlist">


					<c:forEach var="obj" items="${wtList}" begin="8" end="14" step="1"
						varStatus="status">
						<div class="list-img">
							<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}"> <img
								src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg"
								alt=""> <br> ${obj.WT_Title }
							</a>
						</div>
					</c:forEach>

<%-- 					<div class="list-img">
						<a href=""><img
							src="${root}resources/image/event_img/event_Thumb/best-lecture1 (1).png"
							alt="봇치더락">
							<p>생각과 마음이 자라는 그림책 수업!</p> </a>
					</div>

					<div class="list-img">
						<a href=""><img
							src="${root}resources/image/event_img/event_Thumb/best-lecture2 (1).png"
							alt="k-on">
							<p>노션으로 만들고 활용하는 디지털 교무수첩</p> </a>
					</div>

					<div class="list-img">
						<a href=""><img
							src="${root}resources/image/event_img/event_Thumb/best-lecture3 (1).jpg"
							alt="루시드">
							<p>
								인성교육 연구대회 <br> 입상을 좌우하는 방법!
							</p> </a>
					</div>

					<div class="list-img">
						<a href=""><img
							src="${root}resources/image/event_img/event_Thumb/best-lecture4 (1).png"
							alt="오르카">
							<p>법적 의무 교육15선</p> </a>
					</div>

					<div class="list-img">
						<a href=""><img
							src="${root}resources/image/event_img/event_Thumb/best-lecture5 (1).jpg"
							alt="미도와 파라솔">
							<p>돈으로 움직이는 교실 이야기</p> </a>
					</div>

					<div class="list-img">
						<a href=""><img
							src="${root}resources/image/event_img/event_Thumb/best-lecture6 (1).png"
							alt="qwer">
							<p>내일은 나도 직무 연수 강사</p> </a>
					</div> --%>

						<!-- <img src="../img/arrow-left.png" alt="">
                        <img src="../img/arrow-right.png" alt=""> -->


				</div>
		</div>
		</bottom>

		<script type="text/javascript"
			src="${root}resources/script/main_center.js"></script>

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />


	</div>
</body>
</html>