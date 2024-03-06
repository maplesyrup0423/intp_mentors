<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root }resources/style/Booklist_Detail_Style.css" />
<link rel="stylesheet" href="${root }resources/style/class_home_style.css" />
<meta charset="UTF-8">
<title>Detail Page</title>
</head>
<body>
	<section id="detail_view">
	
	<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	
		<h2 class="top_title">도서관</h2>
		<p class="top_text">테크빌교육 출판은 교사, 학생, 부모가 함께 만드는 교육 전문 출판사입니다.</p>
		<div class="A_view">
		<div class="list_tab">
			<input class="blist-home" type="button" value="도서목록" />
		</div>
		<div class="book_search">
			<img src="${root }resources/image/icon/search_input_left.png" class="left" /> <input
				type="text" id="s_bar" size="35" />
			<button class="d_btn">
				<img src="${root }resources/image/icon/search_del.png" />
			</button>
			<button class="s_btn">
				<img src="${root }resources/image/icon/search_input_right.png" />
			</button>
		</div>
		<div class="bookdetail_box">
			<div class="bd_img">
				<div class="img_box"><img src="${root }resources/image/book_img/${bookInfo.bk_img}.jpg"/></div>
			</div>
			<div class="bd_info">
				<div class="info_box">
					<div class="title"><span class="booklist-title-font">${bookInfo.bk_title}</span></div>
					<hr/>
					<div class="info_list"></div>
					<div class="list1">
						<table>
							<tr>
								<th>작가</th>
								<td class="booklist-info-font">${bookInfo.bk_autor}</td>
							</tr>
							<tr>
								<th>출판사</th>
								<td class="booklist-info-font">${bookInfo.bk_publisher}</td>
							</tr>
							<tr>
								<th>발행일</th>
								<td class="booklist-info-font">${bookInfo.bk_date}</td>
							</tr>
							<tr>
								<th>ISBN</th>
								<td class="booklist-info-font">${bookInfo.bk_isbn}</td>
							</tr>
						</table>
					</div>
					<hr />
					<div class="list2">
						<table>
							<tr>
								<th>정가</th>
								<td class="booklist-info-font">${bookInfo.bk_price}</td>
							</tr>
							<tr>
								<th>판매처</th>
								<td><button id="sales" onclick="location.href='${bookInfo.bk_kobo}'">교보문고<img src="../img/expand_btn.png" /></button></td>
							</tr>
							<tr>
								<th>링크복사</th>
								<td class="booklist-info-font"></td>
							</tr>
						</table>
					</div>
					<div class="icon"></div>
				</div>
			</div>
		</div>
		
		<!-- <div class="Books">
			<h2>관련 도서</h2>
		</div>
		<div class="another_Books">
			<div class="aBook_img"></div>
			<div class="aBook_info">
				<ul class="ul_list">
					<li class="aBook_title">제목</li>
					<li class="aBook_autor">저자</li>
				</ul>
			</div>
		</div> -->
		
		
<!-- 		<div class="info_box1">
			<div class="box_title1">
				<h2>도서 정보</h2>
			</div>
			<div class="box_info1">
				<div class="box_btn">
					<input type="button" id="iw_btn" value="펼쳐보기" />
				</div>
			</div>
		</div> -->
		<div class="div_card div_shadow">
			<div class="div_card-header">
				<h2 class="font-weight-bold text-primary">도서 정보</h2>
			</div>
			<div class="div_card-body">
				<div class="GS_table_div">${bookInfo.bk_info}</div>
			</div>

		</div>
				<div class="div_card div_shadow">
			<div class="div_card-header">
				<h2 class="font-weight-bold text-primary">목차 정보</h2>
			</div>
			<div class="div_card-body">
				<div class="GS_table_div">${bookInfo.bk_content}</div>
			</div>

		</div>
				<div class="div_card div_shadow">
			<div class="div_card-header">
				<h2 class="font-weight-bold text-primary">저자 정보</h2>
			</div>
			<div class="div_card-body">
				<div class="GS_table_div">${bookInfo.bk_autorinfo}</div>
			</div>

		</div>
		
		</div>
		
		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
		
	</section>
</body>
</html>