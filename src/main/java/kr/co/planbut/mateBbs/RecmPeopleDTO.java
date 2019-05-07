package kr.co.planbut.mateBbs;

public class RecmPeopleDTO {
	private String photo, hey, s_date, m_id, ct_code, cp_code;
	
	public RecmPeopleDTO() {}
	
	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	public String getHey() {
		return hey;
	}

	public void setHey(String hey) {
		this.hey = hey;
	}

	public String getS_date() {
		return s_date;
	}

	public void setS_date(String s_date) {
		this.s_date = s_date;
	}

	public String getM_id() {
		return m_id;
	}

	public void setM_id(String m_id) {
		this.m_id = m_id;
	}

	public String getCt_code() {
		return ct_code;
	}

	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
	}
	
	public String getCp_code() {
		return cp_code;
	}

	public void setCp_code(String cp_code) {
		this.cp_code = cp_code;
	}

	@Override
	public String toString() {
		return "RecmPeopleDTO [photo=" + photo + ", hey=" + hey + ", s_date=" + s_date + ", m_id=" + m_id + ", ct_code="
				+ ct_code + ", cp_code=" + cp_code + "]";
	}

}
