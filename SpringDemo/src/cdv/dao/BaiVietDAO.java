package cdv.dao;

import java.sql.SQLException;
import java.util.List;

import cdv.domain.BaiViet;

public interface BaiVietDAO {

	List<BaiViet> getListBaiViet(String nhomNghe, String nhomLuong, String khuVuc) throws ClassNotFoundException, SQLException;

	List<BaiViet> getListBaiVietMoi() throws ClassNotFoundException, SQLException;

	void insertBaiViet(BaiViet baiViet) throws ClassNotFoundException, SQLException;

}
