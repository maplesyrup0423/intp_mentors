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
	<center>
		<table class="main_table" >
			<h1 class = "title_mypage">마이페이지 수정</h1>
			<tr class="main_tr">
				<td class="main_td">
					<div class = "div_box" >
						<h2 class = "category">개인정보 관리</h2>
						<table class="personal_info_table">
							<tr>
								<td class = "td_left">성명</td>
								<td class = "td_right"><input type="text" value = "김씨"/></td>
								<td class = "td_left">생년월일</td>
								<td class = "td_right"><input type="text" value = "1281-01-23"/></td>
							</tr>

							<tr>
								<td class = "td_left">이메일</td>
								<td class = "td_right"><input type="text" value = "ajipgagosipda@gipgago.sipda"/></td>
								<td class = "td_left">전화번호</td>
								<td class = "td_right"><input type="text" value = "02-784-8917"/></td>
							</tr>
						</table>

						<table class="account_info_table">
							<h2 class = "category">계정정보 관리</h2>
							<tr>
								<td class = "td_left">아이디</td>
								<td class = "td_right"><input type="text" value = "hahahahah"/></td>
								<td class = "td_left">닉네임</td>
								<td class = "td_right"><input type="text" value = "대머리"/></td>
							</tr>
							
							<tr>
								<td class = "td_left">현재 비밀번호</td>
								<td class = "td_right"><input type="password" /></td>
							</tr>
						</table>
						
						<table class="work_in_table">
							<h2 class = "category">직장정보 관리</h2>
							<tr>
								<td class = "td_left">직장명</td>
								<td class = "td_right"><input type="text" value = "솔데스크 대학원생 양성 학습소"/></td>
								<td class = "td_left">교직타입</td>
								<td class = "td_right">
									<input type="radio" name="school_type" value="초등교사" checked>초등교사 
									<input type="radio" name="school_type" value="중등교사">중등교사
									<input type="radio" name="school_type" value="고등교사">고등교사
								</td>
							</tr>
						</table>
					</div> 
					<div>
						<table>
							<tr>
								<td><input class = "change_fin" type="button" value = "수정완료"
								onClick="location.href='Mypage.jsp'"/></td>
							</tr>
						</table>
					</div>
				</td>
			</tr>
		</table>
	</center>
</body>
</html>