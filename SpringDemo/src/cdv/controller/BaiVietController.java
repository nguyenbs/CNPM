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
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import cdv.dao.AccountDAO;
import cdv.dao.BaiVietDAO;
import cdv.domain.BaiViet;

@Controller
public class BaiVietController {
	
	private BaiVietDAO baiVietDAO;
	@Autowired(required = true)
	@Qualifier(value = "baiVietDAO")
	public void setBaiVietDAO(BaiVietDAO baiVietDAO) {
		this.baiVietDAO = baiVietDAO;
	}
	@RequestMapping(value="/listBaiViet")
	public  String listBaiViet(String nhomNghe, String nhomLuong, String khuVuc,
			 Model model, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		List<BaiViet> listBaiViet = baiVietDAO.getListBaiViet(nhomNghe, nhomLuong, khuVuc);
		
		model.addAttribute("nhomNghe", nhomNghe	);
		model.addAttribute("nhomLuong", nhomLuong);
		model.addAttribute("khuVuc", 		khuVuc);
		model.addAttribute("listBaiViet", 		listBaiViet);
		
		return "jsp/baiViet";
	}
	@RequestMapping(value="/listTimKiem")
	public  String listBaiViet(String timKiem,
			 Model model, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		List<BaiViet> listTimKiem = baiVietDAO.getListTimKiem(timKiem);
		
		model.addAttribute("listBaiViet", 		listTimKiem);
		
		return "jsp/baiViet";
	}
	@RequestMapping(value="listBaiVietMoi")
	public  String listBaiVietMoi(
			 Model model, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		List<BaiViet> listBaiVietMoi = baiVietDAO.getListBaiVietMoi();
		model.addAttribute("listBaiViet", 		listBaiVietMoi);
		
		return "jsp/baiViet";
	}
	@RequestMapping(value="insertBaiViet")
	public String insertBaiViet(BaiViet baiViet, 
    		HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		baiVietDAO.insertBaiViet(baiViet);
		saveMessageKey(null, "Thêm mới thành công");
		return "jsp/vietBai";
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
