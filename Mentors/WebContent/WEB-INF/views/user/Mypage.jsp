<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Mypage</title>
<link rel="stylesheet" href="${root }resources/style/Mypage.css" />
</head>
<body>
	<div class = "Mentors_header">
	<!-- header --> 
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	</div>
			<div class="title_mypage">마이페이지</div>
				<div class="main_div">
				<div class="div_box">
					<div class="account_space">
						<a href="${root }user/Mypage_change" class="Mypage_change">정보수정</a>
						<a href="${root }user/Password_change_confirm" class="change_password">비밀번호 변경</a>
					</div>
<!-- --------------------------------------------------------- -->
					<div class="div_card div_shadow">
						<div class="div_card-header">
							<h6 class="font-weight-bold text-primary">개인정보</h6>
						</div>
						<div class="div_card-body">
							<table class="personal_info_table">
								<tr>
									<td class="td_left">성명</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_Name" name="teacher_Name" value="${loginTeacherBean.teacher_Name }" disabled="disabled"/></td>
								</tr>

								<tr>
									<td class="td_left">생년월일</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_Birth" name="teacher_Birth" value="${loginTeacherBean.teacher_Birth }" disabled="disabled"/></td>
								</tr>

								<tr>
									<td class="td_left">이메일</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_Email" name="teacher_Email" value="${loginTeacherBean.teacher_Email }" disabled="disabled"/></td>
								</tr>

								<tr>
									<td class="td_left">전화번호</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_Tel" name="teacher_Tel" value="${loginTeacherBean.teacher_Tel }" disabled="disabled"/></td>
								</tr>

								<tr>
									<td class="td_left">성별</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_Gender" name="teacher_Gender" value="${loginTeacherBean.teacher_Gender }" disabled="disabled"/></td>
								</tr>
							</table>
						</div>
					</div>
<!-- --------------------------------------------------------- -->
					<div class="div_card div_shadow">
						<div class="div_card-header">
							<h6 class="font-weight-bold text-primary">계정정보</h6>
						</div>
						<div class="div_card-body">
							<table class="account_info_table">
								<tr>
									<td class="td_left">아이디</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_id" name="teacher_id" value="${loginTeacherBean.teacher_id }" disabled="disabled"/></td>
								</tr>
								<tr>
									<td class="td_left">닉네임</td>
									<td class="td_right"><input type="text" class = "td_right" id="teacher_Nickname" name="teacher_Nickname" value="${loginTeacherBean.teacher_Nickname }" disabled="disabled"/></td>
								</tr>
							</table>
							</div>
						</div>
<!-- ------------------------------------------------------------------- -->
							<div class="div_card div_shadow">
								<div class="div_card-header">
									<h6 class="font-weight-bold text-primary">직장정보</h6>
								</div>
								<div class="div_card-body">
									<table class="work_in_table">
										<tr>
											<td class="td_left">직장명</td>
											<td class="td_right"><input type="text" class = "td_right" id="teacher_Work_In" name="teacher_Work_In" value="${loginTeacherBean.teacher_Work_In }" disabled="disabled"/></td>
										</tr>

										<tr>
											<td class="td_left">교직타입</td>
											<td class="td_right"><input type="text" class = "td_right" id="teacher_Type" name="teacher_Type" value="${loginTeacherBean.teacher_Type }" disabled="disabled"/></td>
										</tr>
										
										<tr>
											<td class="td_left">Neis</td>
											<td class="td_right"><input type="text" class = "td_right" id="teacher_Neis" name="teacher_Neis" value="${loginTeacherBean.teacher_Neis }" disabled="disabled"/></td>
										</tr>
									</table>
								</div>
							</div>
<!-- ------------------------결제 내역 스크롤-------------------------------- -->
						<div class="div_card div_shadow">
								<div class="div_card-header">
									<h6 class="font-weight-bold text-primary">결제내역</h6>
								</div>
								<div class="div_card-body">
						<div class="div_payment" style="overflow-y: scroll">
							<table class="payment_table">
								<tr>
									<th class="payment_date">결제 일자</th>
									<th class="payment_title">결제 내용</th>
									<th class="payment_price">결제 금액</th>
								</tr>
								
								<c:forEach var='obj' items="${getpayment }">
								<tr>
									<td>${obj.wtt_payment_date }</td>
									<td>${obj.wt_Title }</td>
									<td>${obj.wt_price }</td>
								</tr>
								</c:forEach>
							</table>
						</div>
					</div>
						<!-- 여기까지가 결제내역 테이블 -->
			</div>
			
			
			<div class="Mypage_button">
				<input class="delete_account" type="button" value="회원탈퇴"
						onClick="location.href='${root}user/delete_account'" /> 
				
				<a href="${root }user/logout" class="logout">로그아웃</a>
			</div>
		</div>
	</div>
	<!-- footer --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
</body>
</html>