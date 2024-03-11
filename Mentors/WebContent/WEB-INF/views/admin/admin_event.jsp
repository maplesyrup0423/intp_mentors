<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }resources/style/admin_detail_style.css" />
</head>
<body>
<table id="admin_table" width="1280">
		<tr height="80">
			<td colspan="2" align="center"><c:import
					url="/WEB-INF/views/admin/admin_include/admin_header.jsp" /></td>
		</tr>
		<tr>
			<td width="200" align="center" valign="top" height="100%"><div class="sidebar div_shadow">
					<div class="sidebar_list">
						<button class="list_home CH_list "
							onclick="location.href='${root}admin/admin_home'">관리자
							홈</button>
						<button class="list_test CH_list "
							onclick="location.href='${root}admin/admin_wt'">연수</button>
						<button class="list_QnA CH_list "
							onclick="location.href='${root}admin/admin_qna'">Q&A</button>
						<button class="list_notification CH_list"
							onclick="location.href='${root}admin/admin_noti'">공지사항</button>
						<button class="list_notification CH_list active"
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
							<h2 class="font-weight-bold text-primary">이벤트</h2>
						</div>
						<div class="div_card-body">
							<div>
								<table class="list_tb">
									<thead>
										<tr>
											<th>이벤트코드</th>
											<th>썸네일</th>
											<th>이벤트명</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
									<c:forEach var='obj' items="${evList }">
										<tr>
											<td>${obj.event_key }</td>
											<td class="event_img_td">
											<img src="${root }resources/image/event_img/event_Thumb/${obj.event_thumbnail }" />
											</td>
											<td>${obj.event_title }</td>
											<td>
												<button class="delete-btn" onclick="location.href='${root}admin/event_delete?event_key=${obj.event_key }'">삭제</button>
											</td>
										</tr>
										</c:forEach>
										
									</tbody>
								</table>
							</div>
							<div class="bottom_move_btn">
								<span class="admin_span">
									<input class="m_btn" type="button" value="<">
									<input class="m_btn" type="button" value="1">
									<input class="m_btn" type="button" value=">">
								</span>
									<%-- <input class="new_wt_btn" type="button" value="이벤트등록"
									onclick="location.href='${root}admin/admin_event_insert'"/> --%>
							</div>
						</div>
					</div>
				</div>
			
			</td>
		</tr>

	</table>

</body>
</html>