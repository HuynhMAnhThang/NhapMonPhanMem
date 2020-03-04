package nhom6.controller;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import nhom6.entity.NguoiDungEntity;

@Transactional
@Controller
@RequestMapping("/DangKy/")
public class DangKyController {
	@Autowired
	SessionFactory factory;
	@RequestMapping(value = "dangkytaikhoan", method=RequestMethod.GET)
	public String insert(ModelMap model) {
		model.addAttribute("NguoiDung", new NguoiDungEntity());
		return "DangKy/dangkytaikhoan";
	}
	
	
	@RequestMapping(value = "dangkytaikhoan", method=RequestMethod.POST)
	public String insert(ModelMap model,@ModelAttribute("NguoiDung") NguoiDungEntity list){
		Session session=factory.openSession();
		Transaction t=session.beginTransaction();
		try {
			session.save(list);
			t.commit();
			model.addAttribute("message", "Thêm thành công");			
		}catch(Exception e) {
			t.rollback();
			model.addAttribute("message", "Thêm thất bại");
		}finally{
			session.close();
		}
		return "DangKy/dangkytaikhoan";
	}
	
	@RequestMapping("dangnhap")
	public String insert() {
		return "DangKy/dangnhap";
	}
	

}
