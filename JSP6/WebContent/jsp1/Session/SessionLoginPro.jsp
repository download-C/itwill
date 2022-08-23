<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
		<h1>SessionLoginPro.jsp</h1>
	<% 
		// 0. 받은 정보 한글 처리	
		request.setCharacterEncoding("UTF-8");
		// 1. 전달된 파라미터 저장
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		%>
		전달된 정보: <%=id%>, <%=pw%><br>
		<% 
		// 2. 비교하기 (admin/1234)
		if(id.equals("admin")) {
			//2-1. 아이디가 있을 때
			if(pw.equals("1234")) {
				//2-1-1. 비밀번호 있을 때
	%>			<script type="text/javascript">
					alert("로그인에 성공했습니다");
				</script>
	<%
				// 받은 정보 저장
				session.setAttribute("id", id);
				session.setAttribute("loginResult", true);
				
				// 메인 페이지로 이동
				response.sendRedirect("SessionMain.jsp");
				
			} else {
				// 아이디는 있지만 비밀번호 없을 때
				out.println("비밀번호 없음");
			}
		} else {
			// 아이디 없음
			out.println("아이디 없음");
		}
	%>
</body>
</html>