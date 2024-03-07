<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>class_home_center_test</title>
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
			<button class="CH_list list_home"
				onclick="location.href='${root}class/class_home_center_home?wtt_Key=${wttBean.wtt_Key }'">강의
				홈</button>
			<button class="list_test CH_list active"
				onclick="location.href='${root}class/class_home_center_test?wtt_Key=${wttBean.wtt_Key }'">시험</button>
			<button class="list_QnA CH_list "
				onclick="location.href='${root}class/QnAlist?wtt_Key=${wttBean.wtt_Key }'">Q&A</button>
			<button class="list_notification CH_list "
				onclick="location.href='${root}class/Notification?wtt_Key=${wttBean.wtt_Key }'">공지사항</button>
		</div>
	</div></td>
			<td height="80"><c:import
					url="/WEB-INF/views/class/class_include/class_home_center_home_top.jsp" /></td>
		</tr>
		<tr>
			<td width="1080" align="center" valign="top"><div class="gray">
					<div class="div_card div_shadow">
						<div class="div_card-header">

							<h6 class="font-weight-bold text-primary">시험</h6>
						</div>
						<div class="div_card-body">
							<div class="GS_table_div">
								<table class="GS_table">
									<thead>
										<tr>
											<th>평가명</th>
											<th>반영비율</th>
											<th>응시/제출 기간</th>
											<th>점수</th>
											<th>응시/제출</thF>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>저작권법 온라인 시험</td>
											<td>20%</td>
											<td>2024-01-01~2023-01-21</td>
											<td>-</td>
											<td><button class="blue_btn"
											
											onclick="location.href='${root}class/class_test?wtt_Key=${wttBean.wtt_Key }'">응시</button></td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>

					</div>
				</div></td>
		</tr>
	</table>

</body>
</html>