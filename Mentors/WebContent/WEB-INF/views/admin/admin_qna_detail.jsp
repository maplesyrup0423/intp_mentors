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
										<th>과목명</th>
										<td colspan="5">과목명이 있었는데요? 없었습니다!</td>
									</tr>
										
									<tr>
										<th>번호</th>
										<td>1</td>
										
										<th>작성자</th>
										<td>YO_Uli</td>
										
										<th>작성일</th>
										<td>2024-02-18</td>
									</tr>
									
									<tr>
										<th>제목</th>
										<td colspan="5">그런거 모르겠고 졸려죽겠습니다.</td>
									</tr>
									
									<tr>
										<th>내용</th>
										<td colspan="5">
										진짜 장난안치고 뷰단 작성하는일 정말 미춰버리겠어여 깔깔.. <br />
										점심나가서 머글거 가테! 점심나가 버릴거 가테! 그냥 점심 나가! <br />
										이게 맞나.. 라는 생각 정말 많이 들고있사옵니다. <br />
										장난이고요. 밤을 새기 직전까지 코딩을 하다보니 별의 별 말들 다 해버리는 것같군요!
										</td>
									</tr>
									
								</table>
							</div>
							<div class="qna_detail-bottom_btn">
								<button class="qna_detail-answer_btn">답변작성</button>
								<button class="qna_detail-list_btn">목록으로</button>
							</div>
						</div>
					</div>
				</div>

			</td>
		</tr>

	</table>

</body>
</html>