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
				<h2 class="font-weight-bold text-primary">연수신청</h2>
			</div>
			<div class="div_card-body">
				<div class="qna_select">
					<select>
						<option value="1">이것만 알자! 평가문항 출제 길잡이1</option>
						<option value="1">이것만 알자! 평가문항 출제 길잡이2</option>
					</select>
				</div>
				<div class="searchbar">
					<input type="text" class="searchbar_text" placeholder="검색어를 입력하세요">
					<img class="search_btn" src="../img/admin_search_btn.png"></img>
				</div>
				<div>
					<table class="list_tb">
						<thead>
							<tr>
								<th>번호</th>
								<th>신청자</th>
								<th>과정명</th>
								<th>신청일</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<td>1</td>
								<td>YO_Uli</td>
								<td>이것만 알자! 평가문항 출제 길잡이1</td>
								<td>2024-02-18</td>
							</tr>
							<tr>
								<td>2</td>
								<td>YO_Uli</td>
								<td>이것만 알자! 평가문항 출제 길잡이2</td>
								<td>2024-02-18</td>
							</tr>
							<tr>
								<td>3</td>
								<td>신청자</td>
								<td>과정명</td>
								<td>신청일</td>
							</tr>
							<tr>
								<td>4</td>
								<td>신청자</td>
								<td>과정명</td>
								<td>신청일</td>
							</tr>
							<tr>
								<td>5</td>
								<td>신청자</td>
								<td>과정명</td>
								<td>신청일</td>
							</tr>
							<tr>
								<td>6</td>
								<td>신청자</td>
								<td>과정명</td>
								<td>신청일</td>
							</tr>
						</tbody>
					</table>
				</div>
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