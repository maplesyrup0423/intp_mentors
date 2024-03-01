<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }resources/style/WT_cart_style.css">
<title>장바구니</title>
</head>
<body>
	<div class="all">


		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />



		<h2>장바구니</h2>
		<div class="line"></div>

		<div class="warning">
			장바구니에 담긴 연수는 <span class="red">신청기간 종료, 인원초과, 결제가 완료 시 자동 삭제</span>
			됩니다. <br> 전체 결제하실 경우, 영수증은 합산된금액으로만 출력가능합니다. (연수별 개별 출력은 각각
			결제하셔야합니다.)
		</div>

		<div class="cart_center_top">[장바구니 정보]</div>

		<div class="cen">

			<div class="paybox">
				<c:forEach var='obj' items="${cartList }">
					<div class="WT_pay">

						<div class="cart_thum"><img class="WT_cart_thum"
								src="${root }resources/image/WT_img/WT_Thumb/${obj.WT_Thumbnail}.jpg" /></div>

						<div class="cart_info">
							<div class="cart_title">
								<span class="red">(연수)</span> [${obj.WT_TrainingTime }분] ${obj.WT_Title }
							</div>
							<div class="cart_a">
								<span class="a_title">기수</span> <span class="a_con">oooooooooo</span>
							</div>
							<div class="cart_a">
								<span class="a_title">연수기간</span> <span class="a_con">ooooooooooo</span>
							</div>
							<div class="cart_a">
								<span class="a_title">증명서 발급</span> <span class="a_con">oooooooooooo</span>
							</div>
						</div>

						<div class="cart_payment">
							<div class="cart_pay">${obj.WT_Price }원</div>
						</div>

						<div class="cart_buttons">
							<div>
								<button onclick="location.href='${root }WT/WT_payment'"
									class="cart_del">결제하기</button>
							</div>
							<div>
								<button class="cart_del">삭제하기</button>
							</div>
						</div>
					</div>
				</c:forEach>


			</div>

			<div class="line"></div>

			<div class="WT_total">
				<div>총 주문 금액 : 50000원</div>
				<button onclick="location.href='${root }WT/WT_payment'">전부
					결제하기</button>
			</div>
		</div>


		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />


	</div>
</body>
</html>