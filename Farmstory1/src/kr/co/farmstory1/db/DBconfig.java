package kr.co.farmstory1.db;

import java.sql.Connection;
import java.sql.DriverManager;

public class DBconfig {
	// �̱��� ��ü
	private static DBconfig instance = new DBconfig();
	private DBconfig() {}
	
	public static DBconfig getInstance() {
		return instance;
	}
	
	//DB����
	private final String HOST = "jdbc:mysql://192.168.10.114:3306/kep";
	private final String USER = "kep";
	private final String PASS = "1234";
	
	public Connection getConnection() throws Exception {
		
		// 1�ܰ� - JDBC ����̹� �ε�
		Class.forName("com.mysql.jdbc.Driver");
		
		// 2�ܰ� - �����ͺ��̽� ����
		Connection conn = DriverManager.getConnection(HOST, USER, PASS);
		
		return conn;
	}
}