package prj.java;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.util.*;

public class LocalSql {
	private static Connection conn;
	private LocalSql() {}
	private static Map<String,String> env = System.getenv();
	public static Connection getConnection() {
		try {
			if(conn==null ||conn.isClosed()) {
				Class.forName("com.mysql.jdbc.Driver");
				conn= DriverManager.getConnection(
						"jdbc:mysql://localhost:3306/lecture"
						,env.get("MYSQL_USER")
						,env.get("MYSQL_PW"));
			}
		} catch (SQLException e) {
			e.printStackTrace();
		} catch (ClassNotFoundException e) {
			e.printStackTrace();
		}
		
		return conn;
	}
	public static void main(String[] args) {
		System.out.println(getConnection());
	}
}
