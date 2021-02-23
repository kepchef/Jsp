<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>8-2</title>
</head>
<body>
	<!-- 
		날짜ㅣ2020.12.02
		이름:김은표
		내용:userBean 태그 실습하기 교재p262
		
		useBean 태그
		-자바빈의 getter, setter를 실습하기 위한 액션태그
		-기본적으로 데이터(parameter)를 수신하는 기능을 갖음
		-JSP에서는 거의 사용하지 않음
	-->
	<h3>8-2.usebean 태그 실습</h3>
	
	<jsp:useBean id="user" class="sub1.UserBean">
	<jsp:setProperty name="user" property="name" />
	<jsp:setProperty name="user" property="gender" />
	<jsp:setProperty name="user" property="hobbies" />
	<jsp:setProperty name="user" property="addr" />
	</jsp:useBean>
	<p>
		이름 :<%=user.getName()%><br /> 
		성별 :<%=user.getGender()%><br /> 
		취미 :
		<%
			for (String hobby : user.getHobby()) {
			out.print(hobby + ",");
			}
		%><br /> 
		주소 :<%=user.getAddr() %><br />
	</p>
</body>
</html>