<%@page import="sub1.ariableTest"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>3-4</title>
</head>
<body>
<h3>3-4.JSP클래스</h3>

	<%
		ariableTest kb = new ariableTest("국민은행", "101-12-1213", "김유신", 10000);
			kb.deposit(50000);
			kb.withdraw(50000);
			kb.show(out);
	%>

</body>
</html>