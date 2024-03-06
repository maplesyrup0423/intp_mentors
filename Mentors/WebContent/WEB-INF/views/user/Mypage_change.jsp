<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_change</title>
<link rel="stylesheet" href="${root }resources/style/Mypage_change.css" />
</head>
<body>
	<!-- header --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
		<div class="title_mypage">마이페이지</div>
		<div class="main_div">
				<div class="div_box">
					<div class="account_space">
						<input class="change_account" type="button" value="정보수정"
						onClick="location.href='Mypage_change.jsp'" /> 
						<input class="change_password" type="button" value="비밀번호 변경"
						onClick="location.href='Password_change_confirm.jsp'" />
					</div>
<!-- --------------------------------------------------------- -->
					<form:form action="${root }user/modify_pro" method="post" modelAttribute="modifyTeacherBean">			
					<div class="div_card div_shadow">
						<div class="div_card-header">
							<h6 class="font-weight-bold text-primary">개인정보</h6>
						</div>
						<div class="div_card-body">
							<table class="personal_info_table">
								<tr>
									<td class="td_left"><form:label path="user_name">성명</form:label></td>
									<td class="td_right"><form:input path="user_name" readonly="true"/></td>
								</tr>

								<tr>
									<td class="td_left">생년월일</td>
									<td class="td_right">1281-01-23</td>
								</tr>

								<tr>
									<td class="td_left">이메일</td>
									<td class="td_right">ajipgagosipda@gipgago.sipda</td>
								</tr>

								<tr>
									<td class="td_left">전화번호</td>
									<td class="td_right">02-784-8917</td>
								</tr>

								<tr>
									<td class="td_left">성별</td>
									<td class="td_right">남?자?</td>
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
									<td class="td_right">hahahahah</td>
								</tr>
								<tr>
									<td class="td_left">닉네임</td>
									<td class="td_right">대머리</td>
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
											<td class="td_right">솔데스크 대학원생 양성 학습소</td>
										</tr>

										<tr>
											<td class="td_left">교직타입</td>
											<td class="td_right"><input type="radio"
												name="school_type" value="초등교사" checked
												onclick="return(false);">초등교사 <input type="radio"
												name="school_type" value="중등교사" onclick="return(false);">중등교사
												<input type="radio" name="school_type" value="고등교사"
												onclick="return(false);">고등교사</td>
										</tr>
									</table>
								</div>
							</div>

			</div>
			<div class="Mypage_button">
				<input class="delete_account" type="button" value="회원탈퇴"
						onClick="location.href='Mypage_change.jsp'" /> 
				
				<a href="${root }user/logout" class="logout">로그아웃</a>
			</div>
		</div>
	</form:form>
	<!-- footer --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
</body>
</html>