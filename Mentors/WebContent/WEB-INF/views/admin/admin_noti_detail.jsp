<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
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
						<button class="list_home CH_list"
							onclick="location.href='${root}admin/admin_home'">관리자 홈</button>
						<button class="list_test CH_list "
							onclick="location.href='${root}admin/admin_wt'">연수</button>
						<button class="list_QnA CH_list "
							onclick="location.href='${root}admin/admin_qna'">Q&A</button>
						<button class="list_notification CH_list active"
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
							<h2 class="font-weight-bold text-primary">공지사항</h2>
						</div>
						<div class="div_card-body">
							<div>
								<table class="list_tb">
								
									<tr>
										<th>연수명</th>
										<td colspan="3">연수명이 있었는데요? 없었습니다!</td>
									</tr>
									
									<tr>
										<th>번호</th>
										<td>1</td>
																				
										<th>작성일</th>
										<td>2024-02-18</td>
									</tr>
									
									<tr>
										<th>제목</th>
										<td colspan="3">무슨일이 있을까요?</td>
									</tr>
									
									<tr>
										<th>내용</th>
										<td colspan="3">
										으흠.. 큰일이 난거 같아요 감기가 나았었는데 <br />
										왜일까요? 다시 머리가 아파오는 이 느낌 <br />
										잠을 잘 못자서 그런걸까요? <br />
										몸이 너무 나약해진것같아요.. 슬퍼요.. <br />
										</td>
									</tr>
								</table>
							</div>
							
							<div class="noti_detail-bottom_btn">
								<input class="noti_detail-modify_btn" type="button" value="수정"
									onclick="location.href='${root}admin/admin_noti_insert'"/>
								<input class="noti_detail-list_btn" type="button" value="목록으로"
									onclick="location.href='${root}admin/admin_noti'"/>
							</div>
							
						</div>
					</div>
				</div>

			</td>
		</tr>

	</table>

</body>
</html>