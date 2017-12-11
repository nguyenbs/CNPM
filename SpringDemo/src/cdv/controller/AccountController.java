package cdv.controller;

import java.sql.SQLException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import cdv.dao.AccountDAO;
import cdv.domain.Account;

@Controller
public class AccountController {
	@Autowired
	private AccountDAO accountDAO;
	@RequestMapping(value="insertAccount")
	public String insertAccount(Account account, 
    		HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		accountDAO.insertAccount(account);
		return "../index.jsp";
	}
	
	
}
