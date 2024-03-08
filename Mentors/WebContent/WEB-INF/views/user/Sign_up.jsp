<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.sql.*"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<c:set var='root' value="${pageContext.request.contextPath }/"/>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Sign Up</title>
<link rel="stylesheet" href="${root }resources/style/Sign_up.css" />
</head>
<body>
	<div class = "Mentors_header">
	<!-- header --> 
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />
	</div>
	<div class="container">
		<div class="sign">회원가입</div>
		<hr />
		<form:form action="${root }user/Sign_up_pro" method = "post"
				   modelAttribute="Sign_upTeacherBean">
			<div class="body">
				<div class="letter_personal_information">개인정보 입력</div>
				<!-- 개인정보 입력 -->
				<div class="personal_information">
					<!-- 성명 -->
					<p>
						<form:input path = "teacher_Name" /> 
						<form:label path = "teacher_Name">
							<span>성명을 입력하세요. ex) 제갈김씨</span>
						</form:label>
						
					</p>
					<!-- 생일 -->
					<p>
						<form:input path = "teacher_Birth" /> 
						<form:label path = "teacher_Birth">
							<span>생년월일을 입력하세요. ex)15600231</span>
						</form:label>
					</p>
					<!-- 성별 -->
					<div class="gender_choice">
						<form:select path = "teacher_Gender">
							<option value="남성" selected>남성</option>
							<option value="여성">여성</option>
						</form:select>
					</div>
					<!-- 이메일 -->
					<p>
						<form:input path = "teacher_Email" />
						<form:label path = "teacher_Email">
							<span>이메일을 입력하세요. ex)Ahjipga@naver.com</span>
						</form:label>
					</p>
					<!-- 전화번호 -->
					<p>
						<form:input path = "teacher_Tel" /> 
						<form:label path = "teacher_Tel"> 
							<span>전화번호를 입력하세요.
								ex)010-1234-5678
							</span>
						</form:label>
					</p>
				</div>

				<!-- 계정생성 -->
				<div class="letter_create_account">계정 생성</div>
				<div class="create_account">
					<!-- 아이디  -->
					<p class="absolute">
						<form:input path = "teacher_id" /> 
						<form:label path = "teacher_id">
							<span>아이디를 입력하세요.</span>
						</form:label>
						<button type="button" onclick="checkTeacherIdExist()">중복확인</button>
					</p>
					<div class="id_check_message">사용가능할지도 모르는 아이디입니다.</div>

					<!-- 비밀번호 -->
					<p>
						<form:input path = "teacher_Password" autocomplete="off"/>
						<form:label path = "teacher_Password"> 
							<span>비밀번호를 입력하세요</span>
						</form:label>
					</p>
					<!-- 비밀번호 확인 -->
					<p>
						<form:input path = "teacher_Password2" autocomplete="off" />
						<form:label path = "teacher_Password2"> 
							<span>비밀번호 확인</span>
						</form:label> 
					</p>
					<div class="password_check_message">
						제대로 다시 작성한게 맞나요? 아닌거같은데? 확인안해요?
					</div>
					<!-- 닉네임 -->
					<p class="absolute">
						<form:input path = "teacher_Nickname"  /> 
						<form:label path = "teacher_Nickname"> 
							<span>닉네임을 입력해주세요. </span>
						</form:label>
					</p>
				</div>

				<!-- 직장정보 -->
				<div class="letter_work_in_information">직장정보 입력</div>
				<div class="work_in_information">
					<!-- 직장 -->
					<p>
						<form:input path = "teacher_Work_In" /> 
						<form:label path = "teacher_Work_In"> 
							<span>솔데스크 대학원</span>
						</form:label>
					</p>

					<!-- 교직타입 -->
					<div class="school_type">
						<form:select path = "teacher_Type">
							<option value="초등교사" selected>초등교사</option>
							<option value="중등교사">중등교사</option>
							<option value="고등교사">고등교사</option>
						</form:select>
					</div>

					<p>
						<form:input path = "teacher_Neis" /> 
						<form:label path = "teacher_Neis">
							<span>neis 정보를 입력하세요.</span>
						</form:label>
					</p>
				</div>
				<div class = "sign_up_button_space">
					<button type="button" class = "cancle" onclick="location.href='${root}user/Login'">돌아가기</button>
					<form:button class="Sign_up_button">회원가입</form:button>
				</div>
			</div>
		</form:form>
	</div>
	<!-- footer --> 
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
</body>
</html>