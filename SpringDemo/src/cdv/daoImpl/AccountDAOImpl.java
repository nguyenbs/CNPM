package cdv.daoImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Component;
import org.springframework.stereotype.Service;

import cdv.dao.AccountDAO;
import cdv.domain.Account;
import cdv.domain.BaiViet;
import connect.Connect;

@Service
@Qualifier("accountDAO")
public class AccountDAOImpl implements AccountDAO {
	private Connect connect;
	@Override
	public void insertAccount(Account account) throws ClassNotFoundException, SQLException {
		Connection con = connect.getConnection();
		String strQuery = "INSERT INTO tai_khoan(ma_tai_khoan, ten_dang_nhap, mat_khau, ho_ten, ngay_sinh,"
				+ " email, gioi_tinh, dia_chi, so_dien_thoai) VALUES (?,?,?,?,?,?,?,?,?)";
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
	@Override
	public List<Account> checkAccount(String tenDangNhap, String matKhau) throws ClassNotFoundException, SQLException {
		List<Account> list = new ArrayList<Account>();
		Connection con = connect.getConnection();
		String strQuery = "SELECT * FROM tai_khoan WHERE 1=1" ;
		/*if(ten_dang_nhap != null || ten_dang_nhap.equals("")!=true){
			strQuery = strQuery + " AND ten_dang_nhap =" + tenDangNhap;
		}if(mat_khau != null || mat_khau.equals("")!=true){
			strQuery = strQuery + " AND mat_khau = " +  matKhau;
		*/
		Statement stm = con.createStatement();
		ResultSet result = stm.executeQuery(strQuery);
		while (result.next()) {
			Account ac = new Account();
			ac.setId(result.getInt(1));
			ac.setUsername(result.getString(2));
			ac.setPassword(result.getString(3));
			ac.setName(result.getString(4));
			ac.setBirthday(result.getDate(5));
			ac.setEmail(result.getString(6));
			ac.setSex(result.getString(7));
			ac.setAddress(result.getString(8));
			ac.setPhone(result.getString(9));
			list.add(ac);
		}
	return list;
	
	}
}
