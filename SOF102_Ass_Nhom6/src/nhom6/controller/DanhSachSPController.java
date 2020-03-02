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
@RequestMapping("/SanPham/")

public class DanhSachSPController {
	@Autowired
	SessionFactory factory;

	@SuppressWarnings("unchecked")
	@RequestMapping("DanhSachSpsauDN")
	public String DanhSachSauDN(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM SanPhamEntity";
		Query query = session.createQuery(hql);
		List<SanPhamEntity> list = query.list();
		model.addAttribute("sanpham", list);
		return "SanPham/DanhSachSpsauDN";


	}
}
