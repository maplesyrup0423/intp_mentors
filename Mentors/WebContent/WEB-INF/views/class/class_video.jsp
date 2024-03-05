<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style>
.wrap {
	position: relative;
	width: 1280px;
	margin: auto;
}

.wrap::after {
	content: '';
	position: absolute;
	bottom: 0;
	left: 0;
	z-index: -3;
	width: 100%;
	height: 50%;
	background-color: #00457E;
	transition: 1s ease-in-out;
	-moz-transition: 1s ease-in-out;
	-ms-transition: 1s ease-in-out;
	-o-transition: 1s ease-in-out;
}

.wrap.on::after {
	background-color: #A09BFF;
}

.contents {
	width: 100%;
	max-width: 1000px;
	margin: auto;
	margin-top: 150px;
}

.video_w {
	width: 800px;
	overflow: hidden;
	position: relative;
	z-index: -1;
	width: 100%;
	background: #222;
	box-shadow: 0 10px 40px rgba(0, 0, 0, 0.4);
}

/* 컨트롤러 */
.video_control {
	position: relative;
	padding: 20px 0;
	text-align: center;
}

/* 시간 */
.time {
	position: absolute;
	top: 20px;
	left: 10px;
}

.time::after {
	content: '';
	position: absolute;
	top: 50%;
	left: 0;
	width: 90%;
	height: 1px;
	margin-left: 5%;
	background: #ddd;
}

.time span {
	display: block;
	padding: 4px 0;
	font-size: 12px;
	font-weight: 400;
	color: #f4f4f4;
}

/* 이전 / 재생 / 다음 버튼 */
.btn_w button {
	cursor: pointer;
	display: inline-block;
	margin: 0 5px;
	width: 100px;
	height: 50px;
	background-color: #222;
	border-radius: 10px;
	border: 0;
	outline: 0;
	font-size: 12px;
	color: #fff;
}

.btn_w button:hover {
	background-color: #FF5345;
	box-shadow: 0 5px 10px rgba(0, 0, 0, 0.25);
}

.vedio_title {
	font-size: 18pt;
	text-align: center;
	margin-top: -50px;
	margin-bottom: 50px;
}
</style>

<link href="${root }resources/style/jquery.mb.YTPlayer.min.css" media="all"
	rel="stylesheet" type="text/css">
<link href="${root }resources/style/class_home_style.css" media="all" rel="stylesheet"
	type="text/css">

<script src="https://code.jquery.com/jquery-3.7.1.min.js"
	integrity="sha256-/JqT3SQfawRcv/BIHPThkBvs0OEvtFFmqPF/lYI/Cxo="
	crossorigin="anonymous"></script>

<script
	src="http://ajax.googleapis.com/ajax/libs/jquery/3.0.0/jquery.min.js"></script>
<script src="${root }resources/script/jquery.mb.YTPlayer.js"></script>


<script>
	
</script>

<script>
	$(function() {
		// play list 선언
		var videos = [ {
			videoURL : "VVVmPjnqT8U", //강의 url(id?) db에서 따오기
			containment : 'self',
			autoPlay : true,
			mute : false,
			startAt : 0, //영상 시작 시간(초) db에서 따와서 넣기
			opacity : 1,
			loop : false,
			showControls : false,
			useOnMobile : true,
			stopMovieOnBlur : false,
			abundance : 0,
			showYTLogo : false
		} ];
		//videoURL부분에 유튜브 비디오 id 값(v=뒤에 부분), startAt에 시작 시간(초)

		// play list 불러오기
		$("#myPlayer").YTPlaylist(videos, false);

		/** 컨트롤러 조작 **/
		// 총시간 가져오기
		$('#myPlayer').on("YTPTime", function(e) {
			var currentTime = $('#myPlayer').YTPGetTime();
			$('.now_time').html('NOW : ' + currentTime);

			var totalTime = $('#myPlayer').YTPGetTotalTime();
			$('.total_time').html('TOTAL : ' + totalTime);
		});

		// pause 버튼 과 play 버튼 toggle
		$('.btn_play').click(function() {
			if ($(this).hasClass('pause')) {
				$('.wrap').addClass('on');
				$('#myPlayer').YTPPause();
				$(this).removeClass('pause').addClass('play').text('Play');
			} else {
				$('.wrap').removeClass('on');
				$('#myPlayer').YTPPlay();
				$(this).removeClass('play').addClass('pause').text('Pause');
			}
		});

	});
</script>

</head>
<body>

	<div class="wrap">

		<div class="class_home_top" align="center">
			<div class="logo_div">
				<img src="${root }resources/image/M_logo_fff_2.png" id="logo" />
			</div>
			<div class="Exit_div">
				<div>
					<a href="${root }class/class_home_Include"> <img src="${root }resources/image/Exit.png"
						id="Exit" /></a>
				</div>
				<div>
					<span class="text_fff">나가기</span>
				</div>

			</div>
		</div>

		<div class="contents">

			<div class="vedio_title">강의제목제목제목제목제목제목제목제목</div>
			<div class="video_w">
				<div id="myPlayer" class="myPlayer"></div>
			</div>
			<div class="video_control">
				<div class="time">
					<!-- <div class="progress">
            <div class="progress_bar"></div>
          </div> -->
					<span class="now_time"></span> <span class="total_time"></span>
				</div>
				<div class="btn_w">

					<button class="btn_play pause" type="button">Pause</button>

				</div>
				<!--
        <div class="sound">
          <button class="btn_mute off" onclick="$('#myPlayer').YTPToggleVolume()">소리ON</button>
        </div>
        -->
			</div>


		</div>

	</div>


</body>
</html>