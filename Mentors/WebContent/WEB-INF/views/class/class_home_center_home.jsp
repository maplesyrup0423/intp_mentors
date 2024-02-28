<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>class_home_center_home</title>
<link rel="stylesheet"
	href="${root }resources/style/class_home_style.css" />

</head>
<body>
	<table width="1280" class="class_d_table">
		<tr height="80">
			<td colspan="2" align="center"><c:import
					url="/WEB-INF/views/class/class_include/class_header.jsp" /></td>
		</tr>
		<tr>
			<td rowspan="2" width="200" align="center" valign="top" height="100%"><div class="sidebar div_shadow">
		<div class="sidebar_list">
			<button class="CH_list list_home active"
				onclick="location.href='${root}class/class_home_center_home'">강의
				홈</button>
			<button class="list_test CH_list "
				onclick="location.href='${root}class/class_home_center_test'">시험</button>
			<button class="list_QnA CH_list "
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

				<div class="con">

					<!--강의 내용-->
					<div class="gray">
						<!-- ------------------------------------------------------------------------------------------------------- -->
						<!-- ------------------------------------------------------------------------------------------------------- -->
						<div class="div_card div_shadow">
							<div class="div_card-header">

								<h6 class="font-weight-bold text-primary">성적현황</h6>
							</div>
							<div class="div_card-body">
								<table>
									<tr>
										<td>
											<!--도넛 그래프 -->
											<div class="chart-container">
												<div class="chart_d donut_chart1">
													<span class="chart-center">72%</span>
												</div>
											</div>
										</td>
										<td rowspan="2">
											<!--성적 테이블-->
											<div class="GS_table_div">
												<table class="GS_table">
													<tr>
														<th>항목</th>
														<th>진도</th>
														<th>시험</th>
													</tr>
													<tr>
														<th>평가비율(%)</th>
														<td>80</td>
														<td>20</td>
													</tr>
													<tr>
														<th>점수</th>
														<td></td>
														<td></td>
													</tr>
													<tr>
														<th>수료조건</th>
														<td colspan="2">총점 : 84점 이상 / 과락 기준 : 진도율 90점 이상, 시험
															60점 이상</td>
													</tr>
												</table>
											</div>
										</td>
									</tr>
									<tr>
										<td>
											<!--수료/미수료 표기-->
											<div class="grade_status">
												<span>수료여부</span>
												<div class="WTT_Completion_div">
													<span class="WTT_Completion">미수료</span>
												</div>
											</div>
										</td>
									</tr>
								</table>
							</div>
						</div>

						<div class="div_card div_shadow">
							<div class="div_card-header">

								<h6 class="font-weight-bold text-primary">강의 학습</h6>
							</div>
							<div class="div_card-body">
								<table width="1000px">
									<tr>
										<td rowspan="2">이것만 알자! 평가문항 출제 길잡이</td>
										<td><span>진도율(%) 72%</span></td>
										<td rowspan="2"><button class="blue_btn"
												onclick="location.href='${root}class/class_video'">학습하기</button></td>
									</tr>
									<tr>

										<td><div class="progress-bar_div">
												<div class="progress-bar">
													<div class="progress"></div>
												</div>
											</div>
									</tr>
								</table>
							</div>
						</div>
					</div>

				</div>
			</td>
		</tr>
	</table>


	<!-- ------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------- -->

	<script src="${root }resources/script/donut_chart.js"></script>
</body>
</html>