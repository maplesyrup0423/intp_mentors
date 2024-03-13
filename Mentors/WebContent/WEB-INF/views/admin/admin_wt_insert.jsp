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
						<button class="list_test CH_list active"
							onclick="location.href='${root}admin/admin_wt'">연수</button>
						<button class="list_QnA CH_list "
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
							<h2 class="font-weight-bold text-primary">연수관리</h2>
						</div>
						<div class="div_card-body">
							<div>
							<h2 class="wt-insert-title">연수등록</h2>
								<table class="wt-table-list">
									<tr>
										<th>과정명</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
									
									<tr>
										<th>가격</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
									
									<tr>
										<th>학습시간</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
									
									<tr>
										<th>학급</th>
										<td>
											<select class="wt-select">
												<option value="1">초등학교</option>
												<option value="2">중학교</option>
												<option value="3">고등학교</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<th>분야</th>
										<td>
											<select class="wt-select">
												<option value="1">교과지도</option>
												<option value="2">학습지도</option>
												<option value="3">생활지도</option>
											</select>
										</td>
									</tr>
									
									<tr>
										<th>썸네일</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
									
									<tr>
										<th>상세이미지</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
									
									<tr>
										<th>연수정보</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
									
									<tr>
										<th>비디오</th>
										<td>
											<input class="wt-table-textarea" type="text" />
										</td>
									</tr>
								</table>
								<div class="wt-bottom_btn-box">
									<input class="wt-insert_btn" type="button" value="연수등록"
									onclick="location.href='${root}admin/admin_wt'"/>
									<input class="wt-movelist_btn" type="button" value="목록으로"
									onclick="location.href='${root}admin/admin_wt'"/>
								</div>
							</div>
						</div>
					</div>
				</div>

			</td>
		</tr>

	</table>

	</td>
	</tr>

	</table>

</body>
</html>