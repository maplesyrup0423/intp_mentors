<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>

<!DOCTYPE html>
<html>

<head>
<link rel="stylesheet"
	href="${root }resources/style/WT_my_room_style.css" />
<meta charset="utf-8">
<title>나의 홈</title>
</head>

<body>
	<div class="all_my_room">

		<!-- header -->
		<c:import url="/WEB-INF/views/include/Mentors_main_header.jsp" />



		<div class="all2">
			<div class="title_div">
				<h2>나의 학습</h2>
				<hr>
			</div>
			<div class="Tbox_all">
				<a href="${root }WT/WT_my_room_btn?Completion=1004">
					<div class="Tbox Tbox_0">
						전체 <span class="span_num">${totel_ALL }</span>건
					</div>
				</a> <a href="${root }WT/WT_my_room_btn?Completion=0">
					<div class="Tbox Tbox_1">
						학습중 <span class="span_num">${totel_0 }</span>건
					</div>
				</a> <a href="${root }WT/WT_my_room_btn?Completion=1">
					<div class="Tbox Tbox_2">
						학습완료 <span class="span_num">${totel_1 }</span>건
					</div>
				</a> <a href="${root }WT/WT_my_room_btn?Completion=2">
					<div class="Tbox Tbox_3">
						기간만료 <span class="span_num">${totel_2 }</span>건
					</div>
				</a>
				 <a href="${root }WT/WT_my_room_btn?Completion=3">
					<div class="Tbox Tbox_4">
						불합격 <span class="span_num4">${totel_3 }</span>건
					</div>
				</a>
			</div>
			<br> <br>
			<div class="select_div">
				<div class="div_sum">
					총
					<samp class="span_num" id="WT_sum">${totel_select }</samp>
					건
				</div>
				<%-- <div class="WT_select">
					<!--todo : selec 정보에 따라 보여주는 항목 달라짐
                            위에 span_num 숫자도 달라짐!!-->
						<form:form action="${root }WT//WT_my_room" method="GET"
						modelAttribute="CompletionVal">
						<form:select path="Completion">
							<form:option value="0">전체</form:option>
							<form:option value="1">학습중</form:option>
							<form:option value="2">학습완료</form:option>
							<form:option value="3">기간만료</form:option>
						</form:select>
					</form:form>
					<select>
						<option value="0">전체</option>
						<option value="1">학습중</option>
						<option value="2">학습완료</option>
						<option value="3">기간만료</option>
					</select>
				</div> --%>
			</div>
			<br> <br>

			<div id="WT_area">


				<c:forEach var='obj' items="${wttList }">
					<div class="WT">
						<div class="WT_left">
							<table width="1150px">
								<tr>
									<td rowspan="3" width="100px"><c:if test="${obj.d_Day !=0}">
											<div class="day_circle">D-${obj.d_Day}</div>
										</c:if>
										<c:if test="${obj.d_Day ==0}">
											<div class="day_circle_end">END</div>
										</c:if>
										
										
										
										</td>
									<td class="colorbox_pos"><div class="WT_schol_type">${obj.str_WT_Tag_School }</div>
										<div class="WT_category">${obj.str_WT_Tag_TypeCategory }</div>
										<div
											class="WTT_Completion_div ${obj.wtt_Completion_div_color_class }">${obj.str_wtt_Completion }
										</div></td>
									<td rowspan="3" width="100px"><div class="classbtn_div ">
											<button class="classbtn "
												onclick="location.href='${root}class/class_home_center_home?wtt_Key=${obj.wtt_Key }'">강의실
												입장</button>
										</div></td>
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

					</div>
				</c:forEach>

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
<!-- <script>
	function selectBoxChange(th) {

			$.ajax({
				url : "my_room",
				type : "POST",
				data : {
					"btnValue" : th
				},
				success : function(data, textStatus, xhr) {
					alert("변경 성공!");
					document.location.reload(true);
					console.log(data);
				},
				error : function(xhr, status, error) {
					console.log(error);
					alert("실패")
				}
			});
	}
</script> -->
</html>