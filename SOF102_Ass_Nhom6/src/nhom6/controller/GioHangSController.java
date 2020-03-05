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
import nhom6.entity.SanPhamEntity;

@Transactional
@Controller
@RequestMapping("/GioHang/")
public class GioHangSController {
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("GioHangSauDN")
	public String GioHangSauDN(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPhamEntity";
		Query query = session.createQuery(hql);
		List<SanPhamEntity> list = query.list();
		model.addAttribute("SanPham", list);
		return "GioHang/GioHangSauDN";
		
		
	}
}
