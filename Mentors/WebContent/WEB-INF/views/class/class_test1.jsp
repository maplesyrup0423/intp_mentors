<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html lang="en">

<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<link rel="stylesheet"
	href="${root }resources/style/class_test_style.css">
<link rel="stylesheet"
	href="${root }resources/style/class_home_style.css">
<title>시험</title>
<script>
	function getAnswer1(event) {
		document.getElementById('result1').innerText = event.target.value;
		var a1 = getElementById('result1').innerText;
	}

	function getAnswer2(event) {
		document.getElementById('result2').innerText = event.target.value;
		var a2 = getElementById('result2').innerText;
	}

	function getAnswer3(event) {
		document.getElementById('result3').innerText = event.target.value;
		var a3 = getElementById('result3').innerText;
	}

	function getAnswer4(event) {
		document.getElementById('result4').innerText = event.target.value;
		var a4 = getElementById('result4').innerText;
	}

	function getAnswer5(event) {
		document.getElementById('result5').innerText = event.target.value;
		var a5 = getElementById('result5').innerText;
	}

	function getAnswer6(event) {
		document.getElementById('result6').innerText = event.target.value;
		var a6 = getElementById('result6').innerText;
	}

	function getAnswer7(event) {
		document.getElementById('result7').innerText = event.target.value;
		var a7 = getElementById('result7').innerText;
	}

	function getAnswer8(event) {
		document.getElementById('result8').innerText = event.target.value;
		var a8 = getElementById('result8').innerText;
	}

	function getAnswer9(event) {
		document.getElementById('result9').innerText = event.target.value;
		var a9 = getElementById('result9').innerText;
	}

	function getAnswer10(event) {
		document.getElementById('result10').innerText = event.target.value;
		var a10 = getElementById('result10').innerText;
	}

	function check_answer() {
		location.href = "${root}class/class_answer?test_a1=" + a1 + "&test_a2="
				+ a2 + "&test_a3=" + a3 + "&test_a4=" + a4 + "&test_a5=" + a5
				+ "&test_a6=" + a6 + "&test_a7=" + a7 + "&test_a8=" + a8
				+ "&test_a9=" + a9 + "&test_a10=" + a10;
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
					<span id="q_num">1.</span><span id="q"> UML 다이어그램 중 순차
						다이어그램에 대한 설명으로 틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">①</span> <span
							id="a">객체 간의 동적 상호작용을 시간 개념을 중심으로 모델링 하는 것이다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">②</span> <span
							id="a">주로 시스템의 정적 측면을 모델링하기 위해 사용한다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">③</span> <span
							id="a">일반적으로 다이어그램의 수직 방향이 시간의 흐름을 나타낸다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">④</span> <span
							id="a">회귀 메시지(Self-Message), 제어블록(Statement block) 등으로
							구성된다.</span>
					</div>

				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">2.</span><span id="q"> 메시지 지향
						미들웨어(Message-Oriented Middleware, MOM)에 대한 설명으로 틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">①</span> <span
							id="a">느리고 안정적인 응답보다는 즉각적인 응답이 필요한 온라인 업무에 적합하다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">②</span> <span
							id="a">독립적인 애플리케이션을 하나의 통합된 시스템으로 묶기 위한 역할을 한다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">③</span> <span
							id="a">송신측과 수신측의 연결 시 메시지 큐를 활용하는 방법이 있다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">④</span> <span
							id="a">상이한 애플리케이션 간 통신을 비동기 방식으로 지원한다.</span>
					</div>

				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">3.</span><span id="q"> 익스트림 프로그래밍에 대한 설명으로
						틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">①</span> <span
							id="a">대표적인 구조적 방법론 중 하나이다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">②</span> <span
							id="a">소규모 개발 조직이 불확실하고 변경이 많은 요구를 접하였을 때 적절한 방법이다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">③</span> <span
							id="a">익스트림 프로그래밍을 구동시키는 원리는 상식적인 원리와 경험을 최대한 끌어 올리는 것이다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">④</span> <span
							id="a">구체적인 실천 방법을 정의하고 있으며, 개발 문서 보다는 소스코드에 중점을 둔다.</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">4.</span><span id="q"> 유스케이스(Use Case)의 구성
						요소 간의 관계에 포함되지 않는 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">①</span> <span
							id="a">연관</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">②</span> <span
							id="a">확장</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">③</span> <span
							id="a">구체화</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">④</span> <span
							id="a">일반화</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">5.</span><span id="q"> 요구사항 분석에서
						비기능적(Nonfunctional) 요구에 대한 설명으로 옳은 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">①</span> <span
							id="a">시스템의 처리량(Throughput), 반응 시간 등의 성능 요구나 품질 요구는 비기능적
							요구에 해당하지 않는다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">②</span> <span
							id="a">'차량 대여 시스템이 제공하는 모든 화면이 3초 이내에 사용자에게 보여야 한다'는 비기능적
							요구이다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">③</span> <span
							id="a">시스템 구축과 관련된 안전, 보안에 대한 요구사항들은 비기능적 요구에 해당하지 않는다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">④</span> <span
							id="a">'금융 시스템은 조회, 인출, 입금, 송금의 기능이 있어야 한다'는 비기능적 요구이다.</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">6.</span><span id="q"> 정보공학 방법론에서 데이터베이스
						설계의 표현으로 사용하는 모델링 언어는?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">①</span> <span
							id="a">Package Diagram</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">②</span> <span
							id="a">State Transition Diagram</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">③</span> <span
							id="a">Deployment Diagram</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">④</span> <span
							id="a">Entity-Relationship Diagram</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">7.</span><span id="q"> 미들웨어(Middleware)에 대한
						설명으로 틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">①</span> <span
							id="a">여러 운영체제에서 응용 프로그램들 사이에 위치한 소프트웨어이다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">②</span> <span
							id="a">미들웨어의 서비스 이용을 위해 사용자가 정보 교환 방법 등의 내부 동작을 쉽게 확인할 수
							있어야 한다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">③</span> <span
							id="a">소프트웨어 컴포넌트를 연결하기 위한 준비된 인프라 구조를 제공한다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">④</span> <span
							id="a">여러 컴포넌트를 1대 1, 1대 다, 다대 다 등 여러 가지 형태로 연결이 가능하다.</span>
					</div>
					<div id="result"></div>
				</div>
			</div>

			<div class="question">
				<div>
					<span id="q_num">8.</span><span id="q"> UI의 설계 지침으로 틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">①</span> <span
							id="a">이해하기 편하고 쉽게 사용할 수 있는 환경을 제공해야 한다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">②:</span> <span
							id="a">주요 기능을 메인 화면에 노출하여 조작이 쉽도록 하여야 한다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">③</span> <span
							id="a">치명적인 오류에 대한 부정적인 사항은 사용자가 인지할 수 없도록 한다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">④</span> <span
							id="a">사용자의 직무, 연령, 성별 등 다양한 계층을 수용하여야 한다.</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">9.</span><span id="q"> 객체지향 개념에서
						다형성(Polymorphism)과 관련한 설명으로 틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">①</span> <span
							id="a">다형성은 현재 코드를 변경하지 않고 새로운 클래스를 쉽게 추가할 수 있게 한다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">②</span> <span
							id="a">다형성이란 여러 가지 형태를 가지고 있다는 의미로, 여러 형태를 받아들일 수 있는 특징을
							말한다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">③</span> <span
							id="a">메소드 오버라이딩(Overriding)은 상위 클래스에서 정의한 일반 메소드의 구현을 하위
							클래스에서 무시하고 재정의할 수 있다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">④</span> <span
							id="a">메소드 오버로딩(Overloading)의 경우 매개 변수 타입은 동일하지만 메소드명을 다르게
							함으로써 구현, 구분할 수 있다.</span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">10.</span><span id="q"> 객체에 대한 설명으로 틀린 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">①</span> <span
							id="a">객체는 상태, 동작, 고유 식별자를 가진 모든 것이라 할 수 있다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">②</span> <span
							id="a">객체는 공통 속성을 공유하는 클래스들의 집합이다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">③</span> <span
							id="a">객체는 필요한 자료 구조와 이에 수행되는 함수들을 가진 하나의 독립된 존재이다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">④</span> <span
							id="a">객체의 상태는 속성값에 의해 정의된다.</span>
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
					<td colspan="4"><button class="test_a_button"
							onclick="check_answer()">제출하기</button></td>
				</tr>
			</table>
		</div>
	</div>
</body>

</html>