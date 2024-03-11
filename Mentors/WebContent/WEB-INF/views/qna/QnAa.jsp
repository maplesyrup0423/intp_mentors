<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="${root }resources/style/QnA_Detail.css" />
<title><a href="#">Q&A</title>
<style>
#searchInput {
	text-align: center;
}
</style>

</head>

<body>
	<div class="box">

		<table class="Notification_Detailedpage_table" >
			<tr>
			</tr>
			<tr>
				<td class="Notification_Detailedpage_table_td2">

					<h2 class="title">Q&A</h2>


				</td>
				

				
			</tr>
		</table>
		<br />
		<hr class="hr" />
		<div class="tbl">
			<table class="tbl_view">
				<tbody>
					<tr>
						<th class="th1">제목</th>
					</tr>
					<tr>
						<th class="th2">내용</th>
					</tr>
				</tbody>
			</table>
			<div class="bottom_btn_right">
				<button type="button"
					onclick="location.href='class_home_Include.jsp?CHnum=3';">목록</button>
				<br />
			</div>

		</div>
		<div>
			<br />
			<hr />
		</div>
		<div class="outer">
		<div class="wrap">
			<div class="notice_area">
				<div class="notice_title">
					<h2>댓글</h2>
				</div>
				<div class="notice_content">
					<form action="${contextPath }/notice/insert" method="post">
						<div class="content1">
							<h4>
								<span class="title_span">&nbsp;</span> 제목
							</h4>
							<span class="input_area"> <input type="text" name="title"
								required>
							</span>

							<h4>
								<span class="title_span">&nbsp;</span> 내용
							</h4>
							<textarea class="textarea" rows="20" cols="100" name="content"
								required></textarea>
						</div>
					</form>
				</div>
			</div>
		</div>
	</div>



		



		
		
</body>
</html>