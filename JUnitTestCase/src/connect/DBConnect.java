package connect;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class DBConnect {
	public static Connection getConnect() throws ClassNotFoundException, SQLException{

		Class.forName("com.mysql.jdbc.Driver");
		
		Connection con = null;
		String url = "jdbc:mysql://localhost/sehomework";
		String user = "root";
		String password = "";
		
		con = DriverManager.getConnection(url, user, password);
		System.out.println("Kết nối thành công");
		return con;
	}
}
