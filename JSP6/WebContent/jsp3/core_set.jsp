<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<!-- JSTL 문법을 사용하기 위해 추가할 내용 -->
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set.jsp</h1>

	<h2> JSTL 변수</h2>
	<c:set var="name" value="phone" scope="request"/> request에서 불러올 수 있음. <br>
	<%
		//requset.setAttribute("price", 10000);
		//request.setAttribute("color", "black");
	%>
	<!-- price: 10000 -->
	<c:set var="price" value="10000" scope="request"/> <br>
	<!-- color: black -->
	<c:set var="color" value="black" scope="request"/> <br>
	<%
		//session.setAttribute("test", "itwill");
	%>
	<c:set var="test" value="itwill" scope="session"/> <br>
	${name } <br>
	<!-- 페이지 이동 + requset 영역 값 -->
	<jsp:forward page="core_set2.jsp"/>
</body>
</html>