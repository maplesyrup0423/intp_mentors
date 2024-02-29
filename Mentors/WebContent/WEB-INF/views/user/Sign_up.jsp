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
	<div class="container">
		<div class="sign">회원가입</div>
		<hr />
		<form:form action="${root }Sign_up_pro" method = "post"
				   modelAttribute="Sign_upTeacherBean">
			<div class="body">
				<div class="letter_personal_information">개인정보 입력</div>
				<!-- 개인정보 입력 -->
				<div class="personal_information">
					<!-- 성명 -->
					<p>
						<form:input path = "Teacher_Name" /> 
						<form:label path = "Teacher_Name">
							<span>성명을 입력하세요. ex) 제갈김씨</span>
						</form:label>
						
					</p>
					<!-- 생일 -->
					<p>
						<form:input path = "Teacher_Birth" /> 
						<form:label path = "Teacher_Birth">
							<span>생년월일을 입력하세요. ex)15600231</span>
						</form:label>
					</p>
					<!-- 성별 -->
					<div class="gender_choice">
						<form:select path = "Teacher_Gender">
							<option value="male" selected>남성</option>
							<option value="femaie">여성</option>
						</form:select>
					</div>
					<!-- 이메일 -->
					<p>
						<form:input path = "Teacher_Email" />
						<form:label path = "Teacher_Email">
							<span>이메일을 입력하세요. ex)Ahjipga@naver.com</span>
						</form:label>
					</p>
					<!-- 전화번호 -->
					<p>
						<form:input path = "Teacher_Tel" /> 
						<form:label path = "Teacher_Tel"> 
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
						<form:input path ="Teacher_Id" /> 
						<form:label path = "Teacher_Id">
							<span>아이디를 입력하세요.</span>
						</form:label>
						<button type="button" onclick="checkTeacherIdExist()">중복확인</button>
					</p>
					<div class="id_check_message">사용가능할지도 모르는 아이디입니다.</div>

					<!-- 비밀번호 -->
					<p>
						<form:input path = "Teacher_Password" autocomplete="off"/>
						<form:label path = "Teacher_Password"> 
							<span>비밀번호를 입력하세요</span>
						</form:label>
					</p>
					<!-- 비밀번호 확인 -->
					<p>
						<form:input path = "Teacher_Password2" autocomplete="off" />
						<form:label path = "Teacher_Password2"> 
							<span>비밀번호 확인</span>
						</form:label> 
					</p>
					<div class="password_check_message">
						제대로 다시 작성한게 맞나요? 아닌거같은데? 확인안해요?
					</div>
					<!-- 닉네임 -->
					<p class="absolute">
						<form:input path = "Teacher_Nickname"  /> 
						<form:label path = "Teacher_Nickname"> 
							<span>닉네임을 입력하고 중복확인을 눌러주세요 </span>
						</form:label>
						<button type="button" onclick="checkTeacherNicknameExist()">중복확인</button>
					</p>
					<div class="nickname_check_message">
						이미 13348개 존재하는 닉네임입니다. 다른걸 고르세요
					</div>
				</div>

				<!-- 직장정보 -->
				<div class="letter_work_in_information">직장정보 입력</div>
				<div class="work_in_information">
					<!-- 직장 -->
					<p>
						<form:input path = "Teacher_Work_In" /> 
						<form:label path = "Teacher_Work_In"> 
							<span>솔데스크 대학원</span>
						</form:label>
					</p>

					<!-- 교직타입 -->
					<div class="school_type">
						<form:select path = "Teacher_Type">
							<option value="element_School" selected>초등교사</option>
							<option value="middle_School">중등교사</option>
							<option value="high_School">고등교사</option>
						</form:select>
					</div>

					<p>
						<form:input path = "Teacher_Neis" /> 
						<form:label path = "Teacher_Neis">
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
</body>
</html>