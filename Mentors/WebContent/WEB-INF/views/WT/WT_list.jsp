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
<title>직무연수</title>
</head>
<body>
	<div class="all">

		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />


		<h2>직무연수</h2>
		<hr>
		<div class="container">
			<table class="container_table">
				<tr>
					<td>
						<div class="category_time">
							<div class="category_title">시간별</div>
							<div>
								<input type="radio" value="0" name="rad1" checked>전체
							</div>
							<div>
								<input type="radio" value="1" name="rad1">0분~60분
							</div>
							<div>
								<input type="radio" value="2" name="rad1">60분~90분
							</div>
							<div>
								<input type="radio" value="3" name="rad1">90분~120분
							</div>
							<div>
								<input type="radio" value="4" name="rad1">120분~150분
							</div>
						</div>
					</td>
					<td>
						<div class="category_time">
							<div class="category_title">학급별</div>
							<div>
								<input type="radio" value="0" name="rad2" checked>전체
							</div>
							<div>
								<input type="radio" value="1" name="rad2">초등학교
							</div>
							<div>
								<input type="radio" value="2" name="rad2">중학교
							</div>
							<div>
								<input type="radio" value="3" name="rad2">고등학교
							</div>
						</div>
					</td>
					<td>
						<div class="category_time">
							<div class="category_title">분야별</div>
							<div>
								<input type="radio" value="0" name="rad3" checked>전체
							</div>
							<div>
								<input type="radio" value="1" name="rad3">교과지도
							</div>
							<div>
								<input type="radio" value="2" name="rad3">학습지도
							</div>
							<div>
								<input type="radio" value="3" name="rad3">생활지도
							</div>
							<div>
								<input type="radio" value="4" name="rad3">어학
							</div>
						</div>
					</td>
				</tr>
			</table>






		</div>

		<hr>

		<c:forEach var='obj' items="${wtList }">
			<div class="WT_table_box">
				<div class="WT_table_top">
					<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}">
						<div class="thumb">
							<img class="WT_list_img"
								src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg" />
						</div>
					</a>
				</div>
				<div class="WT_table_bottom">
					<a href="${root }WT/WT_info?WT_Key=${obj.WT_Key}">
						<div class="wtt">${obj.WT_Title }</div>
					</a>
					<div id="wt_bot">
						<div>
							<span>${obj.WT_Price }원</span> <span><button
									onclick="location.href='${root }WT/WT_payment3?WT_Key=${obj.WT_Key }'">연수신청</button></span>
						</div>
					</div>
				</div>
			</div>

		</c:forEach>

		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

	</div>
</body>
</html>