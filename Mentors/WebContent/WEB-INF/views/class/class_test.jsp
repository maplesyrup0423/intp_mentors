<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet" href="${root }resources/style/class_test_style.css">
<link rel="stylesheet" href="${root }resources/style/class_home_style.css">
<title>시험</title>
<script>
	function getAnswer1(event) {
		document.getElementById('result1').innerText = event.target.value;
	}

	function getAnswer2(event) {
		document.getElementById('result2').innerText = event.target.value;
	}

	function getAnswer3(event) {
		document.getElementById('result3').innerText = event.target.value;
	}

	function getAnswer4(event) {
		document.getElementById('result4').innerText = event.target.value;
	}

	function getAnswer5(event) {
		document.getElementById('result5').innerText = event.target.value;
	}

	function getAnswer6(event) {
		document.getElementById('result6').innerText = event.target.value;
	}

	function getAnswer7(event) {
		document.getElementById('result7').innerText = event.target.value;
	}

	function getAnswer8(event) {
		document.getElementById('result8').innerText = event.target.value;
	}

	function getAnswer9(event) {
		document.getElementById('result9').innerText = event.target.value;
	}

	function getAnswer10(event) {
		document.getElementById('result10').innerText = event.target.value;
	}
</script>
</head>

<body>
	<div class="all">
	
	<div class="class_home_top" align="center">
		<div class="logo_div">
			<img src="${root }resources/image/M_logo_fff_2.png" id="logo" />
		</div>
		<%-- <div class="Exit_div">
			<div>
				<a href="class_home_Include.jsp"> <img src="${root }resources/image/Exit.png" id="Exit" /></a>
			</div>
			<div>
				<span class="text_fff">나가기</span>
			</div>

		</div> --%>
	</div>
	
	
		<div class="test_q">
			<div class="question">
				<div>
					<span id="q_num">1.</span><span id="q"> 1+1 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">①</span> <span
							id="a">1</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">②</span> <span
							id="a">2</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">③</span> <span
							id="a">3</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">④</span> <span
							id="a">4</span>
					</div>

				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">2.</span><span id="q"> 14 x 10 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">①</span> <span
							id="a">143</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">②</span> <span
							id="a">142</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">③</span> <span
							id="a">141</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">④</span> <span
							id="a">140</span>
					</div>

				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">3.</span><span id="q"> 98 - 127 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">①</span> <span
							id="a">0</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">②</span> <span
							id="a">29</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">③</span> <span
							id="a">-29</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">④</span> <span
							id="a">-1</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">4.</span><span id="q"> 1 + 6 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">①</span> <span
							id="a">5</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">②</span> <span
							id="a">6</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">③</span> <span
							id="a">7</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">④</span> <span
							id="a">8</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">5.</span><span id="q"> 9 / 3 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">①</span> <span
							id="a">6</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">②</span> <span
							id="a">29</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">③</span> <span
							id="a">3</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">④</span> <span
							id="a">0</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">6.</span><span id="q"> 14 + 26 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">①</span> <span
							id="a">50</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">②</span> <span
							id="a">40</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">③</span> <span
							id="a">30</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">④</span> <span
							id="a">20</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">7.</span><span id="q"> 690 - 60 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">①</span> <span
							id="a">666</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">②</span> <span
							id="a">330</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">③</span> <span
							id="a">610</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">④</span> <span
							id="a">630</span>
					</div>
					<div id="result"></div>
				</div>
			</div>

			<div class="question">
				<div>
					<span id="q_num">8.</span><span id="q"> 157 x 12 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">①</span> <span
							id="a">1800</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">②:</span> <span
							id="a">4933</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">③</span> <span
							id="a">1884</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">④</span> <span
							id="a">1902</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">9.</span><span id="q"> 17 / 3 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">①</span> <span
							id="a">5.66666...</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">②</span> <span
							id="a">6.66666...</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">③</span> <span
							id="a">7.6666...</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">④</span> <span
							id="a">8.6666...</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">10.</span><span id="q"> 10 + 16 = ?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">①</span> <span
							id="a">26</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">②</span> <span
							id="a">36</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">③</span> <span
							id="a">27</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">④</span> <span
							id="a">28</span>
					</div>
					<div id="result"></div>
				</div>
			</div>



		</div>

		<div class="test_a">
			<table class="test_a_table">
				<tr class="test_a_title">
					<td colspan="4">정답</td>
				</tr>
				<tr>
					<td class="test_a_table_num">1번</td>
					<td>
						<div id="result1"></div>
					</td>
					<td class="test_a_table_num">6번</td>
					<td>
						<div id="result6"></div>
					</td>
				</tr>

				<tr>
					<td class="test_a_table_num">2번</td>
					<td>
						<div id="result2"></div>
					</td>
					<td class="test_a_table_num">7번</td>
					<td>
						<div id="result7"></div>
					</td>
				</tr>

				<tr>
					<td class="test_a_table_num">3번</td>
					<td>
						<div id="result3"></div>
					</td>
					<td class="test_a_table_num">8번</td>
					<td>
						<div id="result8"></div>
					</td>
				</tr>

				<tr>
					<td class="test_a_table_num">4번</td>
					<td>
						<div id="result4"></div>
					</td>
					<td class="test_a_table_num">9번</td>
					<td>
						<div id="result9"></div>
					</td>
				</tr>

				<tr>
					<td class="test_a_table_num">5번</td>
					<td>
						<div id="result5"></div>
					</td>
					<td class="test_a_table_num">10번</td>
					<td>
						<div id="result10"></div>
					</td>
				</tr>
				<tr>
					<td colspan="4"><button class="test_a_button" onclick="href='${root}class/class_home_Include'">제출하기</button></td>
				</tr>
			</table>
		</div>
	</div>
</body>

</html>