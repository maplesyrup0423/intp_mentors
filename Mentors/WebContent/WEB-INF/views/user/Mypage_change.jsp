<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Mypage_change</title>
<link rel="stylesheet" href="${root }resources/style/Mypage_change.css" />
</head>
<body>
	<div class = "Mentors_header">
	<!-- header --> 
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	</div>
	<div class="title_mypage">마이페이지 수정</div>

	<div class="main_div">
		<div class="div_box">
			<!-- --------------------------------------------------------- -->
			<form:form action="${root }user/Mypage_change_pro" method="post"
				modelAttribute="modifyTeacherBean">
				<div class="div_card div_shadow">
					<div class="div_card-header">
						<h6 class="font-weight-bold text-primary">개인정보</h6>
					</div>
					<div class="div_card-body">
						<table class="personal_info_table">
							<tr>
								<td class="td_left"><form:label path="teacher_Name">성명</form:label></td>
								<td class="td_right"><form:input class = "td_right_readonly" path="teacher_Name" readonly="true" /></td>
							</tr>
							<tr>
								<td class="td_left"><form:label path="teacher_Birth">생년월일</form:label></td>
								<td class="td_right"><form:input class = "td_right_readonly" path="teacher_Birth" readonly="true" /></td>
							</tr>

							<tr>
								<td class="td_left"><form:label path="teacher_Email">이메일</form:label></td>
								<td class="td_right"><form:input class = "td_right_readonly" path="teacher_Email" readonly="true"/></td>
							</tr>

							<tr>
								<td class="td_left"><form:label path="teacher_Tel">전화번호</form:label></td>
								<td class="td_right"><form:input class = "td_right" path="teacher_Tel" /></td>
							</tr>
							
							<tr class="error_message">
								<td class="td_left"></td>
								<td class="td_right"><form:errors path="teacher_Tel" style='color:red' /></td>
							</tr>
							
							<tr>
								<td class="td_left"><form:label path="teacher_Gender">성별</form:label></td>
								<td class="td_right"><form:input class = "td_right_readonly" path="teacher_Gender" readonly="true" /></td>
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
								<td class="td_left"><form:label path="teacher_id">아이디</form:label></td>
								<td class="td_right"><form:input class = "td_right_readonly" path="teacher_id" readonly="true" /></td>
							</tr>
							<tr>
								<td class="td_left"><form:label path="teacher_Nickname">닉네임</form:label></td>
								<td class="td_right"><form:input class = "td_right" path="teacher_Nickname" /></td>
							</tr>
							<tr class="error_message">
								<td class="td_left"></td>
								<td class="td_right"><form:errors path="teacher_Nickname" style='color:red' /></td>
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
								<td class="td_left"><form:label path="teacher_Work_In">직장명</form:label></td>
								<td class="td_right"><form:input class = "td_right" path="teacher_Work_In"/></td>
							</tr>
							<tr class="error_message">
								<td class="td_left"></td>
								<td class="td_right"><form:errors path="teacher_Work_In" style='color:red' /></td>
							</tr>

							<tr>
								<td class="td_left">교직타입</td>
								<td class="td_right">
									<label><input type="radio" name="teacher_Type" value="초등교사" ${modifyTeacherBean.teacher_Type == '초등교사' ? 'checked' : ''}> 초등교사</label>
							        <label><input type="radio" name="teacher_Type" value="중등교사" ${modifyTeacherBean.teacher_Type == '중등교사' ? 'checked' : ''}> 중등교사</label>
							        <label><input type="radio" name="teacher_Type" value="고등교사" ${modifyTeacherBean.teacher_Type == '고등교사' ? 'checked' : ''}> 고등교사</label>
								</td>
							</tr>
							<tr>
								<td class="td_left"><form:label path="teacher_Neis">Neis</form:label></td>
								<td class="td_right"><form:input class = "td_right" path="teacher_Neis"/></td>
							</tr>
							<tr class="error_message">
								<td class="td_left"></td>
								<td class="td_right"><form:errors path="teacher_Neis" style='color:red' /></td>
							</tr>
							
						</table>
						<div class="Mypage_button">
							<input class="cancle" type="button" value="취소"
							onClick="location.href='${root }user/Mypage'" /> 
							
							<form:button class = "Mypage_change_button">변경하기</form:button>
						</div>
					</div>
				</div>
			</form:form>
		</div>
	</div>

	<!-- footer -->
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
</body>
</html>