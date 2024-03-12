<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script src="${root}/resources/script/jquery-3.3.1.min.js"></script>
<!-- <style>
html,body {width:100%;  }
body,div,ul,li{margin:0; padding:0;}
ul,li {list-style:none;}

/*tab css*/
.tab{float:left; width:980px; height:auto;}
.tabnav{font-size:0; width:980px; border:1px solid #ddd;}
.tabnav li{display: inline-block;  height:46px; text-align:center; border-right:1px solid #ddd;}
.tabnav li a:before{content:""; position:absolute; left:0; top:0px; width:100%; height:3px; }
.tabnav li a.active:before{background:#7ea21e;}
.tabnav li a.active{border-bottom:1px solid #fff;}
.tabnav li a{ position:relative; display:block; background: #f8f8f8; color: #000; padding:0 30px; line-height:46px; text-decoration:none; font-size:16px;}
.tabnav li a:hover,
.tabnav li a.active{background:#fff; color:#7ea21e; }
.tabcontent{padding: 20px; height:auto; border:1px solid #ddd; border-top:none;}

</style>
 -->

<link rel="stylesheet"
	href="${root }resources/style/admin_pay_style.css" />
</head>
<body>
	<table id="admin_table" width="1280">
		<tr height="80">
			<td colspan="2" align="center"><c:import
					url="/WEB-INF/views/admin/admin_include/admin_header.jsp" /></td>
		</tr>
		<tr>
			<td width="200" align="center" valign="top" height="100%"><div
					class="sidebar div_shadow">
					<div class="sidebar_list">
						<button class="list_home CH_list"
							onclick="location.href='${root}admin/admin_home'">관리자 홈</button>
						<button class="list_test CH_list "
							onclick="location.href='${root}admin/admin_wt'">연수</button>
						<button class="list_QnA CH_list "
							onclick="location.href='${root}admin/admin_qna'">Q&A</button>
						<button class="list_notification CH_list"
							onclick="location.href='${root}admin/admin_noti'">공지사항</button>
						<button class="list_notification CH_list "
							onclick="location.href='${root}admin/admin_event'">이벤트</button>
						<button class="list_notification CH_list active"
							onclick="location.href='${root}admin/admin_pay'">수익</button>
						<button class="list_notification CH_list "
							onclick="location.href='${root}admin/admin_user'">회원</button>
					</div>
				</div></td>
			<td width="1080" align="center" valign="top">

				<div class="all_view">
					<div class="div_card div_shadow">
						<div class="div_card-header">
							<h2 class="font-weight-bold text-primary">수익관리</h2>
						</div>
						<div class="div_card-body">


							<%-- <div class="tab">
								<ul class="tabnav">
									<li><a href="#tab01">bar chart</a></li> <!-- 탭 이름 추가 가능 a태그의 id가 해당하는 아래 콘텐츠 아이디랑 같아야함 -->
									<li><a href="#tab02">line chart</a></li>
									<li><a href="#tab03">pie chart</a></li>
								</ul>
								<div class="tabcontent">
									<div id="tab01"><canvas id="bar-chart" width="300" height="230"></canvas></div>
									<div id="tab02"><canvas id="line-chart" width="300" height="250"></canvas></div>
									<div id="tab03"><canvas id="doughnut-chart" width="300" height="250"></canvas></div>
								</div>
							</div>
							<!--tab-->
							<script src="https://cdnjs.cloudflare.com/ajax/libs/Chart.js/2.5.0/Chart.min.js"></script>
<script>
$(function(){
	  $('.tabcontent > div').hide();
	  $('.tabnav a').click(function () {
	    $('.tabcontent > div').hide().filter(this.hash).fadeIn();
	    $('.tabnav a').removeClass('active');
	    $(this).addClass('active');
	    return false;
	  }).filter(':eq(0)').click();
	  });
	  
//-------------------------------------------------

new Chart(document.getElementById("bar-chart"), {
    type: 'bar',
    data: {
      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"], //아마 날짜 들어갈 부분
      datasets: [
        {
          label: "Population (millions)", //바에 마우스 올리면 나오는 이름
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"], //차트 색들
          data: [2478,5267,734,784,433] //값들
        }
      ]
    },
    options: {
      legend: { display: false },
      title: {
        display: true,
        text: '제목1' //제목
      }
    }
});

new Chart(document.getElementById("line-chart"), {
	  type: 'line',
	  data: {
	    labels: [1500,1600,1700,1750,1800,1850,1900,1950,1999,2050], //x축 값들
	    datasets: [{ 
	        data: [86,114,106,106,107,111,133,221,783,2478], //값
	        label: "Africa", //이름
	        borderColor: "#3e95cd",//색
	        fill: false
	      }, { 
	        data: [282,350,411,502,635,809,947,1402,3700,5267],//값
	        label: "Asia",//이름
	        borderColor: "#8e5ea2",//색
	        fill: false
	      }, { 
	        data: [168,170,178,190,203,276,408,547,675,734], //값
	        label: "Europe", //이름
	        borderColor: "#3cba9f",//색
	        fill: false
	      }, { 
	        data: [40,20,10,16,24,38,74,167,508,784], //값
	        label: "Latin America", //이름
	        borderColor: "#e8c3b9",//색
	        fill: false
	      }, { 
	        data: [6,3,2,2,7,26,82,172,312,433], //값
	        label: "North America", //이름
	        borderColor: "#c45850",//색
	        fill: false
	      }
	    ]
	  },
	  options: {
	    title: {
	      display: true,
	      text: '제목2'
	    }
	  }
	});
	
	
	
new Chart(document.getElementById("doughnut-chart"), {
    type: 'doughnut',
    data: {
      labels: ["Africa", "Asia", "Europe", "Latin America", "North America"], //이름들
      datasets: [
        {
          label: "Population (millions)",
          backgroundColor: ["#3e95cd", "#8e5ea2","#3cba9f","#e8c3b9","#c45850"], //색
          data: [2478,5267,734,784,433] //값
        }
      ]
    },
    options: {
      title: {
        display: true,
        text: '제목3'
      }
    }
});

</script> --%>
							<div>
								<table class="list_tb">
									<thead>
										<tr>
											<th>아이디</th>
											<th>NEIS번호</th>
											<th>연수코드</th>
											<th>결제내용</th>
											<th>결제금액</th>
											<th>결제일</th>
										</tr>
									</thead>
									<tbody>
										<c:forEach var='apl' items="${apaylist }">
											<tr>
												<td>${apl.teacher_id }</td>
												<td>${apl.teacher_neis }</td>
												<td>${apl.wt_key }</td>
												<td>${apl.wt_title }</td>
												<td>${apl.wt_price }</td>
												<td>${apl.wtt_payment_date }</td>
											</tr>
										</c:forEach>

									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</td>
		</tr>

	</table>

</body>
</html>