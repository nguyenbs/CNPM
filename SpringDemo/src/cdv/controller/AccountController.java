package cdv.controller;

import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import cdv.dao.AccountDAO;
import cdv.domain.Account;

@Controller
public class AccountController {

	private AccountDAO accountDAO;

	@Autowired(required = true)
	@Qualifier(value = "accountDAO")
	public void setAccountDAO(AccountDAO accountDAO) {
		this.accountDAO = accountDAO;
	}

	@RequestMapping(value = "insertAccount")
	public String insertAccount( @ModelAttribute("account") Account account,
			Model model, HttpServletRequest request, HttpServletResponse response)
			throws ClassNotFoundException, SQLException {
		accountDAO.insertAccount(account);
		saveMessageKey(null, "Tạo tài khoản thành công");
		return "index";
	}

	@RequestMapping(value = "checkAccount")
	public String checkAccount(
			@RequestParam(required = false) String username,
			@RequestParam(required = false) String password,
			HttpServletRequest request,
			HttpServletResponse response) throws ClassNotFoundException, SQLException {
		
		accountDAO.checkAccount(username, password);
		saveMessageKey(null, "Đăng nhập thành công");
		return "index";
	}

	public static final String MESSAGES_KEY = "successMessagesKey";

	@SuppressWarnings({ "unchecked", "rawtypes" })
	public void saveMessageKey(HttpServletRequest request, String msg) {
		List messages = (List) request.getSession().getAttribute(MESSAGES_KEY);

		if (messages == null) {
			messages = new ArrayList();
		}

		messages.add(msg);
		request.getSession().setAttribute(MESSAGES_KEY, messages);
	}

}
