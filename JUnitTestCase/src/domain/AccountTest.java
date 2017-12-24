package domain;

import static org.junit.Assert.*;

import java.sql.Date;

import org.junit.Assert;
import org.junit.Test;

public class AccountTest {

	@Test
	public final void testCreateAccount() {
		Date date = new Date(1997, 8, 20);

		Account acc1 = new Account();
		acc1.setId(1);
		acc1.setUsername("viettran");
		acc1.setPassword("sapco");
		acc1.setName("Viet");
		acc1.setBirthday(date);
		acc1.setEmail("acb@gmail.com");
		acc1.setSex("Nam");
		acc1.setPhone("0984028352");

		Assert.assertNotNull(acc1.getId());
		Assert.assertEquals("viettran", acc1.getUsername());
		Assert.assertEquals("sapco", acc1.getPassword());
		Assert.assertEquals("Viet", acc1.getName());
		Assert.assertEquals(date, acc1.getBirthday());
		Assert.assertEquals("acb@gmail.com", acc1.getEmail());
		Assert.assertEquals("Nam", acc1.getSex());
		Assert.assertEquals("0984028352", acc1.getPhone());

	}

	@Test
	public final void testCreateAccountNotEqualIDBefore() {

		Account acc1 = new Account();
		acc1.setId(1);

		// Không tạo 2 account cùng ID
		Account acc2 = new Account(1, "doainguyen", "abc", "Doai", new Date(1997, 8, 20), null, "Nam", "HN",
				"0984028352");
		Assert.assertNull(acc2);

	}

}
