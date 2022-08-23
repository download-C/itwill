<%@page import="java.sql.DriverManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> dbConnect.jsp </h1>
	<%
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("드라이버 로드 성공!");
	
	
	DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb?servertimeZone=Asia/Seoul", "root", "1234");
	System.out.println("DB 접속 완료!");
	 %>
</body>
</html>