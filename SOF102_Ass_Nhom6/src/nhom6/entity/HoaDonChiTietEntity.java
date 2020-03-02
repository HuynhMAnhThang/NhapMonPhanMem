package nhom6.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "HoaDonChiTiet")
public class HoaDonChiTietEntity {
	@Id
	@GeneratedValue
	private Integer maHoaDonChiTiet;
	private Float donGia;
	private Integer soLuong;
	private Float tongTien;
	
	@ManyToOne
	@JoinColumn(name = "maHoaDon")
	private HoaDonEntity hoadonentity;
	
	@ManyToOne
	@JoinColumn(name = "maSanPham")
	private SanPhamEntity sanphamentity;

	public Integer getMaHoaDonChiTiet() {
		return maHoaDonChiTiet;
	}

	public void setMaHoaDonChiTiet(Integer maHoaDonChiTiet) {
		this.maHoaDonChiTiet = maHoaDonChiTiet;
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

	public Float getTongTien() {
		return tongTien;
	}

	public void setTongTien(Float tongTien) {
		this.tongTien = tongTien;
	}
	
	public HoaDonEntity getHoaDon() {
		return hoadonentity;
	}
	
	public void setHoaDon(HoaDonEntity hoadonentity) {
		this.hoadonentity = hoadonentity;
	}
	
	public SanPhamEntity getSanPham() {
		return sanphamentity;
	}
	
	public void setSanPham(SanPhamEntity sanphamentity) {
		this.sanphamentity = sanphamentity;
	}
}
