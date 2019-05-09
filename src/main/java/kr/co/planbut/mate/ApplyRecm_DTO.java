package kr.co.planbut.mate;

public class ApplyRecm_DTO {
	
	private String mate_code;
	private String m_date;
	private String cp_code;
	private String ct_code;
	private String mp_id;
	private String ma_code;
	private String sp_id;
	
	public ApplyRecm_DTO() {}

	public String getMate_code() {
		return mate_code;
	}

	public void setMate_code(String mate_code) {
		this.mate_code = mate_code;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	public String getCt_code() {
		return ct_code;
	}

	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
	}

	public String getMp_id() {
		return mp_id;
	}

	public void setMp_id(String mp_id) {
		this.mp_id = mp_id;
	}

	public String getMa_code() {
		return ma_code;
	}

	public void setMa_code(String ma_code) {
		this.ma_code = ma_code;
	}

	public String getSp_id() {
		return sp_id;
	}

	public void setSp_id(String sp_id) {
		this.sp_id = sp_id;
	}

	@Override
	public String toString() {
		return "ApplyRecm_DTO [mate_code=" + mate_code + ", m_date=" + m_date + ", cp_code=" + cp_code + ", ct_code="
				+ ct_code + ", mp_id=" + mp_id + ", ma_code=" + ma_code + ", sp_id=" + sp_id + "]";
	}

}//class end
