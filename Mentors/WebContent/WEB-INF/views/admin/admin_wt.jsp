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
			<td width="200" align="center" valign="top" height="100%"><div
					class="sidebar div_shadow">
					<div class="sidebar_list">
						<button class="list_home CH_list"
							onclick="location.href='${root}admin/admin_home'">관리자 홈</button>
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
							<div class="qna_select">
								<select>
									<option value="1">이것만 알자! 평가문항 출제 길잡이1</option>
									<option value="1">이것만 알자! 평가문항 출제 길잡이2</option>
								</select>
							</div>
							<div class="searchbar">
								<input type="text" class="searchbar_text"
									placeholder="검색어를 입력하세요"> <img class="search_btn"
									src="${root }resources/image/icon/admin_search_btn.png"></img>
							</div>
							<div>
								<table class="list_tb">
									<thead>
										<tr>
											<th>연수코드</th>
											<th>썸네일</th>
											<th>과정명</th>
											<th>관리</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>1</td>
											<td class="wt_img_td"><img
												src="${root }resources/image/WT_img/WT_Thumb/교원을_위한_인공지능(AI)_첫걸음_Thumb.jpg" />
											</td>
											<td>이것만 알자! 평가문항 출제 길잡이1</td>
											<td>
												<button class="wt-modify-btn">수정</button>
												<button class="wt-delete-btn">삭제</button>
											</td>
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
								<span>
									<input class="m_btn" type="button" value="<">
									<input class="m_btn" type="button" value="1">
									<input class="m_btn" type="button" value=">">
								</span>
									<input class="new_wt_btn" type="button" value="연수등록"
									onclick="location.href='${root}admin/admin_wt_insert'"/>
							</div>
						</div>
					</div>
				</div>

			</td>
		</tr>

	</table>

</body>
</html>