<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<link rel="stylesheet" href="${root }resources/style/Mypage.css" />
</head>
<body>
	<center>
		<table class="main_table" >
			<h1 class = "title_mypage">마이페이지</h1>
			<tr class="main_tr">
				<td class="main_td">
					<div class = "div_box">
						<h2 class = "category">개인정보</h2>
						<table class="personal_info_table">
							<tr>
								<td class = "td_left">성명</td>
								<td class = "td_right">김씨</td>
								<td class = "td_left">생년월일</td>
								<td class = "td_right">1281-01-23</td>
							</tr>

							<tr>
								<td class = "td_left">이메일</td>
								<td class = "td_right">ajipgagosipda@gipgago.sipda</td>
								<td class = "td_left">전화번호</td>
								<td class = "td_right">02-784-8917</td>
							</tr>

							<tr>
								<td class = "td_left">성별</td>
								<td class = "td_right">남?자?</td>
								<td class = "td_left"></td>
								<td class = "td_right"></td>
							</tr>
						</table>

						<table class="account_info_table">
							<h2 class = "category">계정정보</h2>
							<tr>
								<td class = "td_left">아이디</td>
								<td class = "td_right">hahahahah</td>
								<td class = "td_left">비밀번호</td>
								<td class = "td_right"><input class = "change_password" type="button" value = "비밀번호 변경"
								onClick="location.href='Password_change_confirm.jsp'"/></td>
							</tr>

							<tr>
								<td class = "td_left">닉네임</td>
								<td class = "td_right">대머리</td>
								<td class = "td_left"></td>
								<td class = "td_right"></td>
							</tr>
						</table>
						
						<table class="work_in_table">
							<h2 class = "category">직장정보</h2>
							<tr>
								<td class = "td_left">직장명</td>
								<td class = "td_right">솔데스크 대학원생 양성 학습소</td>
								<td class = "td_left">교직타입</td>
								<td class = "td_right">
									<input type="radio" name="school_type" value="초등교사" checked onclick="return(false);">초등교사 
									<input type="radio" name="school_type" value="중등교사" onclick="return(false);">중등교사
									<input type="radio" name="school_type" value="고등교사" onclick="return(false);">고등교사
								</td>
							</tr>
						</table>
					</div> 
					
					
					<!-- 결제 내역 스크롤 -->
					<div class = "payment_div">
						<h2 class = "category_payment">결제 내역</h2>
					</div>
					<div class="div_payment" style="overflow-y: scroll">
						<table class="payment_table">
								<tr>
									<th class="payment_date">결제 일자</th>
									<th class="payment_details">결제 내용</th>
									<th class="payment_amount">결제 금액</th>
								</tr>
	
								<tr>
									<td>2024-12-31</td>
									<td>[강의]너도 할 수 있다. 결제이론!이 책만 읽으면 하루 5000만원씩 결제하는 습관이 금방! 지금
										시작하세요!</td>
									<td>332,100,000,000</td>
								</tr>
	
								<tr>
									<td>1282-04-21</td>
									<td>[역사]고조선은 어떤 나라였을까</td>
									<td>쌀 6포대</td>
								</tr>
	
								<tr>
									<td>2832-01-01</td>
									<td>2024년의 대한민국, 그때 왜 하늘을 나는 코끼리가 없었을까</td>
									<td>2022년산 와인 7병</td>
								</tr>
	
								<tr>
									<td>2008-01-30</td>
									<td>비트코인 당신도 시작할 수 있다. 흙이 금이 되는 연금술이 따로 없다</td>
									<td>비트코인 3코인</td>
								</tr>
							</table>
					</div> <!-- 여기까지가 결제내역 테이블 -->

					<div class = 'mypage_button'>
						<table>
							<tr>
								<td><input class = "delete_account" type="button" value = "회원탈퇴"
								onClick="location.href='delete_account.jsp'"/></td>
								<td width="1080px"></td>
								<td><input class = "change_account" type="button" value = "정보수정"
								onClick="location.href='Mypage_change.jsp'"/></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>