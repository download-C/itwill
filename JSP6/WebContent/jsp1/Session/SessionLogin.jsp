<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
<style>
	fieldset {
		width: 300px;
	}
</style>
</head>
<body>
	<h1>SessionLogin.jsp</h1>
	
	<!-- 1. sessionLogin.jsp에서 아이디, 비밀번호 입력(유효성 체크 생략)
	 	 2. sessionLoginPro.jsp에서 로그인 여부 체크
	  		(아이디 존재 여부, 비밀번호 동일성 여부 admin/1234)
		 3. 문제가 있는 경우 로그인 페이지로 이동
		 4. 문제가 없는 경우 sessionMain.jsp로 이동
			(로그인 없이 접근 불가, 로그인된 아이디 출력)
		 5. 로그아웃 버튼  -->
		 
		 <form action="SessionLoginPro.jsp" method="get">
			 <fieldset>
			 	<legend>로그인</legend>
			 	아이디<input type="text" name="id" value="id"> <br>
			 	패스워드<input type="password" name="pw" value="pw"><br>
			 	<input type="submit" value="로그인">
			 </fieldset>
		 </form>
</body>
</html>