package cdv.dao;

import java.sql.SQLException;

import cdv.domain.Account;

public interface AccountDAO {

	void insertAccount(Account account) throws ClassNotFoundException, SQLException;

}
