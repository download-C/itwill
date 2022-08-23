<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
   pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>select.jsp</h1>
	<%!
	static final String DRIVER = "com.mysql.cj.jdbc.Driver";
	static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
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
	 
	 //3. sql(전체 회원 목록 조회) & pstmt
	 String sql = "select * from itwill_member";
	 PreparedStatement pstmt = con.prepareStatement(sql);
	 
	 //4. SQL 실행    
	 pstmt.executeQuery(); // -> 테이블이 변화 없을 때 
	 //pstmt.executeUpdate()  -> 테이블이 변할 때
	 
	 //5. 데이터 처리(select)
	 ResultSet rs = pstmt.executeQuery();  //pstmt가 가지고 있는 결과를 첫 행부터 한 행만 담음
	 
// 	 while(rs.next()) { // 데이터가 있음(커서가 가리키고 있는 행)
// 		out.println("아이디: "+rs.getString("id")+"<br>"); // == rs.getString(1);
// 		out.println("비밀번호: "+rs.getString("pw")+"<br>"); 
// 		out.println("이름: "+rs.getString("name")+"<br>"); 
// 		out.println("나이: "+rs.getInt("age")+"<br>"); 
// 		out.println("성별: "+rs.getString("gender")+"<br>"); 
// 		out.println("이메일: "+rs.getString("email")+"<br>"); 
// 		out.println("가입 날짜: "+rs.getTimestamp("regdate")+"<br>"); 
// 		out.println("<br>");
// 	 }
	 
	 %>
	
	 <table border="1px">
	 <caption>itwill_member</caption>
	 	<tr>
	 		<td>아이디</td>
	 		<td>비밀번호</td>
	 		<td>이름</td>
	 		<td>나이</td>
	 		<td>성별</td>
	 		<td>이메일</td>
	 		<td>가입날짜</td>
	 	</tr>
	 <% 
	 while(rs.next()) {
		 if(rs.getString("id").equals("admin")) {
			continue;
		 } else {
	 %> 	
	 	<tr>
	 		<td><%=rs.getString("id")%></td>
	 		<td><%=rs.getString("pw")%></td>
	 		<td><%=rs.getString("name")%></td>
	 		<td><%=rs.getInt("age")%></td>
	 		<td><%=rs.getString("gender")%></td>
	 		<td><%=rs.getString("email")%></td>
	 		<td><%=rs.getTimestamp("regdate")%></td>
 		</tr>
	 <%
		 }
	  }
	  %>
	 	
	 </table>
</body>
</html>