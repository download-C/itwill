<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>

<%! int a; %>

<% int b; %>
<h1>내장 객체</h1>
<h3>1. request</h3>
서버 도메인명 <%=request.getServerName() %> <br>
서버 포트번호 <%=request.getServerPort() %> <br>
URL : <%=request.getRequestURL()%> <br>
URI : <%=request.getRequestURI() %> <br>
<hr>
<h3>2. response</h3>
<%-- <%=  --%>
// 	// url에 연결된 사이트를 3초마다 새로고침하기
// 	// response.setHeader("Refresh", "3; url=https://www.naver.com")
<%-- %> --%>
<h3>3. session</h3>
세션 객체 : <%=session.getId() %> <br>
세션 생성시간 : <%=session.getCreationTime() %> <br>
세션 최종 접속시간 : <%=session.getLastAccessedTime() %> <br>
세션 유지 시간(1800초=30분) : <%=session.getMaxInactiveInterval() %> <br>
세션 유지 시간 변경 : <%session.setMaxInactiveInterval(3600); %> <br>
세션 유지 시간(3600=1시간) : <%=session.getMaxInactiveInterval() %> <br>


</body>
</html>
