<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>jsp1/test1.jsp</title>
</head>
<body>

<h1>JSP = Java+HTML(JavaScript)</h1>

HTML의 바디 태그 안에서 Java / JavaScript 사용 가능하도록 하는 태그 <br>
<% 
	// 스크립틀릿 : 자바 코드를 작성하는 구역으로 자바와 똑같이 실행됨
	// 스클림틀릿 안에 선언한 변수는 public void _jspService() 메서드 안에 선언된 지역 변수
	
	// 
%>
Q. 문자열 배열 생성해서 데이터 입력 후 출력
	1. 변수 선언 및 출력
<% 	
		int[] arr = {1, 2, 3};
		for(int i=0; i<arr.length; i++) {
			System.out.println(arr[i]);
		}
%>

	2. System.을 빼면 html 화면에 출력 가능 <br>
<%
		for(int i=0; i<arr1.length; i++) {
			out.println(arr1[i]+"<br>");
		}
%>
	3. h3 태그 사용하기

<%
		for(int i=0; i<arr1.length; i++) {
			out.println("<h3>"+arr1[i]+"</h3>");
		}
%>	

<script type="text/javascript">
	// JavaSript 주석
</script>

<%-- <% jsp용 주석 %> --%>
<%-- <% 자바 파일에서는 보이지 않음 %> --%>


</body>
</html>