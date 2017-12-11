package cdv.daoImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import cdv.connect.DBConnect;
import cdv.dao.AccountDAO;
import cdv.domain.Account;

public class AccountDAOImpl implements AccountDAO {

	@Override
	public void insertAccount(Account account) throws ClassNotFoundException, SQLException {
		Connection con = DBConnect.getConnect();
		String strQuery = "INSERT INTO tai_khoan(ma_tai_khoan, ten_dang_nhap, mat_khau, ho_ten, ngay_sinh,"
				+ " email, gioi_tinh, dia_chi, so_dien_thoai) VALUES (?,?,?,?,?,?,?,?,?,)";
		PreparedStatement stm = con.prepareStatement(strQuery);
		stm.setInt(1,account.getId());
		stm.setString(2 ,account.getUsername());
		stm.setString(3, account.getPassword());
		stm.setString(4,account.getName());
		stm.setDate(5, account.getBirthday());
		stm.setString(6, account.getEmail());
		stm.setString(7, account.getSex());
		stm.setString(8,account.getAddress());
		stm.setString(9 ,account.getPhone());
		stm.executeUpdate();
	}

}
