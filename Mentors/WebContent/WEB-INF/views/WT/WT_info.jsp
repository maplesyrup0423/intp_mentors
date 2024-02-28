<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root}resources/style/WT_sytle.css">
<title>연수 상세 페이지</title>
</head>
<body>
	<div class="all">

		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />

		<h2>직무연수</h2>
		<!--디자인 다듬기-->
		<div class="line"></div>

		<div class="info_top">


			<div class="info_thumbnail"></div>


			<div class="info_etc">
				<div class="info_tag">[직무180분] 디지털 활용</div>
				<div class="info_title">제목 입니다!</div>
				<div class="info_price">15000원</div>
				<div class="info_line"></div>

				<div class="info_table_box">
					<table class="info_table">
						<tr>
							<td>학습 시간</td>
							<td>aaaaaaaaaaa</td>
						</tr>
						<tr>
							<td>모집 기간</td>
							<td>bbbbbbbbbbb</td>
						</tr>
						<tr>
							<td>신청 현황</td>
							<td>ccccccccccc</td>
						</tr>
						<tr>
							<td>학습 방법</td>
							<td>ddddddddddd</td>
						</tr>

					</table>

				</div>
			</div>








		</div>


		<div class="info_select">
			<select name="기수선택" id="sel">
				<option value="null">기수를 선택하세요</option>
				<option value="a">2024.02.15 ~ 2024.03.01</option>
				<option value="a">2024.02.15 ~ 2024.03.01</option>
				<option value="a">2024.02.15 ~ 2024.03.01</option>
				<option value="a">2024.02.15 ~ 2024.03.01</option>
				<option value="a">2024.02.15 ~ 2024.03.01</option>
			</select>
		</div>
		<div class="into_payment">
			<span class="total">총 금액 15000원</span> <span class="total_buttons">
				<button onclick="location.href='${root }WT/WT_payment'">연수 신청하기</button> <!--0원이면 바로 나의 강의실에 추가, 아니면 결제페이지로 이동-->
				<button onclick="location.href='${root }WT/WT_cart'">장바구니에 넣기</button>
			</span>
		</div>

		<div class="line"></div>

		<div class="info_cate" id="float">
			<button class="info_info">
				<a href="#info_info">학습정보</a>
			</button>
			<button class="info_training">
				<a href="#info_training">연수정보</a>
			</button>
		</div>

		<div class="info_box">
			<div id="info_info"></div>
			<div id="info_training"></div>
		</div>


		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

	</div>
</body>
</html>