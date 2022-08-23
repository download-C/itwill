<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>paramTest.jsp</h1>
	<form action="paramPro.jsp" method="post">
        아이디: <input type="text" name="id"> <br>
        내가 좋아하는 음식1 : <input type="text" name="foods"> <br>
        내가 좋아하는 음식2 : <input type="text" name="foods"> <br>
        <input type="checkbox" value="게임" name="hobbies"> 게임
        <input type="checkbox" value="영화" name="hobbies"> 영화
        <input type="checkbox" value="음악" name="hobbies"> 음악
        <hr>
        <input type="submit" value="로그인">
    </form>
</body>
</html>