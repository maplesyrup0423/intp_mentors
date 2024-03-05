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
					<span id="q_num">1.</span><span id="q"> 다음 중 컴퓨터 및 정보기기에서
						사용하는 펌웨어(Firmware)에 관한 설명으로 옳은 것은? </span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">①</span> <span
							id="a">주로 하드디스크의 부트 레코드 부분에 저장된다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">②</span> <span
							id="a">인터프리터 방식으로 번역되어 실행된다. </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">③</span> <span
							id="a">운영체제의 일부로 입출력을 전담한다. </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_1"
							onclick="getAnswer1(event)"> <span id="a_num">④</span> <span
							id="a">소프트웨어의 업그레이드만으로도 기능을 향상시킬 수있다. </span>
					</div>

				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">2.</span><span id="q"> 다음 중 수의 표현에 있어 진법에
						대한 설명으로 옳지 않은 것은? </span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">①</span> <span
							id="a">16진수(Hexadecimal)는 0∼9까지의 숫자와 A∼F까지 문자로 표현하는 진법으로 한
							자리수를 표현하는데 4개의 비트가 필요하다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">②</span> <span
							id="a">2진수, 8진수, 16진수를 10진수 실수(float)로 변환하려면 정수 부분과 소수 부분을
							나누어서 변환하려는 각 진수의 자리값과 자리의 지수승을 곱한 결과값을 모두 더하여 계산한다.</span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">③</span> <span
							id="a">10진수(Decimal) 정수를 2진수, 8진수, 16진수로 변환하려면 10진수 값을 변환할
							진수로 나누어 더 이상 나눠지지 않을 때까지 나누고, 몫을 제외한 나머지를 역순으로 표시한다.</span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_2"
							onclick="getAnswer2(event)"> <span id="a_num">④</span> <span
							id="a">8진수를 16진수로 변환하려면 8진수를 뒤에서부터 2자리씩 자른 후 각각 16진수를 1자리로
							계산한다.</span>
					</div>

				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">3.</span><span id="q"> 다음 중 정보 보안을 위한 비밀키
						암호화 기법의 설명으로 옳지 않은 것은? </span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">①</span> <span
							id="a">서로 다른 키로 데이터를 암호화하고 복호화 한다. </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">②</span> <span
							id="a">암호화와 복호화의 속도가 빠르다. </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">③</span> <span
							id="a">알고리즘이 단순하고 파일의 크기가 작다. </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_3"
							onclick="getAnswer3(event)"> <span id="a_num">④</span> <span
							id="a">사용자의 증가에 따라 관리해야 할 키의 수가 상대적으로 많아진다. </span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">4.</span><span id="q"> 다음 중 시스템 보안을 위해 사용하는
						방화벽(Firewall)에 대한 설명으로 적절하지 않은 것은? </span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">①</span> <span
							id="a">IP주소 및 포트번호를 이용하거나 사용자 인증을 기반으로 접속을 차단하여 네트워크의 출입로를
							단일화 한다.</span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">②</span> <span
							id="a">'명백히 허용되지 않은 것은 금지한다'라는 적극적 방어 개념을 가지고 있다. </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">③</span> <span
							id="a">방화벽을 운영하면 바이러스와 내/외부의 새로운 위험에 효과적으로 대처할 수 있다. </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_4"
							onclick="getAnswer4(event)"> <span id="a_num">④</span> <span
							id="a">로그 정보를 통해 외부침입의 흔적을 찾아 역추적 할수 있다. </span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">5.</span><span id="q"> 다음 중 Windows 운영체제에서의
						백업과 복원에 관한설명으로 옳지 않은 것은?(윈도우 10 검증 완료)</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">①</span> <span
							id="a">특정 날짜와 시간에 백업할 수 있도록 백업 주기를 예약할 수 있다. </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">②</span> <span
							id="a">Windows에서 백업에 사용되는 파일의 확장자는 .bkf이다. </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">③</span> <span
							id="a">백업 파일을 복원할 경우 복원 위치를 지정할 수 있다. </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_5"
							onclick="getAnswer5(event)"> <span id="a_num">④</span> <span
							id="a">여러 파일이 백업되어 있는 경우 원하는 파일을 선택하여 복원할 수 없다. </span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">6.</span><span id="q"> 다음 중 스마트폰을 모뎀처럼 활용하는
						방법으로, 컴퓨터나 노트북 등의 IT 기기를 스마트폰에 연결하여 무선 인터넷을 사용할 수 있게 하는 기능은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">①</span> <span
							id="a"> 와이파이(WiFi) </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">②</span> <span
							id="a"> 블루투스(Bluetooth) </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">③</span> <span
							id="a">테더링(Tethering) </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_6"
							onclick="getAnswer6(event)"> <span id="a_num">④</span> <span
							id="a">와이브로(WiBro) </span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">7.</span><span id="q"> 다음 중 네트워크 관련 장비로
						브리지(Bridge)에 관한설명으로 옳지 않은 것은? </span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">①</span> <span
							id="a"> OSI 참조 모델의 데이터 링크 계층에 속한다. </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">②</span> <span
							id="a">두 개의 근거리통신망을 상호 접속할 수 있도록 하는 통신망 연결 장치이다. </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">③</span> <span
							id="a">통신 프로토콜을 변환하여 네트워크를 확장한다. </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_7"
							onclick="getAnswer7(event)"> <span id="a_num">④</span> <span
							id="a">통신량을 조절하여 데이터가 다른 곳으로 가지 않도록 한다. </span>
					</div>
					<div id="result"></div>
				</div>
			</div>

			<div class="question">
				<div>
					<span id="q_num">8.</span><span id="q"> 다음 중 인터넷 기반 기술을 이용하여
						기업들이 외부 보안을 유지한 상태에서 협력 업체 간의 효율적인 업무처리를 위해 사용하는 네트워크로 옳은 것은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">①</span> <span
							id="a">인트라넷(Intranet) </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">②:</span> <span
							id="a">원거리 통신망(WAN) </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">③</span> <span
							id="a">엑스트라넷(Extranet) </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_8"
							onclick="getAnswer8(event)"> <span id="a_num">④</span> <span
							id="a">근거리 통신망(LAN) </span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">9.</span><span id="q"> 다음 중 TCP/IP 프로토콜에서
						IP 프로토콜의 개요 및 기능에 관한 설명으로 옳은 것은? </span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">①</span> <span
							id="a">메시지를 송/수신자의 주소와 정보로 묶어 패킷 단위로 나눈다. </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">②</span> <span
							id="a"> 패킷 주소를 해석하고 경로를 결정하여 다음 호스트로 전송한다. </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">③</span> <span
							id="a">전송 데이터의 흐름을 제어하고 데이터의 에러를 검사한다. </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_9"
							onclick="getAnswer9(event)"> <span id="a_num">④</span> <span
							id="a">OSI 7계층에서 전송 계층에 해당한다. </span>
					</div>
					<div id="result"></div>
				</div>
			</div>


			<div class="question">
				<div>
					<span id="q_num">10.</span><span id="q"> 다음 중 디지털 콘텐츠의
						생성·거래·전달·관리 등 전체 과정을 관리할 수 있는 기술로 멀티미디어 프레임워크의 MPEG 표준은?</span>
				</div>

				<div class="answer" id="answer">
					<div>
						<input type="radio" value="1" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">①</span> <span
							id="a">MPEG-1 </span>
					</div>
					<div>
						<input type="radio" value="2" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">②</span> <span
							id="a">MPEG-3 </span>
					</div>
					<div>
						<input type="radio" value="3" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">③</span> <span
							id="a">MPEG-7 </span>
					</div>
					<div>
						<input type="radio" value="4" name="answer_0"
							onclick="getAnswer10(event)"> <span id="a_num">④</span> <span
							id="a">MPEG-21 </span>
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