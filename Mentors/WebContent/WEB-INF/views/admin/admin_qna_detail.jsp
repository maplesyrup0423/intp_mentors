<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet"
	href="${root }resources/style/admin_detail_style.css" />
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
						<%-- <button class="list_home CH_list"
							onclick="location.href='${root}admin/admin_home'">관리자 홈</button> --%>
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
							<div>
								<table class="list_tb">
									<tr>
										<th>연수명</th>
										<td colspan="5">${adminqnaqbean.wt_title }</td>
									</tr>

									<tr>
										<th>번호</th>
										<td>${adminqnaqbean.q_key }</td>

										<th>작성자</th>
										<td>${adminqnaqbean.teacher_name }</td>

										<th>작성일</th>
										<td>${adminqnaqbean.q_date }</td>
									</tr>

									<tr>
										<th>제목</th>
										<td colspan="5">${adminqnaqbean.q_title }</td>
									</tr>

									<tr>
										<th>내용</th>
										<td colspan="5">${adminqnaqbean.q_content }</td>
									</tr>

								</table>

							</div>
							<form:form
								action="${root }admin/a_update?q_key=${adminqnaqbean.q_key }"
								method="post" modelAttribute="answertext">

								<div class="qna-answertext_box">
									<h2>답변작성</h2>
									<table class="list_tb">
										<tr>
											<th>답변내용</th>
											<td><form:input class="answertext_box" path="a_content"
													value="${adminqnaa }"></form:input></td>
										</tr>
									</table>
								</div>

								<div class="qna_detail-bottom_btn">
									<form:button class="qna_detail-answer_btn"> 답변작성</form:button>
									<%-- <input class="qna_detail-answer_btn" type="button" value="답변작성"
									onclick="location.href='${root}admin/admin_qna'"/> --%>
							
							
						</div>
						</form:form>
						<input class="qna_detail-list_btn" type="button" value="목록으로"
								onclick="location.href='${root}admin/admin_qna'" />
					</div>
				</div>
				</div>

			</td>
		</tr>

	</table>

</body>
</html>