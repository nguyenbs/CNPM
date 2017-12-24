package domain;

import java.sql.Date;

public class BaiViet {
	private int maBV;
	private String tenBV;
	private String maCT;
	private String tenCT;
	private String anhCT;
	private String tenViecLam;
	private String mucLuong;
	private String kinhNghiem;
	private String bangCap;
	private int soLuong;
	private String diaDiem;
	private String chucVu;
	private String hinhThucLamViec;
	private String thoiGianThuViec;
	private String yeuCauCongViec;
	private String yeuCauKhac;
	private String moTaCongViec;
	private String quyenLoi;
	private String hoSo;
	private Date hanNopHoSo;
	private String nguoiLienHe;
	private String diaChiLienHe;
	private String emailLienHe;
	private String dienThoaiLienHe;
	private String nhomNghe;
	private String nhomLuong;
	private String khuVuc;
	private String nguoiViet;
	private Date ngayViet;


	public BaiViet(int maBV, String tenBV, String maCT, String tenCT, String anhCT, String tenViecLam, String mucLuong,
			String kinhNghiem, String bangCap, int soLuong, String diaDiem, String chucVu, String hinhThucLamViec,
			String thoiGianThuViec, String yeuCauCongViec, String yeuCauKhac, String moTaCongViec, String quyenLoi,
			String hoSo, Date hanNopHoSo, String nguoiLienHe, String diaChiLienHe, String emailLienHe,
			String dienThoaiLienHe, String nhomNghe, String nhomLuong, String khuVuc, String nguoiViet, Date ngayViet) {
		super();
		this.maBV = maBV;
		this.tenBV = tenBV;
		this.maCT = maCT;
		this.tenCT = tenCT;
		this.anhCT = anhCT;
		this.tenViecLam = tenViecLam;
		this.mucLuong = mucLuong;
		this.kinhNghiem = kinhNghiem;
		this.bangCap = bangCap;
		this.soLuong = soLuong;
		this.diaDiem = diaDiem;
		this.chucVu = chucVu;
		this.hinhThucLamViec = hinhThucLamViec;
		this.thoiGianThuViec = thoiGianThuViec;
		this.yeuCauCongViec = yeuCauCongViec;
		this.yeuCauKhac = yeuCauKhac;
		this.moTaCongViec = moTaCongViec;
		this.quyenLoi = quyenLoi;
		this.hoSo = hoSo;
		this.hanNopHoSo = hanNopHoSo;
		this.nguoiLienHe = nguoiLienHe;
		this.diaChiLienHe = diaChiLienHe;
		this.emailLienHe = emailLienHe;
		this.dienThoaiLienHe = dienThoaiLienHe;
		this.nhomNghe = nhomNghe;
		this.nhomLuong = nhomLuong;
		this.khuVuc = khuVuc;
		this.nguoiViet = nguoiViet;
		this.ngayViet = ngayViet;
	}

	public BaiViet(int maBV, String tenBV, String nguoiViet, Date ngayViet) {
		super();
		this.maBV = maBV;
		this.tenBV = tenBV;
		this.nguoiViet = nguoiViet;
		this.ngayViet = ngayViet;
	}

	public BaiViet() {
		
	}

	public int getMaBV() {
		return maBV;
	}

	public void setMaBV(int maBV) {
		this.maBV = maBV;
	}

	public String getTenBV() {
		return tenBV;
	}

	public void setTenBV(String tenBV) {
		this.tenBV = tenBV;
	}

	public String getMaCT() {
		return maCT;
	}

	public void setMaCT(String maCT) {
		this.maCT = maCT;
	}

	public String getTenCT() {
		return tenCT;
	}

	public void setTenCT(String tenCT) {
		this.tenCT = tenCT;
	}

	public String getAnhCT() {
		return anhCT;
	}

	public void setAnhCT(String anhCT) {
		this.anhCT = anhCT;
	}

	public String getTenViecLam() {
		return tenViecLam;
	}

	public void setTenViecLam(String tenViecLam) {
		this.tenViecLam = tenViecLam;
	}

	public String getMucLuong() {
		return mucLuong;
	}

	public void setMucLuong(String string) {
		this.mucLuong = string;
	}

	public String getKinhNghiem() {
		return kinhNghiem;
	}

	public void setKinhNghiem(String kinhNghiem) {
		this.kinhNghiem = kinhNghiem;
	}

	public String getBangCap() {
		return bangCap;
	}

	public void setBangCap(String bangCap) {
		this.bangCap = bangCap;
	}

	public int getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(int soLuong) {
		this.soLuong = soLuong;
	}

	public String getDiaDiem() {
		return diaDiem;
	}

	public void setDiaDiem(String diaDiem) {
		this.diaDiem = diaDiem;
	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}

	public String getHinhThucLamViec() {
		return hinhThucLamViec;
	}

	public void setHinhThucLamViec(String hinhThucLamViec) {
		this.hinhThucLamViec = hinhThucLamViec;
	}

	public String getThoiGianThuViec() {
		return thoiGianThuViec;
	}

	public void setThoiGianThuViec(String thoiGianThuViec) {
		this.thoiGianThuViec = thoiGianThuViec;
	}

	public String getYeuCauCongViec() {
		return yeuCauCongViec;
	}

	public void setYeuCauCongViec(String yeuCauCongViec) {
		this.yeuCauCongViec = yeuCauCongViec;
	}

	public String getYeuCauKhac() {
		return yeuCauKhac;
	}

	public void setYeuCauKhac(String yeuCauKhac) {
		this.yeuCauKhac = yeuCauKhac;
	}

	public String getMoTaCongViec() {
		return moTaCongViec;
	}

	public void setMoTaCongViec(String moTaCongViec) {
		this.moTaCongViec = moTaCongViec;
	}

	public String getQuyenLoi() {
		return quyenLoi;
	}

	public void setQuyenLoi(String quyenLoi) {
		this.quyenLoi = quyenLoi;
	}

	public String getHoSo() {
		return hoSo;
	}

	public void setHoSo(String hoSo) {
		this.hoSo = hoSo;
	}

	public Date getHanNopHoSo() {
		return hanNopHoSo;
	}

	public void setHanNopHoSo(Date hanNopHoSo) {
		this.hanNopHoSo = hanNopHoSo;
	}

	public String getNguoiLienHe() {
		return nguoiLienHe;
	}

	public void setNguoiLienHe(String nguoiLienHe) {
		this.nguoiLienHe = nguoiLienHe;
	}

	public String getDiaChiLienHe() {
		return diaChiLienHe;
	}

	public void setDiaChiLienHe(String diaChiLienHe) {
		this.diaChiLienHe = diaChiLienHe;
	}

	public String getEmailLienHe() {
		return emailLienHe;
	}

	public void setEmailLienHe(String emailLienHe) {
		this.emailLienHe = emailLienHe;
	}

	public String getDienThoaiLienHe() {
		return dienThoaiLienHe;
	}

	public void setDienThoaiLienHe(String dienThoaiLienHe) {
		this.dienThoaiLienHe = dienThoaiLienHe;
	}

	public String getNhomNghe() {
		return nhomNghe;
	}

	public void setNhomNghe(String nhomNghe) {
		this.nhomNghe = nhomNghe;
	}

	public String getNhomLuong() {
		return nhomLuong;
	}

	public void setNhomLuong(String nhomLuong) {
		this.nhomLuong = nhomLuong;
	}

	public String getKhuVuc() {
		return khuVuc;
	}

	public void setKhuVuc(String khuVuc) {
		this.khuVuc = khuVuc;
	}

	public String getNguoiViet() {
		return nguoiViet;
	}

	public void setNguoiViet(String nguoiViet) {
		this.nguoiViet = nguoiViet;
	}

	public Date getNgayViet() {
		return ngayViet;
	}

	public void setNgayViet(Date ngayViet) {
		this.ngayViet = ngayViet;
	}

}
