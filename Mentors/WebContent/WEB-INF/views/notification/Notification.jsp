<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<!-- <link rel="stylesheet" href="../style/Boardlist.css" /> -->
<link rel="stylesheet"
	href="${root }resources/style/Notification.css" />
<title>Insert title here</title>
</head>

<body>
	<div class="Notification_body">
		<h2 class="title">공지사항</h2>
		<div id="searchInput">
			<input type="text" class="sc" placeholder="검색어를 입력하세요">
			<button class="search">
				<image src="${root }resources/image/icon/search_input_right.png"></image>
			</button>
		</div>
		<br />
		<hr class="hr" />

		<script>
			// 검색을 수행하는 함수
			function search() {
				// 검색어 입력 상자에서 검색어를 가져옴
				var searchText = document.getElementById('searchInput').value
						.toLowerCase();

				// 결과를 초기화
				searchResultsElement.innerHTML = '';

				// 검색어와 일치하는 항목을 찾아 결과에 추가
				for (var i = 0; i < data.length; i++) {
					if (data[i].toLowerCase().includes(searchText)) {
						var li = document.createElement('li');
						li.textContent = data[i];
						searchResultsElement.appendChild(li);
					}
				}
			}

			// 검색어 입력 상자에서 Enter 키가 눌렸을 때 검색 함수 호출
			document.getElementById('searchInput').addEventListener('keyup',
					function(event) {
						if (event.key === 'Enter') {
							search();
						}
					});
		</script>
		<div class="list">
			<table class="list_tbl">
				<thead>
					<tr class="view">
						<th id="number">번호</th>
						<th id="title">제목</th>
						<th id="date">작성일</th>
					</tr>
				<thead>
				<tbody>
					<tr class="number1">
   					 <td id="num">${notificationBean.noti_key}</td>
   					 <td id="tit"> <a href="${root}notification/Notification_Detail?noti_Key=${notificationBean.noti_key}">${notificationBean.noti_Title}</a></td>
   					 <td id="dt">${notificationBean.noti_date}</td>
					</tr>
					
				</tbody>
			</table>
		</div>
		<div class="bottom_move_btn">
			<input class="m_btn" type="button" value="<"/>
			<input class="m_btn" type="button" value="1"/>
			<input class="m_btn" type="button" value=">"/>
		</div>
	</div>
</body>

</html>