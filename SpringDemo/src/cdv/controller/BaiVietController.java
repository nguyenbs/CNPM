package cdv.controller;
import java.sql.SQLException;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import cdv.dao.BaiVietDAO;
import cdv.domain.BaiViet;

@Controller
@RequestMapping("/bai_viet/*")
public class BaiVietController {
	@Autowired
	private BaiVietDAO baiVietDAO;
	/*public void setBaiVietDAO(BaiVietDAO baiVietDAO) {
        this.baiVietDAO = baiVietDAO;
    }*/
	
	@RequestMapping(value="listBaiviet")
	public  ModelAndView listBaiViet(String nhomNghe, String nhomLuong, String khuVuc,
			 Model model, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		List<BaiViet> listBaiViet = baiVietDAO.getListBaiViet(nhomNghe, nhomLuong, khuVuc);
		
		model.addAttribute("nhomNghe", nhomNghe	);
		model.addAttribute("nhomLuong", nhomLuong);
		model.addAttribute("khuVuc", 		khuVuc);
		model.addAttribute("listBaiViet", 		listBaiViet);
		
		return new ModelAndView("jsp/baiViet");
	}
	
	@RequestMapping(value="listBaivietMoi")
	public  ModelAndView listBaiVietMoi(
			 Model model, HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		List<BaiViet> listBaiVietMoi = baiVietDAO.getListBaiVietMoi();
		
		model.addAttribute("listBaiVietMoi", 		listBaiVietMoi);
		
		return new ModelAndView("jsp/baiViet");
	}
	@RequestMapping(value="insertBaiViet")
	public String insertBaiViet(BaiViet baiViet, 
    		HttpServletRequest request, HttpServletResponse response) throws ClassNotFoundException, SQLException{
		baiVietDAO.insertBaiViet(baiViet);
		return "../index.jsp";
	}
	
}
