<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp1/testPro1.jsp</title>
</head>
<body>
	<h1>jsp1/testPro1.jsp</h1>
	<%
		// 파라미터 : 주소에 전달되는 정보
		// 파라미터 가져오기(파라미터는 반환될 때 String타입으로 변환됨) 
		int num = Integer.parseInt(request.getParameter("num"));
	%>
	int타입 : <%=num%> <br>
	String  타입 : <%=request.getParameter("num") %> <br>
	int + String = String 타입:<%=num+request.getParameter("num")%> 
</body>
</html>