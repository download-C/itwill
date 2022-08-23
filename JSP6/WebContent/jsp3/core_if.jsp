<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_if.jsp</h1>
	
	<!-- 속성값 생성 -->
	<c:set var="name" value="ITWILL" />
	<!-- 속성값 출력 -->
	${name } <hr>
	
	<!-- test 속성 값은 EL 표현식 안에 적어야 함 -->
	<c:if test="${ 10 gt 20 }">
		10이 더 크다. <br>
	</c:if>
	<c:if test="${ 10 lt 20 }">
		20이 더 크다. <br>
	</c:if>
	<!-- name 정보가 ITWILL일 경우 "ITWLL님 안녕하세요" 출력 -->
	<c:if test="${name == 'ITWILL'}">
		ITWIILL님 안녕하세요
	</c:if>
	
	<hr>
<!-- choose-when-otherwise : 자바의 switch-case-default와 비슷 -->
	<c:choose>
		<c:when test="${ 10 gt 20 }">
			10이 더 크다.
		</c:when>
		<c:when test="${ 10 lt 20 }">
			20이 더 크다.
		</c:when>
		<c:otherwise>
		<!-- default 구문(else) -->
			두 수가 같다.
		</c:otherwise>
	</c:choose>
</body>
</html>