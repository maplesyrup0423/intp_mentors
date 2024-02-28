<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>

<html>
<head>
<link rel="stylesheet" href="${root }resources/style/Booklist_Style.css" />
<meta charset="UTF-8">
<title>Mentors BookList</title>
</head>
<body>
	<section id="blist_view">


		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />



		<h2 class="top_title">쌤도서</h2>
		<p class="top_text">테크빌교육 출판은 교사, 학생, 부모가 함께 만드는 교육 전문 출판사입니다.</p>
		<div class="A_view">
			<div class="list_tab">
				<input type="button" value="도서목록" />
			</div>
			<div class="book_search">
				<img src="${root }resources/image/search_input_left.png"
					class="left" /> <input type="text" id="s_bar" size="35" />
				<button class="d_btn">
					<img src="${root }resources/image/search_del.png" />
				</button>
				<button class="s_btn">
					<img src="${root }resources/image/search_input_right.png" />
				</button>
			</div>
			<div class="book_cate">
				<input type="button" value="전체" class="book_c_A" /> <input
					type="button" value="교육과정/교육정책" class="book_c_1" /> <input
					type="button" value="학급운영/생활지도" class="book_c_2" /> <input
					type="button" value="디지털역량" class="book_c_3" /> <input
					type="button" value="수업지도/학습지도" class="book_c_4" /> <input
					type="button" value="교육철학/에세이" class="book_c_5" /> <input
					type="button" value="아동도서(1-6학년)" class="book_c_6" /> <input
					type="button" value="수업디자인연구소" class="book_c_7" />
			</div>
			<a href="${root }book/Booklist_Detail">
				<div class="book_list" id="b_list"
					onclick="location.href='${root }book/Booklist_Detail';">
					<div class="book_info">
						<div class="book_img">
							<img class="b_img" src="${root }resources/image/인공지능활용교육.jpg" />
						</div>
						<div class="book_info_list">
							<div class="info_title"></div>
							<div class="info_list">
								<div class="info_list2">
									<ul id="sub_info">
										<li class="autor">저자</li>
										<li class="ISBN">ISBN</li>
										<li class="pub_date">발행일</li>
										<li class="price">정가</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</a>
		</div>



		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />


	</section>
</body>
</html>