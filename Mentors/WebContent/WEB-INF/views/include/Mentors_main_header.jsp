<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root}resources/style/Mentors_Main.css" />
</head>
<script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
<body>
	<table>
			<!-- 헤더 -->
			<tr>
				<td><table class="table">
						<tr height="100">
							<td><a href="${root }main"><img height="100"
									src="${root}/resources/image/M_logo.png" alt="로고 위치" /></a></td>
							<td class="td_cen"></td>
							<td class="td_cen"><a href="${root }WT/WT_list">연수신청</a></td>
							<td class="td_cen"><a href="${root }event/event3">이벤트</a></td>
							<td class="td_cen"><a href="${root }book/Booklist">도서관</a></td>
							<td class="td_cen"><a href="${root }board/Boardlist">게시판</a></td>
							<td class="td_cen"><a href="${root }WT/WT_my_room">나의 강의실</a></td>
							<td class="td_cen"></td>
							<td class="td_cen"></td>
							<td class="td_img"><a href="${root }WT/WT_cart"><img
									class="fas fa-cart-shopping" src="${root}/resources/image/cart.png"></img></a></td>
							<td class="td_img"><a href="${root }user/Login"><img
									src="${root}/resources/image/login.png" alt="로그인" class="loginicon"></a></td>

							<!-- 마이페이지 임시버튼 -->
							<td class="td_img"><a href="${root }user/Mypage"><img
									src="${root}/resources/image/login.png" alt="마이페이지" class="loginicon"></a></td>
							<!-- 관리자 페이지 임시버튼 -->
							<td class="td_img"><a href="${root }admin/admin_home"><img
									src="${root}/resources/image/login.png" alt="관리자" class="loginicon"></a></td>
						</tr>
					</table>
				</td>
			</tr>
		</table>
</body>
</html>