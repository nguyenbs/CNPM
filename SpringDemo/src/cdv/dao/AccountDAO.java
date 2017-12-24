package cdv.dao;
import java.sql.SQLException;
import java.util.List;
import cdv.domain.Account;

public interface AccountDAO {

	void insertAccount(Account account) throws ClassNotFoundException, SQLException;

	List<Account> checkAccount(String tenDangNhap, String matKhau) throws ClassNotFoundException, SQLException;

}
