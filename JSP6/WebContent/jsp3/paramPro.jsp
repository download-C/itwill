<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
    <h1>paramPro.jsp</h1>
    <h2>전달된 정보 출력</h2>
     <%
        // 한글 처리
        request.setCharacterEncoding("UTF-8");
        String id = request.getParameter("id");
//         String foods = request.getParameter("foods")
		String[] foods = request.getParameterValues("foods");
        out.print("아이디 : "+id);
     %>
	<hr>
    ID : <%=id%> <br>
    ID(EL) : ${id} <br>
    ID(EL) : ${param.id } <br>
     <hr>
<%-- foods : <%=foods %> <br> --%>
    foods(EL) : ${paramValues.foods} <br>
    foods : <%=foods[0] %> <br>
    foods(EL) : ${paramValues.foods[0]} <br>
    foods : <%=foods[1] %> <br>
    foods(EL) : ${paramValues.foods[1]} <br>
<%-- foods : <%=foods[2] %> <br> --%>
    foods(EL) : ${paramValues.foods[2]} <br>
    <!-- EL 표현식은 null값을 출력해도 오류 발생 X 공백으로 나옴  -->
    <hr>
    <%
    String[] hobbies = request.getParameterValues("hobbies");
 	if(hobbies != null) {
	 	for(int i=0; i<hobbies.length; i++) {
	 		%>
	 		취미 : <%=hobbies[i]%>
	 		<%
	 	}
	 }
 %>
    *EL 표현식은 반복문 사용 X
    hobbies(EL) : ${hobbies[0]} <br>
    hobbies(EL) : ${hobbies[1]} <br>
    hobbies(EL) : ${hobbies[2]} <br>
</body>
</html>