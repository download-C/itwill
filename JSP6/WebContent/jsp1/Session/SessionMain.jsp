<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>SessionMain.jsp</h1>
	
	<%
		//로그인 정보 (세션값)사용하여 출력
		String id = (String)session.getAttribute("id");
		if(id == null){
			response.sendRedirect("SessionLogin.jsp");
		}
	
	%>
	<%=id %>님 환영합니다.
	<form action="SessionLogout.jsp" method="get">
		<input type="submit" name="logout" value="로그아웃">
	</form>
</body>
</html>