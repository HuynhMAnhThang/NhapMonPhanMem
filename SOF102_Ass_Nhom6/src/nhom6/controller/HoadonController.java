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

import nhom6.entity.HoaDonChiTietEntity;

@Transactional
@Controller
@RequestMapping("/DonHang/")
public class HoadonController {
	@Autowired
	SessionFactory factory;
	
	@SuppressWarnings("unchecked")
	@RequestMapping("DonHangCuaToi")
	public String listDH(ModelMap model) {
		Session session = factory.getCurrentSession();
		String hql = "FROM HoaDonChiTietEntity";
		Query query = session.createQuery(hql);
		List<HoaDonChiTietEntity> list = query.list();
		model.addAttribute("HDCT", list);
		return "DonHang/DonHangCuaToi";
	}
}
