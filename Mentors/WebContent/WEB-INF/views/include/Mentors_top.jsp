<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="${root}resources/style/Mentors_top.css">
    <script src="https://use.fontawesome.com/releases/v6.3.0/js/all.js" crossorigin="anonymous"></script>
    <title>Document</title>
</head>

<body>
<h1>로그인 값 확인 ${loginTeacherBean.teacherLogin}</h1>
    <table class="top_all">
    <!-- 헤더 -->
        <tr>
            <td>
                <table class="table_all">
                    <tr>
                        <td class="td_cen_img1">
                            <a href="${root }main">
                                <img src="${root}/resources/image/M_logo.png" alt="메인" />
                            </a>
                        </td>

                        <td class="td_cen1-1"></td>

                        <td class="td_cen">
                            <a href="${root }WT/WT_list">연수신청</a>
                        </td>

                        <!-- <td class="td_cen1"></td> -->

                        <td class="td_cen">
                            <a href="${root }event/event3">이벤트</a>
                        </td>

                        <!-- <td class="td_cen1"></td> -->

                        <td class="td_cen">
                            <a href="${root }book/Booklist">도서관</a>
                        </td>

                        <!-- <td class="td_cen1"></td> -->

                        <td class="td_cen">
                            <a href="${root }WT/WT_my_room">나의 강의실</a>
                        </td>

                        <td class="td_cen1"></td>

                       <!--  <td class="td_cen_img2">
                            <a href="Mentors_Main.jsp?mainNum=6">
                                <img class="fas fa-cart-shopping" src="../img/cart.png"></img>
                                <div class="icon_text1">장바구니</div>
                            </a>
                        </td>

                        <td class="td_cen2"></td>

                        <td class="td_cen_img3">
                            <a href="Login.jsp">
                                <img src="../img/login.png" alt="로그인" class="loginicon"></img>
                                <div class="icon_text2">로그인</div>
                            </a>
                        </td> -->
                        
                        
                        
                        
                        
                        <c:choose>
							<c:when test="${loginTeacherBean.teacherLogin == true}">
								<td class="td_cen_img2">
									<a href="${root }WT/WT_cart?teacher_id=${loginTeacherBean.teacher_id}">
										<img class="fas fa-cart-shopping" src="${root}resources/image/header_img/cart.png"></img>
										<div class="icon_text1">장바구니</div>
									</a>
								</td>
								
								<td class="td_cen_img3">
									<a href="${root }user/Mypage">
										<img src="${root}resources/image/header_img/my_page.png" alt="마이페이지" class="loginicon">
										<div class="icon_text2">마이페이지</div>
									</a>
								</td>

							</c:when>
							<c:otherwise>
								<td class="td_cen_img3">
									<a href="${root }user/Login">
										<img src="${root}resources/image/header_img/login_icon.png" alt="로그인" class="loginicon">
										<div class="icon_text2">로그인</div>
									</a>
								</td>
							</c:otherwise>
						</c:choose>
                        
                    </tr>

                </table>
            </td>
        </tr>

    </table>

</body>

</html>