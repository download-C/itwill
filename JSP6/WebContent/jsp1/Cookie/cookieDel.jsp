<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>cookieDel.jsp</h1>
	<h3> 서버 </h3>
	<%
	// 쿠키 가져오기
	Cookie[] cookie = request.getCookies();
	//쿠키값 있는지 확인
	if(cookie!=null) {
		//쿠키값 순서대로 불러오기
		for(int i=0; i<cookie.length; i++) {
			// 생성한 쿠키 이름 사용 비교
			if(cookie[i].getName().equals("cookie")) {
				//쿠키 유효기간 0으로 설정해서 사용 못하게 막기
				cookie[i].setMaxAge(0);
				//변경된 쿠키 정보 응답
				response.addCookie(cookie[i]);
			}
		}
	}
			 %>
			 <script type="text/javascript">
				alert('쿠키 삭제');
				location.href="cookieTest.jsp";
			 </script>
</body>
</html>