package jdbc;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnection {
	
	public static Connection getConnection() {
		Connection conn=null;
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); // 드라이버 로딩   db사 마다 정해져있어서 똑같이해야함  
			conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:XE","hr","1234"); //db사 마다 정해져있어서 똑같이해야함b 
			//System.out.println("DB 연결 성공");
			
		} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
			System.out.println("DB 연결 실패");
		} // 
		
		return conn;
	}

}
