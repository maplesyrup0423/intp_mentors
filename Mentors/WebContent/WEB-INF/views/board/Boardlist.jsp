<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root }resources/style/Boardlist.css" />
<title>Insert title here</title>
</head>

<body>

	<!-- header -->
	<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />



	<h2 class="title">게시판</h2>
	<div id="searchInput">
		<input type="text" class="sc" placeholder="검색어를 입력하세요">
		<button class="search">
			<image src="${root }resources/image/search_input_right.png"></image>
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
					<th id="category">카테고리</th>
					<th id="title">제목</th>
					<th id="writer">작성자</th>
					<th id="date">작성일</th>
					<th id="state">상태</th>
				</tr>
			<thead>
			<tbody>
				<tr class="number1">
					<td id="num">1</td>
					<td id="cate">카테고리</td>
					<td id="tit"
						onClick="location.href='${root}board/Boardlist_Detail'">제목</td>
					<td id="wt">작성자</td>
					<td id="dt">작성일</td>
					<td id="st">
						<div class="bordergreen">답변완료</div>
					</td>

				</tr>
				<tr class="category1">
					<td id="num2">2</td>
					<td id="cate2">카테고리</td>
					<td id="tit2"
						onClick="location.href='${root}board/Boardlist_Detail'">제목</td>
					<td id="wt2">작성자</td>
					<td id="dt2">작성일</td>
					<td id="st2"><div class="bordergrey">답변대기</div></td>

				</tr>
				<tr class="title1">
					<td id="num3">3</td>
					<td id="cate3">카테고리</td>
					<td id="tit3"
						onClick="location.href='${root}board/Boardlist_Detail'">제목</td>
					<td id="wt3">작성자</td>
					<td id="dt3">작성일</td>
					<td id="st3"><div class="bordergreen2">상태</div></td>

				</tr>
				<tr class="writer1">
					<td id="num4">4</td>
					<td id="cate4">카테고리</td>
					<td id="tit4"
						onClick="location.href='${root}board/Boardlist_Detail'">제목</td>
					<td id="wt4">작성자</td>
					<td id="dt4">작성일</td>
					<td id="st4"><div class="bordergreen3">상태</div></td>

				</tr>
				<tr class="date1">
					<td id="num5">5</td>
					<td id="cate5">카테고리</td>
					<td id="tit5"
						onClick="location.href='${root}board/Boardlist_Detail'">제목</td>
					<td id="wt5">작성자</td>
					<td id="dt5">작성일</td>
					<td id="st5"><div class="bordergreen4">상태</div></td>

				</tr>
				<tr class="state1">
					<td id="num6">6</td>
					<td id="cate6">카테고리</td>
					<td id="tit6"
						onClick="location.href='${root}board/Boardlist_Detail'">제목</td>
					<td id="wt6">작성자</td>
					<td id="dt6">작성일</td>
					<td id="st6"><div class="bordergreen5">상태</div></td>
				</tr>
			</tbody>
		</table>
	</div>
	<div class="w_btn_div">
		<button id="blue_btn"
			onClick="location.href='${root}board/Board_insert'">글쓰기</button>
	</div>
	<div>
		<center>
			<c:if test="${count>0 }">
				<!-- 
            전체글 10개 => 1페이지(10/10+1)=>1
            전체글 34개 => 4페이지(34/10+1)=>4 -->
				<c:set var="pageCount"
					value="${count/pageSize + (count%pageSize==0? 0:1) }" />
				<!-- 시작 페이지 숫자 지정 -->
				<c:set var="startPage" value="1" />
				<c:if test="${currentPage%10 != 0 }">
					<fmt:parseNumber var="result" value="${currentPage/10 }"
						integerOnly="true" />
					<c:set var="startPage" value="${result*10+1 }" />
				</c:if>
				<!-- 화면에 보여질 페이지 처리 숫자 -->
				<c:set var="pageBlock" value="${10 }" />
				<!-- 첫번째 페이지 기준 : 1+10-1 = 10 -->
				<c:set var="endPage" value="${startPage+pageBlock-1 }" />
				<c:if test="${endPage>pageCount }">
					<c:set var="endPage" value="${pageCount}" />
				</c:if>
				<!-- 이전페이지 -->
				<c:if test="${startPage>10 }">
					<a href="BoardListCon.do?pageNum=${startPage-10 }"
						style="text-decoration: none"> [이전] </a>
				</c:if>

				<c:forEach var="i" begin="${startPage }" end="${endPage }">
					<a href="BoardListCon.do?pageNum=${i }"
						style="text-decoration: none"> [1] </a>
				</c:forEach>

				<c:if test="${endPage<pageCount }">
					<!-- 다음페이지 -->
					<a href="BoardListCon.do?pageNum=${startPage+10 }"
						style="text-decoration: none"> [다음] </a>
				</c:if>
			</c:if>
		</center>
	</div>


	<!-- footer -->
	<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />

</body>

</html>