<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title> </title>
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
				onclick="location.href='${root}class/class_home_center_home'">강의
				홈</button>
			<button class="list_test CH_list "
				onclick="location.href='${root}class/class_home_center_test'">시험</button>
			<button class="list_QnA CH_list "
				onclick="location.href='${root}class/QnAlist'">Q&A</button>
			<button class="list_notification CH_list active"
				onclick="location.href='${root}class/Notification'">공지사항</button>
		</div>
	</div></td>
			<td height="80"><c:import
					url="/WEB-INF/views/class/class_include/class_home_center_home_top.jsp" /></td>
		</tr>
		<tr>
			<td width="1080" align="center" valign="top">
			<!-- 내용 삽입 -->
			<h1>내용</h1>
			
			</td>
		</tr>
	</table>

</body>
</html>