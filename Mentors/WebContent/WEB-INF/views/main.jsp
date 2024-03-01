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
<link rel="stylesheet" href="${root}resources/style/xeicon.min.css">
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
			<!--class="main" -->
			<top>
			<div class="C-eventList">
				<!-- /*allimg*/ -->

				<div class="C-mianimg">
					<!-- /*bannerimg*/ -->
					<div>
						<img src="${root}resources/image/banner1.png" alt="">
					</div>
					<div>
						<img src="${root}resources/image/banner2.png" alt="">
					</div>
					<div>
						<img src="${root}resources/image/banner3.png" alt="">
					</div>
					<div>
						<img src="${root}resources/image/banner4.png" alt="">
					</div>
				</div>
				<div class="login-circle">
					<div class="circle-login">

						<h1>
							로그인 이후 <br>이용해주세요!
						</h1>
						<button class="login blue_btn">로그인</button>
						<br> <span>아이디 </span> · <span>비밀번호</span> <span id="newUser">회원가입</span>
					</div>
				</div>

			</div>
			</top>

			<div class="C-table">
				<table class="C-contentTable" border="1">
					<!-- contentall -->
					<tr>
						<td align="center">
							<div class="C-list_div">
								<!-- contentlist_div -->
								<table class="contentlist">
									<th class="bestlist" colspan="2">베스트 도서</th>
									<tr class="best_book">
										<td><a
											href="https://namu.wiki/w/%EB%8B%AC%EB%9F%AC%EA%B5%AC%ED%8A%B8%20%EA%BF%88%20%EB%B0%B1%ED%99%94%EC%A0%90"><img
												src="${root}resources/image/인공지능활용교육.jpg" alt="베스트book1">
												<p>달러구트 꿈 백화점</p> </a></td>
										<td><a
											href="https://series.naver.com/novel/detail.series?productNo=9101145"><img
												src="${root }resources/image/bookimg1.jpg" alt="베스트book2">
												<p>강철 마법사</p> </a></td>
									</tr>

									<th class="newlist" colspan="2">이번달 신권 추천</th>
									<tr class="new_book">
										<td><a href="https://page.kakao.com/content/48444531"><img
												src="${root}resources/image/bookimg2.jpg" alt="새책1">
												<p>카르미스</p></a></td>
										<td><a
											href="https://www.aladin.co.kr/shop/wproduct.aspx?ItemId=151652184"><img
												src="${root}resources/image/bookimg3.png" alt="새책2">
												<p>모스크바의 신사</p></a></td>
									</tr>
								</table>
							</div>
						</td>
						<td align="center">
							<div class="C-list_div">
								<!-- contentlist_div -->
								<table class="besttext">
									<th style="font-size: 30px;">인기 게시글</th>

								</table>
							</div>
						</td>
					</tr>
				</table>
			</div>

			<bottom>
			<div style="text-align: center; width: 1280px;">
				<h1>현재 신청 가능한 강의</h1>
			</div>

			<div class="C-classlist">
				<!-- main-center_img -->

				<div class="list-img">
					<!--center-img-->
					<a href=""><img src="${root}resources/image/E_anime1.png"
						alt="봇치더락">
						<p>봇치더락 2기 확정!</p> </a>
				</div>

				<div class="list-img">
					<!--center-img-->
					<a href=""><img src="${root}resources/image/E_enimeK-ON.jpg"
						alt="k-on">
						<p>케이온 극장판 개봉!</p> </a>
				</div>

				<div class="list-img">
					<!--center-img-->
					<a href=""><img src="${root}resources/image/E_maple1.jpg"
						alt="루시드">
						<p>메이플 이벤트!</p> </a>
				</div>

				<div class="list-img">
					<!--center-img-->
					<a href=""><img src="${root}resources/image/E_maple2.webp"
						alt="오르카">
						<p>이 악녀가!</p> </a>
				</div>

				<div class="list-img">
					<!--center-img-->
					<a href=""><img src="${root}resources/image/E_mido.webp"
						alt="미도와 파라솔">
						<p>미도와 파라솔 노래모음</p> </a>
				</div>

				<div class="list-img">
					<!--center-img-->
					<a href=""><img src="${root}resources/image/E_qwer.jpg"
						alt="qwer">
						<p>김계란의 qwer데뷔!</p> </a>
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