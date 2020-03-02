package nhom6.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "LoaiSanPham")
public class LoaiSanPhamEntity {
	@Id
	@GeneratedValue
	private Integer maLoaiSanPham;
	private String tenLoaiSanPham;
	
//	@OneToMany(mappedBy = "LoaiSanPhamEntity", fetch = FetchType.EAGER)
//	private Collection<SanPhamEntity> sanpham;

	public Integer getMaLoaiSanPham() {
		return maLoaiSanPham;
	}

	public void setMaLoaiSanPham(Integer maLoaiSanPham) {
		this.maLoaiSanPham = maLoaiSanPham;
	}

	public String getTenLoaiSanPham() {
		return tenLoaiSanPham;
	}

	public void setTenLoaiSanPham(String tenLoaiSanPham) {
		this.tenLoaiSanPham = tenLoaiSanPham;
	}
	
//	public Collection<SanPhamEntity> getSanPham(){
//		return sanpham;
//	}
//	
//	public void setSanPham(Collection<SanPhamEntity> sanpham) {
//		this.sanpham = sanpham;
//	}
}
