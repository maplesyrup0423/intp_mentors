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
						<%-- <button class="list_home CH_list"
							onclick="location.href='${root}admin/admin_home'">관리자 홈</button> --%>
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
										<td colspan="2">
											<input type="text" class="noti-insert-titletext_box" value="연수명을 입력하세요."/>
										</td>
									</tr>
									
									<tr>
										<th>제목</th>
										<td colspan="2">
											<textarea class="noti-insert-titletext_box" cols="30" rows="10"></textarea>
										</td>
									</tr>
									
									<tr>
										<th>내용</th>
										<td colspan="2">
										<textarea class="answertext_box" cols="30" rows="10"></textarea>
										</td>
									</tr>
								</table>
							</div>
							
							<div class="noti_detail-bottom_btn">
								<input class="noti_detail-modify_btn" type="button" value="등록"
									onclick="location.href='${root}admin/admin_noti'"/>
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