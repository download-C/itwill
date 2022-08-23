<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieSet.jsp</h1>
	
	<hr>
	<h3> 서버 (클라이언트로부터 쿠키 요청)</h3>
	<%
		System.out.println("서버 : 클라이언트의 요청 받음");
		System.out.println("서버 : 클라이언트와의 상태 유지를 위해 쿠키 생성" );
	
	//서블릿 API 사용
		//1. 쿠키 객체 생성(메모리 로드 O, 하드디스크 저장 X)
			Cookie cookie = new Cookie("cookie", "ITWILL"); // 쿠키 이름 : cookie, 받은 값 : ITWILL
		//2. 쿠키 설정
			//2-1. 쿠키 사용 기간 설정(초 단위)
			cookie.setMaxAge(600); // 10분
		//3. 클라이언트에게 쿠키 정보 응답하기
			response.addCookie(cookie);
			System.out.println("서버: 쿠키 정보 생성 및 전달 완료");
			
	 %>
	 
	 <script type="text/javascript">
	 	alert("쿠키값 생성");
	 	location.herf="cookieTest.jsp";
	 </script>
</body>
</html>