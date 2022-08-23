<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>core_set2.jsp</h1>
	
	<%
	String name = (String)request.getAttribute("name");
	int price = Integer.parseInt((String)request.getAttribute("price"));
	String color = (String)request.getAttribute("color");
	%>111
	이름 : <%=name %> <br>
	가격 : <%=price %> <br>
	색상 : <%=color %> <br>
	
	<h3>영역 객체 크기</h3> 
	page < request < session < application
	<h3>EL 표현식</h3>
	이름(모든 영역) : ${name } -> 영역 지정 안 할 경우 가장 작은 단위에서부터 찾아서 먼저 나오는 데이터를 불러옴<br> 
	이름(request 영역) : ${requestScope.name } <br>
	이름(session 영역) : ${sessionScope.name } <br>
	가격 : ${price } <br>
	색상 : ${color } <br>
	<hr>
	<%
		String test = (String)session.getAttribute("test");
	%>
	테스트 : <%=test %>, ${test }, ${sessionScope.test } <br>
	<!-- 특정 영역의 데이터 삭제 -->
	<c:remove var="test" scope="session"/>
	테스트 : ${sessionScope.test } <br>
	
</body>
</html>