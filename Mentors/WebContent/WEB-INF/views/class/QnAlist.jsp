<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link rel="stylesheet"
	href="${root }resources/style/class_home_style.css" />
<link rel="stylesheet"	
	href="${root }resources/style/QnAlist.css" />
</head>
<body>
	<table width="1280" class="class_d_table">
		<tr height="80">
			<td colspan="2" align="center"><c:import
					url="/WEB-INF/views/class/class_include/class_header.jsp" /></td>
		</tr>
		<tr>
			<td rowspan="2" width="200" align="center" valign="top" height="100%"><div
					class="sidebar div_shadow">
					<div class="sidebar_list">
						<button class="CH_list list_home"
							onclick="location.href='${root}class/class_home_center_home'">강의
							홈</button>
						<button class="list_test CH_list "
							onclick="location.href='${root}class/class_home_center_test'">시험</button>
						<button class="list_QnA CH_list active"
							onclick="location.href='${root}class/QnAlist'">Q&A</button>
						<button class="list_notification CH_list "
							onclick="location.href='${root}class/Notification'">공지사항</button>
					</div>
				</div></td>
			<td height="80"><c:import
					url="/WEB-INF/views/class/class_include/class_home_center_home_top.jsp" /></td>
		</tr>
		<tr>
			<td width="1080" align="center" valign="top">
				<!-- 내용 삽입 -->
				<div class="qna_dody">
	<h2 class="title">Q&A</h2>
	<div id="searchInput">
		<input type="text" class="sc" placeholder="검색어를 입력하세요">
		<button class="search"><image src="${root }/resources/image/icon/search_input_right.png"></image></button>
	</div>
	<br />
	<hr class="hr"/>

	<script>
		// 검색을 수행하는 함수
		function search() {
			// 검색어 입력 상자에서 검색어를 가져옴
			var searchText = document.getElementById('searchInput').value.toLowerCase();

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
		document.getElementById('searchInput').addEventListener('keyup', function (event) {
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
					<th id="writer">작성자</th>
					<th id="date">작성일</th>
					<th id="state">상태</th>
				</tr>
				<thead>
				<tbody>
				<c:forEach var="item" items="${qnaList}">
					<tr class="number1">
						<td class="num">${item.q_key}</td>
      				  	<td class="tit">${item.q_Title}</td>
       					<td class="wt">${item.q_writer}</td>
       					<td class="dt">${item.q_date}</td>
        				<td class="st">
            		<c:choose>
                		<c:when test="${item.response_status == 0}">답변 대기</c:when>
              			<c:when test="${item.response_status == 1}">답변 완료</c:when>
          		    </c:choose>
       			 </td>
   				 </tr>
			</c:forEach>
				</tbody>
		</table>
	</div>
	<div style="text-decoration: none"><button class="blue_btn" onclick="location.href='class_home_Include.jsp?CHnum=3.2';"id="w_btn">글쓰기</button></div>
		<div class="bottom_move_btn">
			<input class="m_btn" type="button" value="<"/>
			<input class="m_btn" type="button" value="1"/>
			<input class="m_btn" type="button" value=">"/>
		</div>
	</div>

</body>
</html>