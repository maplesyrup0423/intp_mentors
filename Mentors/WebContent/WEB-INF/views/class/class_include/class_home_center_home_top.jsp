<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${root }resources/style/class_home_style.css" />
</head>
<body>

	<nav class="navbar">
	<table class="headline_top_table">
		<tr>
			<td><div class="headline_top__left">

					<span><div class="color_div"></div>교육과정</span>
					<p class="WT_title">${wttBean.wt_Title }</p>
				</div></td>
		</tr>
	</table>

	</nav>

	<!-- ------------------------------------------------------------------------------------------------------- -->
	<!-- ------------------------------------------------------------------------------------------------------- -->


</body>
</html>