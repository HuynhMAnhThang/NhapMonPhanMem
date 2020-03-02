package nhom6.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "SanPham")
public class SanPhamEntity {
	@Id
	@GeneratedValue
	private Integer maSanPham;
	private String tenSanPham;
	private Float donGia;
	private Integer soLuong;
	private String moTa;
	
	@OneToMany(mappedBy = "sanphamentity", fetch = FetchType.EAGER)
	private Collection<HoaDonChiTietEntity> hoadonchitiet;
	
	@ManyToOne
	@JoinColumn(name = "maLoaiSanPham")
	private LoaiSanPhamEntity loaisanphamentity;

	public Integer getMaSanPham() {
		return maSanPham;
	}

	public void setMaSanPham(Integer maSanPham) {
		this.maSanPham = maSanPham;
	}

	public String getTenSanPham() {
		return tenSanPham;
	}

	public void setTenSanPham(String tenSanPham) {
		this.tenSanPham = tenSanPham;
	}

	public Float getDonGia() {
		return donGia;
	}

	public void setDonGia(Float donGia) {
		this.donGia = donGia;
	}

	public Integer getSoLuong() {
		return soLuong;
	}

	public void setSoLuong(Integer soLuong) {
		this.soLuong = soLuong;
	}

	public String getMoTa() {
		return moTa;
	}

	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	
	public Collection<HoaDonChiTietEntity> getHoaDonChiTiet(){
		return hoadonchitiet;
	}
	
	public void setHoaDonChiTiet(Collection<HoaDonChiTietEntity> hoadonchitiet) {
		this.hoadonchitiet = hoadonchitiet;
	}
	
	public LoaiSanPhamEntity getLoaiSanPham() {
		return loaisanphamentity;
	}
	
	public void setLoaiSanPham(LoaiSanPhamEntity loaisanphamentity) {
		this.loaisanphamentity = loaisanphamentity;
	}
}
