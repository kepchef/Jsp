<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="sub1.MemberBean"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.DriverManager"%>
<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%

	//DB정보
	String host = "jdbc:mysql://192.168.10.114:3306/kep";
	String user = "kep";
	String pass = "1234";
	
	//1단계-JDSC 드라이버 로드
	Class.forName("com.mysql.jdbc.Driver");
	
	//2단계- 데이터베이스 접속
	Connection conn = DriverManager.getConnection(host, user, pass);
	
	//3단계- SQL 실행객체생성
	Statement stmt = conn.createStatement();
	
	//4단계- SQL 실행
	ResultSet rs = stmt.executeQuery("SELECT * FROM `MEMBER` ORDER BY `name`;");
	
	//5단계- 결과셋처리(SELECT일 경우)
	List<MemberBean>members = new ArrayList<>();
	
	while (rs.next()){
		MemberBean mb =new MemberBean();
		
		mb.setUid(rs.getString(1));
		mb.setName(rs.getString(2));
		mb.setGender(rs.getString(3));
		mb.setHp(rs.getString(4));
		mb.setEmail(rs.getString(5));
		mb.setPos(rs.getString(6));
		mb.setDep(rs.getInt(7));
		mb.setRdate(rs.getString(8));
		
		members.add(mb);
	
	}
	//6단계- 데이터베이스 종료
	rs.close();
	stmt.close();
	conn.close();
%>