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
<link rel="stylesheet" href="//cdn.jsdelivr.net/npm/xeicon@2.3.3/xeicon.min.css">
<script src="${root}/resources/script/jquery-3.3.1.min.js"></script>
<script src="${root}/resources/script/slick.min.js"></script>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div class="all_center">
		<!-- header -->
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

									<span id="My">내 정보
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<button style="border-radius: 25px;">로그아웃</button>
									</span>
									<h1>사용자 이름</h1>
									<br>

									<button class="loginbutton">뭐든 가는
										버튼&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 〉</button>
								</div>
							</div>

					</c:when>

					<c:otherwise>
					<div class="login-circle">
						<div class="circle-login">

							<h1>
								로그인 이후 <br>이용해주세요!
							</h1>
							<button class="login blue_btn">로그인</button>
							<br> <span>아이디 </span> · <span>비밀번호</span> <span
								id="newUser">회원가입</span>
						</div>
					</div>
					</c:otherwise>
					</c:choose>

				

			</div>
			</header>

			<div class="main_list"> 
        <!-- 카테고리 전체 -->
            <div class="user_teb_list">
            <!-- 학년별 카테고리 -->
                <ul class="teb_list">
                <!-- 학년별 카테고리 창 -->
                    <li class="teb_item ">
                        <a href=""class="tab_link ">
                            <span class="teb_text">전체메뉴</span>
                        </a>
                    </li>
                    <li class="teb_item ">
                        <a href="" class="tab_link ">
                            <span class="teb_text">초등학생</span>
                        </a>
                    </li>
                    <li class="teb_item ">
                        <a href="" class="tab_link ">
                            <span class="teb_text">중학생</span>
                        </a>
                    </li>
                    <li class="teb_item ">
                        <a href="" class="tab_link ">
                            <span class="teb_text">고등학생</span>
                        </a>
                    </li>
                </ul>
            </div>

            <br>
            <br>

				<div class="item_list">

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

				</div>

			</div>

			<div class="main_list"> 
            <!-- 카테고리 전체 -->
                <div class="user_teb_list">
                <!-- 학년별 카테고리 -->
                    <ul class="teb_list">
                    <!-- 학년별 카테고리 창 -->
                        <li class="teb_item_button ">
                            <button class="tab_link_button ">
                                <span class="teb_text">전체메뉴</span>
                            </button>
                        </li>
                        <li class="teb_item_button ">
                            <button  class="tab_link_button">
                                <span class="teb_text">교과지도</span>
                            </button>
                        </li>
                        <li class="teb_item_button ">
                            <button  class="tab_link_button">
                                <span class="teb_text">학습지도</span>
                            </button>
                        </li>
                        <li class="teb_item_button ">
                            <button  class="tab_link_button ">
                                <span class="teb_text">생활지도</span>
                            </button>
                        </li>
                    </ul>
                </div>
    
                <br>
                <br>

				<div class="item_list">

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

					<div class="item">
						<a href=""> <img
							src="${root}resources/image/event_img/event_Thumb/event1-1.jpg"
							alt=""> <br> 제목이자 설명
						</a>
					</div>

				</div>

			</div>


			<br>

			<footer>
				<div style="text-align: center; width: 1280px;">
					<h1>현재 신청 가능한 강의</h1>
				</div>

				<div class="C-classlist">

					<div class="list-img">
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
					</div>

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