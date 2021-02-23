<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>10-3</title>
</head>
<body>
	<!-- 
		날짜ㅣ2020.12.02
		이름:김은표
		내용:cookie 실습하기 교재p390
	-->
	<h3>10-3.Session</h3>
	
	<%
	//서버 세션 테이블에 클라이언트 저장
	session.setAttribute("name","홍길동");
	session.setAttribute("uid","hong");
	session.setAttribute("hp","010-1234-1234");
	
	//세션 테이블에 보관될 시간설정
	session.setMaxInactiveInterval(60*3);
	%>
	<h4>세션 저장 완료</h4>	
	<a href="./10_4_SessionCinfirm.jsp">저장된 Session 데이터 확인</a>
	
	
</body>
</html>