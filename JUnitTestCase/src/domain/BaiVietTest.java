package domain;

import static org.junit.Assert.*;

import java.sql.Date;

import org.junit.Assert;
import org.junit.Test;

public class BaiVietTest {

	@Test
	public final void testCreateBaiViet() {

		BaiViet bv1 = new BaiViet();
		bv1.setMaBV(1);
		bv1.setTenBV("Tuyển lập trình viên");
		bv1.setNguoiViet("Doai");

		Assert.assertNotNull(bv1.getMaBV());
		Assert.assertNotNull(bv1.getTenBV());
		Assert.assertNotNull(bv1.getNguoiViet());

		Assert.assertEquals(1, bv1.getMaBV());
		Assert.assertEquals("Tuyển lập trình viên", bv1.getTenBV());
		Assert.assertEquals("Doai", bv1.getNguoiViet());

	}

	@Test
	public final void testCreateBaiVietNotEqualID() {
		BaiViet bv1 = new BaiViet();
		bv1.setMaBV(1);
		bv1.setTenBV("Tuyển lập trình viên");
		bv1.setNguoiViet("Doai");
		
		//Không tạo ra bài viết trùng ID

		BaiViet bv2 = new BaiViet(1, "Tuyển lao công", "Ba", "Bon", "/picture", "Lao công", "5000000", "Không cần",
				"Không cần", 50, "Hà Nội", "Lao công", "Full Time", "2 tuần", "Chăm chỉ", "Không có",
				"Quét toàn bộ tòa nhà vincom", "Thưởng hàng năm", "/doc", new Date(2017, 12, 31), "Nguyễn Thành Chung",
				"Số 334, Nguyễn Trãi", "nguyenthanhchung@gmail.com", "0123456789", "Công nhân", "4 triệu - 6 triệu",
				"Hà Nội", "Việt Trần", new Date(2017, 12, 15));
		
		Assert.assertNull(bv2);

	}

}
