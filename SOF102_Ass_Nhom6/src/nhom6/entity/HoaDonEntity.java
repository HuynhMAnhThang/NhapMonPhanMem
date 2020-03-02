package nhom6.entity;

import java.util.Collection;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;
import javax.persistence.Temporal;
import javax.persistence.TemporalType;

import org.springframework.format.annotation.DateTimeFormat;

@Entity
@Table(name = "HoaDon")
public class HoaDonEntity {
	@Id
	@GeneratedValue
	private Integer maHoaDon;
	@Temporal(TemporalType.DATE)
	@DateTimeFormat(pattern = "MM/dd/yyyy")
	private Date ngayLapHoaDon;
	
	@OneToMany(mappedBy = "hoadonentity", fetch = FetchType.EAGER)
	private Collection<HoaDonChiTietEntity> hoadonchitiet;
	
	@ManyToOne
	@JoinColumn(name = "maNguoiDung")
	private NguoiDungEntity nguoidungentity;

	public Integer getMaHoaDon() {
		return maHoaDon;
	}

	public void setMaHoaDon(Integer maHoaDon) {
		this.maHoaDon = maHoaDon;
	}

	public Date getNgayLapHoaDon() {
		return ngayLapHoaDon;
	}

	public void setNgayLapHoaDon(Date ngayLapHoaDon) {
		this.ngayLapHoaDon = ngayLapHoaDon;
	}
	
	public Collection<HoaDonChiTietEntity> getHoaDonChiTiet(){
		return hoadonchitiet;
	}
	
	public void setHoaDonChiTiet(Collection<HoaDonChiTietEntity> hoadonchitiet) {
		this.hoadonchitiet = hoadonchitiet;
	}
	
	public NguoiDungEntity getNguoiDung() {
		return nguoidungentity;
	}
	
	public void setNguoiDung(NguoiDungEntity nguoidungentity) {
		this.nguoidungentity = nguoidungentity;
	}
}
