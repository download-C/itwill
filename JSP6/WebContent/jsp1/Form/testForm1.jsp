<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1> testForm1.jsp </h1>
	
	<h3>정보 전달 - form 태그</h3>
	
	<form action="testPro1.jsp" method="get"> form 태그의 action 속성에는 jsp 파일만 가능. <br><br>
		좋아하는 숫자 입력 : <input type="number" name="num">
		<input type="submit" value="전송">
	</form>
</body>
</html>