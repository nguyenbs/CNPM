package daoImpl;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import connect.DBConnect;
import dao.BaiVietDAO;
import domain.BaiViet;

public class BaiVietDAOImpl implements  BaiVietDAO{
	
	private List<BaiViet> list = new ArrayList<BaiViet>();
	
	@SuppressWarnings("null")
	public List<BaiViet> getListBaiViet(String nhomNghe, String nhomLuong, String khuVuc) throws ClassNotFoundException, SQLException {
		list = null;
		Connection con = DBConnect.getConnect();
		String strQuery = "SELECT * FROM bai_viet WHERE 1 = 1 ";
		if(nhomNghe != null || !nhomNghe.equals("")){
			strQuery = strQuery + " AND nhom_nghe =" + nhomNghe;
		}if(nhomLuong != null || !nhomLuong.equals("")){
			strQuery = strQuery + " AND nhom_luong = " +  nhomLuong;
		}if(khuVuc != null || !khuVuc.equals("")){
			strQuery = strQuery + " AND khu_vuc = " + khuVuc;
		}
		Statement stm = con.createStatement();
		ResultSet result = stm.executeQuery(strQuery);
		while (result.next()) {
			BaiViet bv = new BaiViet();
			bv.setMaBV(result.getInt(1));
			bv.setTenBV(result.getString(2));
			bv.setMaCT(result.getString(3));
			bv.setTenCT(result.getString(4));
			bv.setAnhCT(result.getString(5));
			bv.setTenViecLam(result.getString(6));
			bv.setMucLuong(result.getString(7));
			bv.setKinhNghiem(result.getString(8));
			bv.setBangCap(result.getString(9));
			bv.setSoLuong(result.getInt(10));
			bv.setDiaDiem(result.getString(11));
			bv.setChucVu(result.getString(12));
			bv.setHinhThucLamViec(result.getString(13));
			bv.setThoiGianThuViec(result.getString(14));
			bv.setYeuCauCongViec(result.getString(15));
			bv.setYeuCauKhac(result.getString(16));
			bv.setMoTaCongViec(result.getString(17));
			bv.setQuyenLoi(result.getString(18));
			bv.setHoSo(result.getString(19));
			bv.setHanNopHoSo(result.getDate(20));
			bv.setNguoiLienHe(result.getString(21));
			bv.setDiaChiLienHe(result.getString(22));
			bv.setEmailLienHe(result.getString(23));
			bv.setDienThoaiLienHe(result.getString(24));
			bv.setNhomNghe(result.getString(25));
			bv.setNhomLuong(result.getString(26));
			bv.setKhuVuc(result.getString(27));
			bv.setNguoiViet(result.getString(28));
			bv.setNgayViet(result.getDate(29));
			
			list.add(bv);
		}
		return list;
	}

	@Override
	public List<BaiViet> getListBaiVietMoi() throws ClassNotFoundException, SQLException {
		// TODO Auto-generated method stub
		list = null;
		Connection con = DBConnect.getConnect();
		String strQuery = "SELECT * FROM bai_viet WHERE 1 ORDER BY ngay_viet DESC ";
		Statement stm = con.createStatement();
		ResultSet result = stm.executeQuery(strQuery);
		while (result.next()) {
			BaiViet bv = new BaiViet();
			bv.setMaBV(result.getInt(1));
			bv.setTenBV(result.getString(2));
			bv.setMaCT(result.getString(3));
			bv.setTenCT(result.getString(4));
			bv.setAnhCT(result.getString(5));
			bv.setTenViecLam(result.getString(6));
			bv.setMucLuong(result.getString(7));
			bv.setKinhNghiem(result.getString(8));
			bv.setBangCap(result.getString(9));
			bv.setSoLuong(result.getInt(10));
			bv.setDiaDiem(result.getString(11));
			bv.setChucVu(result.getString(12));
			bv.setHinhThucLamViec(result.getString(13));
			bv.setThoiGianThuViec(result.getString(14));
			bv.setYeuCauCongViec(result.getString(15));
			bv.setYeuCauKhac(result.getString(16));
			bv.setMoTaCongViec(result.getString(17));
			bv.setQuyenLoi(result.getString(18));
			bv.setHoSo(result.getString(19));
			bv.setHanNopHoSo(result.getDate(20));
			bv.setNguoiLienHe(result.getString(21));
			bv.setDiaChiLienHe(result.getString(22));
			bv.setEmailLienHe(result.getString(23));
			bv.setDienThoaiLienHe(result.getString(24));
			bv.setNhomNghe(result.getString(25));
			bv.setNhomLuong(result.getString(26));
			bv.setKhuVuc(result.getString(27));
			bv.setNguoiViet(result.getString(28));
			bv.setNgayViet(result.getDate(29));
			
			list.add(bv);
		}
		
		return list;
	}
	public void insertBaiViet(BaiViet baiViet) throws ClassNotFoundException, SQLException {
		Connection con = DBConnect.getConnect();
		String strQuery = "INSERT INTO bai_viet(ma_bai_viet, ten_bai_viet, ma_cong_ty, ten_cong_ty, anh_cong_ty,"
				+ " ten_viec_lam, muc_luong, kinh_nghiem, bang_cap, so_luong, dia_diem, chuc_vu, hinh_thuc_lam_viec,"
				+ " thoi_gian_thu_viec, yeu_cau_cong_viec, yeu_cau_khac, mo_ta_cong_viec, quyen_loi, ho_so, "
				+ "han_nop_ho_so, nguoi_lien_he, dia_chi_lien_he, email_lien_he, dien_thoai_lien_he, nhom_nghe, nhom_luong,"
				+ " khu_vuc, nguoi_viet, ngay_viet) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
		PreparedStatement stm = con.prepareStatement(strQuery);
		stm.setInt(1,baiViet.getMaBV());
		stm.setString(2 ,baiViet.getTenBV());
		stm.setString(3, baiViet.getMaCT());
		stm.setString(4,baiViet.getTenCT());
		stm.setString(5, baiViet.getAnhCT());
		stm.setString(6, baiViet.getTenViecLam());
		stm.setString(7, baiViet.getMucLuong());
		stm.setString(8,baiViet.getKinhNghiem());
		stm.setString(9 ,baiViet.getBangCap());
		stm.setInt(10, baiViet.getSoLuong());
		stm.setString(11,baiViet.getDiaDiem());
		stm.setString(12, baiViet.getChucVu());
		stm.setString(13, baiViet.getHinhThucLamViec());
		stm.setString(14, baiViet.getThoiGianThuViec());
		stm.setString(15,baiViet.getYeuCauCongViec());
		stm.setString(16 ,baiViet.getYeuCauKhac());
		stm.setString(17, baiViet.getMoTaCongViec());
		stm.setString(18,baiViet.getQuyenLoi());
		stm.setString(19, baiViet.getHoSo());
		stm.setDate(20, baiViet.getHanNopHoSo());
		stm.setString(21, baiViet.getNguoiLienHe());
		stm.setString(22,baiViet.getDiaChiLienHe());
		stm.setString(23 ,baiViet.getEmailLienHe());
		stm.setString(24, baiViet.getDienThoaiLienHe());
		stm.setString(25,baiViet.getNhomNghe());
		stm.setString(26, baiViet.getNhomLuong());
		stm.setString(27, baiViet.getKhuVuc());
		stm.setString(28, baiViet.getNguoiViet());
		stm.setDate(29, baiViet.getNgayViet());
		stm.executeUpdate();
	}
	

}
