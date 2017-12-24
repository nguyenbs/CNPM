package daoImpl;

import static org.junit.Assert.*;

import java.sql.Date;
import java.sql.SQLException;
import java.util.LinkedList;
import java.util.List;

import domain.*;

import org.junit.Assert;
import org.junit.Test;

public class BaiVietDAOImplTest {

	@SuppressWarnings("deprecation")
	@Test
	public void testGetListBaiViet() throws ClassNotFoundException, SQLException {
		BaiViet bv = new BaiViet(5, "Tuyển lao công", "Ba", "Bon", "/picture", "Lao công", "5.000.000", "Không cần",
				"Không cần", 50, "Hà Nội", "Lao công", "Full Time", "2 tuần", "Chăm chỉ", "Không có",
				"Quét toàn bộ tòa nhà vincom", "Thưởng hàng năm", "/doc", new Date(2017, 12, 31), "Nguyễn Thành Chung",
				"Số 334, Nguyễn Trãi", "nguyenthanhchung@gmail.com", "0123456789", "Công nhân", "4 triệu - 6 triệu",
				"Hà Nội", "Việt Trần", new Date(2017, 12, 15));

		BaiVietDAOImpl bvDA0 = new BaiVietDAOImpl();

		List<BaiViet> list = bvDA0.getListBaiViet("Lao công", "4 triệu - 6 triệu", "Hà Nội");

		List<BaiViet> listresult = new LinkedList<BaiViet>();
		listresult.add(bv);

		assertEquals(listresult, list);
	}

	@Test
	public void testGetListBaiVietMoi() {
	}

	@Test
	public void testInsertBaiViet() throws ClassNotFoundException, SQLException {
		
		
		BaiVietDAOImpl bvDAO = new BaiVietDAOImpl();
		List<BaiViet> list = bvDAO.getListBaiVietMoi();
		int size1 = list.size();
		
		BaiViet bv2 = new BaiViet();
		bv2.setMaBV(10);
		bvDAO.insertBaiViet(bv2);
		
		list = bvDAO.getListBaiVietMoi();
		
		Assert.assertEquals(size1 + 1, list.size());

		
		
	}

}
