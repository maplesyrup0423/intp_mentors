<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet"
	href="${root }resources/style/WT_my_room_style.css" />
<meta charset="utf-8">
<title>나의 홈</title>
</head>

<body>
	<div class="all">

		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />



		<div class="all2">
			<div class="title_div">
				<h2>나의 학습</h2>
				<hr>
			</div>
			<div class="Tbox_all">
				<div class="Tbox Tbox_1">
					학습중 <span class="span_num">1</span>건
				</div>
				<div class="Tbox Tbox_2">
					학습완료 <span class="span_num">2</span>건
				</div>
				<div class="Tbox Tbox_3">
					기간만료 <span class="span_num">2</span>건
				</div>
			</div>
			<br> <br>
			<div class="select_div">
				<div class="div_sum">
					총
					<samp class="span_num" id="WT_sum">1</samp>
					건
				</div>
				<div class="WT_select">
					<!--todo : selec 정보에 따라 보여주는 항목 달라짐
                            위에 span_num 숫자도 달라짐!!-->
					<select name="" id="">
						<option value="0" selected>전체</option>
						<option value="1">학습중</option>
						<option value="2">학습완료</option>
						<option value="3">기간만료</option>
					</select>
				</div>
			</div>
			<br> <br>

			<div id="WT_area">


				<c:forEach var='obj' items="${wttList }">
					<div class="WT">
						<div class="WT_left">
							<table width="760px">
								<tr>
									<td class="colorbox_pos"><div class="WT_schol_type">${obj.str_WT_Tag_School }</div>
										<div class="WT_category">${obj.str_WT_Tag_TypeCategory }</div></td>
								</tr>
								<tr>
									<td><span class="WT_name">${obj.wt_Title }</span></td>
								</tr>
								<tr>
									<td><span class="time_span">교육 시간</span> <span
										class="span_num WT_time">${obj.wt_TrainingTime }</span> 분</td>
								</tr>
							</table>

						</div>
						<div class="classbtn_div">
							<button class="classbtn"
								onclick="location.href='${root}class/class_home_center_home'">강의실
								입장</button>
						</div>

					</div>
				</c:forEach>
				<!--<div class="WT">
					<div class="WT_left">
						<div class="WT_schol_type"> 중학교</div>
						<div class="WT_category">학습지도 </div>
						<br>
						<br>
						<span class="WT_name">이것만 알자! 평가문항 출제 길잡이</span>
						<br>
						<br>
						<span class="time_span">교육 시간<span class="span_num WT_time"> 1800</span> 분</span>
					</div>
					<div class="classbtn_div"><button class="classbtn">강의실 입장</button></div>
                    <br>
				</div>-->

			</div>

		</div>


		<!-- footer -->
		<c:import url="/WEB-INF/views/include/Mentors_main_footer.jsp" />



	</div>
</body>
<!-- <script>
	const WT_area = document.getElementById("WT_area");
	const WT_sum = document.getElementById("WT_sum");
	function change(cd) {

		str = "";
		cnt = "";
		if (cd == "0") {
			str = "<div class=\"WT\"><div class=\"WT_left\"><div class=\"WT_schol_type\"> 추천학급</div><div class=\"WT_category\">분야 </div><br><br><span class=\"WT_name\">[제 1회] 연수 이름이 들어갈자리입니다. [온라인/기초]</span><br><br><span class=\"time_span\">교육 시간<span class=\"span_num WT_time\"> 60</span> 분</span></div><div class=\"classbtn_div\"><button class=\"classbtn\"onclick=\"location.href='class_home_Include.jsp';\">강의실 입장</button></div></div><br>";
			cnt = "1";

		} else {
			str = "<div class=\"WT\"><div class=\"WT_left\"><div class=\"WT_schol_type\"> 중학교</div><div class=\"WT_category\">학습지도 </div><br><br><span class=\"WT_name\">이것만 알자! 평가문항 출제 길잡이</span><br><br><span class=\"time_span\">교육 시간<span class=\"span_num WT_time\"> 1800</span> 분</span></div><div class=\"classbtn_div\"><button class=\"classbtn\"onclick=\"location.href='class_home_Include.jsp';\">강의실 입장</button></div></div><br><div class=\"WT\"><div class=\"WT_left\"><div class=\"WT_schol_type\"> 중학교</div><div class=\"WT_category\">학습지도 </div><br><br><span class=\"WT_name\">이것만 알자! 평가문항 출제 길잡이2</span><br><br><span class=\"time_span\">교육 시간<span class=\"span_num WT_time\"> 1000</span> 분</span></div><div class=\"classbtn_div\"><button class=\"classbtn\"onclick=\"location.href='class_home_Include.jsp';\">강의실 입장</button></div></div><br>";
			cnt = "2";
		}
		WT_sum.innerText = cnt;
		WT_area.innerHTML = str;
	}
</script> -->
</html>