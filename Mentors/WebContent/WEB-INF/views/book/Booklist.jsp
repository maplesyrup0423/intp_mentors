<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var='root' value="${pageContext.request.contextPath }/" />
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="${root }resources/style/Booklist_Style.css" />
<meta charset="UTF-8">
<title>Mentors BookList</title>
</head>
<body>

	<table class="BookList_all_table">
		<tr>
			<td>
				<!-- header --> <c:import
					url="/WEB-INF/views/include/Mentors_main_header.jsp" />
			</td>
		</tr>
		<tr>
			<td><section id="blist_view">

					<!-- <h2 class="blist_top_title">도서관</h2>
					<p class="blist_top_text">테크빌교육 출판은 교사, 학생, 부모가 함께 만드는 교육 전문 출판사입니다.</p> -->
					<div class="A_view">
						<div class="list_tab">
							<input class="blist-home" type="button" value="도서목록" />
						</div>
						<%-- <div class="book_search">
							<img src="${root }resources/image/icon/search_input_left.png"
								class="left" /> <input type="text" id="s_bar" size="35" />
							<button class="d_btn">
								<img src="${root }resources/image/icon/search_del.png" />
							</button>
							<button class="s_btn">
								<img src="${root }resources/image/icon/search_input_right.png" />
							</button>
						</div> --%>
						<div class="book_cate">
							<input class="${BCB.bk_category_class_0 }" type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=0'" value="전체" />
							<input class="${BCB.bk_category_class_1 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=1'" value="교육과정/교육정책" />
							<input class="${BCB.bk_category_class_2 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=2'" value="학급운영/생활지도" />
							<input class="${BCB.bk_category_class_3 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=3'" value="디지털역량" />
							<input class="${BCB.bk_category_class_4 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=4'" value="수업지도/학습지도" />
							<input class="${BCB.bk_category_class_5 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=5'" value="교육철학/에세이" />
							<input class="${BCB.bk_category_class_6 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=6'" value="아동도서(1-6학년)" />
							<input class="${BCB.bk_category_class_7 }"  type="button" onclick="location.href='${root }book/Booklist_btn?bk_category=7'" value="수업디자인연구소" />
						</div>
						
						
						
						<c:forEach var='obj' items="${bookList }">
							<div class="book_list" id="b_list"
								onclick="location.href='${root }book/Booklist_Detail';">
								<a href="${root }book/Booklist_Detail?bk_Key=${obj.bk_Key}">
								
									<div class="book_info">
										<div class="book_img">
											<img class="b_img"
												src="${root }resources/image/book_img/${obj.bk_img }.jpg" />
										</div>
										<div class="book_info_list">
											<div class="info_title">
												<span class="booklist-title-font">${obj.bk_title }</span>
											</div>
											<div class="info_list">
												<div class="info_list2">
													<table>
														<tr>
															<th class="autor">저자</th>
															<td class="booklist-info-font">${obj.bk_autor }</td>
														</tr>
														<tr>
															<th class="ISBN">ISBN</th>
															<td class="booklist-info-font">${obj.bk_isbn }</td>
														</tr>
														<tr>
															<th class="pub_date">발행일</th>
															<td class="booklist-info-font">${obj.bk_date }</td>
														</tr>
														<tr>
															<th class="price">정가</th>
															<td class="booklist-info-font">${obj.bk_price }원</td>
														</tr>
													</table>
												</div>
											</div>
										</div>
									</div>
								</a>
								
							</div>
						</c:forEach>
					</div>

				</section></td>
		</tr>
		<tr>
			<td>
				<!-- footer --> <c:import
					url="/WEB-INF/views/include/Mentors_main_footer.jsp" />
			</td>
		</tr>
	</table>


</body>
</html>