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
	<h1>foreach.jsp</h1>
	<h3>자바로 출력하기</h3>
	<%
		// java로 1~10 출력
		for(int i=1; i<=10; i++) {
			%>
				<%=i %>
			<%
		}
	%>
	<hr>
	<h3>JSTL로 1~10 출력</h3>
	<c:forEach var="i" begin="1" end="10" step="1">	
		${i }
	</c:forEach>
	<hr>
	<h3> 1~10 중 홀수만 출력 </h3>
	<c:forEach var="i" begin="1" end="10" step="2">
		${i }
	</c:forEach>
</body>
</html>