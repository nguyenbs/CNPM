package dao;

import java.sql.SQLException;

import domain.Account;

public interface AccountDAO {

	void insertAccount(Account account) throws ClassNotFoundException, SQLException;

}
