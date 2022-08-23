

<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
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
	<h1> insert.jsp </h1>
	<%	
		//1. 드라이버 불러오기
// 		Class.forName("com.mysql.cj.jdbc.Driver");
// 		System.out.println("드라이버 불러오기 성공!")
		
		//2. DB 접속
// 		DriverManager.getConnection("jdbc:mysql://localhost:3306/jspdb", "root", "1234");
// 		System.out.println("MySQL DB 접속 성공!");
	
		//2-1. 오탈자 방지를 위해 변수 선언해서 사용하기
	%>
	<%! // 선언문
		// 인스턴스 변수로 선언
		static final String DRIVER = "com.mysql.cj.jdbc.Driver";
		static final String DBURL = "jdbc:mysql://localhost:3306/jspdb";
		static final String DBID = "root";
		static final String DBPW = "1234";
	 %>
	 <%
		Class.forName(DRIVER);
		System.out.println("드라이버 불러오기 성공!!");
		
// 		DriverManager.getConnection(DBURL, DBID, DBPW);
// 		System.out.println("MySQL DB 접속 성공!!");

		//2-2. 자바에 있는 Connection 인터페이스 사용해서 변수 선언하기
	%>
	<%
		System.out.println("con : "+con);  // com.mysql.cj.jdbc.ConnectionImpl@7d45bcc0
		Connection con = DriverManager.getConnection(DBURL, DBID, DBPW);
		System.out.println("MySQL DB 접속 성공!!");

			   
	   //3. SQL 작성 및 STMT 객체 생성
// 	   String sql = "insert into itwill_member values ('kikm121', '4894', '최다운', 31, '여', 'kikm121@gmail.com', '2002-08-03')";
// 	   System.out.println("insert 구문 저장!");
	   
	   //4. SQL 구문 삽입
	   Statement stmt = con.createStatement(); //DB연결해서 구문 작성하는 Statment 타입의 객체 생성
	   
// 	   stmt.executeUpdate(sql);
// 	   stmt.executeUpdate(sql);
// 	   System.out.println("sql 쿼리 삽입 성공!!");
	   
	   //5-1. 사용자가 입력한 id와 pw 받아서 쿼리 삽입하기.
	   String id = request.getParameter("id");
	   String pw = request.getParameter("pw");


	
	   
// 	   String sql = "insert into itwill_member values ('"+id+"', '"+pw+"', '최다운', 31, '여', 'kikm121@gmail.com', '2002-08-03')";
// 	   stmt.executeUpdate(sql);
// 	   System.out.println("회원가입 완료!");
	   
	   //5-2. 다른 방법으로 정보 받아 쿼리 삽입하기.
	   //5-2-1. 쿼리 삽입 변수 선언
	   String sql = "insert into itwill_member values (?,?,?,?,?,?,?)";
	   //5-2-2. ?가 있는 쿼리를 미리 받을 객체 생성
	   PreparedStatement pstmt = con.prepareStatement(sql); // 파라미터로 쿼리를 미리 받아서 모르는 값을 빠르게 받을 수 있도록 준비.
	   
	   //5-2-3. ? 처리하기 -> set들어올값의타입 parameterIndex(몇 번째 물음표인지), x(들어올 값)
	   pstmt.setString(1, id);
	   pstmt.setString(2, pw);
	   pstmt.setString(3, "최다운");
	   pstmt.setInt(4, 31);
	   pstmt.setString(5, "여");
	   pstmt.setString(6, "kikm121@gmail.com");
	   pstmt.setTimestamp(7, new Timestamp(System.currentTimeMillis()));
			   
			   
	   pstmt.executeUpdate(); //위에서 미리 쿼리를 받았기 때문에 파라미터 필요 없음.
	   System.out.println("회원가입 완료!");
	   
	   %>