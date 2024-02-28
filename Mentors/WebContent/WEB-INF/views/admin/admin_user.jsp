<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }resources/style/admin_style.css" />
</head>
<body>
	<div class="all_view">
		<div class="div_card div_shadow">
			<div class="div_card-header">
				<h2 class="font-weight-bold text-primary">회원관리</h2>
			</div>
			<div class="div_card-body">
				<table class="list_tb">
					<thead>
						<tr>
							<th>회원번호</th>
							<th>아이디</th>
							<th>이름</th>
							<th>비밀번호</th>
							<th>생성일</th>
						</tr>
					</thead>
					<tbody>
						<tr>
							<td>1</td>
							<td>YO_Uli</td>
							<td>이용대</td>
							<td>뚫어보시지</td>
							<td>2024-02-18</td>
						</tr>
						<tr>
							<td>2</td>
							<td>아이디</td>
							<td>이름</td>
							<td>비밀번호</td>
							<td>생성일</td>
						</tr>
						<tr>
							<td>3</td>
							<td>아이디</td>
							<td>이름</td>
							<td>비밀번호</td>
							<td>생성일</td>
						</tr>
						<tr>
							<td>4</td>
							<td>아이디</td>
							<td>이름</td>
							<td>비밀번호</td>
							<td>생성일</td>
						</tr>
						<tr>
							<td>5</td>
							<td>아이디</td>
							<td>이름</td>
							<td>비밀번호</td>
							<td>생성일</td>
						</tr>
						<tr>
							<td>6</td>
							<td>아이디</td>
							<td>이름</td>
							<td>비밀번호</td>
							<td>생성일</td>
						</tr>
					</tbody>
				</table>
				<div class="bottom_move_btn">
					<input class="m_btn" type="button" value="<">
					<input class="m_btn" type="button" value="1">
					<input class="m_btn" type="button" value=">">
				</div>
			</div>
		</div>
	</div>
</body>
</html>