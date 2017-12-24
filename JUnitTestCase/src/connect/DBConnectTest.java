package connect;

import static org.junit.Assert.*;

import java.sql.Connection;
import java.sql.SQLException;

import org.junit.Test;

public class DBConnectTest {


	@Test
	public void test() throws ClassNotFoundException, SQLException {
		Connection con = DBConnect.getConnect();
		assertNotNull(con);
	}

}
