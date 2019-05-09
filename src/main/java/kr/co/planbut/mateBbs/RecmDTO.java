package kr.co.planbut.mateBbs;

public class RecmDTO {

	private String ct_code;
	private String s_date;
	private String m_id;
	private String photo;
	private String hey;
	
	public RecmDTO() {}

	public String getCt_code() {
		return ct_code;
	}

	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
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

	public String getHey() {
		return hey;
	}

	public void setHey(String hey) {
		this.hey = hey;
	}

	public String getPhoto() {
		return photo;
	}

	public void setPhoto(String photo) {
		this.photo = photo;
	}

	@Override
	public String toString() {
		return "RecmDTO [ct_code=" + ct_code + ", s_date=" + s_date + ", m_id=" + m_id + ", photo=" + photo + ", hey="
				+ hey + "]";
	}
	
}
