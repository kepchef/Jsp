<%@page import="kr.co.jboard.dao.UserDao"%>
<%@page import="kr.co.jboard.bean.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
	String uid  = request.getParameter("uid");
	String pass = request.getParameter("pass");
	MemberBean mb = UserDao.getInstance().selectUser(uid, pass);
	
	if(mb != null){
		// 세션 저장
		session.setAttribute("smember", mb);
		// 리다이렉트
		response.sendRedirect("/Jboard1/list.jsp");	
	}else{
		// 리다이렉트
		response.sendRedirect("/Jboard1/user/login.jsp");
	}
%>