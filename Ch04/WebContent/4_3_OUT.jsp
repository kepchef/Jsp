<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>4-3</title>
</head>
<body>
	<!-- 
		날짜:2020.12.01
		이름:김은표
		내용: out 내장객체  p154
		
		out 내장객체
		-JSP 출력 객체
		-respone 응답 전송을 위해 HTML 및 데이터를 출력
	 -->
	 
	 <h3>4-3.JSP out 내장객체</h3>
	 <%
	 	out.println("<ul>");
	 	out.println("<ul>서울</ul>");
	 	out.println("<ul>대전</ul>");
	 	out.println("<ul>대구</ul>");
	 	out.println("<ul>부산</ul>");
	 	out.println("<ul>광주</ul>");
	 	out.println("</ul>");
	 %>
</body>
</html>