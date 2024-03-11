<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="root" value="${pageContext.request.contextPath }/" />
<script>
	alert('질문등록')
	location.href="${root}class/QnAlist_insert?wtt_key=${wttBean.wtt_Key}"
</script>
