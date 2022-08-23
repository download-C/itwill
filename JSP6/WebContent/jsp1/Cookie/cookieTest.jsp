<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieTest.jsp</h1>
	쿠키 : Http 프로토콜 정보가 웹 페이지의 정보를 저장하지 않음 <br>
			ex) 카페의 도장 찍는 쿠폰 <br>
	 => 서버와의 상태를 지정하기 위해 사용하는 클라이언트의 정보<br>
	 
	 세션 : HTTP 프로토콜 정보가 웹페이지의 정보를 저장함 <br>
	 		ex) 전화번호로 저장하는 포인트/쿠폰 <br>
	 		
	            ->     요청     -> 
	클라이언트                      서버(new Cooike)
	 (Cookie)	<- 응답(Cookie) <- 
	
	<hr>
	<%
		// 클라이언트
		
		//쿠키값 가져오기
		Cookie[] cookie = request.getCookies();
	
		// 쿠키값 있는지 제어
		if(cookie != null) {
			//쿠키 있음
			for(int i=0; i<cookie.length; i++) {
				if(cookie[i].getName().equals("cookie")) {
					out.println("쿠키 이름 :"+cookie[i].getName()+"<br>");
					out.println("쿠키값 :"+cookie[i].getValue()+"<br>");
				}
			}
		}
	%>
	<h3>클라이언트 </h3>
	<form action="cookieSet.jsp" method="post">
		<input type="button" value="쿠키 생성"  onclick="location.href='cookieSet.jsp'">
		<input type="button" value="쿠키 삭제" onclick="location.href='cookieDel.jsp'">
	</form>
</body>
</html>