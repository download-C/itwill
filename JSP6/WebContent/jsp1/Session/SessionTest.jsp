<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

	<h1>sessionTest.jsp</h1>
	
	<h2>세션 정보 가져오기</h2>
	
<%
	String name = (String)session.getAttribute("name");
	String id = (String)session.getAttribute("id");
	
%>

<h2>클라이언트 </h2>
<h3>세션값 : <%=name %></h3>
<h3>세션값 : <%=id %></h3>
<input type="button" value="세션값 생성" onclick="location.href='sessionSet.jsp';" ><br>
<input type="button" value="세션값 삭제" onclick="location.href='sessionDel.jsp';"><br>
<input type="button" value="세션값 초기화" onclick="location.href='sessionInv.jsp';"><br> 
</body>
</html>