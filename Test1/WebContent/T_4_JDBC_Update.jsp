<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	//파라미터 수신
	String uid  = request.getParameter("uid");
	String name = request.getParameter("name");
	String gender = request.getParameter("gender");
	String hp 	= request.getParameter("hp");
	String email 	= request.getParameter("email");
	String pos  = request.getParameter("pos");
	String dep  = request.getParameter("dep");
	// DB정보
	String host = "jdbc:mysql://192.168.10.114:3306/kep";
	String user = "kep";
	String pass = "1234";
	//1단계
	Class.forName("com.mysql.jdbc.Driver");
	//2단계
	Connection conn = DriverManager.getConnection(host, user, pass);
	//3단계
	Statement stmt = conn.createStatement();
	//4단계
	String sql  = "UPDATE `EMPLOYEE` SET ";
		   sql += "`name`='"+name+"',";  
		   sql += "`gender`='"+gender+"',";  
		   sql += "`hp`	 ='"+hp+"',";  
		   sql += "`email`	 ='"+email+"',";  
		   sql += "`pos` ='"+pos+"',";  
		   sql += "`dep` ="+dep+" ";  
		   sql += "WHERE `uid`='"+uid+"';";  
		   
		   stmt.executeUpdate(sql);
	
	//5단계
	
	//6단계
	stmt.close();
	conn.close();
	
	// 리다이렉트
	response.sendRedirect("/Test1/employee/list.jsp");
%>