<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>delete.jsp</h1>
	
	<%!
		static final String DRIVER = "com.mysql.cj.jdbc.Driver";
		static final String DBURL =  "jdbc:mysql://localhost:3306/jspdb";
		static final String DBID = "root";
		static final String DBPW = "1234";
	%>
	<%
		// 1. 설치된 드라이버 로드
		 Class.forName(DRIVER);
		 System.out.println("드라이버 로드 성공!");
		 
		 // 2. 드라이버로 DB 연결
		 Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		 System.out.println("con: "+con);
		 System.out.println("MySQL DB 접속 성공!");
		 
		 //3. sql(회원 정보 삭제) & pstmt -> 물음표 처리
		 String sql = "delete from itwill_member where id=? and pw=?";
		 PreparedStatement pstmt = con.prepareStatement(sql);
		 pstmt.setString(1, "id");
		 pstmt.setString(2, "pw");
		 
		 //4. SQL 실행
		 pstmt.executeUpdate();
		 System.out.println("데이터 삭제 성공!");
	%>
</body>
</html>