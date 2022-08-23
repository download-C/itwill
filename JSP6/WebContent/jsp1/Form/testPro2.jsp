<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp1/testPro2.jsp</title>
</head>
<body>
	<h1>jsp1.testPro2.jsp</h1>
	<%
	// method="post"일 경우 정보를 body에 담아서 넘어가기 때문에 UTF-8가 아니므로 한글은 깨짐 
		request.setCharacterEncoding("UTF-8");
		//이름
		String name = request.getParameter("name");
		// 나이
		int age = Integer.parseInt(request.getParameter("age"));
		
	%>
	
	이름: <%=name%> 
	<br>
	나이: <%=age %> 

	<!-- 20살 이상 : "성인입니다."  20살 미만 : "미성년자입니다" -->
	<%
		if(age>20) {
			%>
			<b>(성인입니다)</b>
			<%
		} else 
	%>		<b>(1미성년자입니다)</b> <br>
	
	<%
		String hobby = request.getParameter("hobby");
	  // checkbox 는 여러 값이 들어갈 수 있기 때문에 String으로 할 경우 하나의 값만 들어감
	  // 배열로 저장해줌.
		String[] hobbys = request.getParameterValues("hobby");
		String gender = request.getParameter("gender");
		String room = request.getParameter("room");
		
		
	%> 
	<br>
	성별 : <%=gender %> 
<%-- 	취미1 : <%=hobbys[0] %> <br>  --%>
<%-- 	취미2 : <%=hobbys[1] %> <br> --%>
	<br>
	취미 : 
		<% 
			if(hobbys != null) {
				for(int i=0; i<hobbys.length; i++) {
	  				%>  		
	  					<%=hobbys[i]%>
	  				<%	
  				} 
			} else {
					%>
				취미를 선택하지 않았습니다.
					<%
			}
	      %> 
	<br>      
	강의장 : <%=room %>강의장 <br>
	
	
</body>
</html>