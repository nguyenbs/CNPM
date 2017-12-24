package domain;

import java.sql.Date;

public class Account {
	private int id;
	private String username;
	private String password;
	private String name;
	private Date birthday;
	private String email;
	private String sex;
	private String address;
	private String phone;

	public int getId() {
		return id;
	}

	public Account() {
		super();
	}

	public Account(int id, String username, String password, String name, Date birthday, String email, String sex,
			String address, String phone) {
		super();
		this.id = id;
		this.username = username;
		this.password = password;
		this.name = name;
		this.birthday = birthday;
		this.email = email;
		this.sex = sex;
		this.address = address;
		this.phone = phone;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public Date getBirthday() {
		return birthday;
	}

	public void setBirthday(Date birthday) {
		this.birthday = birthday;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getSex() {
		return sex;
	}

	public void setSex(String sex) {
		this.sex = sex;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

}
