package kr.co.planbut.applyRecm;

public class ApplyRecmDTO {
	private String ma_code;
	private String cp_code;
	private String mp_id;
	private String sp_id;
	private String m_date;
	private String mate_code;
	
	public ApplyRecmDTO() {}

	public String getMa_code() {
		return ma_code;
	}

	public void setMa_code(String ma_code) {
		this.ma_code = ma_code;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getMp_id() {
		return mp_id;
	}

	public void setMp_id(String mp_id) {
		this.mp_id = mp_id;
	}

	public String getSp_id() {
		return sp_id;
	}

	public void setSp_id(String sp_id) {
		this.sp_id = sp_id;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getMate_code() {
		return mate_code;
	}

	public void setMate_code(String mate_code) {
		this.mate_code = mate_code;
	}

	@Override
	public String toString() {
		return "ApplyRecmDTO [ma_code=" + ma_code + ", cp_code=" + cp_code + ", mp_id=" + mp_id + ", sp_id=" + sp_id
				+ ", m_date=" + m_date + ", mate_code=" + mate_code + "]";
	}
	
}
