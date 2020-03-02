package nhom6.entity;

import java.util.Collection;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "NguoiDung")
public class NguoiDungEntity {
	@Id
	@GeneratedValue
	private Integer maNguoiDung;
	private String tenNguoiDung;
	private String taiKhoan;
	private String matKhau;
	private String chucVu;
	private String dienThoai;
	
//	@OneToMany(mappedBy = "NguoiDungEntity", fetch = FetchType.EAGER)
//	private Collection<HoaDonEntity> hoadon;
	
	public Integer getMaNguoiDung() {
			return maNguoiDung;
		}
	
	public void setMaNguoiDung(Integer maNguoiDung) {
		this.maNguoiDung = maNguoiDung;
	}

	public String getTenNguoiDung() {
		return tenNguoiDung;
	}

	public void setTenNguoiDung(String tenNguoiDung) {
		this.tenNguoiDung = tenNguoiDung;
	}

	public String getTaiKhoan() {
		return taiKhoan;
	}

	public void setTaiKhoan(String taiKhoan) {
		this.taiKhoan = taiKhoan;
	}

	public String getMatKhau() {
		return matKhau;
	}

	public void setMatKhau(String matKhau) {
		this.matKhau = matKhau;
	}

	public String getDienThoai() {
		return dienThoai;
	}

	public void setDienThoai(String dienThoai) {
		this.dienThoai = dienThoai;
	}
	
//	public Collection<HoaDonEntity> getHoaDon(){
//		return hoadon;
//	}
//	
//	public void setHoaDon(Collection<HoaDonEntity> hoadon) {
//		this.hoadon = hoadon;
//	}

	public String getChucVu() {
		return chucVu;
	}

	public void setChucVu(String chucVu) {
		this.chucVu = chucVu;
	}
	
}
	
