<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="kr.co.jboard.bean.MemberBean"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%
	// 파라미터 수신
	request.setCharacterEncoding("UTF-8");
	String title   = request.getParameter("title");
	String content = request.getParameter("content");
	String regip   = request.getRemoteAddr();
	
	// 세션에서 사용자 구하기
	MemberBean mb = (MemberBean) session.getAttribute("smember");
	String uid = mb.getUid();
	
	
	
	// 리다이렉트
	response.sendRedirect("/Jboard1/list.jsp");
%>