<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<h1>operatorPro.jsp</h1>
	두 수의 합  <br>
	<%
		int num1 = Integer.parseInt(request.getParameter("num1"));
		int num2 = Integer.parseInt(request.getParameter("num2"));
	%>
	
 	JSP : <%=num1 %> + <%=num2 %> = <%=num1+num2 %>  <br>
	EL : ${param.num1 } + ${param.num2 } = ${param.num1+param.num2} <br>
	
	<hr>
	<hr>
	<hr>
	*EL 표현식 비교연산자 <br>
	==    ->   eq <br>
	!=    ->   ne <br>
	<     ->   lt <br>
	>     ->   gt <br>
	<=    ->   le <br>
	>=    ->   ge <br>
	<hr>
	<h3>num1과 num2는 모두 양수입니까?</h3>
	EL : ${ param.num1>0 && param.num2>0} <br>
		 ${ param.num1>0 eq param.num2>0 }  
		
	<hr>
	<h3>num1, num2 데이터는 모두 양수입니까?("모두 양수다","아니다")</h3>
		${((param.num1>0) && (param.num2>0))? "모두 양수":"아니다"} <br>
		${((param.num1 gt 0) eq (param.num2 gt 0)) ? "모두 양수":"아니다" }
	<hr>
		
	
	
</body>
</html>