package nhom6.controller;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import nhom6.entity.NguoiDungEntity;
import nhom6.entity.SanPhamEntity;

@Transactional
@Controller
@RequestMapping("/QuanLy/")

public class QuanlyController {
	@Autowired
	SessionFactory factory;

	@RequestMapping("QuanLyTaiKhoan")
	public String listTK(ModelMap model) {
		model.addAttribute("nguoidung", new NguoiDungEntity());
		model.addAttribute("nguoidungs", getNguoiDungs());
		return "QuanLy/QuanLyTaiKhoan";
	}
	
	@SuppressWarnings("unchecked")
	public List<NguoiDungEntity> getNguoiDungs() {
		Session session = factory.getCurrentSession();
		String hql = "FROM NguoiDungEntity";
		Query query = session.createQuery(hql);
		List<NguoiDungEntity> list = query.list();
		return list;
	}
	
//	@RequestMapping(value = "QuanLyTaiKhoan", params = "btXoa")
//	public String xoa(ModelMap model, NguoiDungEntity nguoidungentity,
//					  @RequestParam("checkbox") CheckBox cb) {
//		Session session = factory.openSession();
//		Transaction t = session.beginTransaction();
//		if (cb.isSelected()) {
//			try {
//				session.delete(nguoidungentity);
//				t.commit();
//				model.addAttribute("message", "XÃ³a thÃ nh cÃ´ng !");
//				model.addAttribute("nguoidung", new NguoiDungEntity());
//				model.addAttribute("nguoidungs", getNguoiDungs());
//				return "QuanLy/QuanLyTaiKhoan";
//			} catch (Exception e) {	
//				t.rollback();
//				model.addAttribute("message", "XÃ³a tháº¥t báº¡i !");
//			}
//			finally {
//				session.close();
//			}
//		}
//		else {
//			model.addAttribute("message", "Vui lÃ²ng chá»�n tÃ i khoáº£n muá»‘n xÃ³a !");		}			
//		return "QuanLy/QuanLyTaiKhoan";
//	}
	
//	@RequestMapping("{taiKhoan}")
//	public String edit(ModelMap modle, @PathVariable("taiKhoan") String taiKhoan) {
//		Session session = factory.getCurrentSession();
//		NguoiDungEntity nguoidungentity = (NguoiDungEntity) session.get(NguoiDungEntity.class, taiKhoan);
//		modle.addAttribute("nguoidung", nguoidungentity);
//		modle.addAttribute("nguoidungs", getNguoiDungs());
//		return "QuanLy/QuanLyTaiKhoan";
//	}

	 
	  @SuppressWarnings("unchecked")
	  @RequestMapping("QuanlySanPham") 
	  public String listSP(ModelMap model) {
		  Session session = factory.getCurrentSession(); 
		  String hql = "FROM SanPhamEntity"; 
		  Query query = session.createQuery(hql);
		  List<SanPhamEntity> list = query.list(); 
		  model.addAttribute("sanpham",list); 
		  return "QuanLy/QuanlySanPham";
	  }

}




	