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
	<table id="admin_table" width="1280">
		<tr height="80">
			<td colspan="2" align="center"><c:import
					url="/WEB-INF/views/admin/admin_include/admin_header.jsp" /></td>
		</tr>
		<tr>
			<td width="200" align="center" valign="top" height="100%"><div
					class="sidebar div_shadow">
					<div class="sidebar_list">
						<button class="list_home CH_list"
							onclick="location.href='${root}admin/admin_home'">관리자 홈</button>
						<button class="list_test CH_list "
							onclick="location.href='${root}admin/admin_wt'">연수</button>
						<button class="list_QnA CH_list active"
							onclick="location.href='${root}admin/admin_qna'">Q&A</button>
						<button class="list_notification CH_list"
							onclick="location.href='${root}admin/admin_noti'">공지사항</button>
						<button class="list_notification CH_list "
							onclick="location.href='${root}admin/admin_event'">이벤트</button>
						<button class="list_notification CH_list "
							onclick="location.href='${root}admin/admin_pay'">수익</button>
						<button class="list_notification CH_list "
							onclick="location.href='${root}admin/admin_user'">회원</button>
					</div>
				</div></td>
			<td width="1080" align="center" valign="top">

				<div class="all_view">
					<div class="div_card div_shadow">
						<div class="div_card-header">
							<h2 class="font-weight-bold text-primary">Q&A</h2>
						</div>
						<div class="div_card-body">
							<%-- <div class="all_select">
					<select class="admin_select">
						<option value="all">전체</option>
						<option value="1">이것만 알자! 평가문항 출제 길잡이1</option>
						<option value="2">이것만 알자! 평가문항 출제 길잡이2</option>
					</select>
				</div>
				<div class="searchbar">
					<input type="text" class="searchbar_text" placeholder="검색어를 입력하세요">
					<img class="search_btn" src="${root }resources/image/icon/admin_search_btn.png"></img>
				</div> --%>

							<div class="answer_btn-box">

								<button class="top-finish_answer">답변완료</button>
								<button class="top-waitiong_answer">답변대기</button>
							</div>

							<div>
								<table class="list_tb">
									<thead>
										<tr>
											<th>번호</th>
											<th>연수명</th>
											<th>제목</th>
											<th>작성자</th>
											<th>등록일</th>
											<th>상태</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var='qnaq' items="${adminqnaq }">
											<tr class="qna-table-list"
												onclick="location.href='${root}admin/admin_qna_detail?q_key=${qnaq.q_key }'">
												<td>${qnaq.q_key }</td>
												<td>${qnaq.wt_title }</td>
												<td>${qnaq.q_title }</td>
												<td>${qnaq.teacher_id }</td>
												<td>${qnaq.q_date }</td>
												<td><c:if test="${qnaq.q_a_check !=0}">
														<button class="finish_answer">답변완료</button>
													</c:if> <c:if test="${qnaq.q_a_check ==0}">
														<button class="waitiong_answer">답변대기</button>
													</c:if> <!-- <button class="waitiong_answer">답변대기</button> --></td>
											</tr>
										</c:forEach>
									</tbody>
								</table>
							</div>
							<div class="bottom_move_btn">
								<input class="m_btn" type="button" value="<"> <input
									class="m_btn" type="button" value="1"> <input
									class="m_btn" type="button" value=">">
							</div>
						</div>
					</div>
				</div>

			</td>
		</tr>

	</table>

</body>
</html>