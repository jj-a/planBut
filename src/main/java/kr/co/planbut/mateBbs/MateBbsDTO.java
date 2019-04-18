package kr.co.planbut.mateBbs;

public class MateBbsDTO {
	private int b_no;
	private String mp_id;
	private String regdt;
	private String subject;
	private String content;
	private String ct_code;
	private String m_date;
	private String gender;
	private int capacity;
	private int people;
	
	public MateBbsDTO() {}

	public int getB_no() {
		return b_no;
	}

	public void setB_no(int b_no) {
		this.b_no = b_no;
	}

	public String getMp_id() {
		return mp_id;
	}

	public void setMp_id(String mp_id) {
		this.mp_id = mp_id;
	}

	public String getRegdt() {
		return regdt;
	}

	public void setRegdt(String regdt) {
		this.regdt = regdt;
	}

	public String getSubject() {
		return subject;
	}

	public void setSubject(String subject) {
		this.subject = subject;
	}

	public String getContent() {
		return content;
	}

	public void setContent(String content) {
		this.content = content;
	}

	public String getCt_code() {
		return ct_code;
	}

	public void setCt_code(String ct_code) {
		this.ct_code = ct_code;
	}

	public String getM_date() {
		return m_date;
	}

	public void setM_date(String m_date) {
		this.m_date = m_date;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public int getCapacity() {
		return capacity;
	}

	public void setCapacity(int capacity) {
		this.capacity = capacity;
	}
	
	public int getPeople() {
		return people;
	}

	public void setPeople(int people) {
		this.people = people;
	}

	@Override
	public String toString() {
		return "MateBbsDTO [b_no=" + b_no + ", mp_id=" + mp_id + ", regdt=" + regdt + ", subject=" + subject
				+ ", content=" + content + ", ct_code=" + ct_code + ", m_date=" + m_date + ", gender=" + gender
				+ ", capacity=" + capacity + ", people=" + people + "]";
	}

}
