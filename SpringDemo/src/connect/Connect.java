package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Connect {
	public static Connection getConnection() throws SQLException, ClassNotFoundException{
		System.out.println("1. Register JDBC Driver...");
		Class.forName("com.mysql.jdbc.Driver");
		String db_url = "jdbc:mysql://localhost/quanlivieclam";
		String db_user = "root";
		String db_pass = "";
		Connection conn = null;
		conn = DriverManager.getConnection(db_url, db_user, db_pass);
		return conn;
	}
}
