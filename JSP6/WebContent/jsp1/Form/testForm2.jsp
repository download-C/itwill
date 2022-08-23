<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>jsp1/testForm2.jsp</h1>
<style type="text/css">
	#information { 
		width: 300px;
	}
	
</style>

<h3>폼 태그 이름, 나이 정보를 testPro2.jsp 페이지로 전달</h3>
<fieldset id="information">
	<legend>정보 입력</legend>
	<form action="testPro2.jsp" method="get">
	이름: <input type="text" name="name"> <br>
	나이: <input type="text" name="age" placeholder="숫자만 입력하세요"> <br>
	<hr>
	성별 : 
			<input type="radio" name="gender" value="남"> 남
		    <input type="radio" name="gender" value="여" checked="checked"> 여
    <hr>
	취미 : 
			<input type="checkbox" name="hobby" value="게임"> 게임
			<input type="checkbox" name="hobby" value="영화"> 영화
			<input type="checkbox" name="hobby" value="독서"> 독서
			<input type="checkbox" name="hobby" value="음악"> 음악
	<hr>
	강의장 : 
			<select name="room">
				<option value="0" >강의장을 선택하세요</option>
				<option value="1">1강의장</option>
				<option value="2">2강의장</option>
				<option value="3">3강의장</option>
				<option value="4">4강의장</option>
				<option value="5">5강의장</option>
				<option value="6">6강의장</option>
				<option value="7">7강의장</option>
			</select>
	
	<input type="submit" value="전송">
	</form>
</fieldset>
</body>
</html>